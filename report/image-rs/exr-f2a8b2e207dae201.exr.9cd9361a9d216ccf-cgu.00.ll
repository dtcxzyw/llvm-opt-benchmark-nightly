Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.00?download=true
inline.NumInlined: 482
inline.NumDeleted: 291
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr:bb.a
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecIBL_tEEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core4iter8adapters12GenericShuntINtNtB1r_3map3MapINtNtNtB1v_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB1v_6result6ResultNtNtB1v_7convert10InfallibleNtNtB3a_5error5ErrorEEE9from_iterB3a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !189
  call void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !186
  %i.j = load i64, ptr %i.h, align 8, !range !62, !noalias !189, !noundef !4
  %.not.i = icmp eq i64 %i.j, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !189
  invoke void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.e unwind label %bb.d, !noalias !186

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !186, !noalias !191
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !186, !noalias !191
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !186, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !189
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_tEEINtB2_18SpecFromIterNestedB11_INtNtNtCsj6eKBz9Db1c_4core4iter8adapters12GenericShuntINtNtB1F_3map3MapINtNtNtB1J_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB1J_6result6ResultNtNtB1J_7convert10InfallibleNtNtB3o_5error5ErrorEEE9from_iterB3o_.exit

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.m, !noalias !186

bb.e:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.f, align 8, !noalias !189, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !189
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  %..i.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.o, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !189
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.d, !noalias !186

.noexc.i:                                         ; preds = %bb.e
  %i.p = load i64, ptr %i.d, align 8, !range !69, !noalias !189, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !70, !noalias !189, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %.noexc.i
  %i.u = load i64, ptr %i.t, align 8, !noalias !189
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #18
          to label %.noexc5.i unwind label %bb.d, !noalias !186

.noexc5.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.v = load ptr, ptr %i.t, align 8, !noalias !189, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp ule i64 %..i.i, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !186
  store i64 %i.s, ptr %i.i, align 8, !noalias !189
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !189
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !198
  invoke void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.noexc6.i unwind label %.loopexit.split-lp.i, !noalias !186

.noexc6.i:                                        ; preds = %bb.g
  %i.x = load i64, ptr %i.c, align 8, !range !62, !noalias !198, !noundef !4
  %.not2.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not2.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc6.i, %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !198
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !201, !noalias !202, !noundef !4 ; 4 uses
  %i.z = icmp ult i64 %i.y, 384307168202282326
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.i, align 8, !range !13, !alias.scope !201, !noalias !202, !noundef !4
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_tEE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !198
  invoke void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.j unwind label %bb.i, !noalias !186

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_tEE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !201, !noalias !202, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !186
  %i.ae = add nuw nsw i64 %i.y, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !201, !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !198
  invoke void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !186

.noexc7.i:                                        ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_tEE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i
  %i.af = load i64, ptr %i.c, align 8, !range !62, !noalias !198, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.af, -1
  br i1 %.not.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.l, !noalias !186

bb.j:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.a, align 8, !noalias !198, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !198
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !203, !noalias !202, !noundef !4 ; 2 uses
  %i.ak = load i64, ptr %i.i, align 8, !range !13, !alias.scope !203, !noalias !202, !noundef !4
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.k, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_tEE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i, !prof !14

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.aj, i64 noundef %i.ai, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_tEE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i unwind label %bb.i, !noalias !186

bb.l:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !186
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_tEE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_tEEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.m, !noalias !186

.loopexit8.i:                                     ; preds = %.noexc7.i, %.noexc6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !191
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_tEEINtB2_18SpecFromIterNestedB11_INtNtNtCsj6eKBz9Db1c_4core4iter8adapters12GenericShuntINtNtB1F_3map3MapINtNtNtB1J_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB1J_6result6ResultNtNtB1J_7convert10InfallibleNtNtB3o_5error5ErrorEEE9from_iterB3o_.exit

bb.m:                                             ; preds = %.body.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !186
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %.body.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_tEEINtB2_18SpecFromIterNestedB11_INtNtNtCsj6eKBz9Db1c_4core4iter8adapters12GenericShuntINtNtB1F_3map3MapINtNtNtB1J_5slice4iter4IterjENCNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa9lossy_dct21encode_lossy_channels0EINtNtB1J_6result6ResultNtNtB1J_7convert10InfallibleNtNtB3o_5error5ErrorEEE9from_iterB3o_.exit: ; preds = %bb.c, %.loopexit8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !189
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16EINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1X_7flatten7FlattenIB1T_INtNtB1X_4take4TakeINtNtB1X_4skip4SkipINtNtNtB21_5slice4iter11ChunksExactBU_EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4G_5LayerINtB4E_15CroppedChannelsINtB4G_11AnyChannelsNtB4G_11FlatSamplesEEENtB4E_16ApplyCroppedView18reallocate_cropped012crop_samplesBU_E0EENCB4t_s_0EE9from_iterB4I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 3 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !221, !noalias !206
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.ad, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !224, !noalias !206, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.l, ptr null, ptr %i.m
  store ptr %spec.select.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !221, !noalias !206
  br i1 %i.l, label %select.unfold.i.i.i.i, label %.loopexit21.loopexit.i

select.unfold.i.i.i.i:                            ; preds = %.sink.split.i.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !232, !noalias !206, !noundef !4 ; 3 uses
  %.not.i5.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i5.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !236, !noalias !206, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %i.o, -1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !236, !noalias !206
  %i.r = load i64, ptr %i.f, align 8, !alias.scope !239, !noalias !206, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.g, !prof !242

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.g, align 8, !alias.scope !243, !noalias !206, !noundef !4 ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !alias.scope !243, !noalias !206, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.t
  %i.v = sub nuw i64 %i.s, %i.t
  store ptr %i.u, ptr %1, align 8, !alias.scope !243, !noalias !206, !captures !246
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !243, !noalias !206
  br label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %bb.f ], [ null, %bb.e ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %i.t, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  store i64 0, ptr %i.f, align 8, !alias.scope !239, !noalias !206
  %i.y = tail call fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.r) #19, !alias.scope !239, !noalias !206
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i64 } [ %i.y, %bb.g ], [ %i.x, %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i.i.i, 0 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i
  %i.aa = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !247, !noalias !206, !nonnull !4, !align !248, !noundef !4 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i, align 8, !alias.scope !249, !noalias !252, !noundef !4 ; 3 uses
  %i.ab = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !255, !noalias !252, !noundef !4 ; 4 uses
  %i.ac = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %.val2.i.i.i.i.i.i.i, %i.aa
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ac, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i, !prof !258

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 0, 4611686018427387904) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15, !noalias !252
  unreachable

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.val.i.i.i.i.i.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.val2.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.c, align 8, !alias.scope !259, !noalias !206
  store ptr %i.ae, ptr %i.d, align 8, !alias.scope !259, !noalias !206
  br label %bb.b

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i, %bb.c, %select.unfold.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !260, !noalias !206, !noundef !4 ; 4 uses
  %.not.i7.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i7.i.i.i.i, label %bb.x, label %.sink.split.i8.i.i.i.i

.sink.split.i8.i.i.i.i:                           ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !263, !noalias !206, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.x, label %.sink.split.i8.i.i.i..loopexit21_crit_edge.i

.sink.split.i8.i.i.i..loopexit21_crit_edge.i:     ; preds = %.sink.split.i8.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !268, !noalias !275
  %.val3.i.i.i.i.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !268, !noalias !275
  br label %.loopexit21.i

.loopexit21.loopexit.i:                           ; preds = %.sink.split.i.i.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre40.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !268, !noalias !275
  %.phi.trans.insert41.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i62.i.i.i.pre.i = load ptr, ptr %.phi.trans.insert41.i, align 8, !alias.scope !268, !noalias !275
  br label %.loopexit21.i

