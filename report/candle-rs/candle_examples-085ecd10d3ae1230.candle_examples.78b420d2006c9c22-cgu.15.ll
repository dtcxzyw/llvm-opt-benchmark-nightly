Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_examples-085ecd10d3ae1230.candle_examples.78b420d2006c9c22-cgu.15?download=true
inline.NumInlined: 227
inline.NumDeleted: 139
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEINtB2_12SpecFromIterBU_INtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtNtBY_11collections4hash3set4IterNtNtB6_6string6StringENCNvCsamv9RYRPgRi_15candle_examples20hub_load_safetensors0EINtNtB1Y_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEE9from_iterB43_:bb.a

.noexc.i:                                         ; preds = %bb.e
  %i.q = load i64, ptr %i.d, align 8, !range !12, !noalias !238, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !13, !noalias !238, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %.noexc.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !238
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #19
          to label %.noexc5.i unwind label %bb.d, !noalias !237

.noexc5.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.w = load ptr, ptr %i.u, align 8, !noalias !238, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = icmp ule i64 %i.p, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !237
  store i64 %i.t, ptr %i.i, align 8, !noalias !238
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !238
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !noalias !237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !242
  invoke void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvCsamv9RYRPgRi_15candle_examples20hub_load_safetensors0EINtNtB6_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %.noexc6.i unwind label %.loopexit.split-lp.i, !noalias !237

.noexc6.i:                                        ; preds = %bb.g
  %i.y = load i64, ptr %i.c, align 8, !range !9, !noalias !242, !noundef !5
  %.not2.i.i.i = icmp eq i64 %i.y, -1
  br i1 %.not2.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc6.i, %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !242
  %i.z = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !243, !noalias !244, !noundef !5 ; 4 uses
  %i.aa = icmp ult i64 %i.z, 384307168202282326
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %i.i, align 8, !range !6, !alias.scope !243, !noalias !244, !noundef !5
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !242
  invoke void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvCsamv9RYRPgRi_15candle_examples20hub_load_safetensors0EINtNtB6_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e)
          to label %bb.j unwind label %bb.i, !noalias !237

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !243, !noalias !244, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !237
  %i.af = add nuw nsw i64 %i.z, 1
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !243, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !242
  invoke void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvCsamv9RYRPgRi_15candle_examples20hub_load_safetensors0EINtNtB6_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !237

.noexc7.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i
  %i.ag = load i64, ptr %i.c, align 8, !range !9, !noalias !242, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.ag, -1
  br i1 %.not.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.l, !noalias !237

bb.j:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.a, align 8, !noalias !242, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !242
  %i.aj = call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 1) ; 2 uses
  %i.ak = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !245, !noalias !244, !noundef !5 ; 2 uses
  %i.al = load i64, ptr %i.i, align 8, !range !6, !alias.scope !245, !noalias !244, !noundef !5
  %i.am = sub i64 %i.al, %i.ak
  %i.an = icmp ugt i64 %i.aj, %i.am
  br i1 %i.an, label %bb.k, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i, !prof !7

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i unwind label %bb.i, !noalias !237

bb.l:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14, !noalias !237
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #17
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsamv9RYRPgRi_15candle_examples.exit.i unwind label %bb.m, !noalias !237

.loopexit8.i:                                     ; preds = %.noexc7.i, %.noexc6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !239
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtNtNtB15_11collections4hash3set4IterNtNtB6_6string6StringENCNvCsamv9RYRPgRi_15candle_examples20hub_load_safetensors0EINtNtB2c_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEE9from_iterB4i_.exit

