Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.03?download=true
inline.NumInlined: 257
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr:bb.a
.body:                                            ; preds = %bb.b, %bb.c
  %i.l = icmp eq i64 %i.c, %1
  br i1 %i.l, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %.body, %bb.f
  %.sroa.0.119 = phi i64 [ %i.j, %bb.f ], [ %i.c, %.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.0.119
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.m) #24
          to label %bb.f unwind label %bb.g

._crit_edge21:                                    ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.d

bb.g:                                             ; preds = %.lr.ph20
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !182, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !183, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !184
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !182, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !183, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !185
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4wP2HXfJTCR_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringAINtNtB1f_6option6OptionjEj3_EENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0EAjB3l_EB3y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 20 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !231, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !231, !nonnull !4, !noundef !4 ; 3 uses
  %.not17.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not17.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.body:                                            ; preds = %bb.z, %bb.y, %bb.w
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.ph.i.i.i.i, %bb.w ], [ %i.cc, %bb.z ], [ %i.cc, %bb.y ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtB1u_6string6StringAINtNtB4_6option6OptionjEj3_EENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0EEB3a_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #24
          to label %common.resume unwind label %bb.aa

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.val.i.pre21.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !232, !noalias !233 ; 3 uses
  %.val4.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !232, !noalias !233 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.pre21.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.pre21.i.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i, %.lr.ph.i.i.i
  %i.q = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.r, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i ] ; 2 uses
  %.sroa.4.018.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.pn15.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !noalias !235
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !235
  store ptr %i.e, ptr %i.b, align 8, !noalias !234
  store ptr %.sroa.4.018.i.i.i, ptr %i.k, align 8, !noalias !234
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !236, !noalias !234
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !236, !noalias !234 ; 6 uses
  %.sroa.8.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !236, !noalias !234 ; 5 uses
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !236, !noalias !234
  %.sroa.11.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !236, !noalias !234 ; 5 uses
  %i.s = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i.i to i1
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !236, !noalias !234
  %i.t = trunc nuw i64 %.sroa.7.0.copyload.i.i.i.i.i to i1
  %or.cond7.i.i.i.i.i = select i1 %i.s, i1 %i.t, i1 false
  %i.u = trunc nuw i64 %.sroa.10.0.copyload.i.i.i.i.i to i1
  %or.cond8.i.i.i.i.i = select i1 %or.cond7.i.i.i.i.i, i1 %i.u, i1 false
  br i1 %or.cond8.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.e unwind label %bb.d, !noalias !237

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !10, !alias.scope !238, !noalias !234, !noundef !4 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %bb.w, label %common.resume.sink.split.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !10, !alias.scope !238, !noalias !234, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.thread.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.thread.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.thread.i.i.i.i: ; preds = %bb.e
  %.val1.i.i.i13.i26.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !236, !noalias !234, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i13.i26.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.thread.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

common.resume.sink.split.i.i.i.i.i:               ; preds = %bb.s, %bb.d
  %.val2.i.i.i9.sink.i.i.i.i.i = phi i64 [ %.val2.i.i.i9.i.i.i.i.i, %bb.s ], [ %.val2.i.i.i.i.i.i.i.i, %bb.d ]
  %common.resume.op.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.s ], [ %i.v, %bb.d ]
  %.val3.i.i.i10.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !236, !noalias !234, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i10.i.i.i.i.i, i64 noundef %.val2.i.i.i9.sink.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !237
  br label %bb.w

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.pre21.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.y = load i64, ptr %i.o, align 8, !alias.scope !239, !noalias !240 ; 4 uses
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !239, !noalias !240, !nonnull !4 ; 3 uses
  %i.aa = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, %i.y
  br i1 %i.aa, label %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.val2.i.lcssa.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.f ], [ %.sroa.8.0.copyload.i.i.i.i.i, %bb.h ], [ %.sroa.11.0.copyload.i.i.i.i.i, %bb.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.lcssa.i.i.i.i.i, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !240

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  unreachable

_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.sroa.5.0.copyload.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !241, !noalias !242, !noundef !4
  %i.ae = icmp eq i8 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i
  %i.af = icmp ult i64 %.sroa.8.0.copyload.i.i.i.i.i, %i.y
  br i1 %i.af, label %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i, label %bb.g

_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i: ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.sroa.8.0.copyload.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !range !241, !noalias !242, !noundef !4
  %i.aj = icmp eq i8 %i.ai, 1
  br i1 %i.aj, label %bb.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i
  %i.ak = icmp ult i64 %.sroa.11.0.copyload.i.i.i.i.i, %i.y
  br i1 %i.ak, label %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i, label %bb.g

_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.sroa.11.0.copyload.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i8, ptr %i.am, align 8, !range !241, !noalias !242, !noundef !4
  %i.ao = icmp eq i8 %i.an, 1
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.n, %bb.m, %bb.j, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i, %bb.g
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #24
          to label %bb.w unwind label %bb.u, !noalias !237

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i: ; preds = %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i = phi i1 [ false, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i ], [ %i.ao, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i ], [ false, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i) ]
  %i.ap = load ptr, ptr %.val4.i.i.i.i, align 8, !noalias !240, !nonnull !4, !align !9, !noundef !4
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.ap, i64 noundef %.sroa.5.0.copyload.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.j unwind label %.loopexit.split-lp.i.i.i, !noalias !240 ; 2 uses

