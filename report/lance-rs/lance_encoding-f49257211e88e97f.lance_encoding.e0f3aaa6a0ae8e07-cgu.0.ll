Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical15fixed_size_list24filter_fsl_child_garbage:bb.a
  %i.uc = load ptr, ptr %i.ub, align 8, !alias.scope !53742, !noalias !53743, !noundef !75
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  store ptr %i.ty, ptr %i.m, align 8, !noalias !53745
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.uc, ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx.i39, align 8, !noalias !53745
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.uf = load <2 x i64>, ptr %i.ud, align 8, !alias.scope !53742, !noalias !53743
  store <2 x i64> %i.uf, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx.i40, align 8, !noalias !53745
  %.sroa.05.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ug = load <2 x i64>, ptr %i.ue, align 8, !alias.scope !53742, !noalias !53743
  store <2 x i64> %i.ug, ptr %.sroa.05.sroa.5.0..sroa_idx.i42, align 8, !noalias !53745
  br label %bb.gf

bb.gh:                                            ; preds = %bb.gd
  call void @llvm.trap()
  unreachable

bb.gi:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !53745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !53745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !53745
  store i64 1, ptr %i.k, align 8, !noalias !53745
  %i.uh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.uh, align 8, !noalias !53745
  %i.ui = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ui, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false), !noalias !53745
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !53757
  %i.uj = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !53757 ; 3 uses
  %i.uk = icmp eq ptr %i.uj, null
  br i1 %i.uk, label %bb.gj, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !77

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #66
          to label %.noexc149 unwind label %bb.gk

.noexc149:                                        ; preds = %bb.gj
  unreachable

bb.gk:                                            ; preds = %bb.gj
  %i.ul = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ui)
          to label %.body unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.um = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !inline_history !53622
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.uj, ptr noundef nonnull align 8 dereferenceable(120) %i.k, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !53745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !53745
  br label %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical15fixed_size_list21filter_struct_garbage.exit

bb.gm:                                            ; preds = %.noexc49
  %i.un = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.p) #67
          to label %.body unwind label %bb.gn, !inline_history !53622

bb.gn:                                            ; preds = %bb.gm
  %i.uo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !inline_history !53622
  unreachable

_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical15fixed_size_list21filter_struct_garbage.exit: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEE3newCsjjpCCFGI3ul_14lance_encoding.exit17.i, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i
  %.sroa.0.0.i34 = phi ptr [ %i.uj, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.sc, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEE3newCsjjpCCFGI3ul_14lance_encoding.exit17.i ]
  %i.up = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i34, 0
  %i.uq = insertvalue { ptr, ptr } %i.up, ptr @1673, 1
  br label %bb.dz

_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray6as_mapCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.noexc21
  %i.ur = invoke fastcc { ptr, ptr } @_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical15fixed_size_list18filter_map_garbage(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.cf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.dz unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit25: ; preds = %bb.ea, %bb.dz, %bb.e
  %.sroa.7.1 = phi ptr [ %i.ba, %bb.e ], [ %.sroa.7.0, %bb.dz ], [ %.sroa.7.0, %bb.ea ]
  %.sroa.0.1 = phi ptr [ %i.az, %bb.e ], [ %.sroa.0.0, %bb.dz ], [ %.sroa.0.0, %bb.ea ]
  %i.us = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.ut = insertvalue { ptr, ptr } %i.us, ptr %.sroa.7.1, 1
  ret { ptr, ptr } %i.ut

bb.go:                                            ; preds = %bb.c
  %i.uu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.body, %bb.c
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive26plan_dense_primitive_pages(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [184 x i8], align 8               ; 9 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [64 x i8], align 8                ; 19 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB3_24NormalizedStructuralPlan38serialize_with_miniblock_repdef_budgetNvNtNtNtNtB5_9encodings7logical9primitive9miniblock27max_repdef_levels_per_chunkEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef %5, i64 noundef %6)
  %i.r = load i64, ptr %i.p, align 8, !range !99, !noundef !75 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false)
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ct

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 19 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 13 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.r, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53851)
  %i.u = shl nuw nsw i64 %2, 4                    ; 2 uses
  %i.v = icmp eq i64 %2, 0
  br i1 %i.v, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !53852
  %i.w = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 17) 8) #63, !noalias !53852 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %.lr.ph.preheader.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #66
          to label %.noexc unwind label %bb.cu