bb.m:                                             ; preds = %.body.i, %bb.d
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14, !noalias !237
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %.body.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtNtNtB15_11collections4hash3set4IterNtNtB6_6string6StringENCNvCsamv9RYRPgRi_15candle_examples20hub_load_safetensors0EINtNtB2c_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEE9from_iterB4i_.exit: ; preds = %bb.c, %.loopexit8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !238
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB29_6tensorNtB3e_6Tensor7to_vec1fE00EE9from_iterCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 18 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276), !noalias !273
  %i.h = load i64, ptr %1, align 8, !range !12, !alias.scope !277, !noalias !273, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !277, !noalias !273 ; 4 uses
  %i.k = trunc nuw i64 %i.h to i1
  br i1 %i.k, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !278
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !277, !noalias !273, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !277, !noalias !273, !noundef !5
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !277, !noalias !273, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !277, !noalias !273, !noundef !5
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !279
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjEINtBZ_4IterjEEINtB5_7ZipImplBW_B1r_E3newCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.u)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !277, !noalias !273, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !277, !noalias !273, !noundef !5
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.w, ptr noundef nonnull %i.z)
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !279
  %.sroa.013.0.copyload.i.i = load ptr, ptr %i.b, align 8, !noalias !278 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !278 ; 2 uses
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.514.0.copyload.i.i = load i64, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !noalias !278
  %.sroa.716.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.716.0.copyload.i.i = load ptr, ptr %.sroa.716.0..sroa_idx.i.i, align 8, !noalias !278 ; 2 uses
  %.sroa.918.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.918.0.copyload.i.i = load i64, ptr %.sroa.918.0..sroa_idx.i.i, align 8, !noalias !278 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !278 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !278
  %i.aa = icmp ult i64 %.sroa.918.0.copyload.i.i, %.sroa.10.0.copyload.i.i
  br i1 %i.aa, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i: ; preds = %.noexc2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.0.copyload.i.i) ], !noalias !273
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ], !noalias !273
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.716.0.copyload.i.i) ], !noalias !273
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i: ; preds = %bb.c, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i
  %.sroa.05.031.i.i = phi i64 [ %i.j, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i ], [ %i.ap, %bb.c ] ; 2 uses
  %.sroa.9.030.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i ], [ %i.ab, %bb.c ]
  %i.ab = add i64 %.sroa.9.030.i.i, -1            ; 4 uses
  %i.ac = add i64 %i.ab, %.sroa.514.0.copyload.i.i ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.013.0.copyload.i.i, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.716.0.copyload.i.i, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0.copyload.i.i, i64 %i.ac
  %i.ag = load i64, ptr %i.ad, align 8, !noalias !278, !noundef !5 ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 2 uses
  %i.ai = load i64, ptr %i.af, align 8, !noalias !278, !noundef !5
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i: ; preds = %bb.c, %.noexc2
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !277, !noalias !273, !noundef !5
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !alias.scope !277, !noalias !273
  br label %bb.e

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i
  %i.an = load i64, ptr %i.ae, align 8, !noalias !278, !noundef !5
  %i.ao = mul i64 %i.an, %i.ag
  %i.ap = sub i64 %.sroa.05.031.i.i, %i.ao
  store i64 0, ptr %i.ad, align 8, !noalias !278
  %i.aq = icmp ult i64 %.sroa.918.0.copyload.i.i, %i.ab
  br i1 %i.aq, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i
  store i64 %i.ah, ptr %i.ad, align 8, !noalias !278
  %i.ar = load i64, ptr %i.ae, align 8, !noalias !278, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !277, !noalias !273, !noundef !5
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !277, !noalias !273
  %i.av = add i64 %i.ar, %.sroa.05.031.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i
  %.val.i = phi i64 [ %i.au, %bb.d ], [ %i.am, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i ]
  %.sroa.6.0.i.i = phi i64 [ %i.av, %bb.d ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i ]
  %.sroa.08.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i ]
  store i64 %.sroa.08.0.i.i, ptr %1, align 8, !alias.scope !277, !noalias !273
  store i64 %.sroa.6.0.i.i, ptr %i.i, align 8, !alias.scope !277, !noalias !273
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i = load i64, ptr %i.aw, align 8, !alias.scope !275, !noalias !273, !noundef !5 ; 2 uses
  %i.ax = icmp ult i64 %i.j, %.val3.i
  br i1 %i.ax, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %.noexc, %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !273, !noalias !280
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.az, align 8, !alias.scope !273, !noalias !280
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ba, align 8, !alias.scope !273, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !274
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb), !noalias !273
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB2m_6tensorNtB3r_6Tensor7to_vec1fE00EE9from_iterCsamv9RYRPgRi_15candle_examples.exit