bb.j:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i
  %i.ar = load ptr, ptr %.val4.i.i.i.i, align 8, !noalias !240, !nonnull !4, !align !9, !noundef !4
  %i.as = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.ar, i64 noundef %.sroa.8.0.copyload.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.k unwind label %.loopexit.split-lp.i.i.i, !noalias !240 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noalias !240, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noalias !240, !noundef !4
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !noalias !240, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !240, !noundef !4
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %.val4.i.i.i.i, align 8, !noalias !240, !nonnull !4, !align !9, !noundef !4
  %i.be = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.bd, i64 noundef %.sroa.5.0.copyload.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.n unwind label %.loopexit.split-lp.i.i.i, !noalias !240 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %.val4.i.i.i.i, align 8, !noalias !240, !nonnull !4, !align !9, !noundef !4
  %i.bg = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.bf, i64 noundef %.sroa.11.0.copyload.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.o unwind label %.loopexit.split-lp.i.i.i, !noalias !240 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !240, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !240, !noundef !4
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !240, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !240, !noundef !4
  %i.bq = icmp eq i64 %i.bn, %i.bp
  %or.cond.i.i.i.i.i = and i1 %.lcssa.i.i.i.i.i, %i.bq
  br i1 %or.cond.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.l, %bb.k
  %.sroa.8.0.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i.i.i.i, %bb.q ], [ undef, %bb.p ], [ undef, %bb.o ], [ undef, %bb.l ], [ undef, %bb.k ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i.i.i, %bb.q ], [ undef, %bb.p ], [ undef, %bb.o ], [ undef, %bb.l ], [ undef, %bb.k ]
  %storemerge.i.i.i.i.i = phi i1 [ true, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.k ] ; 2 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.t unwind label %bb.s, !noalias !237

bb.s:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i9.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !10, !alias.scope !243, !noalias !234, !noundef !4 ; 2 uses
  %i.bs = icmp eq i64 %.val2.i.i.i9.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.w, label %common.resume.sink.split.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %.val.i.i.i12.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !10, !alias.scope !243, !noalias !234, !noundef !4 ; 2 uses
  %i.bt = icmp eq i64 %.val.i.i.i12.i.i.i.i.i, 0
  br i1 %i.bt, label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i: ; preds = %bb.t
  %.val1.i.i.i13.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !236, !noalias !234, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i13.i.i.i.i.i, i64 noundef %.val.i.i.i12.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  br i1 %storemerge.i.i.i.i.i, label %bb.v, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

bb.u:                                             ; preds = %.loopexit.split-lp.i.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !237
  unreachable

_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  br i1 %storemerge.i.i.i.i.i, label %bb.v, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

bb.v:                                             ; preds = %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.4.018.i.i.i, align 8, !noalias !234
  %.sroa.6.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i, i64 8
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.6.16..sroa_idx.i.i.i.i, align 8, !noalias !234
  %.sroa.75.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i, i64 16
  store i64 %.sroa.8.0.i.i.i.i, ptr %.sroa.75.16..sroa_idx.i.i.i.i, align 8, !noalias !234
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i, i64 24
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

