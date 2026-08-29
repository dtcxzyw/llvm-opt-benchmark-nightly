Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/dyldcachedump.dyldcachedump.1215264e1f4e5699-cgu.1?download=true
inline.NumInlined: 155
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0ENtCsgQ7e0lqRvgo_7memmap24MmapINtNtB6_6result6ResultzuENCINvXso_B3r_IB3p_INtB1b_3VecB2V_EuEINtNtNtB4_6traits7collect12FromIteratorIB3p_B2V_uEE9from_iterBQ_E0B45_EB2l_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !44, !noalias !45, !noundef !6 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !44, !noalias !45, !nonnull !6, !noundef !6 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !44, !noalias !45, !noundef !6
  %i.m = mul i64 %i.i, 24                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46
  store ptr %i.l, ptr %i.c, align 8, !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.c, ptr %i.a, align 8, !noalias !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.o, align 8, !noalias !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.p, align 8, !noalias !52
  invoke void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvNtNtB1p_8adapters3map12map_try_foldBX_INtNtB1r_6result6ResultB2X_uEB2n_INtNtNtB1r_3ops12control_flow11ControlFlowIB49_B2n_zEB2n_ENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0NCINvXB3y_INtB3y_12GenericShuntINtB3w_3MapBI_B5B_EIB49_zuEEB1j_8try_foldB2n_NCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0B5l_E0E0B4F_EB5F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !45

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.q, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %common.resume unwind label %bb.l, !noalias !45

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 4                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58
  store ptr %i.j, ptr %i.d, align 8, !noalias !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.w, ptr %i.x, align 8, !noalias !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.i, ptr %i.y, align 8, !noalias !58
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.f unwind label %bb.e, !noalias !45

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.b unwind label %bb.l, !noalias !45

