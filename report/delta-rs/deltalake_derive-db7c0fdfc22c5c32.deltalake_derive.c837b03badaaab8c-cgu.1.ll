Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-db7c0fdfc22c5c32.deltalake_derive.c837b03badaaab8c-cgu.1?download=true
inline.NumInlined: 1622
inline.NumDeleted: 397
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldEINtB2_18SpecFromIterNestedB11_INtNtB16_10punctuated4IterB12_EE9from_iterCshbKHpCRGxgC_16deltalake_derive:bb.a
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val9 = load ptr, ptr %i.g, align 8, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !747, !invariant.load !4
  %i.n = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !748, !invariant.load !4 ; 3 uses
  %i.p = add nsw i64 %i.o, -1                     ; 3 uses
  %i.q = add nuw i64 %i.p, %i.m
  %i.r = sub nsw i64 0, %i.o                      ; 3 uses
  %i.s = and i64 %i.q, %i.r
  %i.t = add nuw i64 %i.s, %i.p
  %i.u = and i64 %i.t, %i.r
  %i.v = add nuw i64 %i.u, %i.p
  %i.w = and i64 %i.v, %i.r                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val8 = load ptr, ptr %i.f, align 16, !nonnull !4, !noundef !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.o) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.f, %bb.e, %bb.u
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.h:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = call i64 @llvm.uadd.sat.i64(i64 %i.z, i64 1)
  %.sroa.0.0.i = call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.aa, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.h
  %i.ab = load i64, ptr %i.c, align 8, !range !811, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !78, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j, !prof !3833

bb.i:                                             ; preds = %.noexc
  %i.ag = load i64, ptr %i.af, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #20
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc
  %i.ah = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i, %i.ae
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.ah, align 8
  store i64 %i.ae, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  call void @llvm.experimental.noalias.scope.decl(metadata !3897)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3900
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.f, align 16
  store <2 x ptr> %i.ak, ptr %i.b, align 16, !noalias !3902
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i, %bb.j
  %i.al = invoke noundef align 8 ptr @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.m unwind label %bb.l       ; 2 uses

.body:                                            ; preds = %bb.r, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.am, %bb.l ]
  %.val7.i.i = load ptr, ptr %i.b, align 16, !noalias !3902
  %.val8.i.i = load ptr, ptr %i.aj, align 8, !noalias !3902, !nonnull !4, !align !3, !noundef !4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive(ptr %.val7.i.i, ptr nonnull %.val8.i.i) #17
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.w unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3904, !noalias !3905, !noundef !4 ; 4 uses
  %i.ao = icmp ult i64 %i.an, 1152921504606846976
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.e, align 8, !range !747, !alias.scope !3904, !noalias !3905, !noundef !4
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.q, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i

bb.o:                                             ; preds = %bb.m
  %.val6.i.i = load ptr, ptr %i.aj, align 8, !noalias !3902, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !747, !invariant.load !4
  %i.at = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !748, !invariant.load !4 ; 3 uses
  %i.av = add nsw i64 %i.au, -1                   ; 3 uses
  %i.aw = add nuw i64 %i.av, %i.as
  %i.ax = sub nsw i64 0, %i.au                    ; 3 uses
  %i.ay = and i64 %i.aw, %i.ax
  %i.az = add nuw i64 %i.ay, %i.av
  %i.ba = and i64 %i.az, %i.ax
  %i.bb = add nuw i64 %i.ba, %i.av
  %i.bc = and i64 %i.bb, %i.ax                    ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i.i = load ptr, ptr %i.b, align 16, !noalias !3902, !nonnull !4, !noundef !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bc, i64 noundef range(i64 1, 536870913) %i.au) #15
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3902
  invoke void @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.s unwind label %bb.r

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.t, %bb.s, %bb.n
  %i.be = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3904, !noalias !3905, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.an
  store ptr %i.al, ptr %i.bf, align 8
  %i.bg = add nuw nsw i64 %i.an, 1
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3904, !noalias !3905
  br label %bb.k