.noexc:                                           ; preds = %bb.e
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.sroa.014.024.i = phi ptr [ %i.af, %bb.h ], [ %1, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.ae, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.z, %bb.h ], [ %2, %.lr.ph.preheader.i ]
  %i.z = add nsw i64 %.sroa.10.022.i, -1          ; 2 uses
  %i.aa = icmp eq ptr %.sroa.014.024.i, %i.y
  br i1 %i.aa, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !53851, !noalias !53853, !nonnull !75, !noundef !75 ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.ab, align 8, !alias.scope !53851, !noalias !53853 ; 2 uses
  %i.ac = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !53854
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.ag, align 8, !noalias !53854
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.val13.i, ptr %i.ah, align 8, !noalias !53854
  %i.ai = icmp eq i64 %i.z, 0
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.h, %bb.c
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.w, %bb.h ], [ %i.w, %.lr.ph.i ] ; 3 uses
  store i64 %2, ptr %i.o, align 8, !noalias !53851
  %.sroa.5.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx28, align 8, !noalias !53851
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !53851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  %i.aj = ptrtoint ptr %.sroa.5.sroa.4.0.copyload to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53856)
  %i.ak = icmp ne i64 %.sroa.5.sroa.0.0.copyload, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %.sroa.5.sroa.0.0.copyload, -9223372036854775808
  br i1 %i.al, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.t, %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %or.cond197.i = icmp slt i64 %.sroa.5.sroa.0.0.copyload, 1
  br i1 %or.cond197.i, label %.thread167.i, label %bb.cn

bb.j:                                             ; preds = %.loopexit
  %i.an = xor i64 %.sroa.5.sroa.0.0.copyload, -9223372036854775808
  %i.ao = icmp slt i64 %.sroa.5.sroa.0.0.copyload, 0
  %i.ap = select i1 %i.ao, i64 %i.an, i64 1
  switch i64 %i.ap, label %bb.t [
    i64 2, label %bb.m
    i64 1, label %bb.p
  ], !prof !179

bb.k:                                             ; preds = %.loopexit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !53857
  %i.aq = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !53857 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %.thread141.i, !prof !77

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #66
          to label %.noexc.i unwind label %.thread139.i, !noalias !53857

.thread139.i:                                     ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread167.i

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !53857
  %i.at = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !53857 ; 9 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %bb.o, !prof !77

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #66
          to label %.noexc82.i unwind label %bb.i, !noalias !53857

.noexc82.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  store i64 -3, ptr %i.at, align 8, !noalias !53857
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 1, ptr %.sroa.013.sroa.4.0..sroa_idx.i, align 8, !noalias !53857
  %.sroa.013.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.aj, ptr %.sroa.013.sroa.5.0..sroa_idx.i, align 8, !noalias !53857
  %.sroa.013.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.013.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  %.sroa.013.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.sroa.8.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !53858
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  store i64 %4, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !53857
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  store i64 %5, ptr %.sroa.615.0..sroa_idx.i, align 8, !noalias !53857
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.av, align 8, !alias.scope !53855, !noalias !53859
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !53855, !noalias !53859
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !53855, !noalias !53859
  store i8 -1, ptr %0, align 8, !alias.scope !53855, !noalias !53859
  %or.cond.i = icmp slt i64 %.sroa.5.sroa.0.0.copyload, 1
  br i1 %or.cond.i, label %_RNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_26PrimitiveStructuralEncoder39split_pages_for_miniblock_repdef_budget.exit, label %bb.cc

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !53857
  %i.aw = icmp ult i64 %.sroa.5.sroa.5.0.copyload, 192153584101141163
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = mul i64 %.sroa.5.sroa.5.0.copyload, 184 ; 3 uses
  %or.cond.i.i = icmp samesign ugt i64 %.sroa.5.sroa.5.0.copyload, 50127021939428129
  br i1 %or.cond.i.i, label %bb.v, label %bb.q, !prof !80

bb.q:                                             ; preds = %bb.p
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !53860
  %i.az = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !53860 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = ptrtoint ptr %i.az to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.t:                                             ; preds = %bb.j
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2051) #66
          to label %bb.cd unwind label %bb.i, !noalias !53857

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef20MiniBlockRepDefSplitEEB1t_.exit88.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.thread167.i