bb.f:                                             ; preds = %bb.d
  %i.aa = and i64 %i.m, 8
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i, label %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = and i64 %i.m, -16                       ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.m, i64 noundef 8) #16, !noalias !45
  br label %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.m, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ab) #16, !noalias !45 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit, !prof !59

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ab) #18
          to label %bb.k unwind label %bb.e, !noalias !45

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.e, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !45
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.b ], [ %i.as, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.ag = phi ptr [ %i.j, %bb.f ], [ %i.ad, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ] ; 3 uses
  %i.ah = lshr i64 %i.m, 4
  store i64 %i.ah, ptr %i.f, align 8, !alias.scope !60, !noalias !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !60, !noalias !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.w, ptr %i.aj, align 8, !alias.scope !60, !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26
  %i.ak = load i8, ptr %i.g, align 1, !range !11, !noundef !6
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.o:                                             ; preds = %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit
  store i64 -1, ptr %0, align 8, !alias.scope !62
  %i.am = icmp eq ptr %i.s, %i.j
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i: ; preds = %.lr.ph
  %i.an = icmp eq i64 %i.ap, %i.w
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  %.sroa.0.0.i.i.i9 = phi i64 [ %i.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.0.0.i.i.i9
  %i.ap = add nuw nsw i64 %.sroa.0.0.i.i.i9, 1    ; 4 uses
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i unwind label %bb.p, !noalias !65

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i: ; preds = %.lr.ph11
  %i.aq = add i64 %.sroa.0.1.i.i.i10, 1           ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.w
  br i1 %i.ar, label %.body.i, label %.lr.ph11

bb.p:                                             ; preds = %.lr.ph
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = icmp eq i64 %i.ap, %i.w
  br i1 %i.at, label %.body.i, label %.lr.ph11

.lr.ph11:                                         ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i
  %.sroa.0.1.i.i.i10 = phi i64 [ %i.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i ], [ %i.ap, %bb.p ] ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.0.1.i.i.i10
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i unwind label %bb.q, !noalias !65

bb.q:                                             ; preds = %.lr.ph11
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !65
  unreachable

.body.i:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i, %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %.body.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i, %bb.o
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %3, 576460752303423487
  br i1 %i.a, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw i64 %3, 5
  %i.d = icmp ult i64 %1, %2
  %i.e = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.f
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %3, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 24) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %6 = extractvalue { i64, i1 } %4, 0             ; 2 uses
  %i.a = icmp eq i64 %6, 0
  br i1 %i.a, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ult i64 %1, %2
  %i.c = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %6, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.b, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.d
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %3, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 56) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %6 = extractvalue { i64, i1 } %4, 0             ; 2 uses
  %i.a = icmp eq i64 %6, 0
  br i1 %i.a, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ult i64 %1, %2
  %i.c = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %6, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.b, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.d
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %3, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %3, 576460752303423487
  br i1 %i.a, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw i64 %3, 5
  %i.d = icmp ult i64 %1, %2
  %i.e = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.f
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %3, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 56) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %6 = extractvalue { i64, i1 } %4, 0             ; 2 uses
  %i.a = icmp eq i64 %6, 0
  br i1 %i.a, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ult i64 %1, %2
  %i.c = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %6, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.b, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.d
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %3, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(ret: address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #2 {
_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit:
  %i.a = icmp ult i64 %1, %2
  %i.b = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp samesign ult i64 %i.b, 552
  %or.cond.i.i = select i1 %i.a, i1 true, i1 %.not.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.c
  ret ptr %spec.select
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1yfHPQhS7hZ_13dyldcachedump(ptr noundef nonnull %i.a) #14
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs1yfHPQhS7hZ_13dyldcachedump(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1yfHPQhS7hZ_13dyldcachedump(ptr noundef nonnull readonly %i.a) #14, !noalias !71
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapE3lenCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6
  %i.c = load ptr, ptr %0, align 8, !noundef !6
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2Z_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !74
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !74
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !74
  %i.f = load i64, ptr %i.d, align 8, !range !10, !noalias !74, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !77, !noalias !74, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !74
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !noalias !74
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !74, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !74
  store i64 %i.i, ptr %i.e, align 8, !noalias !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.p = icmp ult i64 %1, %2
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3f_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i.i.i.i ], [ %i.q, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  store i64 %.sroa.0.010.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  store ptr %i.b, ptr %i.a, align 8, !noalias !93
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !93
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @2, ptr noundef nonnull %i.a)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i unwind label %.body.i, !noalias !96

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.q = add i64 %.sroa.0.010.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !97
  %i.s = add nuw i64 %.val4.i.i.i.i.i.i, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !84
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3f_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

.body.i:                                          ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  store i64 %.val4.i.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !102, !noalias !96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %bb.e unwind label %bb.d, !noalias !74

bb.d:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !74
  unreachable

bb.e:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3f_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i ], [ %i.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i ]
  store i64 %.val6.i.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !102, !noalias !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !74
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB2X_6endian10EndiannessEENCNvMNtNtNtB2X_4read5macho10dyld_cacheNtB4h_9DyldCache17subcache_suffixess_0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 1                ; 36 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 56                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !103
  %i.j = load i64, ptr %i.d, align 8, !range !10, !noalias !103, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !77, !noalias !103, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !103
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #18, !noalias !103
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !103, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103
  store i64 %i.m, ptr %i.e, align 8, !noalias !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.t = icmp eq ptr %1, %2
  br i1 %i.t, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB3d_6endian10EndiannessEENCNvMNtNtNtB3d_4read5macho10dyld_cacheNtB4x_9DyldCache17subcache_suffixess_0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  %.ptr.1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.ptr.2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.ptr.3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.ptr.4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.ptr.5.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.ptr.6.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.ptr.7.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %.ptr.8.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.ptr.9.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.ptr.10.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %.ptr.11.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %.ptr.12.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.ptr.13.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %.ptr.14.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.ptr.15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecRShEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE9from_iterB3o_:bb.a
  %.val16.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !144, !noundef !6
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.p ; 2 uses
  store ptr %.val15.i.i.i.i.i, ptr %i.s, align 8, !noalias !155, !captures !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.val16.i.i.i.i.i, ptr %i.t, align 8, !noalias !165
  %i.u = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.u ; 2 uses
  %.val15.i.i.i.i.i.1 = load ptr, ptr %i.v, align 8, !noalias !144, !noundef !6
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val16.i.i.i.i.i.1 = load i64, ptr %i.w, align 8, !noalias !144, !noundef !6
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.u ; 2 uses
  store ptr %.val15.i.i.i.i.i.1, ptr %i.x, align 8, !noalias !155, !captures !164
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val16.i.i.i.i.i.1, ptr %i.y, align 8, !noalias !165
  %i.z = add nuw i64 %i.p, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %i.aa = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.epil.init ; 2 uses
  %.val15.i.i.i.i.i.epil = load ptr, ptr %i.ab, align 8, !noalias !144, !noundef !6
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val16.i.i.i.i.i.epil = load i64, ptr %i.ac, align 8, !noalias !144, !noundef !6
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.epil, ptr %i.ad, align 8, !noalias !155, !captures !164
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.val16.i.i.i.i.i.epil, ptr %i.ae, align 8, !noalias !165
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache8DyldFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsgQ7e0lqRvgo_7memmap22osNtB2_9MmapInner3map(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtCsgQ7e0lqRvgo_7memmap22os8file_len(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_CsgQ7e0lqRvgo_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvNtNtB1p_8adapters3map12map_try_foldBX_INtNtB1r_6result6ResultB2X_uEB2n_INtNtNtB1r_3ops12control_flow11ControlFlowIB49_B2n_zEB2n_ENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0NCINvXB3y_INtB3y_12GenericShuntINtB3w_3MapBI_B5B_EIB49_zuEEB1j_8try_foldB2n_NCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0B5l_E0E0B4F_EB5F_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1yfHPQhS7hZ_13dyldcachedump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { noinline }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{i32 0, i32 -1}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!9 = distinct !{!9, !"_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump"}
!10 = !{i64 0, i64 2}
!11 = !{i8 0, i8 2}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!14 = distinct !{!14, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!17 = distinct !{!17, !"_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump"}
!18 = distinct !{null}
!19 = !{i64 8227074281912920}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_: argument 0"}
!22 = distinct !{!22, !"_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCsgQ7e0lqRvgo_7memmap24MmapEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1h_8adapters12GenericShuntINtNtB2r_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB1j_6result6ResultzuEEEB42_: argument 0"}
!25 = distinct !{!25, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCsgQ7e0lqRvgo_7memmap24MmapEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1h_8adapters12GenericShuntINtNtB2r_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB1j_6result6ResultzuEEEB42_"}
!26 = !{!24, !27, !21, !28}
!27 = distinct !{!27, !25, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCsgQ7e0lqRvgo_7memmap24MmapEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1h_8adapters12GenericShuntINtNtB2r_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB1j_6result6ResultzuEEEB42_: argument 1"}
!28 = distinct !{!28, !22, !"_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_: argument 1"}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1D_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB8_6result6ResultzuEENtB2_12IntoIterator9into_iterB2L_: argument 0"}
!31 = distinct !{!31, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1D_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB8_6result6ResultzuEENtB2_12IntoIterator9into_iterB2L_"}
!32 = distinct !{!32, !31, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1D_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB8_6result6ResultzuEENtB2_12IntoIterator9into_iterB2L_: argument 1"}
!33 = !{!24, !21}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtCsgQ7e0lqRvgo_7memmap24MmapEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2a_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB2e_6result6ResultzuEEE9from_iterB47_: argument 0"}
!36 = distinct !{!36, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtCsgQ7e0lqRvgo_7memmap24MmapEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2a_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB2e_6result6ResultzuEEE9from_iterB47_"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtCsgQ7e0lqRvgo_7memmap24MmapEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2a_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB2e_6result6ResultzuEEE9from_iterB47_: argument 1"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB1d_6result6ResultzuEENtCsgQ7e0lqRvgo_7memmap24MmapEB36_: argument 0"}
!41 = distinct !{!41, !"_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB1d_6result6ResultzuEENtCsgQ7e0lqRvgo_7memmap24MmapEB36_"}
!42 = !{!43}
!43 = distinct !{!43, !41, !"_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB1d_6result6ResultzuEENtCsgQ7e0lqRvgo_7memmap24MmapEB36_: argument 1"}
!44 = !{!43, !38}
!45 = !{!40, !35, !24, !27, !21, !28}
!46 = !{!47, !40, !43, !35, !38, !24, !27, !21, !28}
!47 = distinct !{!47, !48, !"_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtBS_3map3MapINtNtB7_9into_iter8IntoIterNtNtB9_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtBW_6result6ResultzuEEINtB5_18SpecInPlaceCollectNtCsgQ7e0lqRvgo_7memmap24MmapBP_E16collect_in_placeB2O_: argument 0"}
!48 = distinct !{!48, !"_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtBS_3map3MapINtNtB7_9into_iter8IntoIterNtNtB9_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtBW_6result6ResultzuEEINtB5_18SpecInPlaceCollectNtCsgQ7e0lqRvgo_7memmap24MmapBP_E16collect_in_placeB2O_"}
!49 = !{!50, !47, !40, !43, !35, !38, !24, !27, !21, !28}
!50 = distinct !{!50, !51, !"_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB7_6result6ResultzuEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvNtB1j_16in_place_collect24write_in_place_with_dropB4L_E0IB34_B4a_zEEB2t_: argument 0"}
!51 = distinct !{!51, !"_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EINtNtB7_6result6ResultzuEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvNtB1j_16in_place_collect24write_in_place_with_dropB4L_E0IB34_B4a_zEEB2t_"}
!52 = !{!53, !55, !56, !57, !50, !47, !40, !43, !35, !38, !24, !27, !21, !28}
!53 = distinct !{!53, !54, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzuEEB2M_8try_foldB3t_NCINvNtB12_16in_place_collect24write_in_place_with_dropB44_E0IB55_B3t_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB6K_B3t_EEB2c_: argument 0"}
!54 = distinct !{!54, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzuEEB2M_8try_foldB3t_NCINvNtB12_16in_place_collect24write_in_place_with_dropB44_E0IB55_B3t_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB6K_B3t_EEB2c_"}
!55 = distinct !{!55, !54, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzuEEB2M_8try_foldB3t_NCINvNtB12_16in_place_collect24write_in_place_with_dropB44_E0IB55_B3t_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB6K_B3t_EEB2c_: argument 1"}
!56 = distinct !{!56, !54, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzuEEB2M_8try_foldB3t_NCINvNtB12_16in_place_collect24write_in_place_with_dropB44_E0IB55_B3t_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB6K_B3t_EEB2c_: argument 2"}
!57 = distinct !{!57, !54, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzuEEB2M_8try_foldB3t_NCINvNtB12_16in_place_collect24write_in_place_with_dropB44_E0IB55_B3t_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB6K_B3t_EEB2c_: argument 3"}
!58 = !{!40, !43, !35, !38, !24, !27, !21, !28}
!59 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!60 = !{!40, !35, !24, !21}
!61 = !{!43, !38, !27, !28}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtB7_3ops9try_trait12FromResidualIBy_zuEE13from_residualCs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!64 = distinct !{!64, !"_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtB7_3ops9try_trait12FromResidualIBy_zuEE13from_residualCs1yfHPQhS7hZ_13dyldcachedump"}
!65 = !{!66, !68}
!66 = distinct !{!66, !67, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!67 = distinct !{!67, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump"}
!68 = distinct !{!68, !69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!69 = distinct !{!69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump"}
!70 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!73 = distinct !{!73, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1yfHPQhS7hZ_13dyldcachedump"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3f_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!76 = distinct !{!76, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3f_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump"}
!77 = !{i64 0, i64 -9223372036854775807}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtB8_6string6StringEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1J_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2W_9DyldCache17subcache_suffixes0EE11spec_extendCs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!80 = distinct !{!80, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtB8_6string6StringEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1J_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2W_9DyldCache17subcache_suffixes0EE11spec_extendCs1yfHPQhS7hZ_13dyldcachedump"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2E_9DyldCache17subcache_suffixes0EECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!83 = distinct !{!83, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2E_9DyldCache17subcache_suffixes0EECs1yfHPQhS7hZ_13dyldcachedump"}
!84 = !{!85, !87, !89, !91, !82, !79, !75}
!85 = distinct !{!85, !86, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!86 = distinct !{!86, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump"}
!87 = distinct !{!87, !88, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2N_9DyldCache17subcache_suffixes0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB29_3vecINtB4M_3VecB25_E14extend_trustedINtB1B_3MapB3_B2I_EE0E0E0ECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!88 = distinct !{!88, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2N_9DyldCache17subcache_suffixes0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB29_3vecINtB4M_3VecB25_E14extend_trustedINtB1B_3MapB3_B2I_EE0E0E0ECs1yfHPQhS7hZ_13dyldcachedump"}
!89 = distinct !{!89, !90, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1u_9DyldCache17subcache_suffixes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB40_3vecINtB4H_3VecB3W_E14extend_trustedBN_E0E0ECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!90 = distinct !{!90, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1u_9DyldCache17subcache_suffixes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB40_3vecINtB4H_3VecB3W_E14extend_trustedBN_E0E0ECs1yfHPQhS7hZ_13dyldcachedump"}
!91 = distinct !{!91, !92, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1o_9DyldCache17subcache_suffixes0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3D_3VecNtNtB3F_6string6StringE14extend_trustedB3_E0ECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!92 = distinct !{!92, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1o_9DyldCache17subcache_suffixes0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3D_3VecNtNtB3F_6string6StringE14extend_trustedB3_E0ECs1yfHPQhS7hZ_13dyldcachedump"}
!93 = !{!94, !85, !87, !89, !91, !82, !79, !75}
!94 = distinct !{!94, !95, !"_RNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB4_9DyldCache17subcache_suffixes0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!95 = distinct !{!95, !"_RNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB4_9DyldCache17subcache_suffixes0Cs1yfHPQhS7hZ_13dyldcachedump"}
!96 = !{!87, !89, !91, !75}
!97 = !{!98, !100, !85, !87, !89, !91, !75}
!98 = distinct !{!98, !99, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1t_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2G_9DyldCache17subcache_suffixes0EE0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!99 = distinct !{!99, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1t_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2G_9DyldCache17subcache_suffixes0EE0Cs1yfHPQhS7hZ_13dyldcachedump"}
!100 = distinct !{!100, !101, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3E_9DyldCache17subcache_suffixes0EE0E0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!101 = distinct !{!101, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3E_9DyldCache17subcache_suffixes0EE0E0Cs1yfHPQhS7hZ_13dyldcachedump"}
!102 = !{!82, !79}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB3d_6endian10EndiannessEENCNvMNtNtNtB3d_4read5macho10dyld_cacheNtB4x_9DyldCache17subcache_suffixess_0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!105 = distinct !{!105, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB3d_6endian10EndiannessEENCNvMNtNtNtB3d_4read5macho10dyld_cacheNtB4x_9DyldCache17subcache_suffixess_0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtB8_6string6StringEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB2U_6endian10EndiannessEENCNvMNtNtNtB2U_4read5macho10dyld_cacheNtB4e_9DyldCache17subcache_suffixess_0EE11spec_extendCs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!108 = distinct !{!108, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtB8_6string6StringEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB2U_6endian10EndiannessEENCNvMNtNtNtB2U_4read5macho10dyld_cacheNtB4e_9DyldCache17subcache_suffixess_0EE11spec_extendCs1yfHPQhS7hZ_13dyldcachedump"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB2C_6endian10EndiannessEENCNvMNtNtNtB2C_4read5macho10dyld_cacheNtB3W_9DyldCache17subcache_suffixess_0EECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!111 = distinct !{!111, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB2C_6endian10EndiannessEENCNvMNtNtNtB2C_4read5macho10dyld_cacheNtB3W_9DyldCache17subcache_suffixess_0EECs1yfHPQhS7hZ_13dyldcachedump"}
!112 = !{!113, !115, !116, !118, !119, !121, !123, !110, !107, !104}
!113 = distinct !{!113, !114, !"_RNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB4_9DyldCache17subcache_suffixess_0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!114 = distinct !{!114, !"_RNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB4_9DyldCache17subcache_suffixess_0Cs1yfHPQhS7hZ_13dyldcachedump"}
!115 = distinct !{!115, !114, !"_RNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB4_9DyldCache17subcache_suffixess_0Cs1yfHPQhS7hZ_13dyldcachedump: argument 1"}
!116 = distinct !{!116, !117, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB10_6endian10EndiannessENtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtB10_4read5macho10dyld_cacheNtB2W_9DyldCache17subcache_suffixess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2e_NCINvMsk_NtB2i_3vecINtB5b_3VecB2e_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2R_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!117 = distinct !{!117, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB10_6endian10EndiannessENtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtB10_4read5macho10dyld_cacheNtB2W_9DyldCache17subcache_suffixess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2e_NCINvMsk_NtB2i_3vecINtB5b_3VecB2e_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2R_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump"}
!118 = distinct !{!118, !117, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB10_6endian10EndiannessENtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtB10_4read5macho10dyld_cacheNtB2W_9DyldCache17subcache_suffixess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2e_NCINvMsk_NtB2i_3vecINtB5b_3VecB2e_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2R_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump: argument 1"}
!119 = distinct !{!119, !120, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtBV_6endian10EndiannessEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2f_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtBV_4read5macho10dyld_cacheNtB4f_9DyldCache17subcache_suffixess_0NCINvNvB29_8for_each4callB3x_NCINvMsk_NtB3B_3vecINtB5Z_3VecB3x_E14extend_trustedINtB2Z_3MapBF_B4a_EE0E0E0ECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!120 = distinct !{!120, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtBV_6endian10EndiannessEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2f_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtBV_4read5macho10dyld_cacheNtB4f_9DyldCache17subcache_suffixess_0NCINvNvB29_8for_each4callB3x_NCINvMsk_NtB3B_3vecINtB5Z_3VecB3x_E14extend_trustedINtB2Z_3MapBF_B4a_EE0E0E0ECs1yfHPQhS7hZ_13dyldcachedump"}
!121 = distinct !{!121, !122, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB1s_6endian10EndiannessEENCNvMNtNtNtB1s_4read5macho10dyld_cacheNtB2M_9DyldCache17subcache_suffixess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB53_3vecINtB5K_3VecB4Z_E14extend_trustedBN_E0E0ECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!122 = distinct !{!122, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB1s_6endian10EndiannessEENCNvMNtNtNtB1s_4read5macho10dyld_cacheNtB2M_9DyldCache17subcache_suffixess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB53_3vecINtB5K_3VecB4Z_E14extend_trustedBN_E0E0ECs1yfHPQhS7hZ_13dyldcachedump"}
!123 = distinct !{!123, !124, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB1m_6endian10EndiannessEENCNvMNtNtNtB1m_4read5macho10dyld_cacheNtB2G_9DyldCache17subcache_suffixess_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4G_3VecNtNtB4I_6string6StringE14extend_trustedB3_E0ECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!124 = distinct !{!124, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB1m_6endian10EndiannessEENCNvMNtNtNtB1m_4read5macho10dyld_cacheNtB2G_9DyldCache17subcache_suffixess_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4G_3VecNtNtB4I_6string6StringE14extend_trustedB3_E0ECs1yfHPQhS7hZ_13dyldcachedump"}
!125 = !{!113, !116, !119, !121, !123, !110, !107, !104}
!126 = !{!127, !113, !115, !116, !118, !119, !121, !123, !110, !107, !104}
!127 = distinct !{!127, !128, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!128 = distinct !{!128, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump"}
!129 = !{!119, !121, !123, !104}
!130 = !{!113, !115, !116, !118, !119, !121, !123, !104}
!131 = !{i64 -1, i64 -9223372036854775808}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!134 = distinct !{!134, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs1yfHPQhS7hZ_13dyldcachedump"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!137 = distinct !{!137, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs1yfHPQhS7hZ_13dyldcachedump"}
!138 = !{!139, !141, !116, !118, !119, !121, !123, !104}
!139 = distinct !{!139, !140, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB2E_6endian10EndiannessEENCNvMNtNtNtB2E_4read5macho10dyld_cacheNtB3Y_9DyldCache17subcache_suffixess_0EE0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!140 = distinct !{!140, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB2E_6endian10EndiannessEENCNvMNtNtNtB2E_4read5macho10dyld_cacheNtB3Y_9DyldCache17subcache_suffixess_0EE0Cs1yfHPQhS7hZ_13dyldcachedump"}
!141 = distinct !{!141, !142, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB3C_6endian10EndiannessEENCNvMNtNtNtB3C_4read5macho10dyld_cacheNtB4W_9DyldCache17subcache_suffixess_0EE0E0Cs1yfHPQhS7hZ_13dyldcachedump: argument 0"}
!142 = distinct !{!142, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB3C_6endian10EndiannessEENCNvMNtNtNtB3C_4read5macho10dyld_cacheNtB4W_9DyldCache17subcache_suffixess_0EE0E0Cs1yfHPQhS7hZ_13dyldcachedump"}
!143 = !{!110, !107}
!144 = !{!145, !147, !149, !151, !153}
!145 = distinct !{!145, !146, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB43_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0EB2Q_: argument 0"}
!146 = distinct !{!146, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB43_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0EB2Q_"}
!147 = distinct !{!147, !148, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2x_8for_each4callRShNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3M_3VecB3A_E14extend_trustedBN_E0E0EB1V_: argument 0"}
!148 = distinct !{!148, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2x_8for_each4callRShNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3M_3VecB3A_E14extend_trustedBN_E0E0EB1V_"}
!149 = distinct !{!149, !150, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3h_3VecRShE14extend_trustedB3_E0EB1P_: argument 0"}
!150 = distinct !{!150, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3h_3VecRShE14extend_trustedB3_E0EB1P_"}
!151 = distinct !{!151, !152, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EEB2N_: argument 0"}
!152 = distinct !{!152, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EEB2N_"}
!153 = distinct !{!153, !154, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecRShEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE11spec_extendB35_: argument 0"}
!154 = distinct !{!154, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecRShEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE11spec_extendB35_"}
!155 = !{!156, !158, !159, !161, !162, !145, !147, !149}
!156 = distinct !{!156, !157, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1b_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE0B2P_: argument 0"}
!157 = distinct !{!157, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1b_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE0B2P_"}
!158 = distinct !{!158, !157, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1b_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE0B2P_: argument 1"}
!159 = distinct !{!159, !160, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callRShNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1r_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE0E0B3M_: argument 0"}
!160 = distinct !{!160, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callRShNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1r_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE0E0B3M_"}
!161 = distinct !{!161, !160, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callRShNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1r_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE0E0B3M_: argument 1"}
!162 = distinct !{!162, !163, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtCsgQ7e0lqRvgo_7memmap24MmapRShuNCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3d_3VecB1o_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1s_EE0E0E0B1w_: argument 0"}
!163 = distinct !{!163, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtCsgQ7e0lqRvgo_7memmap24MmapRShuNCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3d_3VecB1o_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1s_EE0E0E0B1w_"}
!164 = !{!"address", !"read_provenance"}
!165 = !{!156, !159, !162, !145, !147, !149}
end_hunk_1