bb.i:                                             ; preds = %bb.k, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.j:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i1 = load ptr, ptr %i.bd, align 8, !alias.scope !275, !noalias !273, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val.i1, i64 %i.j
  %i.bf = load float, ptr %i.be, align 4, !noalias !281, !noundef !5
  %i.bg = call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  %i.bh = call i64 @llvm.umax.i64(i64 %i.bg, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !274
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bh, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %bb.i, !noalias !274

.noexc.i:                                         ; preds = %bb.j
  %i.bi = load i64, ptr %i.e, align 8, !range !12, !noalias !274, !noundef !5
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !13, !noalias !274, !noundef !5 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %.noexc.i
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !274
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bl, i64 %i.bn) #19
          to label %.noexc6.i unwind label %bb.i, !noalias !274

.noexc6.i:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc.i
  %i.bo = load ptr, ptr %i.bm, align 8, !noalias !274, !nonnull !5, !noundef !5 ; 2 uses
  %i.bp = icmp ule i64 %i.bh, %i.bl
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !274
  store float %i.bf, ptr %i.bo, align 4, !noalias !274
  store i64 %i.bl, ptr %i.g, align 8, !noalias !274
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !274
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !273
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bs = load i64, ptr %i.f, align 8, !range !12, !alias.scope !282, !noalias !274, !noundef !5
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %.lr.ph.i, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecfE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1S_6tensorNtB2X_6Tensor7to_vec1fE00EECsamv9RYRPgRi_15candle_examples.exit.i.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bu = load i64, ptr %i.br, align 8, !alias.scope !282, !noalias !274
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.716.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.918.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecfE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i, %.lr.ph.i
  %i.cd = phi i64 [ %i.bu, %.lr.ph.i ], [ %i.dt, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecfE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !285
  %i.ce = load ptr, ptr %i.bv, align 8, !alias.scope !286, !noalias !274, !nonnull !5, !noundef !5 ; 2 uses
  %i.cf = load i64, ptr %i.bw, align 8, !alias.scope !286, !noalias !274, !noundef !5
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.bx, align 8, !alias.scope !286, !noalias !274, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.ci = load i64, ptr %i.by, align 8, !alias.scope !286, !noalias !274, !noundef !5
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !287
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjEINtBZ_4IterjEEINtB5_7ZipImplBW_B1r_E3newCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cj)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !274

.noexc10.i:                                       ; preds = %bb.m
  %i.ck = load ptr, ptr %i.bz, align 8, !alias.scope !286, !noalias !274, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.cl = load i64, ptr %i.ca, align 8, !alias.scope !286, !noalias !274, !noundef !5
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cl
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cm)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !274