bb.v:                                             ; preds = %bb.r, %bb.p
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.r ], [ 0, %bb.p ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ax) #66
          to label %bb.cd unwind label %bb.ce, !noalias !53857

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.s, %bb.q
  %.sroa.10127.0.i = phi i64 [ %i.bb, %bb.s ], [ 8, %bb.q ]
  %.sroa.4.0.i = phi i64 [ %.sroa.5.sroa.5.0.copyload, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.bd = inttoptr i64 %.sroa.10127.0.i to ptr    ; 2 uses
  %i.be = icmp samesign ule i64 %.sroa.5.sroa.5.0.copyload, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.be)
  store i64 %.sroa.4.0.i, ptr %i.m, align 8, !noalias !53857
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.bf, align 8, !noalias !53857
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %i.bg, align 8, !noalias !53857
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %.idx.i = mul nuw nsw i64 %.sroa.5.sroa.5.0.copyload, 48
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 %.idx.i
  %i.bi = icmp eq i64 %.sroa.5.sroa.5.0.copyload, 0
  br i1 %i.bi, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef20MiniBlockRepDefSplitENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0, i64 %2 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !53856, !noalias !53861 ; 3 uses
  %.not.i89.i = icmp eq ptr %i.bo, null           ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val21.i.i = load i64, ptr %i.bp, align 8, !alias.scope !53856, !noalias !53861 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !53856, !noalias !53861 ; 3 uses
  %.not9.i.i = icmp eq ptr %i.bs, null            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val23.i.i = load i64, ptr %i.bt, align 8, !alias.scope !53856, !noalias !53861 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.6.0..sroa_idx42.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx.i90.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val16.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !53856, !noalias !53861, !nonnull !75 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val17.i.i = load i64, ptr %i.bw, align 8, !alias.scope !53856, !noalias !53861 ; 6 uses
  %i.bx = icmp eq i64 %.val17.i.i, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.cb = load i8, ptr %i.ca, align 4, !range !89, !alias.scope !53856, !noalias !53861
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.cf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %4, i64 0
  br label %bb.y

.body.i:                                          ; preds = %bb.ca, %bb.bx, %.body.i.i, %bb.x
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body95.ph.i, %bb.ca ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ci, %bb.x ], [ %i.fm, %bb.bx ]
  %i.cg = icmp eq i64 %.sroa.5.sroa.0.0.copyload, 0
  br i1 %i.cg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef20MiniBlockRepDefSplitEEB1t_.exit.i, label %bb.w

bb.w:                                             ; preds = %.body.i
  %i.ch = mul nuw i64 %.sroa.5.sroa.0.0.copyload, 48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.copyload, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !53862
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef20MiniBlockRepDefSplitEEB1t_.exit.i

bb.x:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %bb.bz, %.lr.ph.i11
  %i.cj = phi ptr [ %i.bd, %.lr.ph.i11 ], [ %i.fo, %bb.bz ]
  %i.ck = phi i64 [ 0, %.lr.ph.i11 ], [ %i.fq, %bb.bz ] ; 3 uses
  %.sroa.7.0251.i = phi ptr [ %.sroa.5.sroa.4.0.copyload, %.lr.ph.i11 ], [ %i.cl, %bb.bz ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.7.0251.i, i64 48 ; 2 uses
  %.sroa.6113.8.copyload.i = load i64, ptr %.sroa.7.0251.i, align 8, !noalias !53863 ; 10 uses
  %.sroa.8114.8..sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0251.i, i64 8
end_hunk_0
begin_hunk_1_@_RNvXsT_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_23SparsePrimitiveEncodingNtB5_29PrimitivePageEncodingBehavior14try_plan_pages:bb.a
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %.sroa.7.023.i.i ; 2 uses
  store ptr %.val12.i.i, ptr %i.fw, align 8, !noalias !84398
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %.val13.i.i, ptr %i.fx, align 8, !noalias !84398
  %i.fy = icmp eq i64 %i.fp, 0
  br i1 %i.fy, label %.loopexit, label %.lr.ph.i.i101

bb.ba:                                            ; preds = %bb.aw
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fh, i64 noundef 184, i64 noundef 8) #63, !noalias !84393
  br label %bb.at

bb.bb:                                            ; preds = %bb.at
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !84393
  unreachable

bb.bc:                                            ; preds = %bb.at
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.l) #67, !noalias !84394
  br label %.body