.loopexit21.i:                                    ; preds = %.loopexit21.loopexit.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i
  %.val3.i62.i.i.i.i = phi ptr [ %i.ai, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %.val3.i62.i.i.i.pre.i, %.loopexit21.loopexit.i ] ; 2 uses
  %i.al = phi ptr [ %i.ak, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %.pre40.i, %.loopexit21.loopexit.i ] ; 3 uses
  %.val3.i.i.i.i.i = phi ptr [ %.val3.i.i.i.i.pre.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.k, %.loopexit21.loopexit.i ] ; 2 uses
  %i.am = phi ptr [ %.pre.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.m, %.loopexit21.loopexit.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ag, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.j, %.loopexit21.loopexit.i ]
  %.val.i.i = load i16, ptr %.sroa.0.0.i.i.i.i, align 2, !noalias !279, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 1
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.aq
  %.not53.i.i.i.i = icmp eq ptr %i.al, null
  %i.ar = ptrtoint ptr %.val3.i62.i.i.i.i to i64  ; 2 uses
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 1
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %i.au
  %i.av = add nuw i64 %.sroa.7.0.i.i.i.i, %.sroa.8.0.i.i.i.i ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !alias.scope !268, !noalias !275, !noundef !4 ; 2 uses
  %.not54.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not54.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit21.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !292, !noalias !293, !noundef !4
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !299, !noalias !300, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %bb.l, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15, !noalias !302
  unreachable

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i: ; preds = %bb.k
  %.val.i.i.i.i.i.i7.i = load i64, ptr %i.g, align 8, !alias.scope !299, !noalias !300
  %i.ba = udiv i64 %.val.i.i.i.i.i.i7.i, %.val3.i.i.i.i.i.i.i
  %i.bb = load i64, ptr %i.f, align 8, !alias.scope !299, !noalias !300, !noundef !4
  %.not78.i.i.i.i = icmp ugt i64 %i.ba, %i.bb
  br i1 %.not78.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3o_5LayerINtB3m_15CroppedChannelsINtB3o_11AnyChannelsNtB3o_11FlatSamplesEEENtB3m_16ApplyCroppedView18reallocate_cropped012crop_samplesB2w_E0EENCB3b_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3q_.exit.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i, %bb.j, %.loopexit21.i
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3o_5LayerINtB3m_15CroppedChannelsINtB3o_11AnyChannelsNtB3o_11FlatSamplesEEENtB3m_16ApplyCroppedView18reallocate_cropped012crop_samplesB2w_E0EENCB3b_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3q_.exit.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3o_5LayerINtB3m_15CroppedChannelsINtB3o_11AnyChannelsNtB3o_11FlatSamplesEEENtB3m_16ApplyCroppedView18reallocate_cropped012crop_samplesB2w_E0EENCB3b_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3q_.exit.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i
  %.sink80.i.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i ], [ %.sroa.5.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.av, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %.sink80.i.i.i.sroa.phi.i, align 8, !alias.scope !305, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.bc = tail call i64 @llvm.umax.i64(i64 %i.av, i64 3) ; 2 uses
  %..i.i = add nuw i64 %i.bc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !211
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !211
  %i.bd = load i64, ptr %i.a, align 8, !range !69, !noalias !211, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !70, !noalias !211, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16EINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1X_7flatten7FlattenIB1T_INtNtB1X_4take4TakeINtNtB1X_4skip4SkipINtNtNtB21_5slice4iter11ChunksExactBU_EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4G_5LayerINtB4E_15CroppedChannelsINtB4G_11AnyChannelsNtB4G_11FlatSamplesEEENtB4E_16ApplyCroppedView18reallocate_cropped012crop_samplesBU_E0EENCB4t_s_0EE9from_iterB4I_:bb.a
  %.val2.i.i.i.i.i.i.i.peel.i.i = load i64, ptr %i.bl, align 8, !alias.scope !332, !noalias !317, !noundef !4 ; 5 uses
  %i.by = icmp ult i64 %.val2.i.i.i.i.i.i.i.peel.i.i, %.val.i.i.i.i.i.i.i.peel.i.i
  %.not.i.i.i.i.i.i.i.peel.i.i = icmp ugt i64 %.val2.i.i.i.i.i.i.i.peel.i.i, %.sroa.516.0.copyload.i
  %or.cond.i.i.i.i.i.i.i.peel.i.i = or i1 %i.by, %.not.i.i.i.i.i.i.i.peel.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.peel.i.i, label %.loopexit38.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.peel.i.i, !prof !258

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.peel.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.thread90.i.peel.i.i
  %i.bz = sub i64 %.promoted1439.pn.i.peel.i.i, %.sroa.516.0.copyload.i ; 5 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1.i.pn99.i.peel.i.i, i64 %.sroa.516.0.copyload.i ; 6 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1.i.pn99.i.peel.i.i, i64 %.val2.i.i.i.i.i.i.i.peel.i.i ; 3 uses
  %i.cc = icmp samesign eq i64 %.val.i.i.i.i.i.i.i.peel.i.i, %.val2.i.i.i.i.i.i.i.peel.i.i
  br i1 %i.cc, label %select.unfold.i.i.i.i.peel.next.i.preheader.i, label %.loopexit.loopexit.i.loopexit.i.i

select.unfold.i.i.i.i.peel.next.i.preheader.i:    ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.peel.i.i
  %i.cd = icmp eq i64 %i.br, 0
  br i1 %i.cd, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %select.unfold.i.i.i.i.peel.next.i.preheader.i
  %i.ce = add i64 %.promoted1228.i.i.i, -2        ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i6 = icmp ugt i64 %.sroa.516.0.copyload.i, %i.bz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i6, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.preheader
  %i.cf = sub nuw i64 %i.bz, %.sroa.516.0.copyload.i ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %.sroa.516.0.copyload.i ; 2 uses
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i
  %i.ci = phi ptr [ %i.cn, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i ], [ %i.cg, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.cj = phi i64 [ %i.cm, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i ], [ %i.cf, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader ] ; 3 uses
  %.promoted1122.i19.i26.i856 = phi ptr [ %i.ci, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i ], [ %i.ca, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader ]
  %i.ck = phi i64 [ %i.cl, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i ], [ %i.ce, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader ]
  %i.cl = add i64 %i.ck, -1                       ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.516.0.copyload.i, %i.cj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i

.loopexit38.i.i:                                  ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.thread90.i.peel.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.val.i.i.i.i.i.i.i.peel.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.peel.i.i, i64 noundef range(i64 0, 4611686018427387904) %.sroa.516.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !211

.noexc.i:                                         ; preds = %.loopexit38.i.i
  unreachable

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.cm = sub nuw i64 %i.cj, %.sroa.516.0.copyload.i ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %.sroa.516.0.copyload.i ; 2 uses
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit, label %.lr.ph.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit: ; preds = %.lr.ph.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader
  %.promoted1122.i19.i26.i8.lcssa = phi ptr [ %i.ca, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader ], [ %.promoted1122.i19.i26.i856, %.lr.ph.i ], [ %i.ci, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i ]
  %.lcssa49 = phi i64 [ %i.cf, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i ], [ %i.cm, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i ]
  %.lcssa = phi ptr [ %i.cg, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i ], [ %i.cn, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i ]
  %.promoted1226.i.i.i.ph = phi i64 [ 0, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i ], [ 0, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.promoted1122.i19.i26.i8.lcssa, i64 %.val.i.i.i.i.i.i.i.peel.i.i
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit, %.lr.ph.i.preheader, %select.unfold.i.i.i.i.peel.next.i.preheader.i, %bb.s, %bb.r, %bb.q, %bb.o, %select.unfold.i.i.i.i.preheader.i.i
  %.promoted17.i20.lcssa.i.i = phi ptr [ %.promoted18.i.i.i, %select.unfold.i.i.i.i.preheader.i.i ], [ %.promoted18.i.i.i, %bb.o ], [ %.promoted18.i.i.i, %bb.q ], [ %.promoted18.i.i.i, %bb.r ], [ %.promoted18.i.i.i, %bb.s ], [ %i.cb, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cp, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.promoted1438.i.i.i = phi i64 [ %.promoted1440.i.i.i, %select.unfold.i.i.i.i.preheader.i.i ], [ %.promoted1440.i.i.i, %bb.o ], [ 0, %bb.q ], [ %i.bw, %bb.r ], [ %.promoted1440.i.i.i, %bb.s ], [ %i.bz, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ %i.bz, %.lr.ph.i.preheader ], [ %.lcssa49, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.promoted1332.i.i.i = phi i64 [ %.promoted1334.i.i.i, %select.unfold.i.i.i.i.preheader.i.i ], [ %.promoted1334.i.i.i, %bb.o ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ 0, %.lr.ph.i.preheader ], [ 0, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.promoted1226.i.i.i = phi i64 [ %.promoted1228.i.i.i, %select.unfold.i.i.i.i.preheader.i.i ], [ 0, %bb.o ], [ %i.br, %bb.q ], [ %i.br, %bb.r ], [ %i.br, %bb.s ], [ 0, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ %i.ce, %.lr.ph.i.preheader ], [ %.promoted1226.i.i.i.ph, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.promoted1121.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.preheader.i.i ], [ %.promoted1123.i.i.i, %bb.o ], [ %.promoted1123.i.i.i, %bb.q ], [ %i.bx, %bb.r ], [ %.promoted1123.i.i.i, %bb.s ], [ %i.ca, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ %i.ca, %.lr.ph.i.preheader ], [ %.lcssa, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i56.i.i.i, null
  %i.cq = icmp eq ptr %spec.select.i9.i.i.i56.i.i.i, %.val3.i62.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i56.i.i.i, i64 2
  %or.cond125.i.i.i = select i1 %.not.i7.i.i.i.i.i.i, i1 true, i1 %i.cq
  br i1 %or.cond125.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16EINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlattenIB1O_INtNtB1S_4take4TakeINtNtB1S_4skip4SkipINtNtNtB1W_5slice4iter11ChunksExactBR_EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4B_5LayerINtB4z_15CroppedChannelsINtB4B_11AnyChannelsNtB4B_11FlatSamplesEEENtB4z_16ApplyCroppedView18reallocate_cropped012crop_samplesBR_E0EENCB4o_s_0EE11spec_extendB4D_.exit.i, label %.loopexit.i.i.i

.loopexit.loopexit.i.loopexit.i.i:                ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.i.i.i.i.peel.i.i
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1.i.pn99.i.peel.i.i, i64 %.val.i.i.i.i.i.i.i.peel.i.i
  br label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.loopexit.loopexit.i.loopexit.i.i, %bb.n
  %.promoted1439.i.lcssa.i.i = phi i64 [ %.promoted1440.i.i.i, %bb.n ], [ %i.bz, %.loopexit.loopexit.i.loopexit.i.i ]
  %.promoted1333.i.lcssa.i.i = phi i64 [ %.promoted1334.i.i.i, %bb.n ], [ 0, %.loopexit.loopexit.i.loopexit.i.i ]
  %.promoted1227.i.lcssa.i.i = phi i64 [ %.promoted1228.i.i.i, %bb.n ], [ %i.br, %.loopexit.loopexit.i.loopexit.i.i ]
  %.promoted1122.i.lcssa.i.i = phi ptr [ %.promoted1123.i.i.i, %bb.n ], [ %i.ca, %.loopexit.loopexit.i.loopexit.i.i ]
  %.promoted17.i.lcssa.i.i = phi ptr [ %.promoted18.i.i.i, %bb.n ], [ %i.cb, %.loopexit.loopexit.i.loopexit.i.i ]
  %.lcssa.i.i = phi ptr [ %i.bo, %bb.n ], [ %i.cs, %.loopexit.loopexit.i.loopexit.i.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 2
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i
  %.promoted17.i5.i.i = phi ptr [ %.promoted17.i20.lcssa.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i ], [ %.promoted17.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %spec.select.i9.i.i.i55.i.i.i = phi ptr [ %i.cr, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i ], [ %spec.select.i9.i.i.i56.i.i.i, %.loopexit.loopexit.i.i.i ] ; 3 uses
  %.promoted1436.i.i.i = phi i64 [ %.promoted1438.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i ], [ %.promoted1439.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.promoted1330.i.i.i = phi i64 [ %.promoted1332.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i ], [ %.promoted1333.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.promoted1225.i.i.i = phi i64 [ %.promoted1226.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i ], [ %.promoted1227.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.promoted1119.i.i.i = phi ptr [ %.promoted1121.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i ], [ %.promoted1122.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %i.cu = phi ptr [ null, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i ], [ %i.ct, %.loopexit.loopexit.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i56.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i ], [ %.lcssa.i.i, %.loopexit.loopexit.i.i.i ]
  %.val.i.i.i.i = load i16, ptr %.sroa.0.0.i.i.i.i.i.i, align 2, !noalias !335, !noundef !4
  %i.cv = icmp samesign ult i64 %i.bn, 4611686018427387904
  call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %i.b, align 8, !range !13, !alias.scope !336, !noalias !337, !noundef !4
  %i.cx = icmp eq i64 %i.bn, %i.cw
  br i1 %i.cx, label %bb.t, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i

bb.t:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i.i.i.i.i8.i = icmp eq ptr %i.cu, null
  %i.cy = ptrtoint ptr %.promoted17.i5.i.i to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  %i.db = lshr exact i64 %i.da, 1
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i8.i, i64 0, i64 %i.db
  %.not53.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i55.i.i.i, null
  %i.dc = ptrtoint ptr %spec.select.i9.i.i.i55.i.i.i to i64
  %i.dd = sub nuw i64 %i.ar, %i.dc
  %i.de = lshr exact i64 %i.dd, 1
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %i.de
  %i.df = add nuw i64 %.sroa.7.0.i.i.i.i.i.i, %.sroa.8.0.i.i.i.i.i.i ; 2 uses
  %.not54.i.i.i.i.i.i = icmp eq ptr %.promoted1119.i.i.i, null
  %i.dg = icmp eq i64 %.promoted1225.i.i.i, 0
  %or.cond126.i.i.i = select i1 %.not54.i.i.i.i.i.i, i1 true, i1 %i.dg
  br i1 %or.cond126.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.bm, label %bb.v, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !211

.noexc9.i:                                        ; preds = %bb.v
  unreachable

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i.i.i: ; preds = %bb.u
  %i.dh = udiv i64 %.promoted1436.i.i.i, %.sroa.516.0.copyload.i
  %.not78.i.i.i.i.i.i = icmp ugt i64 %i.dh, %.promoted1330.i.i.i
  br i1 %.not78.i.i.i.i.i.i, label %bb.w, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i.i.i, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i.i.i
  %.sink80.i.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i.i.i ], [ %.sroa.5.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i = phi i64 [ %i.df, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.thread.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2W_5LayerINtB2U_15CroppedChannelsINtB2W_11AnyChannelsNtB2W_11FlatSamplesEEENtB2U_16ApplyCroppedView18reallocate_cropped012crop_samplesB24_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink80.i.i.i.sroa.phi.i.i.i, align 8, !alias.scope !338, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.di = add nuw i64 %i.df, 1
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bn, i64 noundef %i.di, i64 noundef 2, i64 noundef 2)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i unwind label %.loopexit.i, !noalias !211

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i: ; preds = %bb.w, %.loopexit.i.i.i
  %i.dj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !336, !noalias !337, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.bn
  store i16 %.val.i.i.i.i, ptr %i.dk, align 2, !noalias !337
  %i.dl = add nuw nsw i64 %i.bn, 1                ; 2 uses
  store i64 %i.dl, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !336, !noalias !337
  br label %bb.n

bb.x:                                             ; preds = %.sink.split.i8.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !206, !noalias !209
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.dm, align 8, !alias.scope !206, !noalias !209
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dn, align 8, !alias.scope !206, !noalias !209
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2b_7flatten7FlattenIB27_INtNtB2b_4take4TakeINtNtB2b_4skip4SkipINtNtNtB2f_5slice4iter11ChunksExactB11_EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4V_5LayerINtB4T_15CroppedChannelsINtB4V_11AnyChannelsNtB4V_11FlatSamplesEEENtB4T_16ApplyCroppedView18reallocate_cropped012crop_samplesB11_E0EENCB4I_s_0EE9from_iterB4X_.exit

.loopexit.i:                                      ; preds = %bb.w
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %bb.v, %.loopexit38.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs51eXCul1Ifq_4half8binary163f16EECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.z, !noalias !211

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16EINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlattenIB1O_INtNtB1S_4take4TakeINtNtB1S_4skip4SkipINtNtNtB1W_5slice4iter11ChunksExactBR_EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4B_5LayerINtB4z_15CroppedChannelsINtB4B_11AnyChannelsNtB4B_11FlatSamplesEEENtB4z_16ApplyCroppedView18reallocate_cropped012crop_samplesBR_E0EENCB4o_s_0EE11spec_extendB4D_.exit.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3e_5LayerINtB3c_15CroppedChannelsINtB3e_11AnyChannelsNtB3e_11FlatSamplesEEENtB3c_16ApplyCroppedView18reallocate_cropped012crop_samplesB2m_E0EEINtB5_8FuseImplBY_E4nextB3g_.exit.thread.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !209
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2b_7flatten7FlattenIB27_INtNtB2b_4take4TakeINtNtB2b_4skip4SkipINtNtNtB2f_5slice4iter11ChunksExactB11_EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4V_5LayerINtB4T_15CroppedChannelsINtB4V_11AnyChannelsNtB4V_11FlatSamplesEEENtB4T_16ApplyCroppedView18reallocate_cropped012crop_samplesB11_E0EENCB4I_s_0EE9from_iterB4X_.exit

bb.z:                                             ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !211
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs51eXCul1Ifq_4half8binary163f16EECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.y
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2b_7flatten7FlattenIB27_INtNtB2b_4take4TakeINtNtB2b_4skip4SkipINtNtNtB2f_5slice4iter11ChunksExactB11_EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4V_5LayerINtB4T_15CroppedChannelsINtB4V_11AnyChannelsNtB4V_11FlatSamplesEEENtB4T_16ApplyCroppedView18reallocate_cropped012crop_samplesB11_E0EENCB4I_s_0EE9from_iterB4X_.exit: ; preds = %bb.x, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16EINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlattenIB1O_INtNtB1S_4take4TakeINtNtB1S_4skip4SkipINtNtNtB1W_5slice4iter11ChunksExactBR_EEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4B_5LayerINtB4z_15CroppedChannelsINtB4B_11AnyChannelsNtB4B_11FlatSamplesEEENtB4z_16ApplyCroppedView18reallocate_cropped012crop_samplesBR_E0EENCB4o_s_0EE11spec_extendB4D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1m_7flatten7FlattenIB1i_INtNtB1m_4take4TakeINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB43_5LayerINtB41_15CroppedChannelsINtB43_11AnyChannelsNtB43_11FlatSamplesEEENtB41_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB3Q_s_0EE9from_iterB45_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 3 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !364, !noalias !349
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.ad, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !367, !noalias !349, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.l, ptr null, ptr %i.m
  store ptr %spec.select.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !364, !noalias !349
  br i1 %i.l, label %select.unfold.i.i.i.i, label %.loopexit21.loopexit.i

select.unfold.i.i.i.i:                            ; preds = %.sink.split.i.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !375, !noalias !349, !noundef !4 ; 3 uses
  %.not.i5.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i5.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !379, !noalias !349, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %i.o, -1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !379, !noalias !349
  %i.r = load i64, ptr %i.f, align 8, !alias.scope !382, !noalias !349, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.g, !prof !242

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.g, align 8, !alias.scope !385, !noalias !349, !noundef !4 ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !alias.scope !385, !noalias !349, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = sub nuw i64 %i.s, %i.t
  store ptr %i.u, ptr %1, align 8, !alias.scope !385, !noalias !349, !captures !246
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !385, !noalias !349
  br label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %bb.f ], [ null, %bb.e ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %i.t, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactfEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  store i64 0, ptr %i.f, align 8, !alias.scope !382, !noalias !349
  %i.y = tail call fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.r) #19, !alias.scope !382, !noalias !349
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactfEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactfEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i64 } [ %i.y, %bb.g ], [ %i.x, %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i.i.i, 0 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactfEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i
  %i.aa = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !388, !noalias !349, !nonnull !4, !align !248, !noundef !4 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i, align 8, !alias.scope !389, !noalias !392, !noundef !4 ; 3 uses
  %i.ab = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !395, !noalias !392, !noundef !4 ; 4 uses
  %i.ac = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %.val2.i.i.i.i.i.i.i, %i.aa
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ac, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i, !prof !258

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15, !noalias !392
  unreachable

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.val.i.i.i.i.i.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.val2.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.c, align 8, !alias.scope !398, !noalias !349
  store ptr %i.ae, ptr %i.d, align 8, !alias.scope !398, !noalias !349
  br label %bb.b

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactfEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i, %bb.c, %select.unfold.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !399, !noalias !349, !noundef !4 ; 4 uses
  %.not.i7.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i7.i.i.i.i, label %bb.x, label %.sink.split.i8.i.i.i.i

.sink.split.i8.i.i.i.i:                           ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !402, !noalias !349, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.x, label %.sink.split.i8.i.i.i..loopexit21_crit_edge.i

.sink.split.i8.i.i.i..loopexit21_crit_edge.i:     ; preds = %.sink.split.i8.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !407, !noalias !414
  %.val3.i.i.i.i.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !407, !noalias !414
  br label %.loopexit21.i

.loopexit21.loopexit.i:                           ; preds = %.sink.split.i.i.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre40.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !407, !noalias !414
  %.phi.trans.insert41.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i62.i.i.i.pre.i = load ptr, ptr %.phi.trans.insert41.i, align 8, !alias.scope !407, !noalias !414
  br label %.loopexit21.i

.loopexit21.i:                                    ; preds = %.loopexit21.loopexit.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i
  %.val3.i62.i.i.i.i = phi ptr [ %i.ai, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %.val3.i62.i.i.i.pre.i, %.loopexit21.loopexit.i ] ; 2 uses
  %i.al = phi ptr [ %i.ak, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %.pre40.i, %.loopexit21.loopexit.i ] ; 3 uses
  %.val3.i.i.i.i.i = phi ptr [ %.val3.i.i.i.i.pre.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.k, %.loopexit21.loopexit.i ] ; 2 uses
  %i.am = phi ptr [ %.pre.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.m, %.loopexit21.loopexit.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ag, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.j, %.loopexit21.loopexit.i ]
  %.val.i.i = load float, ptr %.sroa.0.0.i.i.i.i, align 4, !noalias !418, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 2
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.aq
  %.not53.i.i.i.i = icmp eq ptr %i.al, null
  %i.ar = ptrtoint ptr %.val3.i62.i.i.i.i to i64  ; 2 uses
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 2
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %i.au
  %i.av = add nuw nsw i64 %.sroa.7.0.i.i.i.i, %.sroa.8.0.i.i.i.i ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !alias.scope !407, !noalias !414, !noundef !4 ; 2 uses
  %.not54.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not54.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit21.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !431, !noalias !432, !noundef !4
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !438, !noalias !439, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %bb.l, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15, !noalias !441
  unreachable

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i: ; preds = %bb.k
  %.val.i.i.i.i.i.i7.i = load i64, ptr %i.g, align 8, !alias.scope !438, !noalias !439
  %i.ba = udiv i64 %.val.i.i.i.i.i.i7.i, %.val3.i.i.i.i.i.i.i
  %i.bb = load i64, ptr %i.f, align 8, !alias.scope !438, !noalias !439, !noundef !4
  %.not78.i.i.i.i = icmp ugt i64 %i.ba, %i.bb
  br i1 %.not78.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2P_5LayerINtB2N_15CroppedChannelsINtB2P_11AnyChannelsNtB2P_11FlatSamplesEEENtB2N_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2R_.exit.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i, %bb.j, %.loopexit21.i
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2P_5LayerINtB2N_15CroppedChannelsINtB2P_11AnyChannelsNtB2P_11FlatSamplesEEENtB2N_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2R_.exit.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2P_5LayerINtB2N_15CroppedChannelsINtB2P_11AnyChannelsNtB2P_11FlatSamplesEEENtB2N_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2R_.exit.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i
  %.sink80.i.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i ], [ %.sroa.5.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.av, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %.sink80.i.i.i.sroa.phi.i, align 8, !alias.scope !444, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.bc = tail call i64 @llvm.umax.i64(i64 %i.av, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.bc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !354
  %i.bd = load i64, ptr %i.a, align 8, !range !69, !noalias !354, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !70, !noalias !354, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1m_7flatten7FlattenIB1i_INtNtB1m_4take4TakeINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB43_5LayerINtB41_15CroppedChannelsINtB43_11AnyChannelsNtB43_11FlatSamplesEEENtB41_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB3Q_s_0EE9from_iterB45_:bb.a
  %.val2.i.i.i.i.i.i.i.peel.i.i = load i64, ptr %i.bl, align 8, !alias.scope !470, !noalias !455, !noundef !4 ; 5 uses
  %i.by = icmp ult i64 %.val2.i.i.i.i.i.i.i.peel.i.i, %.val.i.i.i.i.i.i.i.peel.i.i
  %.not.i.i.i.i.i.i.i.peel.i.i = icmp ugt i64 %.val2.i.i.i.i.i.i.i.peel.i.i, %.sroa.516.0.copyload.i
  %or.cond.i.i.i.i.i.i.i.peel.i.i = or i1 %i.by, %.not.i.i.i.i.i.i.i.peel.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.peel.i.i, label %.loopexit38.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.peel.i.i, !prof !258

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.peel.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactfEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.thread90.i.peel.i.i
  %i.bz = sub i64 %.promoted1439.pn.i.peel.i.i, %.sroa.516.0.copyload.i ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i.pn99.i.peel.i.i, i64 %.sroa.516.0.copyload.i ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i.pn99.i.peel.i.i, i64 %.val2.i.i.i.i.i.i.i.peel.i.i ; 3 uses
  %i.cc = icmp samesign eq i64 %.val.i.i.i.i.i.i.i.peel.i.i, %.val2.i.i.i.i.i.i.i.peel.i.i
  br i1 %i.cc, label %select.unfold.i.i.i.i.peel.next.i.preheader.i, label %.loopexit.loopexit.i.loopexit.i.i

select.unfold.i.i.i.i.peel.next.i.preheader.i:    ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.peel.i.i
  %i.cd = icmp eq i64 %i.br, 0
  br i1 %i.cd, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %select.unfold.i.i.i.i.peel.next.i.preheader.i
  %i.ce = add i64 %.promoted1228.i.i.i, -2        ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i6 = icmp ugt i64 %.sroa.516.0.copyload.i, %i.bz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i6, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.preheader
  %i.cf = sub nuw i64 %i.bz, %.sroa.516.0.copyload.i ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.sroa.516.0.copyload.i ; 2 uses
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i
  %i.ci = phi ptr [ %i.cn, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i ], [ %i.cg, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.cj = phi i64 [ %i.cm, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i ], [ %i.cf, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader ] ; 3 uses
  %.promoted1122.i19.i26.i856 = phi ptr [ %i.ci, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i ], [ %i.ca, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader ]
  %i.ck = phi i64 [ %i.cl, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i ], [ %i.ce, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader ]
  %i.cl = add i64 %i.ck, -1                       ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.516.0.copyload.i, %i.cj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i

.loopexit38.i.i:                                  ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactfEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.thread90.i.peel.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.val.i.i.i.i.i.i.i.peel.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.peel.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.516.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !354

.noexc.i:                                         ; preds = %.loopexit38.i.i
  unreachable

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.cm = sub nuw i64 %i.cj, %.sroa.516.0.copyload.i ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.sroa.516.0.copyload.i ; 2 uses
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit, label %.lr.ph.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit: ; preds = %.lr.ph.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader
  %.promoted1122.i19.i26.i8.lcssa = phi ptr [ %i.ca, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader ], [ %.promoted1122.i19.i26.i856, %.lr.ph.i ], [ %i.ci, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i ]
  %.lcssa49 = phi i64 [ %i.cf, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i ], [ %i.cm, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i ]
  %.lcssa = phi ptr [ %i.cg, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i ], [ %i.cn, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i ]
  %.promoted1226.i.i.i.ph = phi i64 [ 0, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i ], [ 0, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.promoted1122.i19.i26.i8.lcssa, i64 %.val.i.i.i.i.i.i.i.peel.i.i
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit, %.lr.ph.i.preheader, %select.unfold.i.i.i.i.peel.next.i.preheader.i, %bb.s, %bb.r, %bb.q, %bb.o, %select.unfold.i.i.i.i.preheader.i.i
  %.promoted17.i20.lcssa.i.i = phi ptr [ %.promoted18.i.i.i, %select.unfold.i.i.i.i.preheader.i.i ], [ %.promoted18.i.i.i, %bb.o ], [ %.promoted18.i.i.i, %bb.q ], [ %.promoted18.i.i.i, %bb.r ], [ %.promoted18.i.i.i, %bb.s ], [ %i.cb, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cp, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.promoted1438.i.i.i = phi i64 [ %.promoted1440.i.i.i, %select.unfold.i.i.i.i.preheader.i.i ], [ %.promoted1440.i.i.i, %bb.o ], [ 0, %bb.q ], [ %i.bw, %bb.r ], [ %.promoted1440.i.i.i, %bb.s ], [ %i.bz, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ %i.bz, %.lr.ph.i.preheader ], [ %.lcssa49, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.promoted1332.i.i.i = phi i64 [ %.promoted1334.i.i.i, %select.unfold.i.i.i.i.preheader.i.i ], [ %.promoted1334.i.i.i, %bb.o ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ 0, %.lr.ph.i.preheader ], [ 0, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.promoted1226.i.i.i = phi i64 [ %.promoted1228.i.i.i, %select.unfold.i.i.i.i.preheader.i.i ], [ 0, %bb.o ], [ %i.br, %bb.q ], [ %i.br, %bb.r ], [ %i.br, %bb.s ], [ 0, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ %i.ce, %.lr.ph.i.preheader ], [ %.promoted1226.i.i.i.ph, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.promoted1121.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.preheader.i.i ], [ %.promoted1123.i.i.i, %bb.o ], [ %.promoted1123.i.i.i, %bb.q ], [ %i.bx, %bb.r ], [ %.promoted1123.i.i.i, %bb.s ], [ %i.ca, %select.unfold.i.i.i.i.peel.next.i.preheader.i ], [ %i.ca, %.lr.ph.i.preheader ], [ %.lcssa, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i.loopexit ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i56.i.i.i, null
  %i.cq = icmp eq ptr %spec.select.i9.i.i.i56.i.i.i, %.val3.i62.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i56.i.i.i, i64 4
  %or.cond125.i.i.i = select i1 %.not.i7.i.i.i.i.i.i, i1 true, i1 %i.cq
  br i1 %or.cond125.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1h_7flatten7FlattenIB1d_INtNtB1h_4take4TakeINtNtB1h_4skip4SkipINtNtNtB1l_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3Y_5LayerINtB3W_15CroppedChannelsINtB3Y_11AnyChannelsNtB3Y_11FlatSamplesEEENtB3W_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB3L_s_0EE11spec_extendB40_.exit.i, label %.loopexit.i.i.i

.loopexit.loopexit.i.loopexit.i.i:                ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i.peel.i.i
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i.pn99.i.peel.i.i, i64 %.val.i.i.i.i.i.i.i.peel.i.i
  br label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.loopexit.loopexit.i.loopexit.i.i, %bb.n
  %.promoted1439.i.lcssa.i.i = phi i64 [ %.promoted1440.i.i.i, %bb.n ], [ %i.bz, %.loopexit.loopexit.i.loopexit.i.i ]
  %.promoted1333.i.lcssa.i.i = phi i64 [ %.promoted1334.i.i.i, %bb.n ], [ 0, %.loopexit.loopexit.i.loopexit.i.i ]
  %.promoted1227.i.lcssa.i.i = phi i64 [ %.promoted1228.i.i.i, %bb.n ], [ %i.br, %.loopexit.loopexit.i.loopexit.i.i ]
  %.promoted1122.i.lcssa.i.i = phi ptr [ %.promoted1123.i.i.i, %bb.n ], [ %i.ca, %.loopexit.loopexit.i.loopexit.i.i ]
  %.promoted17.i.lcssa.i.i = phi ptr [ %.promoted18.i.i.i, %bb.n ], [ %i.cb, %.loopexit.loopexit.i.loopexit.i.i ]
  %.lcssa.i.i = phi ptr [ %i.bo, %bb.n ], [ %i.cs, %.loopexit.loopexit.i.loopexit.i.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i
  %.promoted17.i5.i.i = phi ptr [ %.promoted17.i20.lcssa.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i ], [ %.promoted17.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %spec.select.i9.i.i.i55.i.i.i = phi ptr [ %i.cr, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i ], [ %spec.select.i9.i.i.i56.i.i.i, %.loopexit.loopexit.i.i.i ] ; 3 uses
  %.promoted1436.i.i.i = phi i64 [ %.promoted1438.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i ], [ %.promoted1439.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.promoted1330.i.i.i = phi i64 [ %.promoted1332.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i ], [ %.promoted1333.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.promoted1225.i.i.i = phi i64 [ %.promoted1226.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i ], [ %.promoted1227.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.promoted1119.i.i.i = phi ptr [ %.promoted1121.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i ], [ %.promoted1122.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %i.cu = phi ptr [ null, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i ], [ %i.ct, %.loopexit.loopexit.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i56.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i ], [ %.lcssa.i.i, %.loopexit.loopexit.i.i.i ]
  %.val.i.i.i.i = load float, ptr %.sroa.0.0.i.i.i.i.i.i, align 4, !noalias !473, !noundef !4
  %i.cv = icmp samesign ult i64 %i.bn, 2305843009213693952
  call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %i.b, align 8, !range !13, !alias.scope !474, !noalias !475, !noundef !4
  %i.cx = icmp eq i64 %i.bn, %i.cw
  br i1 %i.cx, label %bb.t, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i

bb.t:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i.i.i.i.i8.i = icmp eq ptr %i.cu, null
  %i.cy = ptrtoint ptr %.promoted17.i5.i.i to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  %i.db = lshr exact i64 %i.da, 2
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i8.i, i64 0, i64 %i.db
  %.not53.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i55.i.i.i, null
  %i.dc = ptrtoint ptr %spec.select.i9.i.i.i55.i.i.i to i64
  %i.dd = sub nuw i64 %i.ar, %i.dc
  %i.de = lshr exact i64 %i.dd, 2
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %i.de
  %i.df = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i, %.sroa.8.0.i.i.i.i.i.i ; 2 uses
  %.not54.i.i.i.i.i.i = icmp eq ptr %.promoted1119.i.i.i, null
  %i.dg = icmp eq i64 %.promoted1225.i.i.i, 0
  %or.cond126.i.i.i = select i1 %.not54.i.i.i.i.i.i, i1 true, i1 %i.dg
  br i1 %or.cond126.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.bm, label %bb.v, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !354

.noexc9.i:                                        ; preds = %bb.v
  unreachable

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i.i.i: ; preds = %bb.u
  %i.dh = udiv i64 %.promoted1436.i.i.i, %.sroa.516.0.copyload.i
  %.not78.i.i.i.i.i.i = icmp ugt i64 %i.dh, %.promoted1330.i.i.i
  br i1 %.not78.i.i.i.i.i.i, label %bb.w, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i.i.i, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i.i.i
  %.sink80.i.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i.i.i ], [ %.sroa.5.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i = phi i64 [ %i.df, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink80.i.i.i.sroa.phi.i.i.i, align 8, !alias.scope !476, !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.di = add nuw nsw i64 %i.df, 1
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bn, i64 noundef %i.di, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i unwind label %.loopexit.i, !noalias !354

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i: ; preds = %bb.w, %.loopexit.i.i.i
  %i.dj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !474, !noalias !475, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.bn
  store float %.val.i.i.i.i, ptr %i.dk, align 4, !noalias !475
  %i.dl = add nuw nsw i64 %i.bn, 1                ; 2 uses
  store i64 %i.dl, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !474, !noalias !475
  br label %bb.n

bb.x:                                             ; preds = %.sink.split.i8.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !349, !noalias !352
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.dm, align 8, !alias.scope !349, !noalias !352
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dn, align 8, !alias.scope !349, !noalias !352
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlattenIB1v_INtNtB1z_4take4TakeINtNtB1z_4skip4SkipINtNtNtB1D_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4g_5LayerINtB4e_15CroppedChannelsINtB4g_11AnyChannelsNtB4g_11FlatSamplesEEENtB4e_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB43_s_0EE9from_iterB4i_.exit

.loopexit.i:                                      ; preds = %bb.w
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %bb.v, %.loopexit38.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.z, !noalias !354

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1h_7flatten7FlattenIB1d_INtNtB1h_4take4TakeINtNtB1h_4skip4SkipINtNtNtB1l_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3Y_5LayerINtB3W_15CroppedChannelsINtB3Y_11AnyChannelsNtB3Y_11FlatSamplesEEENtB3W_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB3L_s_0EE11spec_extendB40_.exit.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !352
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlattenIB1v_INtNtB1z_4take4TakeINtNtB1z_4skip4SkipINtNtNtB1D_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4g_5LayerINtB4e_15CroppedChannelsINtB4g_11AnyChannelsNtB4g_11FlatSamplesEEENtB4e_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB43_s_0EE9from_iterB4i_.exit

bb.z:                                             ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !354
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.y
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlattenIB1v_INtNtB1z_4take4TakeINtNtB1z_4skip4SkipINtNtNtB1D_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4g_5LayerINtB4e_15CroppedChannelsINtB4g_11AnyChannelsNtB4g_11FlatSamplesEEENtB4e_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB43_s_0EE9from_iterB4i_.exit: ; preds = %bb.x, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1h_7flatten7FlattenIB1d_INtNtB1h_4take4TakeINtNtB1h_4skip4SkipINtNtNtB1l_5slice4iter11ChunksExactfEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3Y_5LayerINtB3W_15CroppedChannelsINtB3Y_11AnyChannelsNtB3Y_11FlatSamplesEEENtB3W_16ApplyCroppedView18reallocate_cropped012crop_samplesfE0EENCB3L_s_0EE11spec_extendB40_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !354
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1m_7flatten7FlattenIB1i_INtNtB1m_4take4TakeINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB43_5LayerINtB41_15CroppedChannelsINtB43_11AnyChannelsNtB43_11FlatSamplesEEENtB41_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB3Q_s_0EE9from_iterB45_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 3 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !502, !noalias !487
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.ad, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !505, !noalias !487, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.l, ptr null, ptr %i.m
  store ptr %spec.select.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !502, !noalias !487
  br i1 %i.l, label %select.unfold.i.i.i.i, label %.loopexit21.loopexit.i

select.unfold.i.i.i.i:                            ; preds = %.sink.split.i.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !513, !noalias !487, !noundef !4 ; 3 uses
  %.not.i5.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i5.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !517, !noalias !487, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %i.o, -1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !517, !noalias !487
  %i.r = load i64, ptr %i.f, align 8, !alias.scope !520, !noalias !487, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.g, !prof !242

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.g, align 8, !alias.scope !523, !noalias !487, !noundef !4 ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !alias.scope !523, !noalias !487, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = sub nuw i64 %i.s, %i.t
  store ptr %i.u, ptr %1, align 8, !alias.scope !523, !noalias !487, !captures !246
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !523, !noalias !487
  br label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %bb.f ], [ null, %bb.e ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %i.t, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactmEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  store i64 0, ptr %i.f, align 8, !alias.scope !520, !noalias !487
  %i.y = tail call fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.r) #19, !alias.scope !520, !noalias !487
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactmEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactmEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i64 } [ %i.y, %bb.g ], [ %i.x, %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i.i.i, 0 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactmEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i
  %i.aa = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !526, !noalias !487, !nonnull !4, !align !248, !noundef !4 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i, align 8, !alias.scope !527, !noalias !530, !noundef !4 ; 3 uses
  %i.ab = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !533, !noalias !530, !noundef !4 ; 4 uses
  %i.ac = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %.val2.i.i.i.i.i.i.i, %i.aa
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ac, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i, !prof !258

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15, !noalias !530
  unreachable

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.i.i.i.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.val.i.i.i.i.i.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.val2.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.c, align 8, !alias.scope !536, !noalias !487
  store ptr %i.ae, ptr %i.d, align 8, !alias.scope !536, !noalias !487
  br label %bb.b

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter11ChunksExactmEEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i.i, %bb.c, %select.unfold.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !537, !noalias !487, !noundef !4 ; 4 uses
  %.not.i7.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i7.i.i.i.i, label %bb.x, label %.sink.split.i8.i.i.i.i

.sink.split.i8.i.i.i.i:                           ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !540, !noalias !487, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.x, label %.sink.split.i8.i.i.i..loopexit21_crit_edge.i

.sink.split.i8.i.i.i..loopexit21_crit_edge.i:     ; preds = %.sink.split.i8.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !545, !noalias !552
  %.val3.i.i.i.i.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !545, !noalias !552
  br label %.loopexit21.i

.loopexit21.loopexit.i:                           ; preds = %.sink.split.i.i.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre40.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !545, !noalias !552
  %.phi.trans.insert41.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i62.i.i.i.pre.i = load ptr, ptr %.phi.trans.insert41.i, align 8, !alias.scope !545, !noalias !552
  br label %.loopexit21.i

.loopexit21.i:                                    ; preds = %.loopexit21.loopexit.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i
  %.val3.i62.i.i.i.i = phi ptr [ %i.ai, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %.val3.i62.i.i.i.pre.i, %.loopexit21.loopexit.i ] ; 2 uses
  %i.al = phi ptr [ %i.ak, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %.pre40.i, %.loopexit21.loopexit.i ] ; 3 uses
  %.val3.i.i.i.i.i = phi ptr [ %.val3.i.i.i.i.pre.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.k, %.loopexit21.loopexit.i ] ; 2 uses
  %i.am = phi ptr [ %.pre.i, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.m, %.loopexit21.loopexit.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ag, %.sink.split.i8.i.i.i..loopexit21_crit_edge.i ], [ %i.j, %.loopexit21.loopexit.i ]
  %.val.i.i = load i32, ptr %.sroa.0.0.i.i.i.i, align 4, !noalias !556, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 2
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.aq
  %.not53.i.i.i.i = icmp eq ptr %i.al, null
  %i.ar = ptrtoint ptr %.val3.i62.i.i.i.i to i64  ; 2 uses
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 2
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %i.au
  %i.av = add nuw nsw i64 %.sroa.7.0.i.i.i.i, %.sroa.8.0.i.i.i.i ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !alias.scope !545, !noalias !552, !noundef !4 ; 2 uses
  %.not54.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not54.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit21.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !569, !noalias !570, !noundef !4
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !576, !noalias !577, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %bb.l, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15, !noalias !579
  unreachable

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i: ; preds = %bb.k
  %.val.i.i.i.i.i.i7.i = load i64, ptr %i.g, align 8, !alias.scope !576, !noalias !577
  %i.ba = udiv i64 %.val.i.i.i.i.i.i7.i, %.val3.i.i.i.i.i.i.i
  %i.bb = load i64, ptr %i.f, align 8, !alias.scope !576, !noalias !577, !noundef !4
  %.not78.i.i.i.i = icmp ugt i64 %i.ba, %i.bb
  br i1 %.not78.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2P_5LayerINtB2N_15CroppedChannelsINtB2P_11AnyChannelsNtB2P_11FlatSamplesEEENtB2N_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2R_.exit.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i, %bb.j, %.loopexit21.i
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2P_5LayerINtB2N_15CroppedChannelsINtB2P_11AnyChannelsNtB2P_11FlatSamplesEEENtB2N_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2R_.exit.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenIBN_INtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2P_5LayerINtB2N_15CroppedChannelsINtB2P_11AnyChannelsNtB2P_11FlatSamplesEEENtB2N_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2R_.exit.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i
  %.sink80.i.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i ], [ %.sroa.5.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.av, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %.sink80.i.i.i.sroa.phi.i, align 8, !alias.scope !582, !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.bc = tail call i64 @llvm.umax.i64(i64 %i.av, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.bc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !492
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !492
  %i.bd = load i64, ptr %i.a, align 8, !range !69, !noalias !492, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !70, !noalias !492, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1m_7flatten7FlattenIB1i_INtNtB1m_4take4TakeINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB43_5LayerINtB41_15CroppedChannelsINtB43_11AnyChannelsNtB43_11FlatSamplesEEENtB41_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB3Q_s_0EE9from_iterB45_:bb.a
  %.sink.i.i.i.i.i.i = phi i64 [ %i.df, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.thread.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2n_5LayerINtB2l_15CroppedChannelsINtB2n_11AnyChannelsNtB2n_11FlatSamplesEEENtB2l_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_.exit.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink80.i.i.i.sroa.phi.i.i.i, align 8, !alias.scope !614, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.di = add nuw nsw i64 %i.df, 1
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bn, i64 noundef %i.di, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecmE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i unwind label %.loopexit.i, !noalias !492

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecmE7reserveCsdsTQD3x2eOp_3exr.exit.i.i.i: ; preds = %bb.w, %.loopexit.i.i.i
  %i.dj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !612, !noalias !613, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.bn
  store i32 %.val.i.i.i.i, ptr %i.dk, align 4, !noalias !613
  %i.dl = add nuw nsw i64 %i.bn, 1                ; 2 uses
  store i64 %i.dl, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !612, !noalias !613
  br label %bb.n

bb.x:                                             ; preds = %.sink.split.i8.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !487, !noalias !490
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.dm, align 8, !alias.scope !487, !noalias !490
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dn, align 8, !alias.scope !487, !noalias !490
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlattenIB1v_INtNtB1z_4take4TakeINtNtB1z_4skip4SkipINtNtNtB1D_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4g_5LayerINtB4e_15CroppedChannelsINtB4g_11AnyChannelsNtB4g_11FlatSamplesEEENtB4e_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB43_s_0EE9from_iterB4i_.exit

.loopexit.i:                                      ; preds = %bb.w
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %bb.v, %.loopexit38.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.z, !noalias !492

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1h_7flatten7FlattenIB1d_INtNtB1h_4take4TakeINtNtB1h_4skip4SkipINtNtNtB1l_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3Y_5LayerINtB3W_15CroppedChannelsINtB3Y_11AnyChannelsNtB3Y_11FlatSamplesEEENtB3W_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB3L_s_0EE11spec_extendB40_.exit.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtBb_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB2F_5LayerINtB2D_15CroppedChannelsINtB2F_11AnyChannelsNtB2F_11FlatSamplesEEENtB2D_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EEINtB5_8FuseImplBY_E4nextB2H_.exit.thread.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !490
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlattenIB1v_INtNtB1z_4take4TakeINtNtB1z_4skip4SkipINtNtNtB1D_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4g_5LayerINtB4e_15CroppedChannelsINtB4g_11AnyChannelsNtB4g_11FlatSamplesEEENtB4e_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB43_s_0EE9from_iterB4i_.exit

bb.z:                                             ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !492
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.y
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlattenIB1v_INtNtB1z_4take4TakeINtNtB1z_4skip4SkipINtNtNtB1D_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB4g_5LayerINtB4e_15CroppedChannelsINtB4g_11AnyChannelsNtB4g_11FlatSamplesEEENtB4e_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB43_s_0EE9from_iterB4i_.exit: ; preds = %bb.x, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1h_7flatten7FlattenIB1d_INtNtB1h_4take4TakeINtNtB1h_4skip4SkipINtNtNtB1l_5slice4iter11ChunksExactmEEENCINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB3Y_5LayerINtB3W_15CroppedChannelsINtB3Y_11AnyChannelsNtB3Y_11FlatSamplesEEENtB3W_16ApplyCroppedView18reallocate_cropped012crop_samplesmE0EENCB3L_s_0EE11spec_extendB40_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !492
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB2f_3map3MapIB2b_INtNtNtB2j_3ops5range5RangejEIB37_B3s_NCNCNvB13_15rip_map_indices00ENCB48_0ENCNvB13_14rip_map_levels0EIB2b_IB37_B3s_NCNvNvNvMs0_NtB13_6headerNtB5w_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB37_B5b_NCNCB5o_00ENCB5o_0ENCB5q_s_0EE9from_iterB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(608) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [608 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB27_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef align 8 dereferenceable(608) %1) #19
  %i.h = load i64, ptr %i.f, align 8, !range !69, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB27_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(608) %1) #19
  %i.j = load i64, ptr %i.e, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = tail call i64 @llvm.uadd.sat.i64(i64 %i.j, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.k, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.l = load i64, ptr %i.c, align 8, !range !69, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !70, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #18
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp ule i64 %..i, %i.o
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  store i64 %i.o, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.d, ptr noundef nonnull align 8 dereferenceable(608) %1, i64 608, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !631
  invoke fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB27_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(608) %i.d) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit
  %i.u = load i64, ptr %i.b, align 8, !range !69, !noalias !633, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit8

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.noexc6, %.lr.ph.i.i
  %i.x = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !635, !noalias !636, !noundef !4 ; 5 uses
  %i.y = icmp ult i64 %i.x, 192153584101141163
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.g, align 8, !range !13, !alias.scope !635, !noalias !636, !noundef !4
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i, label %.noexc5

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !633
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB27_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(608) %i.d) #19
  %i.ab = load i64, ptr %i.a, align 8, !noalias !633, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !633
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 1)
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.x, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 8, i64 noundef 48)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i, %bb.d
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !635, !noalias !636, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !636
  %i.af = add nuw nsw i64 %i.x, 1
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !635, !noalias !636
  invoke fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB27_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(608) %i.d) #19
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.noexc5
  %i.ag = load i64, ptr %i.b, align 8, !range !69, !noalias !633, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %.loopexit8

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit8, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i, %.noexc5
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEB1c_.exit unwind label %bb.h

.loopexit8:                                       ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEB1c_.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB2f_3map3MapINtNtNtB2j_3ops5range5RangejENCNvB13_14mip_map_levels0EIB2b_IB37_B3n_NCNvNvNvMs0_NtB13_6headerNtB4G_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB37_B4l_NCNCB4y_00ENCB4y_0ENCB4A_0EE9from_iterB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(528) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.689.i.i = alloca [8 x i8], align 8       ; 5 uses
  %.sroa.10.i.i = alloca [8 x i8], align 8        ; 4 uses
  %.sroa.6.i.i = alloca [8 x i8], align 8         ; 5 uses
  %.sroa.9.i.i = alloca [8 x i8], align 8         ; 4 uses
  %.sroa.5 = alloca [8 x i8], align 8             ; 4 uses
  %.sroa.7 = alloca [8 x i8], align 8             ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [528 x i8], align 8               ; 26 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 dereferenceable(528) %1) #19
  %i.g = load i64, ptr %i.e, align 8, !range !69, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(528) %1) #19
  %i.i = load i64, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.k = load i64, ptr %i.b, align 8, !range !69, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !70, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #18
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp ule i64 %..i, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  store i64 %i.n, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.c, ptr noundef nonnull align 8 dereferenceable(528) %1, i64 528, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !643
  invoke fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(528) %i.c) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit
  %i.t = load i64, ptr %i.a, align 8, !range !69, !noalias !645, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i, label %.loopexit9

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 521
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  br label %bb.d

bb.d:                                             ; preds = %.noexc6, %.lr.ph.i.i
  %i.aq = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !647, !noalias !648, !noundef !4 ; 5 uses
  %i.ar = icmp ult i64 %i.aq, 192153584101141163
  call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %i.f, align 8, !range !13, !alias.scope !647, !noalias !648, !noundef !4
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i, label %.noexc5

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  %i.au = load i64, ptr %i.c, align 8, !range !53, !alias.scope !659, !noalias !660, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.au, 2
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  br i1 %.not.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.av = load i64, ptr %i.w, align 8, !range !69, !alias.scope !681, !noalias !682, !noundef !4
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.f, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !684, !noalias !689, !noundef !4
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !693, !noalias !694, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.ax = load i64, ptr %i.z, align 8, !range !69, !alias.scope !681, !noalias !682, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.g, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i

bb.g:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i
  %.val.i60.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !695, !noalias !700, !noundef !4
  %.val3.i61.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !704, !noalias !705, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i.i.i, i64 %.val.i60.i.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i.i.i, %bb.g ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.az = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i)
  %i.ba = trunc nuw i64 %i.au to i1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !706, !noalias !709, !noundef !4
  %.val58.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !711, !noalias !712, !noundef !4
  %.not.i.i.i.i.i.i = icmp ugt i64 %.val58.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i
  %i.bb = add i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i ; 2 uses
  %i.bc = icmp uge i64 %i.bb, %.sroa.7.0.i.i.i.i.i.i
  %..i.i.i.i.i.i = zext i1 %i.bc to i64
  store i64 %..i.i.i.i.i.i, ptr %.sroa.6.i.i, align 8, !alias.scope !713, !noalias !714
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.sink78.i.i.i.i.sroa.phi.i.i = phi ptr [ %.sroa.9.i.i, %bb.i ], [ %.sroa.6.i.i, %bb.h ]
  %.sink.i.i.i.i.i.i = phi i64 [ %i.bb, %bb.i ], [ 0, %bb.h ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink78.i.i.i.i.sroa.phi.i.i, align 8, !alias.scope !713, !noalias !714
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !715
  %.sroa.9.i.i.0..sroa.9.i.i.0..sroa.9.i.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i.i = load i64, ptr %.sroa.9.i.i, align 8, !noalias !715
  %2 = trunc nuw i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i.i to i1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i
  %.sroa.9.0..sroa.9.0..sroa.9.16..i.i = phi i64 [ %.sroa.9.i.i.0..sroa.9.i.i.0..sroa.9.i.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i ]
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i = phi i1 [ %2, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i ], [ true, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.az, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.689.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.bd = load i64, ptr %i.ae, align 8, !range !53, !alias.scope !659, !noalias !660, !noundef !4 ; 2 uses
  %.not53.i.i = icmp eq i64 %i.bd, 2
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  br i1 %.not53.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.be = load i64, ptr %i.af, align 8, !range !69, !alias.scope !736, !noalias !737, !noundef !4
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.k, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i.i76.i.i = load i64, ptr %i.ag, align 8, !alias.scope !739, !noalias !744, !noundef !4
  %.val3.i.i.i.i.i77.i.i = load i64, ptr %i.ah, align 8, !alias.scope !748, !noalias !749, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i78.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i77.i.i, i64 %.val.i.i.i.i.i76.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i.i.i63.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i78.i.i, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.bg = load i64, ptr %i.ai, align 8, !range !69, !alias.scope !736, !noalias !737, !noundef !4
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i

bb.l:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i
  %.val.i60.i.i.i.i73.i.i = load i64, ptr %i.aj, align 8, !alias.scope !750, !noalias !755, !noundef !4
  %.val3.i61.i.i.i.i74.i.i = load i64, ptr %i.ak, align 8, !alias.scope !759, !noalias !760, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i75.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i74.i.i, i64 %.val.i60.i.i.i.i73.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i: ; preds = %bb.l, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i
  %.sroa.8.0.i.i.i.i65.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i75.i.i, %bb.l ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i ] ; 2 uses
  %i.bi = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i63.i.i, i64 %.sroa.8.0.i.i.i.i65.i.i)
  %i.bj = trunc nuw i64 %i.bd to i1
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i
  %.val.i.i.i.i70.i.i = load i64, ptr %i.al, align 8, !alias.scope !761, !noalias !764, !noundef !4
  %.val58.i.i.i.i71.i.i = load i64, ptr %i.am, align 8, !alias.scope !766, !noalias !767, !noundef !4
  %.not.i.i.i.i72.i.i = icmp ugt i64 %.val58.i.i.i.i71.i.i, %.val.i.i.i.i70.i.i
  br i1 %.not.i.i.i.i72.i.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i
  %i.bk = add i64 %.sroa.8.0.i.i.i.i65.i.i, %.sroa.7.0.i.i.i.i63.i.i ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %.sroa.7.0.i.i.i.i63.i.i
  %..i.i.i.i66.i.i = zext i1 %i.bl to i64
  store i64 %..i.i.i.i66.i.i, ptr %.sroa.689.i.i, align 8, !alias.scope !768, !noalias !769
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i: ; preds = %bb.n, %bb.m
  %.sink78.i.i.i.i68.sroa.phi.i.i = phi ptr [ %.sroa.10.i.i, %bb.n ], [ %.sroa.689.i.i, %bb.m ]
  %.sink.i.i.i.i69.i.i = phi i64 [ %i.bk, %bb.n ], [ 0, %bb.m ]
  store i64 %.sink.i.i.i.i69.i.i, ptr %.sink78.i.i.i.i68.sroa.phi.i.i, align 8, !alias.scope !768, !noalias !769
  %i.bm = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.1.i.i, i64 %i.bi)
  %.sroa.689.i.i.0..sroa.689.i.i.0..sroa.689.i.i.0..sroa.689.i.0..sroa.689.i.0..sroa.689.0..sroa.689.0..sroa.689.8..pre.i.i = load i64, ptr %.sroa.689.i.i, align 8, !noalias !715
  %.sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i.i = load i64, ptr %.sroa.10.i.i, align 8, !noalias !715
  %i.bn = freeze i64 %.sroa.689.i.i.0..sroa.689.i.i.0..sroa.689.i.i.0..sroa.689.i.0..sroa.689.i.0..sroa.689.0..sroa.689.0..sroa.689.8..pre.i.i
  %3 = trunc i64 %i.bn to i1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i
  %.sroa.10.0..sroa.10.0..sroa.10.16..i.i = phi i64 [ %.sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i ]
  %.sroa.689.0..sroa.689.0..sroa.689.8..i.i = phi i1 [ %3, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i ], [ true, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i ] ; 2 uses
  %.sroa.088.1.i.i = phi i64 [ %i.bm, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i ], [ %.sroa.0.1.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  %i.bo = load i8, ptr %i.an, align 1, !range !770, !alias.scope !659, !noalias !660, !noundef !4
  %.not54.i.i = icmp eq i8 %i.bo, 2
  br i1 %.not54.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i
  %.val.i.i = load i64, ptr %i.ao, align 8, !alias.scope !771, !noalias !774, !noundef !4
  %.val61.i.i = load i64, ptr %i.ap, align 8, !alias.scope !776, !noalias !777, !noundef !4
  %i.bp = icmp ule i64 %.val61.i.i, %.val.i.i
  %op.rdx = and i1 %i.bp, %.sroa.689.0..sroa.689.0..sroa.689.8..i.i
  %op.rdx12 = select i1 %op.rdx, i1 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, i1 false
  br i1 %op.rdx12, label %bb.q, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit

bb.p:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i
  %or.cond55.i.i = and i1 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, %.sroa.689.0..sroa.689.0..sroa.689.8..i.i
  br i1 %or.cond55.i.i, label %bb.q, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = add i64 %.sroa.10.0..sroa.10.0..sroa.10.16..i.i, %.sroa.9.0..sroa.9.0..sroa.9.16..i.i
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.sink100.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.q ], [ %.sroa.5, %bb.p ], [ %.sroa.5, %bb.o ]
  %.sink.i.i = phi i64 [ %i.bq, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i, ptr %.sink100.i.i.sroa.phi, align 8, !alias.scope !660, !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.br = call i64 @llvm.uadd.sat.i64(i64 %.sroa.088.1.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.aq, i64 noundef range(i64 1, 0) %i.br, i64 noundef 8, i64 noundef 48)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit, %bb.d
  %i.bs = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !647, !noalias !648, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !648
  %i.bu = add nuw nsw i64 %i.aq, 1
  store i64 %i.bu, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !647, !noalias !648
  invoke fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(528) %i.c) #19
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.noexc5
  %i.bv = load i64, ptr %i.a, align 8, !range !69, !noalias !645, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.d, label %.loopexit9

bb.r:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.by, align 8
  br label %bb.s

bb.s:                                             ; preds = %.loopexit9, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit, %.noexc5
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEB1c_.exit unwind label %bb.u

.loopexit9:                                       ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEB1c_.exit: ; preds = %bb.t
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB2f_3map3MapINtNtNtB2j_3ops5range5RangejENCNvNvNvMs0_NtB13_6headerNtB42_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB37_B36_NCNCB3U_00ENCB3U_0EE9from_iterB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [8 x i8], align 8         ; 3 uses
  %.sroa.7.i.i = alloca [8 x i8], align 8         ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [232 x i8], align 8               ; 14 uses
  %.sroa.5 = alloca [8 x i8], align 8             ; 3 uses
  %.sroa.7 = alloca [8 x i8], align 8             ; 3 uses
  %i.d = alloca [56 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef align 8 dereferenceable(232) %1) #19
  %i.f = load i64, ptr %i.d, align 8, !range !69, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i64, ptr %i.i, align 8, !range !69, !alias.scope !788, !noalias !789, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.c, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !790, !noalias !795, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !799, !noalias !800, !noundef !4
  %spec.select.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i, i64 %.val.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = load i64, ptr %i.n, align 8, !range !69, !alias.scope !788, !noalias !789, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i60.i.i = load i64, ptr %i.q, align 8, !alias.scope !801, !noalias !806, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val3.i61.i.i = load i64, ptr %i.r, align 8, !alias.scope !810, !noalias !811, !noundef !4
  %spec.select.i.i.i.i.i62.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i, i64 %.val.i60.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i: ; preds = %bb.d, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i, %bb.d ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i ] ; 2 uses
  %i.s = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i, i64 %.sroa.8.0.i.i)
  %i.t = load i64, ptr %1, align 8, !range !69, !alias.scope !788, !noalias !789, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.v, align 8, !alias.scope !812, !noalias !815, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val58.i.i = load i64, ptr %i.w, align 8, !alias.scope !817, !noalias !818, !noundef !4
  %.not.i.i = icmp ugt i64 %.val58.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i
  %i.x = add i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit: ; preds = %bb.e, %bb.f
  %.sink78.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.f ], [ %.sroa.5, %bb.e ]
  %.sink.i.i = phi i64 [ %i.x, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink78.i.i.sroa.phi, align 8, !alias.scope !789, !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %i.s, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.y, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.z = load i64, ptr %i.b, align 8, !range !69, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !70, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.g, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit, !prof !14

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit
  %i.ae = load i64, ptr %i.ad, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #18
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp ule i64 %..i, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  store i64 %i.ac, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !829
  invoke fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.c) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit
  %i.ah = load i64, ptr %i.a, align 8, !range !69, !noalias !830, !noundef !4
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i, label %.loopexit9

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.noexc6, %.lr.ph.i.i
  %i.as = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !831, !noalias !832, !noundef !4 ; 5 uses
  %i.at = icmp ult i64 %i.as, 192153584101141163
  call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.e, align 8, !range !13, !alias.scope !831, !noalias !832, !noundef !4
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.aw = load i64, ptr %i.ak, align 8, !range !69, !alias.scope !843, !noalias !844, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.j, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %.val.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !845, !noalias !850, !noundef !4
  %.val3.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !854, !noalias !855, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i, i64 %.val.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.7.0.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.ay = load i64, ptr %i.an, align 8, !range !69, !alias.scope !843, !noalias !844, !noundef !4
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.k, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i

bb.k:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i
  %.val.i60.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !856, !noalias !861, !noundef !4
  %.val3.i61.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !865, !noalias !866, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i, i64 %.val.i60.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i: ; preds = %bb.k, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i, %bb.k ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i ] ; 2 uses
  %i.ba = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i)
  %i.bb = load i64, ptr %i.c, align 8, !range !69, !alias.scope !843, !noalias !844, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !867, !noalias !870, !noundef !4
  %.val58.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !872, !noalias !873, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %.val58.i.i.i.i, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i
  %i.bd = add i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit.i.i: ; preds = %bb.m, %bb.l
  %.sink78.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.m ], [ %.sroa.5.i.i, %bb.l ]
  %.sink.i.i.i.i = phi i64 [ %i.bd, %bb.m ], [ 0, %bb.l ]
  store i64 %.sink.i.i.i.i, ptr %.sink78.i.i.sroa.phi.i.i, align 8, !alias.scope !874, !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.be = call i64 @llvm.uadd.sat.i64(i64 %i.ba, i64 1)
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.as, i64 noundef range(i64 1, 0) %i.be, i64 noundef 8, i64 noundef 48)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i unwind label %.loopexit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit.i.i, %bb.h
  %i.bf = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !831, !noalias !832, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.bf, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false), !noalias !832
  %i.bh = add nuw nsw i64 %i.as, 1
  store i64 %i.bh, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !831, !noalias !832
  invoke fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.c) #19
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i
  %i.bi = load i64, ptr %i.a, align 8, !range !69, !noalias !830, !noundef !4
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.h, label %.loopexit9
end_hunk_3
begin_hunk_4_@_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB27_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !905
  %i.t = load i64, ptr %i.d, align 8, !range !53, !alias.scope !907, !noalias !908, !noundef !4
  %.not.i.i = icmp eq i64 %i.t, 2
  br i1 %.not.i.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.d) #19, !noalias !908
  %i.u = load i64, ptr %i.b, align 8, !range !69, !noalias !905, !noundef !4
  %.not3.i.i = icmp eq i64 %i.u, 0
  br i1 %.not3.i.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i, label %bb.d

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i: ; preds = %bb.c
  store i64 2, ptr %i.d, align 8, !alias.scope !907, !noalias !908
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx6.i, i64 48, i1 false), !noalias !900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !905
  store i64 1, ptr %0, align 8, !alias.scope !897, !noalias !900
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !909
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.v = load i64, ptr %1, align 8, !range !53, !alias.scope !913, !noalias !914, !noundef !4 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.v, 2
  br i1 %.not.i1.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !922, !noalias !927 ; 2 uses
  %i.w = trunc nuw i64 %i.v to i1
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !922, !noalias !927 ; 2 uses
  %.promoted24.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !922, !noalias !927 ; 4 uses
  %.promoted25.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !922, !noalias !927 ; 2 uses
  %.promoted26.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !922, !noalias !927 ; 4 uses
  br i1 %i.w, label %.split.us.preheader.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i:                  ; preds = %bb.e
  %i.x = load i64, ptr %i.j, align 8, !alias.scope !922, !noalias !927 ; 2 uses
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted26.i.i.i.i.i.i, i64 %i.x) ; 2 uses
  %i.y = trunc nuw i64 %.promoted.i.i.i.i.i.i to i1
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i
  %i.z = icmp ult i64 %.promoted24.i.i.i.i.i.i, %.promoted25.i.i.i.i.i.i
  br i1 %i.z, label %.split28.us.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.e, align 8, !alias.scope !932, !noalias !935
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us.preheader.i.i.i.i.i.i
  %exitcond.peel.not.not.i.i.i.i.i.i = icmp ult i64 %.promoted26.i.i.i.i.i.i, %i.x
  br i1 %exitcond.peel.not.not.i.i.i.i.i.i, label %.split.us.peel.next.i.i.i.i.i.i, label %.split30.us.i.i.i.i.i.i

.split.us.peel.next.i.i.i.i.i.i:                  ; preds = %bb.h
  store i64 0, ptr %i.f, align 8, !alias.scope !922, !noalias !927
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !alias.scope !922, !noalias !927
  %.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.split.us.peel.next.i.split.us.preheader.i.i.i.i.i, label %.split.us.peel.next.i.split.i.i.i.i.i

.split.us.peel.next.i.split.us.preheader.i.i.i.i.i: ; preds = %.split.us.peel.next.i.i.i.i.i.i
  %i.aa = add i64 %umax.i.i.i.i.i.i, -1
  store i64 %umax.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !937, !noalias !946
  store i64 0, ptr %i.e, align 8, !alias.scope !922, !noalias !927
  store i64 %i.aa, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !922, !noalias !927
  br label %.split30.us.i.i.i.i.i.i

.split.us.peel.next.i.split.i.i.i.i.i:            ; preds = %.split.us.peel.next.i.i.i.i.i.i
  %storemerge35.i.i.i.i.i.i = add nuw i64 %.promoted26.i.i.i.i.i.i, 1
  store i64 %storemerge35.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !937, !noalias !946
  store i64 1, ptr %i.e, align 8, !alias.scope !922, !noalias !927
  store i64 %.promoted26.i.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !922, !noalias !927
  br label %.split28.us.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.ab = trunc nuw i64 %.promoted.i.i.i.i.i.i to i1
  br i1 %i.ab, label %bb.i, label %.split30.us.i.i.i.i.i.i

bb.i:                                             ; preds = %.split.i.i.i.i.i.i
  %i.ac = icmp ult i64 %.promoted24.i.i.i.i.i.i, %.promoted25.i.i.i.i.i.i
  br i1 %i.ac, label %.split28.us.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.e, align 8, !alias.scope !932, !noalias !935
  br label %.split30.us.i.i.i.i.i.i

.split28.us.i.i.i.i.i.i:                          ; preds = %bb.i, %.split.us.peel.next.i.split.i.i.i.i.i, %bb.f
  %.us-phi.i.i.i.i.i.i = phi i64 [ %.promoted24.i.i.i.i.i.i, %bb.i ], [ %.promoted24.i.i.i.i.i.i, %bb.f ], [ 0, %.split.us.peel.next.i.split.i.i.i.i.i ] ; 2 uses
  %i.ad = add nuw i64 %.us-phi.i.i.i.i.i.i, 1
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !949, !noalias !958
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i

.split30.us.i.i.i.i.i.i:                          ; preds = %bb.j, %.split.i.i.i.i.i.i, %.split.us.peel.next.i.split.us.preheader.i.i.i.i.i, %bb.h
  %i.ae = load i64, ptr %i.k, align 8, !range !69, !alias.scope !961, !noalias !964, !noundef !4
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i

bb.k:                                             ; preds = %.split30.us.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.ag = load i64, ptr %i.l, align 8, !alias.scope !971, !noalias !980, !noundef !4 ; 3 uses
  %i.ah = load i64, ptr %i.m, align 8, !alias.scope !983, !noalias !984, !noundef !4
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i, label %bb.l

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i: ; preds = %bb.k
  %i.aj = add nuw i64 %i.ag, 1
  store i64 %i.aj, ptr %i.l, align 8, !alias.scope !985, !noalias !986
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.k, align 8, !alias.scope !961, !noalias !964
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i, %.split28.us.i.i.i.i.i.i
  %.sroa.9.0.ph.in.i.i.i.i = phi ptr [ %i.n, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, %.split28.us.i.i.i.i.i.i ]
  %.sroa.6.0.ph.i.i.i.i = phi i64 [ %i.ag, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i ], [ %.us-phi.i.i.i.i.i.i, %.split28.us.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0.ph.i.i.i.i = load i64, ptr %.sroa.9.0.ph.in.i.i.i.i, align 8, !alias.scope !922, !noalias !927, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.ak = load i8, ptr %i.p, align 8, !range !990, !alias.scope !991, !noalias !992, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  %i.am = load i64, ptr %i.o, align 8, !alias.scope !991, !noalias !992, !noundef !4
  %i.an = tail call noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta18compute_level_size(i1 noundef zeroext %i.al, i64 noundef %i.am, i64 noundef %.sroa.6.0.ph.i.i.i.i), !noalias !994
  %i.ao = load i64, ptr %i.q, align 8, !alias.scope !991, !noalias !992, !noundef !4
  %i.ap = tail call noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta18compute_level_size(i1 noundef zeroext %i.al, i64 noundef %i.ao, i64 noundef %.sroa.9.0.ph.i.i.i.i), !noalias !994
  %.val.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !995, !noalias !996, !noundef !4
  %.val1.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !995, !noalias !996, !noundef !4
  call void @_RNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB7_6Header25blocks_increasing_y_order8tiles_of(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.c, i64 noundef %i.an, i64 noundef %i.ap, i64 noundef %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %.sroa.6.0.ph.i.i.i.i, i64 noundef %.sroa.9.0.ph.i.i.i.i), !noalias !997
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !909
  %.not.i = icmp eq i64 %.pr.i, 2
  br i1 %.not.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !909
  br label %bb.b

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i, %.split30.us.i.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1003
  %i.ar = load i64, ptr %i.aq, align 8, !range !53, !alias.scope !1004, !noalias !1005, !noundef !4
  %.not.i2.i = icmp eq i64 %i.ar, 2
  br i1 %.not.i2.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.aq) #19, !noalias !1005
  %i.as = load i64, ptr %i.a, align 8, !range !69, !noalias !1003, !noundef !4
  %.not3.i3.i = icmp eq i64 %i.as, 0
  br i1 %.not3.i3.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i
  store i64 0, ptr %0, align 8, !alias.scope !1005, !noalias !1004
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i

bb.p:                                             ; preds = %bb.q, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1004
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i

bb.q:                                             ; preds = %bb.n
  store i64 2, ptr %i.aq, align 8, !alias.scope !1004, !noalias !1005
  br label %bb.p

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !909
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit: ; preds = %bb.d, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB27_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6103.i = alloca [8 x i8], align 8        ; 6 uses
  %.sroa.9104.i = alloca [8 x i8], align 8        ; 5 uses
  %.sroa.6100.i = alloca [8 x i8], align 8        ; 5 uses
  %.sroa.10.i = alloca [8 x i8], align 8          ; 4 uses
  %.sroa.6.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.9.i = alloca [8 x i8], align 8           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i64, ptr %i.a, align 8, !range !53, !alias.scope !1009, !noalias !1006, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  br i1 %.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = load i64, ptr %i.c, align 8, !range !69, !alias.scope !1031, !noalias !1032, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1034, !noalias !1039, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val3.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !1043, !noalias !1044, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load i64, ptr %i.h, align 8, !range !69, !alias.scope !1031, !noalias !1032, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val.i60.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1045, !noalias !1050, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.val3.i61.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1054, !noalias !1055, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i.i, i64 %.val.i60.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i: ; preds = %bb.d, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i.i, %bb.d ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i ] ; 2 uses
  %i.m = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i)
  %i.n = trunc nuw i64 %i.b to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1056, !noalias !1059, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val58.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1061, !noalias !1062, !noundef !4
  %.not.i.i.i.i.i = icmp ugt i64 %.val58.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i
  %i.q = add i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.r = icmp uge i64 %i.q, %.sroa.7.0.i.i.i.i.i
  %..i.i.i.i.i = zext i1 %i.r to i64
  store i64 %..i.i.i.i.i, ptr %.sroa.6.i, align 8, !alias.scope !1063, !noalias !1064
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink78.i.i.i.i.sroa.phi.i = phi ptr [ %.sroa.9.i, %bb.f ], [ %.sroa.6.i, %bb.e ]
  %.sink.i.i.i.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink78.i.i.i.i.sroa.phi.i, align 8, !alias.scope !1063, !noalias !1064
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1065
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i = load i64, ptr %.sroa.9.i, align 8, !noalias !1065
  %2 = trunc nuw i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i to i1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i, %bb.a
  %.sroa.9.0..sroa.9.0..sroa.9.16..i = phi i64 [ %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i = phi i1 [ %2, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ true, %bb.a ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.m, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6100.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.t = load i64, ptr %i.s, align 8, !range !53, !alias.scope !1009, !noalias !1006, !noundef !4 ; 2 uses
  %.not53.i = icmp eq i64 %i.t, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  br i1 %.not53.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.v = load i64, ptr %i.u, align 8, !range !69, !alias.scope !1086, !noalias !1087, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val.i.i.i.i.i75.i = load i64, ptr %i.x, align 8, !alias.scope !1089, !noalias !1094, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 480
  %.val3.i.i.i.i.i76.i = load i64, ptr %i.y, align 8, !alias.scope !1098, !noalias !1099, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i77.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i76.i, i64 %.val.i.i.i.i.i75.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i: ; preds = %bb.h, %bb.g
  %.sroa.7.0.i.i.i.i62.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i77.i, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.aa = load i64, ptr %i.z, align 8, !range !69, !alias.scope !1086, !noalias !1087, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i

bb.i:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.val.i60.i.i.i.i72.i = load i64, ptr %i.ac, align 8, !alias.scope !1100, !noalias !1105, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.val3.i61.i.i.i.i73.i = load i64, ptr %i.ad, align 8, !alias.scope !1109, !noalias !1110, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i74.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i73.i, i64 %.val.i60.i.i.i.i72.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i: ; preds = %bb.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i
  %.sroa.8.0.i.i.i.i64.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i74.i, %bb.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i ] ; 2 uses
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i62.i, i64 %.sroa.8.0.i.i.i.i64.i)
  %i.af = trunc nuw i64 %i.t to i1
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.val.i.i.i.i69.i = load i64, ptr %i.ag, align 8, !alias.scope !1111, !noalias !1114, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val58.i.i.i.i70.i = load i64, ptr %i.ah, align 8, !alias.scope !1116, !noalias !1117, !noundef !4
  %.not.i.i.i.i71.i = icmp ugt i64 %.val58.i.i.i.i70.i, %.val.i.i.i.i69.i
  br i1 %.not.i.i.i.i71.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i
  %i.ai = add i64 %.sroa.8.0.i.i.i.i64.i, %.sroa.7.0.i.i.i.i62.i ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %.sroa.7.0.i.i.i.i62.i
  %..i.i.i.i65.i = zext i1 %i.aj to i64
  store i64 %..i.i.i.i65.i, ptr %.sroa.6100.i, align 8, !alias.scope !1118, !noalias !1119
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i: ; preds = %bb.k, %bb.j
  %.sink78.i.i.i.i67.sroa.phi.i = phi ptr [ %.sroa.10.i, %bb.k ], [ %.sroa.6100.i, %bb.j ]
  %.sink.i.i.i.i68.i = phi i64 [ %i.ai, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink.i.i.i.i68.i, ptr %.sink78.i.i.i.i67.sroa.phi.i, align 8, !alias.scope !1118, !noalias !1119
  %i.ak = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.1.i, i64 %i.ae)
  %.sroa.6100.i.0..sroa.6100.i.0..sroa.6100.i.0..sroa.6100.0..sroa.6100.0..sroa.6100.8..pre.i = load i64, ptr %.sroa.6100.i, align 8, !noalias !1065
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i = load i64, ptr %.sroa.10.i, align 8, !noalias !1065
  %3 = trunc nuw i64 %.sroa.6100.i.0..sroa.6100.i.0..sroa.6100.i.0..sroa.6100.0..sroa.6100.0..sroa.6100.8..pre.i to i1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i
  %.sroa.10.0..sroa.10.0..sroa.10.16..i = phi i64 [ %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ]
  %.sroa.6100.0..sroa.6100.0..sroa.6100.8..i = phi i1 [ %3, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i ], [ true, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ] ; 2 uses
  %.sroa.099.1.i = phi i64 [ %i.ak, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i ], [ %.sroa.0.1.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6100.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6103.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9104.i)
  %i.al = load i64, ptr %1, align 8, !range !53, !alias.scope !1009, !noalias !1006, !noundef !4 ; 2 uses
  %.not54.i = icmp eq i64 %i.al, 2
  br i1 %.not54.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !range !69, !alias.scope !1140, !noalias !1141, !noundef !4
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.m, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i.i89.i = load i64, ptr %i.ap, align 8, !alias.scope !1142, !noalias !1147, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i.i.i.i.i90.i = load i64, ptr %i.aq, align 8, !alias.scope !1151, !noalias !1152, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i90.i, i64 %.val.i.i.i.i.i89.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.7.0.i.i.i.i79.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !range !69, !alias.scope !1140, !noalias !1141, !noundef !4
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.n, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i

bb.n:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i60.i.i.i.i87.i = load i64, ptr %i.au, align 8, !alias.scope !1153, !noalias !1158, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val3.i61.i.i.i.i88.i = load i64, ptr %i.av, align 8, !alias.scope !1162, !noalias !1163, !noundef !4
  %spec.select.i.i.i.i62.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i88.i, i64 %.val.i60.i.i.i.i87.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i: ; preds = %bb.n, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i80.i = phi i64 [ %spec.select.i.i.i.i62.i.i.i.i.i, %bb.n ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i ] ; 2 uses
  %i.aw = trunc nuw i64 %i.al to i1
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i84.i = load i64, ptr %i.ax, align 8, !alias.scope !1164, !noalias !1167, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val58.i.i.i.i85.i = load i64, ptr %i.ay, align 8, !alias.scope !1169, !noalias !1170, !noundef !4
  %.not.i.i.i.i86.i = icmp ugt i64 %.val58.i.i.i.i85.i, %.val.i.i.i.i84.i
  br i1 %.not.i.i.i.i86.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i
  %i.az = add i64 %.sroa.8.0.i.i.i.i80.i, %.sroa.7.0.i.i.i.i79.i ; 2 uses
  %i.ba = icmp uge i64 %i.az, %.sroa.7.0.i.i.i.i79.i
  %..i.i.i.i81.i = zext i1 %i.ba to i64
  store i64 %..i.i.i.i81.i, ptr %.sroa.6103.i, align 8, !alias.scope !1171, !noalias !1172
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i: ; preds = %bb.p, %bb.o
  %.sink78.i.i.i.i82.sroa.phi.i = phi ptr [ %.sroa.9104.i, %bb.p ], [ %.sroa.6103.i, %bb.o ]
  %.sink.i.i.i.i83.i = phi i64 [ %i.az, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i.i.i83.i, ptr %.sink78.i.i.i.i82.sroa.phi.i, align 8, !alias.scope !1171, !noalias !1172
  %.sroa.6103.i.0..sroa.6103.i.0..sroa.6103.i.0..sroa.6103.0..sroa.6103.0..sroa.6103.8..i = load i64, ptr %.sroa.6103.i, align 8, !noalias !1065
  %.sroa.9104.i.0..sroa.9104.i.0..sroa.9104.i.0..sroa.9104.0..sroa.9104.0..sroa.9104.16..i = load i64, ptr %.sroa.9104.i, align 8, !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6103.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9104.i)
  %i.bb = or i64 %.sroa.8.0.i.i.i.i80.i, %.sroa.7.0.i.i.i.i79.i
  %i.bc = icmp eq i64 %i.bb, 0
  %4 = trunc nuw i64 %.sroa.6103.i.0..sroa.6103.i.0..sroa.6103.i.0..sroa.6103.0..sroa.6103.0..sroa.6103.8..i to i1
  %or.cond57.i = select i1 %i.bc, i1 %4, i1 false
  %or.cond58.i = select i1 %or.cond57.i, i1 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i, i1 false
  %i.bd = icmp eq i64 %.sroa.9104.i.0..sroa.9104.i.0..sroa.9104.i.0..sroa.9104.0..sroa.9104.0..sroa.9104.16..i, 0
  %5 = select i1 %or.cond58.i, i1 %.sroa.6100.0..sroa.6100.0..sroa.6100.8..i, i1 false
  %or.cond60.i = select i1 %5, i1 %i.bd, i1 false
  br i1 %or.cond60.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6103.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9104.i)
  %or.cond55.i = select i1 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i, i1 %.sroa.6100.0..sroa.6100.0..sroa.6100.8..i, i1 false
  br i1 %or.cond55.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i
  store i64 %.sroa.099.1.i, ptr %0, align 8, !alias.scope !1006, !noalias !1009
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2t_.exit

bb.s:                                             ; preds = %bb.q, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i
  %i.be = add i64 %.sroa.10.0..sroa.10.0..sroa.10.16..i, %.sroa.9.0..sroa.9.0..sroa.9.16..i ; 2 uses
  %i.bf = icmp uge i64 %i.be, %.sroa.9.0..sroa.9.0..sroa.9.16..i
  %.56.i = zext i1 %i.bf to i64
  store i64 %.sroa.099.1.i, ptr %0, align 8, !alias.scope !1006, !noalias !1009
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i, ptr %i.bg, align 8, !alias.scope !1006, !noalias !1009
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2t_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2t_.exit: ; preds = %bb.r, %bb.s
  %.sink115.i = phi i64 [ 16, %bb.s ], [ 8, %bb.r ]
  %.sink.i = phi i64 [ %i.be, %bb.s ], [ 0, %bb.r ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink115.i
  store i64 %.sink.i, ptr %i.bh, align 8, !alias.scope !1006, !noalias !1009
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(528) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [232 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 521
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1181
  %i.l = load i64, ptr %1, align 8, !range !53, !alias.scope !1183, !noalias !1184, !noundef !4
  %.not.i.i = icmp eq i64 %i.l, 2
  br i1 %.not.i.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(528) %1) #19, !noalias !1184
  %i.m = load i64, ptr %i.b, align 8, !range !69, !noalias !1181, !noundef !4
  %.not3.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i, label %bb.d

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i: ; preds = %bb.c
  store i64 2, ptr %1, align 8, !alias.scope !1183, !noalias !1184
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx6.i, i64 48, i1 false), !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1181
  store i64 1, ptr %0, align 8, !alias.scope !1173, !noalias !1176
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.n = load i8, ptr %i.e, align 1, !range !770, !alias.scope !1189, !noalias !1190, !noundef !4
  %.not.i1.i = icmp eq i8 %i.n, 2
  br i1 %.not.i1.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !1203, !noalias !1208, !noundef !4 ; 6 uses
  %i.p = load i64, ptr %i.f, align 8, !alias.scope !1211, !noalias !1212, !noundef !4
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.i: ; preds = %bb.e
  %i.r = add nuw i64 %i.o, 1
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !1213, !noalias !1214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.s = load i8, ptr %i.h, align 8, !range !990, !alias.scope !1218, !noalias !1219, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !alias.scope !1218, !noalias !1219, !noundef !4
  %i.v = tail call noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta18compute_level_size(i1 noundef zeroext %i.t, i64 noundef %i.u, i64 noundef %i.o), !noalias !1221
  %i.w = load i64, ptr %i.i, align 8, !alias.scope !1218, !noalias !1219, !noundef !4
  %i.x = tail call noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta18compute_level_size(i1 noundef zeroext %i.t, i64 noundef %i.w, i64 noundef %i.o), !noalias !1221
  %.val.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1222, !noalias !1223, !noundef !4
  %.val1.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1222, !noalias !1223, !noundef !4
  call void @_RNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB7_6Header25blocks_increasing_y_order8tiles_of(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.c, i64 noundef %i.v, i64 noundef %i.x, i64 noundef %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %i.o, i64 noundef %i.o), !noalias !1224
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !1185
  %.not.i = icmp eq i64 %.pr.i, 2
  br i1 %.not.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %1, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !noalias !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1185
  br label %bb.b

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.i, %bb.e, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1230
  %i.z = load i64, ptr %i.y, align 8, !range !53, !alias.scope !1231, !noalias !1232, !noundef !4
  %.not.i2.i = icmp eq i64 %i.z, 2
  br i1 %.not.i2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.y) #19, !noalias !1232
  %i.aa = load i64, ptr %i.a, align 8, !range !69, !noalias !1230, !noundef !4
  %.not3.i3.i = icmp eq i64 %i.aa, 0
  br i1 %.not3.i3.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i
  store i64 0, ptr %0, align 8, !alias.scope !1232, !noalias !1231
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i

bb.i:                                             ; preds = %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1231
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i

bb.j:                                             ; preds = %bb.g
  store i64 2, ptr %i.y, align 8, !alias.scope !1231, !noalias !1232
  br label %bb.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1185
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit: ; preds = %bb.d, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.689.i = alloca [8 x i8], align 8         ; 5 uses
  %.sroa.10.i = alloca [8 x i8], align 8          ; 4 uses
  %.sroa.6.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.9.i = alloca [8 x i8], align 8           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.a = load i64, ptr %1, align 8, !range !53, !alias.scope !1236, !noalias !1233, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  br i1 %.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8, !range !69, !alias.scope !1258, !noalias !1259, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1261, !noalias !1266, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1270, !noalias !1271, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load i64, ptr %i.g, align 8, !range !69, !alias.scope !1258, !noalias !1259, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i60.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1272, !noalias !1277, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val3.i61.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1281, !noalias !1282, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i.i, i64 %.val.i60.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i: ; preds = %bb.d, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i.i, %bb.d ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i ] ; 2 uses
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i)
  %i.m = trunc nuw i64 %i.a to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1283, !noalias !1286, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val58.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1288, !noalias !1289, !noundef !4
  %.not.i.i.i.i.i = icmp ugt i64 %.val58.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i
  %i.p = add i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.q = icmp uge i64 %i.p, %.sroa.7.0.i.i.i.i.i
  %..i.i.i.i.i = zext i1 %i.q to i64
  store i64 %..i.i.i.i.i, ptr %.sroa.6.i, align 8, !alias.scope !1290, !noalias !1291
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink78.i.i.i.i.sroa.phi.i = phi ptr [ %.sroa.9.i, %bb.f ], [ %.sroa.6.i, %bb.e ]
  %.sink.i.i.i.i.i = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink78.i.i.i.i.sroa.phi.i, align 8, !alias.scope !1290, !noalias !1291
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1292
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i = load i64, ptr %.sroa.9.i, align 8, !noalias !1292
  %2 = trunc nuw i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i to i1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i, %bb.a
  %.sroa.9.0..sroa.9.0..sroa.9.16..i = phi i64 [ %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i = phi i1 [ %2, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ true, %bb.a ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.l, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.689.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.s = load i64, ptr %i.r, align 8, !range !53, !alias.scope !1236, !noalias !1233, !noundef !4 ; 2 uses
  %.not53.i = icmp eq i64 %i.s, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  br i1 %.not53.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.u = load i64, ptr %i.t, align 8, !range !69, !alias.scope !1313, !noalias !1314, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.h, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val.i.i.i.i.i76.i = load i64, ptr %i.w, align 8, !alias.scope !1316, !noalias !1321, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.val3.i.i.i.i.i77.i = load i64, ptr %i.x, align 8, !alias.scope !1325, !noalias !1326, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i78.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i77.i, i64 %.val.i.i.i.i.i76.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i: ; preds = %bb.h, %bb.g
  %.sroa.7.0.i.i.i.i63.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i78.i, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.z = load i64, ptr %i.y, align 8, !range !69, !alias.scope !1313, !noalias !1314, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i

bb.i:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val.i60.i.i.i.i73.i = load i64, ptr %i.ab, align 8, !alias.scope !1327, !noalias !1332, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val3.i61.i.i.i.i74.i = load i64, ptr %i.ac, align 8, !alias.scope !1336, !noalias !1337, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i75.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i74.i, i64 %.val.i60.i.i.i.i73.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i: ; preds = %bb.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i
  %.sroa.8.0.i.i.i.i65.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i75.i, %bb.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i ] ; 2 uses
  %i.ad = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i63.i, i64 %.sroa.8.0.i.i.i.i65.i)
  %i.ae = trunc nuw i64 %i.s to i1
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val.i.i.i.i70.i = load i64, ptr %i.af, align 8, !alias.scope !1338, !noalias !1341, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val58.i.i.i.i71.i = load i64, ptr %i.ag, align 8, !alias.scope !1343, !noalias !1344, !noundef !4
  %.not.i.i.i.i72.i = icmp ugt i64 %.val58.i.i.i.i71.i, %.val.i.i.i.i70.i
  br i1 %.not.i.i.i.i72.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i
  %i.ah = add i64 %.sroa.8.0.i.i.i.i65.i, %.sroa.7.0.i.i.i.i63.i ; 2 uses
  %i.ai = icmp uge i64 %i.ah, %.sroa.7.0.i.i.i.i63.i
  %..i.i.i.i66.i = zext i1 %i.ai to i64
  store i64 %..i.i.i.i66.i, ptr %.sroa.689.i, align 8, !alias.scope !1345, !noalias !1346
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i: ; preds = %bb.k, %bb.j
  %.sink78.i.i.i.i68.sroa.phi.i = phi ptr [ %.sroa.10.i, %bb.k ], [ %.sroa.689.i, %bb.j ]
  %.sink.i.i.i.i69.i = phi i64 [ %i.ah, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink.i.i.i.i69.i, ptr %.sink78.i.i.i.i68.sroa.phi.i, align 8, !alias.scope !1345, !noalias !1346
  %i.aj = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.1.i, i64 %i.ad)
  %.sroa.689.i.0..sroa.689.i.0..sroa.689.i.0..sroa.689.0..sroa.689.0..sroa.689.8..pre.i = load i64, ptr %.sroa.689.i, align 8, !noalias !1292
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i = load i64, ptr %.sroa.10.i, align 8, !noalias !1292
  %i.ak = freeze i64 %.sroa.689.i.0..sroa.689.i.0..sroa.689.i.0..sroa.689.0..sroa.689.0..sroa.689.8..pre.i
  %3 = trunc i64 %i.ak to i1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i
  %.sroa.10.0..sroa.10.0..sroa.10.16..i = phi i64 [ %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ]
  %.sroa.689.0..sroa.689.0..sroa.689.8..i = phi i1 [ %3, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i ], [ true, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ] ; 2 uses
  %.sroa.088.1.i = phi i64 [ %i.aj, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i ], [ %.sroa.0.1.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 521
  %i.am = load i8, ptr %i.al, align 1, !range !770, !alias.scope !1236, !noalias !1233, !noundef !4
  %.not54.i = icmp eq i8 %i.am, 2
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.val.i = load i64, ptr %i.an, align 8, !alias.scope !1347, !noalias !1350, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val61.i = load i64, ptr %i.ao, align 8, !alias.scope !1352, !noalias !1353, !noundef !4
  %i.ap = icmp ule i64 %.val61.i, %.val.i
  %op.rdx = and i1 %i.ap, %.sroa.689.0..sroa.689.0..sroa.689.8..i
  %op.rdx2 = select i1 %op.rdx, i1 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i, i1 false
  br i1 %op.rdx2, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i
  %or.cond55.i = and i1 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.8..i, %.sroa.689.0..sroa.689.0..sroa.689.8..i
  br i1 %or.cond55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %.sroa.088.1.i, ptr %0, align 8, !alias.scope !1233, !noalias !1236
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.aq = add i64 %.sroa.10.0..sroa.10.0..sroa.10.16..i, %.sroa.9.0..sroa.9.0..sroa.9.16..i ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %.sroa.9.0..sroa.9.0..sroa.9.16..i
  %.56.i = zext i1 %i.ar to i64
  store i64 %.sroa.088.1.i, ptr %0, align 8, !alias.scope !1233, !noalias !1236
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i, ptr %i.as, align 8, !alias.scope !1233, !noalias !1236
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit: ; preds = %bb.n, %bb.o
  %.sink100.i = phi i64 [ 16, %bb.o ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ %i.aq, %bb.o ], [ 0, %bb.n ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.sink100.i
  store i64 %.sink.i, ptr %i.at, align 8, !alias.scope !1233, !noalias !1236
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(232) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 12 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.724.i = alloca [64 x i8], align 8        ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %.promoted.i = load i64, ptr %i.q, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.t = load i64, ptr %1, align 8, !range !69, !alias.scope !1357, !noalias !1354
  %.fr41.i = freeze i64 %i.t
  %i.u = trunc i64 %.fr41.i to i1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1357, !noalias !1354 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !1357, !noalias !1354 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %.promoted34.i = load i64, ptr %i.v, align 8, !alias.scope !1357, !noalias !1354 ; 9 uses
  br i1 %i.u, label %.split.us.preheader.i, label %.split.i

.split.us.preheader.i:                            ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1357, !noalias !1354 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted34.i, i64 %i.ai)
  %umax42.i = tail call i64 @llvm.umax.i64(i64 %.promoted34.i, i64 %.val.i.i.i.i)
  %i.aj = trunc nuw i64 %.promoted.i to i1
  br i1 %i.aj, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.split.us.preheader.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.ak = load i64, ptr %i.r, align 8, !alias.scope !1364, !noalias !1377, !noundef !4 ; 2 uses
  %i.al = load i64, ptr %i.s, align 8, !alias.scope !1382, !noalias !1383, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %.split36.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.q, align 8, !alias.scope !1384, !noalias !1385
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %exitcond.peel.not.not.i = icmp ult i64 %.promoted34.i, %i.ai
  br i1 %exitcond.peel.not.not.i, label %bb.e, label %.split38.us.i

bb.e:                                             ; preds = %bb.d
  %i.an = add nuw i64 %.promoted34.i, 1           ; 3 uses
  store i64 %i.an, ptr %i.v, align 8, !alias.scope !1395, !noalias !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1404
  store i64 %.val.i.i.i.i, ptr %i.i, align 8, !noalias !1405
  store i64 %.promoted34.i, ptr %i.h, align 8, !noalias !1405
  %exitcond43.peel.not.not.i = icmp ult i64 %.promoted34.i, %.val.i.i.i.i
  br i1 %exitcond43.peel.not.not.i, label %.split.us.peel.next.i, label %.split40.us.i

.split.us.peel.next.i:                            ; preds = %bb.e
  %i.ao = add i64 %.promoted34.i, %.val2.i.i.i.i
  %.not13.i.i.i.i.i.us.peel.i = icmp ugt i64 %i.ao, %.val.i.i.i.i
  %i.ap = sub nuw i64 %.val.i.i.i.i, %.promoted34.i
  %spec.select.i.i.i.i.us.peel.i = select i1 %.not13.i.i.i.i.i.us.peel.i, i64 %i.ap, i64 %.val2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1408
  call void @_RNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB9_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(64) %i.k, i64 noundef %i.z, i64 noundef %i.ab), !noalias !1409
  store i64 %i.ad, ptr %i.ag, align 8, !alias.scope !1412, !noalias !1409
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1409
  store i64 %spec.select.i.i.i.i.us.peel.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1409
  store i64 %.promoted34.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.724.i, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1408
  store i64 1, ptr %i.q, align 8, !alias.scope !1357, !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.724.i, i64 64, i1 false), !noalias !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.724.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %i.aq = load i64, ptr %i.r, align 8, !alias.scope !1419, !noalias !1424, !noundef !4 ; 2 uses
  %i.ar = load i64, ptr %i.s, align 8, !alias.scope !1425, !noalias !1426, !noundef !4
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %.split36.us.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split.us.peel.next.i
  store i64 0, ptr %i.q, align 8, !alias.scope !1427, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i)
  %exitcond.not.i8 = icmp eq i64 %i.ai, %i.an
  br i1 %exitcond.not.i8, label %.split38.us.i, label %.lr.ph9