.noexc11.i:                                       ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !287
  %.sroa.013.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !noalias !285 ; 2 uses
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !285 ; 2 uses
  %.sroa.514.0.copyload.i.i.i = load i64, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !285
  %.sroa.716.0.copyload.i.i.i = load ptr, ptr %.sroa.716.0..sroa_idx.i.i.i, align 8, !noalias !285 ; 2 uses
  %.sroa.918.0.copyload.i.i.i = load i64, ptr %.sroa.918.0..sroa_idx.i.i.i, align 8, !noalias !285 ; 2 uses
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !285 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !285
  %i.cn = icmp ult i64 %.sroa.918.0.copyload.i.i.i, %.sroa.10.0.copyload.i.i.i
  br i1 %i.cn, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i.i: ; preds = %.noexc11.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.716.0.copyload.i.i.i) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i.i: ; preds = %bb.n, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i.i
  %.sroa.05.031.i.i.i = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i.i ], [ %i.db, %bb.n ] ; 2 uses
  %.sroa.9.030.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.lr.ph.i.i.i ], [ %i.co, %bb.n ]
  %i.co = add i64 %.sroa.9.030.i.i.i, -1          ; 4 uses
  %i.cp = add i64 %i.co, %.sroa.514.0.copyload.i.i.i ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.013.0.copyload.i.i.i, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.716.0.copyload.i.i.i, i64 %i.co ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0.copyload.i.i.i, i64 %i.cp
  %i.ct = load i64, ptr %i.cq, align 8, !noalias !285, !noundef !5 ; 2 uses
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  %i.cv = load i64, ptr %i.cs, align 8, !noalias !285, !noundef !5
  %i.cw = icmp ult i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.o, label %bb.n

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i.i: ; preds = %bb.n, %.noexc11.i
  %i.cx = load i64, ptr %i.bq, align 8, !alias.scope !286, !noalias !274, !noundef !5
  %i.cy = add i64 %i.cx, -1                       ; 2 uses
  store i64 %i.cy, ptr %i.bq, align 8, !alias.scope !286, !noalias !274
  br label %bb.p

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i.i
  %i.cz = load i64, ptr %i.cr, align 8, !noalias !285, !noundef !5
  %i.da = mul i64 %i.cz, %i.ct
  %i.db = sub i64 %.sroa.05.031.i.i.i, %i.da
  store i64 0, ptr %i.cq, align 8, !noalias !285
  %i.dc = icmp ult i64 %.sroa.918.0.copyload.i.i.i, %i.co
  br i1 %i.dc, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i.i

bb.o:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.i.i.i
  store i64 %i.cu, ptr %i.cq, align 8, !noalias !285
  %i.dd = load i64, ptr %i.cr, align 8, !noalias !285, !noundef !5
  %i.de = load i64, ptr %i.bq, align 8, !alias.scope !286, !noalias !274, !noundef !5
  %i.df = add i64 %i.de, -1                       ; 2 uses
  store i64 %i.df, ptr %i.bq, align 8, !alias.scope !286, !noalias !274
  %i.dg = add i64 %i.dd, %.sroa.05.031.i.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i.i
  %.val.i.i.i = phi i64 [ %i.df, %bb.o ], [ %i.cy, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i.i ]
  %.sroa.6.0.i.i.i = phi i64 [ %i.dg, %bb.o ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i.i ]
  %.sroa.08.0.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsamv9RYRPgRi_15candle_examples.exit.thread.i.i.i ]
  store i64 %.sroa.08.0.i.i.i, ptr %i.f, align 8, !alias.scope !286, !noalias !274
  store i64 %.sroa.6.0.i.i.i, ptr %i.br, align 8, !alias.scope !286, !noalias !274
  %.val3.i.i = load i64, ptr %i.cb, align 8, !alias.scope !283, !noalias !274, !noundef !5 ; 2 uses
  %i.dh = icmp ult i64 %i.cd, %.val3.i.i
  br i1 %i.dh, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !274

.noexc12.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.t, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dv, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %.body.i unwind label %bb.v, !noalias !274