bb.bd:                                            ; preds = %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6layout23select_automatic_sparseTNtNtB4_6sparse20SparseStructuralPlanNtNtB1F_6writer20PreparedSparseValuesENCNvXsT_B4_NtB4_23SparsePrimitiveEncodingNtB4_29PrimitivePageEncodingBehavior14try_plan_pagess_0EBa_.exit.thread, %.loopexit
  %.sroa.551.sroa.0.0 = phi ptr [ undef, %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6layout23select_automatic_sparseTNtNtB4_6sparse20SparseStructuralPlanNtNtB1F_6writer20PreparedSparseValuesENCNvXsT_B4_NtB4_23SparsePrimitiveEncodingNtB4_29PrimitivePageEncodingBehavior14try_plan_pagess_0EBa_.exit.thread ], [ %i.fh, %.loopexit ]
  %.sroa.049.0 = phi i64 [ -1, %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6layout23select_automatic_sparseTNtNtB4_6sparse20SparseStructuralPlanNtNtB1F_6writer20PreparedSparseValuesENCNvXsT_B4_NtB4_23SparsePrimitiveEncodingNtB4_29PrimitivePageEncodingBehavior14try_plan_pagess_0EBa_.exit.thread ], [ 1, %.loopexit ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.049.0, ptr %i.gb, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.551.sroa.0.0, ptr %.sroa.551.0..sroa_idx, align 8
  %.sroa.551.sroa.4.0..sroa.551.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.551.sroa.4.0..sroa.551.0..sroa_idx.sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  %i.gc = icmp ne i64 %.sroa.0112.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.gc)
  %or.cond.i106 = icmp slt i64 %.sroa.0112.0.copyload, 1
  br i1 %or.cond.i106, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit100, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gd = mul nuw i64 %.sroa.0112.0.copyload, 48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit100

.loopexit:                                        ; preds = %bb.az, %.lr.ph.i.i101, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i ], [ %i.fm, %.lr.ph.i.i101 ], [ %i.fm, %bb.az ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(104) %.sroa.470.0..sroa_idx, i64 104, i1 false), !noalias !84394
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ge, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.046, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.fh, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !84393
  %.sroa.0.sroa.4.0..sroa.05.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 144
  store i64 %4, ptr %.sroa.0.sroa.4.0..sroa.05.0..sroa_idx.i, align 8, !noalias !84393
  %.sroa.0.sroa.5.0..sroa.05.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 152
  store ptr %.sroa.5.0.i, ptr %.sroa.0.sroa.5.0..sroa.05.0..sroa_idx.i, align 8, !noalias !84393
  %.sroa.0.sroa.6.0..sroa.05.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 160
  store i64 %4, ptr %.sroa.0.sroa.6.0..sroa.05.0..sroa_idx.i, align 8, !noalias !84393
  %.sroa.5.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.fh, i64 168
  store i64 %6, ptr %.sroa.5.0..sroa_idx.i102, align 8, !noalias !84393
  %.sroa.6.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.fh, i64 176
  store i64 %7, ptr %.sroa.6.0..sroa_idx.i103, align 8, !noalias !84393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !84393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bd

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit100: ; preds = %bb.bf, %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i, %bb.bm, %bb.be, %bb.bd, %bb.aq, %bb.ap, %bb.k
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit: ; preds = %bb.bt, %bb.s, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bt ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.s ]
  resume { ptr, i32 } %.pn.pn

bb.bf:                                            ; preds = %bb.j
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.460.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.457.0..sroa_idx, i64 47, i1 false)
  store i8 %i.co, ptr %0, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.558.0.copyload, ptr %.sroa.561.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit100

bb.bg:                                            ; preds = %bb.j
  %i.gf = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.gf, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.gg = load ptr, ptr %2, align 8, !nonnull !75, !align !95, !noundef !75
  %i.gh = invoke fastcc noundef zeroext i1 @_RNvNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse6writer20uses_constant_layout(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.gg)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %bb.bg
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.gh, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.gj = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #63 ; 10 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.bk, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !77

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #66
          to label %.noexc108 unwind label %bb.bh

.noexc108:                                        ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.gl, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.gm = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.gm, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bl, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i.i.i.i ], [ 0, %bb.bl ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [112 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.07.i.i.i.i
  %i.go = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1  ; 2 uses
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanEBL_(ptr noalias noundef readonly align 8 dereferenceable(112) %i.gn), !noalias !84399
  %i.gp = icmp eq i64 %i.go, %.sroa.5.0.copyload
  br i1 %i.gp, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.bl
  %i.gq = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.gq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit100, label %bb.bm

bb.bm:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i
  %i.gr = mul nuw i64 %.sroa.0.0.copyload, 112
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !84399
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit100

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.bj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84400)
  %i.gs = shl nuw nsw i64 %4, 4                   ; 2 uses
  %i.gt = icmp eq i64 %4, 0
  br i1 %i.gt, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.bn

bb.bn:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !84401
  %i.gu = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.gs, i64 noundef range(i64 1, 17) 8) #63, !noalias !84401 ; 4 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bo, label %.lr.ph.preheader.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.gs) #66
          to label %.noexc110 unwind label %bb.bs

