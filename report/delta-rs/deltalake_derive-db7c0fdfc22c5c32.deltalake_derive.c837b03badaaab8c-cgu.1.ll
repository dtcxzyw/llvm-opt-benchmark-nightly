Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-db7c0fdfc22c5c32.deltalake_derive.c837b03badaaab8c-cgu.1?download=true
inline.NumInlined: 1622
inline.NumDeleted: 397
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldEINtB2_18SpecFromIterNestedB11_INtNtB16_10punctuated4IterB12_EE9from_iterCshbKHpCRGxgC_16deltalake_derive:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !97, !invariant.load !75
  %i.m = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !98, !invariant.load !75 ; 3 uses
  %i.o = add nsw i64 %i.n, -1                     ; 3 uses
  %i.p = add nuw i64 %i.o, %i.l
  %i.q = sub nsw i64 0, %i.n                      ; 3 uses
  %i.r = and i64 %i.p, %i.q
  %i.s = add nuw i64 %i.r, %i.o
  %i.t = and i64 %i.s, %i.q
  %i.u = add nuw i64 %i.t, %i.o
  %i.v = and i64 %i.u, %i.q                       ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val8 = load ptr, ptr %i.f, align 16, !nonnull !75, !noundef !75
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.n) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.e, %bb.d, %bb.q
  ret void

bb.f:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.d, align 8, !noundef !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.y = call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1)
  %.sroa.0.0.i = call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.y, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.f
  %i.z = load i64, ptr %i.c, align 8, !range !99, !noundef !75
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !81, !noundef !75 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !117

bb.g:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #20
          to label %.noexc10 unwind label %bb.t

.noexc10:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i, %i.ac
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.af, align 8
  store i64 %i.ac, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  call void @llvm.experimental.noalias.scope.decl(metadata !4154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4155
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.f, align 16
  store <2 x ptr> %i.ai, ptr %i.b, align 16, !noalias !4156
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i, %bb.h
  %i.aj = invoke noundef align 8 ptr @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.j unwind label %.body      ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4157, !noundef !75 ; 4 uses
  %i.al = icmp ult i64 %i.ak, 1152921504606846976
  call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %i.e, align 8, !range !97, !alias.scope !4157, !noundef !75
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.n, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i

bb.l:                                             ; preds = %bb.j
  %.val6.i.i = load ptr, ptr %i.ah, align 8, !noalias !4156, !nonnull !75, !align !74, !noundef !75 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !97, !invariant.load !75
  %i.aq = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !98, !invariant.load !75 ; 3 uses
  %i.as = add nsw i64 %i.ar, -1                   ; 3 uses
  %i.at = add nuw i64 %i.as, %i.ap
  %i.au = sub nsw i64 0, %i.ar                    ; 3 uses
  %i.av = and i64 %i.at, %i.au
  %i.aw = add nuw i64 %i.av, %i.as
  %i.ax = and i64 %i.aw, %i.au
  %i.ay = add nuw i64 %i.ax, %i.as
  %i.az = and i64 %i.ay, %i.au                    ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i = load ptr, ptr %i.b, align 16, !noalias !4156, !nonnull !75, !noundef !75
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.az, i64 noundef range(i64 1, 536870913) %i.ar) #15
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4156
  invoke void @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.o unwind label %.body

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.p, %bb.o, %bb.k
  %i.bb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4157, !nonnull !75, !noundef !75
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ak
  store ptr %i.aj, ptr %i.bc, align 8
  %i.bd = add nuw nsw i64 %i.ak, 1
  store i64 %i.bd, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4157
  br label %bb.i