.lr.ph:                                           ; preds = %bb.f
  store i64 0, ptr %i.q, align 8, !alias.scope !1429, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i)
  %exitcond.not.i = icmp eq i64 %i.au, %umax.i
  br i1 %exitcond.not.i, label %.split38.us.i, label %.lr.ph9, !llvm.loop !1431

.lr.ph9:                                          ; preds = %.lr.ph.preheader, %.lr.ph
  %i.at = phi i64 [ %i.au, %.lr.ph ], [ %i.an, %.lr.ph.preheader ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.au = add i64 %i.at, 1                        ; 3 uses
  store i64 %i.au, ptr %i.v, align 8, !alias.scope !1451, !noalias !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1452
  store i64 %.val.i.i.i.i, ptr %i.i, align 8, !noalias !1455
  store i64 %i.at, ptr %i.h, align 8, !noalias !1455
  %exitcond43.not.i = icmp eq i64 %i.at, %umax42.i
  br i1 %exitcond43.not.i, label %.split40.us.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph9
  %i.av = add i64 %i.at, %.val2.i.i.i.i
  %.not13.i.i.i.i.i.us.i = icmp ugt i64 %i.av, %.val.i.i.i.i
  %i.aw = sub nuw i64 %.val.i.i.i.i, %i.at
  %spec.select.i.i.i.i.us.i = select i1 %.not13.i.i.i.i.i.us.i, i64 %i.aw, i64 %.val2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1456
  call void @_RNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB9_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(64) %i.k, i64 noundef %i.z, i64 noundef %i.ab), !noalias !1457
  store i64 %i.ad, ptr %i.ag, align 8, !alias.scope !1412, !noalias !1457
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1457
  store i64 %spec.select.i.i.i.i.us.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1457
  store i64 %i.at, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.724.i, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !1458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1456
  store i64 1, ptr %i.q, align 8, !alias.scope !1357, !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.724.i, i64 64, i1 false), !noalias !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.724.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.ax = load i64, ptr %i.r, align 8, !alias.scope !1463, !noalias !1468, !noundef !4 ; 2 uses
  %i.ay = load i64, ptr %i.s, align 8, !alias.scope !1469, !noalias !1470, !noundef !4
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %.split36.us.i, label %.lr.ph, !llvm.loop !1431

.split.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.ba = trunc nuw i64 %.promoted.i to i1
  br i1 %i.ba, label %bb.g, label %.split38.i
end_hunk_4