.noexc110:                                        ; preds = %bb.bo
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.bn
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.br, %.lr.ph.preheader.i
  %.sroa.014.024.i = phi ptr [ %i.hd, %bb.br ], [ %3, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.hc, %bb.br ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.gx, %bb.br ], [ %4, %.lr.ph.preheader.i ]
  %i.gx = add nsw i64 %.sroa.10.022.i, -1         ; 2 uses
  %i.gy = icmp eq ptr %.sroa.014.024.i, %i.gw
  br i1 %i.gy, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !84400, !noalias !84402, !nonnull !75, !noundef !75 ; 2 uses
  %i.gz = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.gz, align 8, !alias.scope !84400, !noalias !84402 ; 2 uses
  %i.ha = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !84403
  %i.hb = icmp slt i64 %i.ha, 0
  br i1 %i.hb, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.hc = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.he, align 8, !noalias !84403
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %.val13.i, ptr %i.hf, align 8, !noalias !84403
  %i.hg = icmp eq i64 %i.gx, 0
  br i1 %i.hg, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.bo
  %i.hh = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 184, i64 noundef 8) #63
  br label %bb.bt

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.lr.ph.i, %bb.br, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  %.sroa.5151.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit ], [ %i.gu, %bb.br ], [ %i.gu, %.lr.ph.i ]
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.gf, i64 40, i1 false)
  store i64 -2, ptr %i.gj, align 8
  %.sroa.019.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 144
  store i64 %4, ptr %.sroa.019.sroa.6.0..sroa_idx, align 8
  %.sroa.019.sroa.6.sroa.4.0..sroa.019.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 152
  store ptr %.sroa.5151.0, ptr %.sroa.019.sroa.6.sroa.4.0..sroa.019.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.019.sroa.6.sroa.5.0..sroa.019.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 160
  store i64 %4, ptr %.sroa.019.sroa.6.sroa.5.0..sroa.019.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 168
  store i64 %6, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 176
  store i64 %7, ptr %.sroa.621.0..sroa_idx, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.hi, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gj, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.518.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit100

bb.bt:                                            ; preds = %bb.bs, %bb.bh
  %.pn = phi { ptr, i32 } [ %i.hh, %bb.bs ], [ %i.gi, %bb.bh ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gf) #67
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef21MiniBlockRepDefBudgetEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsT_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_23SparsePrimitiveEncodingNtB5_29PrimitivePageEncodingBehavior15try_encode_page(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.5.i153.i.sroa.12.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.513.i.i.i = alloca [24 x i8], align 8    ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.53.sroa.8.sroa.8.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %i.e = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.5.i110.i.sroa.12.i = alloca [16 x i8], align 8 ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.5.i.i.sroa.12.i = alloca [16 x i8], align 8 ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [160 x i8], align 8               ; 8 uses
  %.sroa.521.i.sroa.15.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.531.sroa.0.i.sroa.12.i = alloca [16 x i8], align 8 ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.021.i.i = alloca [144 x i8], align 8     ; 6 uses
  %i.q = alloca [160 x i8], align 8               ; 6 uses
  %.sroa.517.i.sroa.15.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.520.sroa.0.i.sroa.12.i = alloca [16 x i8], align 8 ; 7 uses
  %i.r = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.22.i.i = alloca [24 x i8], align 8       ; 7 uses
  %.sroa.518.sroa.12.i.i = alloca [24 x i8], align 8 ; 7 uses
  %i.s = alloca [40 x i8], align 8                ; 9 uses
  %i.t = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.516.i.sroa.12.i = alloca [16 x i8], align 8 ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 10 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [160 x i8], align 8               ; 7 uses
  %.sroa.51.i.sroa.15.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.5.sroa.0.i.sroa.12.i = alloca [16 x i8], align 8 ; 7 uses
  %i.aa = alloca [56 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 19 uses
  %i.ac = alloca [24 x i8], align 8               ; 16 uses
  %.sroa.5133 = alloca [16 x i8], align 8         ; 6 uses
  %.sroa.6135 = alloca [32 x i8], align 8         ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.023.i.sroa.10 = alloca [176 x i8], align 8 ; 3 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [48 x i8], align 8               ; 11 uses
  %.sroa.019.i = alloca [64 x i8], align 8        ; 6 uses
  %i.ag = alloca [216 x i8], align 8              ; 12 uses
  %.sroa.26.i = alloca [16 x i8], align 8         ; 10 uses
  %.sroa.68.sroa.10.i = alloca [16 x i8], align 8 ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [104 x i8], align 8              ; 13 uses
  %.sroa.6.i.sroa.12 = alloca [16 x i8], align 8  ; 6 uses
  %i.ak = alloca [80 x i8], align 8               ; 5 uses
  %i.al = alloca [56 x i8], align 8               ; 12 uses
  %i.am = alloca [40 x i8], align 8               ; 13 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [96 x i8], align 8               ; 16 uses
  %i.ap = alloca [40 x i8], align 8               ; 15 uses
  %i.aq = alloca [104 x i8], align 8              ; 16 uses
  %.sroa.20 = alloca [16 x i8], align 8           ; 8 uses
  %.sroa.6.sroa.11 = alloca [16 x i8], align 8    ; 7 uses
  %i.ar = alloca [48 x i8], align 8               ; 9 uses
  %i.as = alloca [8 x i8], align 8                ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  %i.au = alloca [104 x i8], align 8              ; 8 uses
  %i.av = alloca [40 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 9 uses
  %i.ax = load i64, ptr %3, align 8, !range !156, !noundef !75
  %.not = icmp eq i64 %i.ax, -3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %3, i64 184, i1 false)
  store i64 -5, ptr %0, align 8
  br label %bb.fq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !75
  store i64 %i.bd, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !75 ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.loopexit188, label %.preheader

.preheader:                                       ; preds = %bb.c, %.noexc
  %.sroa.04.0.i = phi i64 [ %i.bm, %.noexc ], [ 0, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.bl, %.noexc ], [ 0, %bb.c ]
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.sroa.04.0.i
  %i.bk = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bj)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.preheader
  %i.bl = add i64 %i.bk, %.sroa.02.0.i            ; 2 uses
  %i.bm = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.bh
  br i1 %i.bn, label %.loopexit188, label %.preheader

.body:                                            ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

.loopexit188:                                     ; preds = %.noexc, %bb.c
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ %i.bl, %.noexc ] ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.as, align 8
  %i.bo = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 6
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp samesign ugt i64 %i.bo, 3
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit188
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.br, ptr %i.ar, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.as, ptr %i.bs, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.at, ptr %i.bt, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !84686
  store i64 0, ptr %i.ao, align 8, !noalias !84686
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @837, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 45, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @27, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i64 54, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store ptr @837, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store i64 45, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !84686
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 76
  store i32 6859, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !84686