.body:                                            ; preds = %bb.p, %bb.n, %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.val7.i.i = load ptr, ptr %i.b, align 16, !noalias !4156
  %.val8.i.i = load ptr, ptr %i.ah, align 8, !noalias !4156, !nonnull !75, !align !74, !noundef !75
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive(ptr %.val7.i.i, ptr nonnull %.val8.i.i) #17
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.s unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = load i64, ptr %i.a, align 8, !noalias !4156, !noundef !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4156
  %i.bg = call i64 @llvm.uadd.sat.i64(i64 %i.bf, i64 1) ; 2 uses
  %i.bh = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4158, !noundef !75 ; 2 uses
  %i.bi = load i64, ptr %i.e, align 8, !range !97, !alias.scope !4158, !noundef !75
  %i.bj = sub i64 %i.bi, %i.bh
  %i.bk = icmp ugt i64 %i.bg, %i.bj
  br i1 %i.bk, label %bb.p, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i, !prof !117

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bh, i64 noundef range(i64 1, 0) %i.bg, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i unwind label %.body

bb.q:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive.exit

bb.r:                                             ; preds = %.body
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.s:                                             ; preds = %bb.t, %.body
  %.pn14 = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %i.be, %.body ]
  resume { ptr, i32 } %.pn14

bb.t:                                             ; preds = %bb.g, %bb.f, %bb.a, %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.f, align 16
  %.val7 = load ptr, ptr %i.g, align 8, !nonnull !75, !align !74, !noundef !75
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive(ptr %.val, ptr nonnull %.val7) #17
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB15_ReEEINtB2_10SpecExtendNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesE6extendCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4296 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [200 x i8], align 8               ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load i64, ptr %i.c, align 8, !noundef !75
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val2 = load i64, ptr %i.d, align 8, !noundef !75
  %i.e = icmp ne i64 %.val2, %.val                ; 2 uses
  %.sroa.0.0.i.i.i.i = zext i1 %i.e to i64        ; 4 uses
  br i1 %i.e, label %bb.ch, label %_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIBQ_ReEEINtB5_6ExtendTjB1s_EE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit

_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIBQ_ReEEINtB5_6ExtendTjB1s_EE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.cj, %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4300)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %.val1.i.i130.i.i = load i64, ptr %i.f, align 8, !alias.scope !4301, !noundef !75 ; 2 uses
  %.val.i.i131.i.i = load i64, ptr %i.g, align 8, !alias.scope !4301, !noundef !75
  %i.h = icmp eq i64 %.val1.i.i130.i.i, %.val.i.i131.i.i
  br i1 %i.h, label %_RINvYNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvNvNtB1b_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB2X_ReEETjB3A_EE0ECshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIBQ_ReEEINtB5_6ExtendTjB1s_EE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 77 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 78 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 79 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjReENCINvNvNtBa_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB25_B1h_EEB1f_E0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i, %.lr.ph.i.i
  %.val1.i.i132.i.i = phi i64 [ %.val1.i.i130.i.i, %.lr.ph.i.i ], [ %.val1.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjReENCINvNvNtBa_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB25_B1h_EEB1f_E0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i ] ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4302)
  call void @llvm.experimental.noalias.scope.decl(metadata !4303)
  %i.aa = load ptr, ptr %i.i, align 8, !alias.scope !4304, !nonnull !75, !noundef !75 ; 16 uses
  %i.ab = load i64, ptr %i.j, align 8, !alias.scope !4304, !noundef !75 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4305)
  call void @llvm.experimental.noalias.scope.decl(metadata !4306)
  %i.ac = load i64, ptr %i.k, align 8, !alias.scope !4307, !noundef !75
  %i.ad = icmp eq i64 %.val1.i.i132.i.i, %i.ac
  br i1 %i.ad, label %bb.bw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp eq i64 %.val1.i.i132.i.i, 0        ; 2 uses
  br i1 %i.ae, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %.val1.i.i132.i.i, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %.split.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.af = icmp eq i64 %.val1.i.i132.i.i, %i.ab
  br i1 %i.af, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.val1.i.i132.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !4308, !noalias !4309, !noundef !75
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.i.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i64 noundef %.val1.i.i132.i.i, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19, !noalias !4310
  unreachable

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i: ; preds = %bb.e, %.split.i.i.i.i.i.i.i.i, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.val1.i.i132.i.i ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab ; 5 uses
  %.not.i15.i.i.i.i.i = icmp samesign eq i64 %.val1.i.i132.i.i, %i.ab
  br i1 %.not.i15.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.aj, align 1, !alias.scope !4306, !noalias !4311, !noundef !75 ; 5 uses
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %bb.h, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ao = and i8 %i.am, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.val1.i.i132.i.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ab
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %i.at = load i8, ptr %i.al, align 1, !alias.scope !4306, !noalias !4311, !noundef !75
  %i.au = shl nuw nsw i32 %i.ap, 6
  %i.av = and i8 %i.at, 63
  %i.aw = zext nneg i8 %i.av to i32               ; 2 uses
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = icmp samesign ugt i8 %i.am, -33
  br i1 %i.ay, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = zext nneg i8 %i.am to i32
  br label %.preheader.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i.i.i
  %i.ba = add nuw nsw i64 %.val1.i.i132.i.i, 2
  %i.bb = icmp samesign ne i64 %i.ba, %i.ab
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 3 ; 2 uses
  %i.bd = load i8, ptr %i.as, align 1, !alias.scope !4306, !noalias !4311, !noundef !75
  %i.be = shl nuw nsw i32 %i.aw, 6
  %i.bf = and i8 %i.bd, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg            ; 2 uses
  %i.bi = shl nuw nsw i32 %i.ap, 12
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %i.bk = icmp samesign ugt i8 %i.am, -17
  br i1 %i.bk, label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i