bb.r:                                             ; preds = %bb.t, %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.q
  %i.bi = load i64, ptr %i.a, align 8, !noalias !3902, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3902
  %i.bj = call i64 @llvm.uadd.sat.i64(i64 %i.bi, i64 1) ; 2 uses
  %i.bk = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3906, !noalias !3905, !noundef !4 ; 2 uses
  %i.bl = load i64, ptr %i.e, align 8, !range !747, !alias.scope !3906, !noalias !3905, !noundef !4
  %i.bm = sub i64 %i.bl, %i.bk
  %i.bn = icmp ugt i64 %i.bj, %i.bm
  br i1 %i.bn, label %bb.t, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i, !prof !3833

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bk, i64 noundef range(i64 1, 0) %i.bj, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i unwind label %bb.r

bb.u:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive.exit

bb.v:                                             ; preds = %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.w:                                             ; preds = %bb.x, %.body
  %.pn14 = phi { ptr, i32 } [ %.pn.ph, %bb.x ], [ %.pn.i.i, %.body ]
  resume { ptr, i32 } %.pn14

bb.x:                                             ; preds = %bb.g, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.y, %bb.g ]
  %.val = load ptr, ptr %i.f, align 16
  %.val7 = load ptr, ptr %i.g, align 8, !nonnull !4, !align !3, !noundef !4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECshbKHpCRGxgC_16deltalake_derive(ptr %.val, ptr nonnull %.val7) #17
  br label %bb.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB15_ReEEINtB2_10SpecExtendNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesE6extendCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [200 x i8], align 8               ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val2 = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ne i64 %.val2, %.val
  %.sroa.0.0.i.i.i.i = zext i1 %i.e to i64        ; 4 uses
  %.not = icmp eq i64 %.val2, %.val
  br i1 %.not, label %_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIBQ_ReEEINtB5_6ExtendTjB1s_EE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.ch

_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIBQ_ReEEINtB5_6ExtendTjB1s_EE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.cj, %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3917)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %.val1.i.i130.i.i = load i64, ptr %i.f, align 8, !alias.scope !3919, !noalias !3924, !noundef !4 ; 2 uses
  %.val.i.i131.i.i = load i64, ptr %i.g, align 8, !alias.scope !3919, !noalias !3924, !noundef !4
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
  call void @llvm.experimental.noalias.scope.decl(metadata !3926)
  call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  %i.aa = load ptr, ptr %i.i, align 8, !alias.scope !3930, !noalias !3924, !nonnull !4, !noundef !4 ; 16 uses
  %i.ab = load i64, ptr %i.j, align 8, !alias.scope !3930, !noalias !3924, !noundef !4 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  call void @llvm.experimental.noalias.scope.decl(metadata !3934)
  %i.ac = load i64, ptr %i.k, align 8, !alias.scope !3936, !noalias !3937, !noundef !4
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
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !3939, !noalias !3946, !noundef !4
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.i.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i64 noundef %.val1.i.i132.i.i, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19, !noalias !3949
  unreachable

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i: ; preds = %bb.e, %.split.i.i.i.i.i.i.i.i, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.val1.i.i132.i.i ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab ; 5 uses
  %.not.i15.i.i.i.i.i = icmp samesign eq i64 %.val1.i.i132.i.i, %i.ab
  br i1 %.not.i15.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.aj, align 1, !alias.scope !3934, !noalias !3950, !noundef !4 ; 5 uses
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %bb.h, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ao = and i8 %i.am, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.val1.i.i132.i.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ab
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %i.at = load i8, ptr %i.al, align 1, !alias.scope !3934, !noalias !3950, !noundef !4
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
  %i.bd = load i8, ptr %i.as, align 1, !alias.scope !3934, !noalias !3950, !noundef !4
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
  %i.bo = load i8, ptr %i.bc, align 1, !alias.scope !3934, !noalias !3950, !noundef !4
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
  %.pre.i.i.i.i.i = load i8, ptr %i.l, align 1, !range !3955, !alias.scope !3936, !noalias !3937
  %i.bw = trunc nuw i8 %.pre.i.i.i.i.i to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.bv, %.preheader.i.i.i.i.i
  %i.bx = phi i1 [ %i.bw, %.preheader.i.i.i.i.i ], [ false, %bb.bv ]
  %.sroa.19.0.i.i.i.i.i = phi i64 [ undef, %.preheader.i.i.i.i.i ], [ %.sroa.19.1.ph.i.i.i.i.i, %bb.bv ] ; 13 uses
  %.sroa.0.072.i.i.i.i.i = phi ptr [ %.sroa.0.2230.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.0.173235.i.i.i.i.i, %bb.bv ] ; 9 uses
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %spec.select.i231.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.0.1237.i.i.i.i.i, %bb.bv ] ; 27 uses
  br i1 %i.bx, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load i64, ptr %i.f, align 8, !alias.scope !3936, !noalias !3937, !noundef !4
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
  store i64 %i.cc, ptr %i.f, align 8, !alias.scope !3936, !noalias !3937
  store i8 0, ptr %i.m, align 2, !alias.scope !3936, !noalias !3937
  %i.cd = load i8, ptr %i.n, align 8, !range !3956, !alias.scope !3957, !noalias !3937, !noundef !4 ; 2 uses
  store i8 16, ptr %i.n, align 8, !alias.scope !3957, !noalias !3937
  store i8 %i.cd, ptr %i.o, align 1, !alias.scope !3936, !noalias !3937
  %.not.i16.i.i.i.i.i = icmp eq i8 %i.cd, 16
  br i1 %.not.i16.i.i.i.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.i
  %.val.i.i.i.i.i = load i8, ptr %i.n, align 8, !range !3956, !alias.scope !3936, !noalias !3937, !noundef !4 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, 16
  br i1 %.not.i17.i.i.i.i.i, label %.sink.split269.i.i.i.i.i, label %bb.y