bb.w:                                             ; preds = %bb.s, %.loopexit.split-lp.i.i.i, %common.resume.sink.split.i.i.i.i.i, %bb.d
  %eh.lpad-body.ph.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.ph.i.i.i.i.i, %common.resume.sink.split.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.v, %bb.d ], [ %i.br, %bb.s ]
  %i.bw = invoke noundef i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropAjj3_E3lenCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.x, !noalias !234 ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !234
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i: ; preds = %bb.v, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.thread.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.thread.i.i.i.i
  %.pn15.i.i.i.i = phi ptr [ %i.bv, %bb.v ], [ %.sroa.4.018.i.i.i, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.thread.i.i.i.i ], [ %.sroa.4.018.i.i.i, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i ], [ %.sroa.4.018.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i ], [ %.sroa.4.018.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.thread.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !235
  %.not.i.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i.i.i, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i
  %.val.i.pre = load ptr, ptr %i.g, align 8, !alias.scope !244
  %.val1.i.pre = load ptr, ptr %i.f, align 8, !alias.scope !244
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.val1.i = phi ptr [ %i.h, %bb.a ], [ %.val1.i.pre, %.loopexit.loopexit ]
  %.val.i = phi ptr [ %i.i, %bb.a ], [ %.val.i.pre, %.loopexit.loopexit ] ; 2 uses
  %.sroa.4.0.lcssa.i.i.i = phi ptr [ %i.e, %bb.a ], [ %.pn15.i.i.i.i, %.loopexit.loopexit ]
  %i.by = ptrtoint ptr %.val1.i to i64
  %i.bz = ptrtoint ptr %.val.i to i64
  %i.ca = sub nuw i64 %i.by, %i.bz
  %i.cb = udiv exact i64 %i.ca, 72
  store i64 0, ptr %i.c, align 8, !alias.scope !244
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !244
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !244
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !244
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.cb)
          to label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringAINtNtCsj6eKBz9Db1c_4core6option6OptionjEj3_EE32forget_allocation_drop_remainingCsdsTQD3x2eOp_3exr.exit unwind label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = icmp eq i64 %i.d, 0
  br i1 %i.cd, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = mul nuw i64 %i.d, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !245
  br label %.body

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringAINtNtCsj6eKBz9Db1c_4core6option6OptionjEj3_EE32forget_allocation_drop_remainingCsdsTQD3x2eOp_3exr.exit: ; preds = %.loopexit
  %i.cf = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i to i64
  %i.cg = ptrtoint ptr %i.e to i64
  %i.ch = sub nuw i64 %i.cf, %i.cg
  %i.ci = udiv exact i64 %i.ch, 24
  %i.cj = mul nuw i64 %i.d, 3
  store i64 %i.cj, ptr %0, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ci, ptr %i.cl, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0), !noalias !246
  ret void

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %.pn

bb.aa:                                            ; preds = %.body
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4wP2HXfJTCR_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1b_3zip3ZipINtNtB4_9into_iter8IntoIterINtB4_3VechEEINtNtNtB1f_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB3i_10decompresss_0EB2C_EB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1i_3VechEEINtNtNtBc_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB2H_10decompresss_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1i_13in_place_drop11InPlaceDropB21_ENCINvNtB1i_16in_place_collect24write_in_place_with_dropB21_E0INtNtBc_6result6ResultB4E_zEEB2L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1u_3VechEEINtNtNtB4_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB2T_10decompresss_0EEB2X_(ptr noalias nofree noundef align 8 dereferenceable(64) %1) #24
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !261, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !261, !nonnull !4, !noundef !4
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 24
  store i64 0, ptr %i.b, align 8, !alias.scope !261
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !261
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !261
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !261
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.t)
          to label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEE32forget_allocation_drop_remainingCsdsTQD3x2eOp_3exr.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtBG_3VechEB1L_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %bb.b unwind label %bb.j

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEE32forget_allocation_drop_remainingCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !266, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !266, !nonnull !4, !noundef !4
  %i.x = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 %.val.i.i.i.i, i64 noundef %i.aa)
          to label %bb.h unwind label %bb.f, !noalias !266

bb.f:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEE32forget_allocation_drop_remainingCsdsTQD3x2eOp_3exr.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load i64, ptr %i.b, align 8, !alias.scope !266, !noundef !4 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !266, !nonnull !4, !noundef !4
  %i.af = mul nuw i64 %i.ac, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !267
  br label %common.resume

bb.h:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEE32forget_allocation_drop_remainingCsdsTQD3x2eOp_3exr.exit
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !266, !noundef !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1u_3VechEEINtNtNtB4_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB2T_10decompresss_0EEB2X_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !alias.scope !266, !nonnull !4, !noundef !4
  %i.aj = mul nuw i64 %i.ag, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !268
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1u_3VechEEINtNtNtB4_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB2T_10decompresss_0EEB2X_.exit

common.resume:                                    ; preds = %bb.b, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.ab, %bb.g ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1u_3VechEEINtNtNtB4_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB2T_10decompresss_0EEB2X_.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !10, !alias.scope !271, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
end_hunk_0