end_hunk_1
begin_hunk_2_@_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBJ_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87508)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 72
  %i.k = load i8, ptr %i.j, align 8, !range !131, !alias.scope !87509, !noalias !87510, !noundef !75 ; 3 uses
  %i.l = icmp samesign ugt i8 %i.k, 1
  %i.m = zext nneg i8 %i.k to i64
  %i.n = add nsw i64 %i.m, -1
  %i.o = select i1 %i.l, i64 %i.n, i64 0
  switch i64 %i.o, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87511)
  %i.p = load ptr, ptr %.sroa.013.066.i, align 8, !alias.scope !87512, !noalias !87513, !nonnull !75, !noundef !75 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !87512, !noalias !87513, !noundef !75
  %i.s = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !87514
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !87512, !noalias !87513, !noundef !75 ; 3 uses
  %.not.i.i12.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i12.i, label %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !87514
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !87512, !noalias !87513, !noundef !75
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !87512, !noalias !87513, !noundef !75
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !87512, !noalias !87513, !noundef !75
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !87512, !noalias !87513, !noundef !75
  %i.ag = ptrtoint ptr %i.z to i64
  br label %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.j, %bb.g
  %.sroa.5.sroa.0.sroa.4.0.i.i.i = phi i64 [ %i.ab, %bb.j ], [ undef, %bb.g ]
  %.sroa.5.sroa.0.sroa.0.0.i.i.i = phi i64 [ %i.ag, %bb.j ], [ undef, %bb.g ]
  %.sroa.5.sroa.5.0.i.i.i = phi i64 [ %i.af, %bb.j ], [ undef, %bb.g ]
  %.sroa.5.sroa.4.0.i.i.i = phi i64 [ %i.ad, %bb.j ], [ undef, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !87512, !noalias !87513, !noundef !75
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !87512, !noalias !87513, !noundef !75
  %i.al = ptrtoint ptr %i.v to i64
  store i64 %i.al, ptr %.sroa.9.i, align 8, !alias.scope !87507, !noalias !87515
  store i64 %.sroa.5.sroa.0.sroa.0.0.i.i.i, ptr %.sroa.12.i, align 8, !alias.scope !87507, !noalias !87515
  store i64 %.sroa.5.sroa.0.sroa.4.0.i.i.i, ptr %.sroa.15.i, align 8, !alias.scope !87507, !noalias !87515
  br label %bb.u

bb.l:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %.sroa.013.066.i, align 8, !alias.scope !87509, !noalias !87510, !noundef !75 ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.m:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87516)
  %i.an = load ptr, ptr %.sroa.013.066.i, align 8, !alias.scope !87517, !noalias !87518, !noundef !75 ; 3 uses
  %.not.i9.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i9.i.i, label %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !87519
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !87517, !noalias !87518, !noundef !75
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !87517, !noalias !87518, !noundef !75
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !87517, !noalias !87518, !noundef !75
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !87517, !noalias !87518, !noundef !75
  %i.ay = ptrtoint ptr %i.ar to i64
  br label %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.o, %bb.m
  %.sroa.5.sroa.0.sroa.4.0.i10.i.i = phi i64 [ %i.at, %bb.o ], [ undef, %bb.m ]
  %.sroa.5.sroa.0.sroa.0.0.i11.i.i = phi i64 [ %i.ay, %bb.o ], [ undef, %bb.m ]
  %.sroa.5.sroa.5.0.i12.i.i = phi i64 [ %i.ax, %bb.o ], [ undef, %bb.m ]
  %.sroa.5.sroa.4.0.i13.i.i = phi i64 [ %i.av, %bb.o ], [ undef, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !87517, !noalias !87518, !noundef !75
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !87517, !noalias !87518, !noundef !75
  store i64 %.sroa.5.sroa.0.sroa.4.0.i10.i.i, ptr %.sroa.9.i, align 8, !alias.scope !87507, !noalias !87515
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.bd = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !87520
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.l
  %.sroa.5.sroa.0.sroa.4.0.i.i = phi i64 [ %i.bk, %bb.s ], [ undef, %bb.l ]
  %.sroa.5.sroa.0.sroa.0.0.i.i = phi i64 [ %i.bp, %bb.s ], [ undef, %bb.l ]
  %.sroa.5.sroa.5.0.i.i = phi i64 [ %i.bo, %bb.s ], [ undef, %bb.l ]
  %.sroa.5.sroa.4.0.i.i = phi i64 [ %i.bm, %bb.s ], [ undef, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !87509, !noalias !87510, !noundef !75
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !87509, !noalias !87510, !noundef !75
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !87509, !noalias !87510, !noundef !75
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !87509, !noalias !87510, !noundef !75
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.066.i, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !87509, !noalias !87510, !noundef !75
  %i.bp = ptrtoint ptr %i.bi to i64
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.r, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i
  %.sroa.6.0.i = phi i64 [ %i.r, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.0.sroa.0.0.i.i, %bb.r ], [ %.sroa.5.sroa.0.sroa.0.0.i11.i.i, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.022.0.i = phi ptr [ %i.p, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %i.am, %bb.r ], [ %i.an, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sink33.i.sroa.phi.i = phi ptr [ %.sroa.18.i, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.9.i, %bb.r ], [ %.sroa.12.i, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.0.sroa.4.0.sink.i.i = phi i64 [ %.sroa.5.sroa.4.0.i.i.i, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.0.sroa.4.0.i.i, %bb.r ], [ %.sroa.5.sroa.4.0.i13.i.i, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sink32.i.sroa.phi.i = phi ptr [ %.sroa.21.i, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.12.i, %bb.r ], [ %.sroa.15.i, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.4.0.sink.i.i = phi i64 [ %.sroa.5.sroa.5.0.i.i.i, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.4.0.i.i, %bb.r ], [ %.sroa.5.sroa.5.0.i12.i.i, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sink31.i.sroa.phi.i = phi ptr [ %.sroa.23.i, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.15.i, %bb.r ], [ %.sroa.18.i, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.5.0.sink.i.i = phi i64 [ %i.ai, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.5.0.i.i, %bb.r ], [ %i.ba, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sink30.i.sroa.phi.i = phi ptr [ %.sroa.24.i, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.18.i, %bb.r ], [ %.sroa.21.i, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sink29.i.i = phi i64 [ %i.ak, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %i.bg, %bb.r ], [ %i.bc, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  %.sink.i.i = phi i8 [ %i.k, %_RNvXsq_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_10OffsetDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ 2, %bb.r ], [ 3, %_RNvXsu_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_7FslDescNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ]
  store i64 %.sroa.5.sroa.0.sroa.4.0.sink.i.i, ptr %.sink33.i.sroa.phi.i, align 8, !alias.scope !87507, !noalias !87515
  store i64 %.sroa.5.sroa.4.0.sink.i.i, ptr %.sink32.i.sroa.phi.i, align 8, !alias.scope !87507, !noalias !87515
  store i64 %.sroa.5.sroa.5.0.sink.i.i, ptr %.sink31.i.sroa.phi.i, align 8, !alias.scope !87507, !noalias !87515
  store i64 %.sink29.i.i, ptr %.sink30.i.sroa.phi.i, align 8, !alias.scope !87507, !noalias !87515
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %.sroa.7.065.i ; 10 uses
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.0.copyload.i = load i64, ptr %.sroa.9.i, align 8, !noalias !87506
  %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.0.copyload.i = load i64, ptr %.sroa.12.i, align 8, !noalias !87506
  %.sroa.15.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload.i = load i64, ptr %.sroa.15.i, align 8, !noalias !87506
  %.sroa.18.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload.i = load i64, ptr %.sroa.18.i, align 8, !noalias !87506
  %.sroa.21.i.0..sroa.21.i.0..sroa.21.i.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload.i = load i64, ptr %.sroa.21.i, align 8, !noalias !87506
  %.sroa.23.i.0..sroa.23.i.0..sroa.23.i.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload.i = load i64, ptr %.sroa.23.i, align 8, !noalias !87506
  %.sroa.24.i.0..sroa.24.i.0..sroa.24.i.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload.i = load i64, ptr %.sroa.24.i, align 8, !noalias !87506
  store ptr %.sroa.022.0.i, ptr %i.bq, align 8, !noalias !87506
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %.sroa.6.0.i, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !87506
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.0.copyload.i, ptr %.sroa.544.0..sroa_idx.i, align 8, !noalias !87506
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.0.copyload.i, ptr %.sroa.645.0..sroa_idx.i, align 8, !noalias !87506
  %.sroa.746.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i64 %.sroa.15.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload.i, ptr %.sroa.746.0..sroa_idx.i, align 8, !noalias !87506
  %.sroa.847.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i64 %.sroa.18.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload.i, ptr %.sroa.847.0..sroa_idx.i, align 8, !noalias !87506
  %.sroa.948.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i64 %.sroa.21.i.0..sroa.21.i.0..sroa.21.i.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload.i, ptr %.sroa.948.0..sroa_idx.i, align 8, !noalias !87506
  %.sroa.1049.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  store i64 %.sroa.23.i.0..sroa.23.i.0..sroa.23.i.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload.i, ptr %.sroa.1049.0..sroa_idx.i, align 8, !noalias !87506
  %.sroa.1150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  store i64 %.sroa.24.i.0..sroa.24.i.0..sroa.24.i.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload.i, ptr %.sroa.1150.0..sroa_idx.i, align 8, !noalias !87506
  %.sroa.1251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store i8 %.sink.i.i, ptr %.sroa.1251.0..sroa_idx.i, align 8, !noalias !87506
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  %i.br = icmp eq i64 %i.f, 0
  br i1 %i.br, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %bb.u, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.c, %.lr.ph.i ], [ %i.c, %bb.u ]
  store i64 %.16.val, ptr %0, align 8, !noalias !87504
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !87504
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !87504
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjjpCCFGI3ul_14lance_encoding(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87527
  %i.c = mul nuw nsw i64 %.16.val, 192            ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !87527
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !87527
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !87528, !inline_history !87526
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 8) #63, !noalias !87528, !inline_history !87526 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #66, !noalias !87527, !inline_history !87526
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !87527
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !87527
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.o, %bb.e ], [ %.8.val, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.n, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.l, %bb.e ], [ %.16.val, %.lr.ph.preheader.i ]
  %i.l = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.m = icmp eq ptr %.sroa.012.023.i, %i.k
  br i1 %i.m, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87527
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !87529, !inline_history !87526

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 192
  %i.p = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.p, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !87529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87527
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !87529, !inline_history !87526
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.j, align 8, !noalias !87527
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #67
          to label %bb.h unwind label %bb.f, !noalias !87529, !inline_history !87526

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.lr.ph.i, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.s = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ %i.j, %bb.e ], [ %i.j, %.lr.ph.i ]
  store i64 %.16.val, ptr %i.s, align 8, !noalias !87527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !87530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87527
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !131, !noundef !75 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.4855, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsa_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data16AllNullDataBlockNtB5_7GetStat8get_stat(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i8 noundef range(i8 0, 8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  switch i8 %1, label %bb.l [
    i8 1, label %bb.b
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.g = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #63 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !77

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #66
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  store i64 0, ptr %i.g, align 8
  store i64 1, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.j, align 8
  call void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !87535
  %i.m = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !87535 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit5, !prof !77

bb.d:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.z, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit5: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.q = load i64, ptr %0, align 8, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.r = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #63 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit8, !prof !77

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #66
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit8: ; preds = %bb.g
  store i64 %i.q, ptr %i.r, align 8
  store i64 1, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %i.u, align 8
end_hunk_2