bb.n:                                             ; preds = %bb.o, %_RNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc8len_utf8.exit.i.i.i.i.i
  %i.ce = call noundef zeroext i1 @_RNvNtCskxeEtmv7ubq_20unicode_segmentation6tables14is_incb_linker(i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !3949
  br i1 %i.ce, label %bb.q, label %bb.p

bb.o:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc8len_utf8.exit.i.i.i.i.i
  %i.cf = call noundef i8 @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %.sroa.0.0.i.i.i.i.i), !noalias !3949
  store i8 %i.cf, ptr %i.o, align 1, !alias.scope !3936, !noalias !3937
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.cg = icmp samesign ult i32 %.sroa.0.0.i.i.i.i.i, 43263
  %i.ch = select i1 %i.cg, i64 0, i64 185, !unpredictable !4 ; 2 uses
  %i.ci = add nuw nsw i64 %i.ch, 93               ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.ci ; 2 uses
  %.val17.1.i.i.i.i.i.i.i.i = load i32, ptr %i.cj, align 4, !range !3960, !noalias !3961, !noundef !4
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %.val18.1.i.i.i.i.i.i.i.i = load i32, ptr %i.ck, align 4, !range !3960, !noalias !3961, !noundef !4
  %.not.i19.1.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.1.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %.not1.i20.1.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.sroa.0.0.i.i.i.i.i, %.val18.1.i.i.i.i.i.i.i.i
  %i.cl = select i1 %.not1.i20.1.i.i.i.i.i.i.i.i, i1 %.not.i19.1.i.i.i.i.i.i.i.i, i1 false
  %i.cm = select i1 %i.cl, i64 %i.ch, i64 %i.ci, !unpredictable !4 ; 2 uses
  %i.cn = add nuw nsw i64 %i.cm, 46               ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.cn ; 2 uses
  %.val17.2.i.i.i.i.i.i.i.i = load i32, ptr %i.co, align 4, !range !3960, !noalias !3961, !noundef !4
end_hunk_0