.loopexit.i:                                      ; preds = %.noexc10.i, %bb.m
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.s:                                             ; preds = %bb.p
  %.val.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !283, !noalias !274, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cd
  %i.dk = load float, ptr %i.dj, align 4, !noalias !288, !noundef !5
  %i.dl = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !289, !noalias !290, !noundef !5 ; 5 uses
  %i.dm = icmp ult i64 %i.dl, 2305843009213693952
  call void @llvm.assume(i1 %i.dm)
  %i.dn = load i64, ptr %i.g, align 8, !range !6, !alias.scope !289, !noalias !290, !noundef !5
  %i.do = icmp eq i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.u, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecfE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecfE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i: ; preds = %bb.u, %bb.s
  %i.dp = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !289, !noalias !290, !nonnull !5, !noundef !5
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dl
  store float %i.dk, ptr %i.dq, align 4, !noalias !290
  %i.dr = add nuw nsw i64 %i.dl, 1
  store i64 %i.dr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !289, !noalias !290
  %i.ds = load i64, ptr %i.f, align 8, !range !12, !alias.scope !291, !noalias !274, !noundef !5
  %i.dt = load i64, ptr %i.br, align 8, !alias.scope !291, !noalias !274
  %i.du = trunc nuw i64 %i.ds to i1
  br i1 %i.du, label %bb.m, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecfE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1S_6tensorNtB2X_6Tensor7to_vec1fE00EECsamv9RYRPgRi_15candle_examples.exit.i.i

bb.t:                                             ; preds = %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.dw = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.dl, i64 noundef range(i64 1, 0) %i.dw, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecfE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i unwind label %bb.t, !noalias !290

bb.v:                                             ; preds = %bb.r
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14, !noalias !274
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecfE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1S_6tensorNtB2X_6Tensor7to_vec1fE00EECsamv9RYRPgRi_15candle_examples.exit.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecfE7reserveCsamv9RYRPgRi_15candle_examples.exit.i.i.i, %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB24_6tensorNtB39_6Tensor7to_vec1fE00EE11spec_extendCsamv9RYRPgRi_15candle_examples.exit.i unwind label %bb.w, !noalias !274

bb.w:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecfE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1S_6tensorNtB2X_6Tensor7to_vec1fE00EECsamv9RYRPgRi_15candle_examples.exit.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dz, %bb.w ], [ %.pn.i.i.i, %bb.r ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1d_6tensorNtB2i_6Tensor7to_vec1fE00EECsamv9RYRPgRi_15candle_examples.exit.i unwind label %bb.x, !noalias !274

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB24_6tensorNtB39_6Tensor7to_vec1fE00EE11spec_extendCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecfE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1S_6tensorNtB2X_6Tensor7to_vec1fE00EECsamv9RYRPgRi_15candle_examples.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !274
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB2m_6tensorNtB3r_6Tensor7to_vec1fE00EE9from_iterCsamv9RYRPgRi_15candle_examples.exit

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14, !noalias !273
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1d_6tensorNtB2i_6Tensor7to_vec1fE00EECsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.y, %.body.i
  %.pn15.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.y ]
  resume { ptr, i32 } %.pn15.i

bb.y:                                             ; preds = %bb.i, %bb.g
  %.pn.ph.i = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %i.bc, %bb.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB1d_6tensorNtB2i_6Tensor7to_vec1fE00EECsamv9RYRPgRi_15candle_examples.exit.i unwind label %bb.x, !noalias !273

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB2m_6tensorNtB3r_6Tensor7to_vec1fE00EE9from_iterCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.h, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexNCNCINvMs1_NtB24_6tensorNtB39_6Tensor7to_vec1fE00EE11spec_extendCsamv9RYRPgRi_15candle_examples.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEENtB6_5Debug3fmtCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtB5_5Debug3fmtCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !296, !noundef !5 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !6, !alias.scope !296, !noundef !5
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.i, !prof !7

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.thread.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !297, !noundef !5 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.b

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.a
  %i.k = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsamv9RYRPgRi_15candle_examples.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.thread.i
  %i.l = phi i64 [ %i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.thread.i ], [ %i.e, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !297, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 %i.c, i1 false)
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !297
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsamv9RYRPgRi_15candle_examples.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsamv9RYRPgRi_15candle_examples.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsamv9RYRPgRi_15candle_examples.exit.i, %bb.b
end_hunk_0