_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i.i.i
  %i.bl = add nuw nsw i64 %.val1.i.i132.i.i, 3
  %i.bm = icmp samesign ne i64 %i.bl, %i.ab
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bo = load i8, ptr %i.bc, align 1, !alias.scope !4306, !noalias !4311, !noundef !75
  %i.bp = shl nuw nsw i32 %i.ap, 18
  %i.bq = and i32 %i.bp, 1835008
  %i.br = shl nuw nsw i32 %i.bh, 6
  %i.bs = and i8 %i.bo, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = or disjoint i32 %i.bu, %i.bq            ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bv, 1114112
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i.i.i
  %spec.select.i231.i.i.i.i.i = phi i32 [ %i.bv, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i.i.i ], [ %i.az, %bb.h ], [ %i.ax, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i.i.i ]
  %.sroa.0.2230.i.i.i.i.i = phi ptr [ %i.bn, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.i.i.i.i ], [ %i.al, %bb.h ], [ %i.as, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i = load i8, ptr %i.l, align 1, !range !118, !alias.scope !4307
  %i.bw = trunc nuw i8 %.pre.i.i.i.i.i to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.bv, %.preheader.i.i.i.i.i
  %i.bx = phi i1 [ %i.bw, %.preheader.i.i.i.i.i ], [ false, %bb.bv ]
  %.sroa.19.0.i.i.i.i.i = phi i64 [ undef, %.preheader.i.i.i.i.i ], [ %.sroa.19.1.ph.i.i.i.i.i, %bb.bv ] ; 13 uses
  %.sroa.0.072.i.i.i.i.i = phi ptr [ %.sroa.0.2230.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.0.173235.i.i.i.i.i, %bb.bv ] ; 9 uses
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %spec.select.i231.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.0.1237.i.i.i.i.i, %bb.bv ] ; 27 uses
  br i1 %i.bx, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load i64, ptr %i.f, align 8, !alias.scope !4307, !noundef !75
  %i.bz = icmp samesign ult i32 %.sroa.0.0.i.i.i.i.i, 128
  br i1 %i.bz, label %_RNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc8len_utf8.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = icmp samesign ult i32 %.sroa.0.0.i.i.i.i.i, 2048
  br i1 %i.ca, label %_RNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc8len_utf8.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = icmp samesign ult i32 %.sroa.0.0.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i = select i1 %i.cb, i64 3, i64 4
  br label %_RNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc8len_utf8.exit.i.i.i.i.i

_RNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc8len_utf8.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 2, %bb.k ], [ %..i.i.i.i.i.i.i, %bb.l ], [ 1, %bb.j ]
  %i.cc = call noundef i64 @llvm.uadd.sat.i64(i64 %i.by, i64 %.sroa.0.0.i.i.i.i.i.i.i)
  store i64 %i.cc, ptr %i.f, align 8, !alias.scope !4307
  store i8 0, ptr %i.m, align 2, !alias.scope !4307
  %i.cd = load i8, ptr %i.n, align 8, !range !4312, !alias.scope !4313, !noundef !75 ; 2 uses
  store i8 16, ptr %i.n, align 8, !alias.scope !4313
  store i8 %i.cd, ptr %i.o, align 1, !alias.scope !4307
  %.not.i16.i.i.i.i.i = icmp eq i8 %i.cd, 16
  br i1 %.not.i16.i.i.i.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.i
  %.val.i.i.i.i.i = load i8, ptr %i.n, align 8, !range !4312, !alias.scope !4307, !noundef !75 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, 16
  br i1 %.not.i17.i.i.i.i.i, label %.sink.split269.i.i.i.i.i, label %bb.y

bb.n:                                             ; preds = %bb.o, %_RNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc8len_utf8.exit.i.i.i.i.i
  %i.ce = call noundef zeroext i1 @_RNvNtCskxeEtmv7ubq_20unicode_segmentation6tables14is_incb_linker(i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !4310
  br i1 %i.ce, label %bb.q, label %bb.p

bb.o:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc8len_utf8.exit.i.i.i.i.i
  %i.cf = call noundef i8 @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !4310
  store i8 %i.cf, ptr %i.o, align 1, !alias.scope !4307
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.cg = icmp samesign ult i32 %.sroa.0.0.i.i.i.i.i, 43263
  %i.ch = select i1 %i.cg, i64 0, i64 185, !unpredictable !75 ; 2 uses
  %i.ci = add nuw nsw i64 %i.ch, 93               ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.ci ; 2 uses
  %.val17.1.i.i.i.i.i.i.i.i = load i32, ptr %i.cj, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %.val18.1.i.i.i.i.i.i.i.i = load i32, ptr %i.ck, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i19.1.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.1.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.1.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.1.i.i.i.i.i.i.i.i
  %i.cl = select i1 %.not1.i20.1.i.i.i.i.i.i.i.i, i1 %.not.i19.1.i.i.i.i.i.i.i.i, i1 false
  %i.cm = select i1 %i.cl, i64 %i.ch, i64 %i.ci, !unpredictable !75 ; 2 uses
  %i.cn = add nuw nsw i64 %i.cm, 46               ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.cn ; 2 uses
  %.val17.2.i.i.i.i.i.i.i.i = load i32, ptr %i.co, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val18.2.i.i.i.i.i.i.i.i = load i32, ptr %i.cp, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i19.2.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.2.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.2.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.2.i.i.i.i.i.i.i.i
  %i.cq = select i1 %.not1.i20.2.i.i.i.i.i.i.i.i, i1 %.not.i19.2.i.i.i.i.i.i.i.i, i1 false
  %i.cr = select i1 %i.cq, i64 %i.cm, i64 %i.cn, !unpredictable !75 ; 2 uses
  %i.cs = add nuw nsw i64 %i.cr, 23               ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.cs ; 2 uses
  %.val17.3.i.i.i.i.i.i.i.i = load i32, ptr %i.ct, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %.val18.3.i.i.i.i.i.i.i.i = load i32, ptr %i.cu, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i19.3.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.3.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.3.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.3.i.i.i.i.i.i.i.i
  %i.cv = select i1 %.not1.i20.3.i.i.i.i.i.i.i.i, i1 %.not.i19.3.i.i.i.i.i.i.i.i, i1 false
  %i.cw = select i1 %i.cv, i64 %i.cr, i64 %i.cs, !unpredictable !75 ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 12               ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.cx ; 2 uses
  %.val17.4.i.i.i.i.i.i.i.i = load i32, ptr %i.cy, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %.val18.4.i.i.i.i.i.i.i.i = load i32, ptr %i.cz, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i19.4.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.4.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.4.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.4.i.i.i.i.i.i.i.i
  %i.da = select i1 %.not1.i20.4.i.i.i.i.i.i.i.i, i1 %.not.i19.4.i.i.i.i.i.i.i.i, i1 false
  %i.db = select i1 %i.da, i64 %i.cw, i64 %i.cx, !unpredictable !75 ; 2 uses
  %i.dc = add nuw nsw i64 %i.db, 6                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.dc ; 2 uses
  %.val17.5.i.i.i.i.i.i.i.i = load i32, ptr %i.dd, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  %.val18.5.i.i.i.i.i.i.i.i = load i32, ptr %i.de, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i19.5.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.5.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.5.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.5.i.i.i.i.i.i.i.i
  %i.df = select i1 %.not1.i20.5.i.i.i.i.i.i.i.i, i1 %.not.i19.5.i.i.i.i.i.i.i.i, i1 false
  %i.dg = select i1 %i.df, i64 %i.db, i64 %i.dc, !unpredictable !75 ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 3                ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.dh ; 2 uses
  %.val17.6.i.i.i.i.i.i.i.i = load i32, ptr %i.di, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %.val18.6.i.i.i.i.i.i.i.i = load i32, ptr %i.dj, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i19.6.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.6.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.6.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.6.i.i.i.i.i.i.i.i
  %i.dk = select i1 %.not1.i20.6.i.i.i.i.i.i.i.i, i1 %.not.i19.6.i.i.i.i.i.i.i.i, i1 false
  %i.dl = select i1 %i.dk, i64 %i.dg, i64 %i.dh, !unpredictable !75 ; 2 uses
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.dm ; 2 uses
  %.val17.7.i.i.i.i.i.i.i.i = load i32, ptr %i.dn, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %.val18.7.i.i.i.i.i.i.i.i = load i32, ptr %i.do, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i19.7.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.7.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.7.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.7.i.i.i.i.i.i.i.i
  %i.dp = select i1 %.not1.i20.7.i.i.i.i.i.i.i.i, i1 %.not.i19.7.i.i.i.i.i.i.i.i, i1 false
  %i.dq = select i1 %i.dp, i64 %i.dl, i64 %i.dm, !unpredictable !75 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.dr ; 2 uses
  %.val17.8.i.i.i.i.i.i.i.i = load i32, ptr %i.ds, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %.val18.8.i.i.i.i.i.i.i.i = load i32, ptr %i.dt, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i19.8.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.8.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.8.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.8.i.i.i.i.i.i.i.i
  %i.du = select i1 %.not1.i20.8.i.i.i.i.i.i.i.i, i1 %.not.i19.8.i.i.i.i.i.i.i.i, i1 false
  %i.dv = select i1 %i.du, i64 %i.dq, i64 %i.dr, !unpredictable !75
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.dv ; 2 uses
  %.val14.i.i.i.i.i.i.i.i = load i32, ptr %i.dw, align 4, !range !4314, !noalias !4315, !noundef !75
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %.val15.i.i.i.i.i.i.i.i = load i32, ptr %i.dx, align 4, !range !4314, !noalias !4315, !noundef !75
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.val14.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val15.i.i.i.i.i.i.i.i
  %.not.i.not.i.i.i.i.i.i.i = select i1 %.not1.i.i.i.i.i.i.i.i.i, i1 %.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.r, label %.sink.split.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.dy = load i64, ptr %i.p, align 8, !range !99, !alias.scope !4307, !noundef !75
  %i.dz = load i64, ptr %i.q, align 8, !alias.scope !4307
  %i.ea = trunc nuw i64 %i.dy to i1
  %i.eb = add i64 %i.dz, 1
  %spec.select.i18.i.i.i.i.i = select i1 %i.ea, i64 %i.eb, i64 1
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i.i = phi i64 [ %spec.select.i18.i.i.i.i.i, %bb.q ], [ 0, %bb.p ]
  store i64 1, ptr %i.p, align 8, !alias.scope !4307
  store i64 %.sink.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !4307
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i.i.i.i, %bb.p
  %i.ec = load i8, ptr %i.o, align 1, !range !4312, !alias.scope !4307, !noundef !75
  switch i8 %i.ec, label %bb.t [
    i8 16, label %bb.s
    i8 11, label %bb.u
  ], !prof !4316

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19, !noalias !4310
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 1, ptr %i.r, align 8, !alias.scope !4307
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ed = load i64, ptr %i.r, align 8, !range !99, !alias.scope !4307, !noundef !75
  %i.ee = load i64, ptr %i.s, align 8, !alias.scope !4307
  %i.ef = trunc nuw i64 %i.ed to i1
  %i.eg = add i64 %i.ee, 1
  %spec.select3.i.i.i.i.i.i = select i1 %i.ef, i64 %i.eg, i64 undef
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %storemerge.i.i.i.i.i = phi i64 [ %spec.select3.i.i.i.i.i.i, %bb.u ], [ 0, %bb.t ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.s, align 8, !alias.scope !4307
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.072.i.i.i.i.i) ]
  %.not.i19.i.i.i.i.i = icmp eq ptr %.sroa.0.072.i.i.i.i.i, %i.ak
  br i1 %.not.i19.i.i.i.i.i, label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.thread82.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.072.i.i.i.i.i, i64 1 ; 3 uses
  %i.ei = load i8, ptr %.sroa.0.072.i.i.i.i.i, align 1, !alias.scope !4306, !noalias !4317, !noundef !75 ; 5 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.x, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i20.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i20.i.i.i.i.i: ; preds = %bb.w
  %i.ek = and i8 %i.ei, 31
  %i.el = zext nneg i8 %i.ek to i32               ; 3 uses
  %i.em = icmp ne ptr %i.eh, %i.ak
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.072.i.i.i.i.i, i64 2 ; 3 uses
  %i.eo = load i8, ptr %i.eh, align 1, !alias.scope !4306, !noalias !4317, !noundef !75
  %i.ep = shl nuw nsw i32 %i.el, 6
  %i.eq = and i8 %i.eo, 63
  %i.er = zext nneg i8 %i.eq to i32               ; 2 uses
  %i.es = or disjoint i32 %i.ep, %i.er
  %i.et = icmp samesign ugt i8 %i.ei, -33
  br i1 %i.et, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i22.i.i.i.i.i, label %.sink.split269.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.eu = zext nneg i8 %i.ei to i32
  br label %.sink.split269.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i22.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i20.i.i.i.i.i
  %i.ev = icmp ne ptr %i.en, %i.ak
  call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.072.i.i.i.i.i, i64 3 ; 3 uses
  %i.ex = load i8, ptr %i.en, align 1, !alias.scope !4306, !noalias !4317, !noundef !75
  %i.ey = shl nuw nsw i32 %i.er, 6
  %i.ez = and i8 %i.ex, 63
  %i.fa = zext nneg i8 %i.ez to i32
  %i.fb = or disjoint i32 %i.ey, %i.fa            ; 2 uses
  %i.fc = shl nuw nsw i32 %i.el, 12
  %i.fd = or disjoint i32 %i.fb, %i.fc
  %i.fe = icmp samesign ugt i8 %i.ei, -17
  br i1 %i.fe, label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.i.i.i.i.i, label %.sink.split269.i.i.i.i.i

_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i22.i.i.i.i.i
  %i.ff = icmp ne ptr %i.ew, %i.ak
  call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.072.i.i.i.i.i, i64 4 ; 2 uses
  %i.fh = load i8, ptr %i.ew, align 1, !alias.scope !4306, !noalias !4317, !noundef !75
  %i.fi = shl nuw nsw i32 %i.el, 18
  %i.fj = and i32 %i.fi, 1835008
  %i.fk = shl nuw nsw i32 %i.fb, 6
  %i.fl = and i8 %i.fh, 63
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fk, %i.fm
  %i.fo = or disjoint i32 %i.fn, %i.fj            ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i32 %i.fo, 1114112
  br i1 %.not10.i.i.i.i.i, label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.thread82.i.i.i.i.i, label %.sink.split269.i.i.i.i.i

_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.thread82.i.i.i.i.i: ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.i.i.i.i.i, %bb.v
  %.sroa.0.386.i.i.i.i.i = phi ptr [ %i.fg, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.i.i.i.i.i ], [ %i.ak, %bb.v ]
end_hunk_0
