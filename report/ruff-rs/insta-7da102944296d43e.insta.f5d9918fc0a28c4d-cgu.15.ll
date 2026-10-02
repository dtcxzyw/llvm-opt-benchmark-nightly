Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.15?download=true
inline.NumInlined: 386
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs8_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yamlNtB5_4YamlNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !12, !noundef !3 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !12, !noundef !3
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit: ; preds = %bb.m, %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBx_ENtNtB7_3cmp9PartialEq2neBH_.exit, %.lr.ph, %.lr.ph20, %bb.l, %bb.k, %bb.h, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a, %bb.j, %bb.i, %bb.f, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.al, %bb.i ], [ true, %bb.b ], [ %i.m, %bb.d ], [ %i.aq, %bb.j ], [ false, %bb.c ], [ %i.w, %bb.f ], [ false, %bb.h ], [ false, %bb.e ], [ true, %bb.l ], [ false, %bb.g ], [ true, %bb.k ], [ %i.ax, %.lr.ph20 ], [ false, %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBx_ENtNtB7_3cmp9PartialEq2neBH_.exit ], [ true, %bb.m ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i64 %i.j, %i.l
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !3
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.j, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !19, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1, !range !19, !noundef !3
  %i.w = icmp eq i8 %i.t, %i.v
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.k, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !3
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.l, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.i:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3
  %bcmp7 = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.ai, i64 %i.e)
  %i.al = icmp eq i32 %bcmp7, 0
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.j:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %i.an, i64 %i.o)
  %i.aq = icmp eq i32 %bcmp, 0
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.k:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !3, !noundef !3
  %.not1018.not = icmp eq i64 %i.y, 0
  br i1 %.not1018.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.k, %.lr.ph20
  %.sroa.01.0.i19 = phi i64 [ %i.ay, %.lr.ph20 ], [ 0, %bb.k ] ; 3 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %.sroa.01.0.i19
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.sroa.01.0.i19
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXs8_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yamlNtB5_4YamlNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw), !inline_history !470 ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i19, 1          ; 2 uses
  %exitcond26.not = icmp ne i64 %i.ay, %i.y
  %or.cond.not = select i1 %i.ax, i1 %exitcond26.not, i1 false
  br i1 %or.cond.not, label %.lr.ph20, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

bb.l:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !3, !noundef !3
  %.not13.not = icmp eq i64 %i.ad, 0
  br i1 %.not13.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit, label %.lr.ph

bb.m:                                             ; preds = %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBx_ENtNtB7_3cmp9PartialEq2neBH_.exit
  %i.bd = add nuw i64 %.sroa.01.0.i814, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.ad
  br i1 %exitcond.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.01.0.i814 = phi i64 [ %i.bd, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.bc, i64 %.sroa.01.0.i814 ; 2 uses
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %.sroa.01.0.i814 ; 2 uses
  %i.bg = tail call fastcc noundef zeroext i1 @_RNvXs8_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yamlNtB5_4YamlNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bf), !inline_history !471
  br i1 %i.bg, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBx_ENtNtB7_3cmp9PartialEq2neBH_.exit, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit

_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBx_ENtNtB7_3cmp9PartialEq2neBH_.exit: ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bj = tail call fastcc noundef zeroext i1 @_RNvXs8_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yamlNtB5_4YamlNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bi), !inline_history !471
  br i1 %i.bj, label %bb.m, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtB5_14SlicePartialEqBC_E17equal_same_lengthBM_.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtB11_3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #26
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtB10_3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #26
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtB10_3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #26
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapRReINtNtCs4NRVxsYgnAr_4core6option6OptionjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtNtNtBV_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 4 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val3.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !477
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBX_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.b = mul i64 %.sroa.43.0.copyload, 24         ; 2 uses
  %2 = add i64 %i.b, 24
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.c = and i64 %i.b, -16                        ; 2 uses
  %4 = add i64 %i.c, 32                           ; 2 uses
  %i.d = add i64 %.sroa.43.0.copyload, 17
  %i.e = add i64 %i.d, %4                         ; 3 uses
  %5 = icmp uge i64 %i.e, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.f = sub i64 -32, %i.c
  %i.g = getelementptr inbounds i8, ptr %.sroa.02.0.copyload, i64 %i.f
  br label %_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBX_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit

_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBX_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.514.0.i = phi ptr [ undef, %bb.a ], [ %i.g, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.413.0.i = phi i64 [ undef, %bb.a ], [ %i.e, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.k = getelementptr i8, ptr %i.j, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapReINtNtCs4NRVxsYgnAr_4core6option6OptionjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtNtNtBU_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 5 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val3.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !483
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBW_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %2 = icmp slt i64 %.sroa.43.0.copyload, 576460752303423487
  tail call void @llvm.assume(i1 %2)
  %i.b = shl i64 %.sroa.43.0.copyload, 5          ; 2 uses
  %3 = add i64 %i.b, 32                           ; 2 uses
  %4 = add nsw i64 %.sroa.43.0.copyload, 17
  %i.c = add i64 %4, %3                           ; 3 uses
  %5 = icmp uge i64 %i.c, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.c, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.d = sub nuw nsw i64 -32, %i.b
  %i.e = getelementptr inbounds i8, ptr %.sroa.02.0.copyload, i64 %i.d
  br label %_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBW_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit

_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBW_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.514.0.i = phi ptr [ undef, %bb.a ], [ %i.e, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.413.0.i = phi i64 [ undef, %bb.a ], [ %i.c, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.g = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.h = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.g, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapRmINtNtCs4NRVxsYgnAr_4core6option6OptionjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtNtNtBU_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 4 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val3.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !489
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBW_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.b = mul i64 %.sroa.43.0.copyload, 24         ; 2 uses
  %2 = add i64 %i.b, 24
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.c = and i64 %i.b, -16                        ; 2 uses
  %4 = add i64 %i.c, 32                           ; 2 uses
  %i.d = add i64 %.sroa.43.0.copyload, 17
  %i.e = add i64 %i.d, %4                         ; 3 uses
  %5 = icmp uge i64 %i.e, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.f = sub i64 -32, %i.c
  %i.g = getelementptr inbounds i8, ptr %.sroa.02.0.copyload, i64 %i.f
  br label %_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBW_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit

_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBW_4iter6traits7collect12IntoIterator9into_iterCsl6EuCK7xub1_5insta.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.514.0.i = phi ptr [ undef, %bb.a ], [ %i.g, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.413.0.i = phi i64 [ undef, %bb.a ], [ %i.e, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.k = getelementptr i8, ptr %i.j, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !492, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !492 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.g, align 8, !alias.scope !492
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !492
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !492
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.h, align 16, !noalias !492
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !492
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtB10_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !495, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !495 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.g, align 8, !alias.scope !495
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !495
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !495
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.h, align 16, !noalias !495
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !495
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtB10_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !498, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !498 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.g, align 8, !alias.scope !498
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !498
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !498
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.h, align 16, !noalias !498
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECsl6EuCK7xub1_5insta.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9SimpleKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamljEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1d_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapjNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1e_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupmEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms8patience13diff_deadlineINtNtB4_5utils12OffsetLookupmEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineINtNtB4_5utils12OffsetLookupmEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers13diff_deadlineINtNtNtB6_4text6inline11MultiLookupeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms8patience13diff_deadlineINtNtNtB6_4text6inline11MultiLookupeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineINtNtNtB6_4text6inline11MultiLookupeEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers13diff_deadlineSReBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(176), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms8patience13diff_deadlineSReB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(176), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineSReBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(176), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1c_4text6inline11MultiLookupeEENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es0_0E0ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB1O_16IdentifyDistinctpE3new3KeyReB35_EECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRReECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRmECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlE8grow_oneBV_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBM_EE8grow_oneBW_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamljEE8grow_oneBW_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE3newBd_(ptr dead_on_unwind noalias noundef writable sret([520 x i8]) align 8 captures(none) dereferenceable(520), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB6_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4loadNtNtB8_4yaml10YamlLoaderEBe_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(520), ptr noalias noundef align 8 dereferenceable(96), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapjNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlE6insertB1h_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBO_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBF_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBP_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #22

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!6 = !{!"branch_weights", i32 2002, i32 2000}
!7 = !{i64 8}
!8 = !{!"branch_weights", i32 1, i32 1999}
!9 = !{!"branch_weights", i32 0, i32 1}
!10 = !{i64 -1, i64 -9223372036854775808}
!11 = !{i8 -1, i8 21}
!12 = !{i8 0, i8 8}
!13 = !{i64 0, i64 2}
!14 = !{!"branch_weights", i32 2146410443, i32 1073205}
!15 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!19 = !{i8 0, i8 2}
!20 = !{i64 0, i64 -9223372036854775807}
!21 = distinct !{!21, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta"}
!22 = distinct !{!22, !21, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!23 = distinct !{!23, !21, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 2"}
!24 = distinct !{!24, !21, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 1"}
!25 = distinct !{!25, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta"}
!26 = distinct !{!26, !25, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!27 = distinct !{!27, !25, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 2"}
!28 = distinct !{!28, !25, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 1"}
!29 = distinct !{!29, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta"}
!30 = distinct !{!30, !29, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!31 = distinct !{!31, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta"}
!32 = distinct !{!32, !31, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!33 = distinct !{!33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta"}
!34 = distinct !{!34, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 0"}
!35 = distinct !{!35, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 1"}
!36 = distinct !{!36, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 0:It1"}
!37 = distinct !{!37, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 1:It1"}
!38 = distinct !{!38, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 0:It2"}
!39 = distinct !{!39, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 1:It2"}
!40 = distinct !{!40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsl6EuCK7xub1_5insta"}
!41 = distinct !{!41, !40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsl6EuCK7xub1_5insta: argument 0"}
!42 = distinct !{!42, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta"}
!43 = distinct !{!43, !42, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta: argument 0"}
!44 = distinct !{!44, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0Csl6EuCK7xub1_5insta"}
!45 = distinct !{!45, !44, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0Csl6EuCK7xub1_5insta: argument 1"}
!46 = distinct !{!46, !44, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0Csl6EuCK7xub1_5insta: argument 0"}
!47 = distinct !{!47, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!48 = distinct !{!48, !47, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!49 = !{!22}
!50 = !{!24, !23}
!51 = !{!22, !24, !23}
!52 = !{!26}
!53 = !{!26, !28, !27, !22, !24, !23}
!54 = !{!32, !30}
!55 = !{!30}
!56 = !{!26, !22}
!57 = !{!28, !27, !24, !23}
!58 = !{!27, !23}
!59 = !{!34}
!60 = !{!35, !27, !23}
!61 = !{!36}
!62 = !{!37, !27, !23}
!63 = !{!38}
!64 = !{!39, !27, !23}
!65 = !{!43, !41, !27, !23}
!66 = !{!46, !45, !27, !23}
!67 = !{!48}
!68 = distinct !{!68, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta"}
!69 = distinct !{!69, !68, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!70 = distinct !{!70, !68, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 2"}
!71 = distinct !{!71, !68, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 1"}
!72 = distinct !{!72, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta"}
!73 = distinct !{!73, !72, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!74 = distinct !{!74, !72, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 2"}
!75 = distinct !{!75, !72, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 1"}
!76 = distinct !{!76, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta"}
!77 = distinct !{!77, !76, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!78 = distinct !{!78, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta"}
!79 = distinct !{!79, !78, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!80 = distinct !{!80, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta"}
!81 = distinct !{!81, !80, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 0"}
!82 = distinct !{!82, !80, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 1"}
!83 = distinct !{!83, !80, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 0:It1"}
!84 = distinct !{!84, !80, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 1:It1"}
!85 = distinct !{!85, !80, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 0:It2"}
!86 = distinct !{!86, !80, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsl6EuCK7xub1_5insta: argument 1:It2"}
!87 = distinct !{!87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsl6EuCK7xub1_5insta"}
!88 = distinct !{!88, !87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsl6EuCK7xub1_5insta: argument 0"}
!89 = distinct !{!89, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta"}
!90 = distinct !{!90, !89, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta: argument 0"}
!91 = distinct !{!91, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0Csl6EuCK7xub1_5insta"}
!92 = distinct !{!92, !91, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0Csl6EuCK7xub1_5insta: argument 1"}
!93 = distinct !{!93, !91, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0Csl6EuCK7xub1_5insta: argument 0"}
!94 = distinct !{!94, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!95 = distinct !{!95, !94, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!96 = !{!69}
!97 = !{!71, !70}
!98 = !{!69, !71, !70}
!99 = !{!73}
!100 = !{!73, !75, !74, !69, !71, !70}
!101 = !{!79, !77}
!102 = !{!77}
!103 = !{!73, !69}
!104 = !{!75, !74, !71, !70}
!105 = !{!74, !70}
!106 = !{!81}
!107 = !{!82, !74, !70}
!108 = !{!83}
!109 = !{!84, !74, !70}
!110 = !{!85}
!111 = !{!86, !74, !70}
!112 = !{!90, !88, !74, !70}
!113 = !{!93, !92, !74, !70}
!114 = !{!95}
!115 = distinct !{!115, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5EventNtNtBG_7scanner6MarkerEEBM_"}
!116 = distinct !{!116, !115, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5EventNtNtBG_7scanner6MarkerEEBM_: argument 0"}
!117 = distinct !{!117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5EventEBL_"}
!118 = distinct !{!118, !117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5EventEBL_: argument 0"}
!119 = distinct !{!119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9TokenTypeEEB17_"}
!120 = distinct !{!120, !119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9TokenTypeEEB17_: argument 0"}
!121 = distinct !{!121, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9TokenTypeEEB17_"}
!122 = distinct !{!122, !121, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9TokenTypeEEB17_: argument 0"}
!123 = !{i64 -1, i64 -9223372036854775798}
!124 = !{!120, !118, !116}
!125 = !{!122, !118, !116}
!126 = distinct !{!126, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta"}
!127 = distinct !{!127, !126, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta: argument 0"}
!128 = !{!127}
!129 = distinct !{!129, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta"}
!130 = distinct !{!130, !129, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta: argument 0"}
!131 = distinct !{null, null}
!132 = !{!130}
!133 = distinct !{!133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEECsl6EuCK7xub1_5insta"}
!134 = distinct !{!134, !133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEECsl6EuCK7xub1_5insta: argument 0"}
!135 = distinct !{!135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringjEEECsl6EuCK7xub1_5insta"}
!136 = distinct !{!136, !135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringjEEECsl6EuCK7xub1_5insta: argument 0"}
!137 = distinct !{!137, !"_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta"}
!138 = distinct !{!138, !137, !"_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta: argument 0"}
!139 = distinct !{!139, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringjENtNtB1h_5alloc6GlobalECsl6EuCK7xub1_5insta"}
!140 = distinct !{!140, !139, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringjENtNtB1h_5alloc6GlobalECsl6EuCK7xub1_5insta: argument 0"}
!141 = distinct !{!141, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringjEECsl6EuCK7xub1_5insta"}
!142 = distinct !{!142, !141, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringjEECsl6EuCK7xub1_5insta: argument 0"}
!143 = distinct !{!143, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringjEE3newCsl6EuCK7xub1_5insta"}
!144 = distinct !{!144, !143, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringjEE3newCsl6EuCK7xub1_5insta: argument 0"}
!145 = distinct !{!145, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringjEE9next_implKb0_ECsl6EuCK7xub1_5insta"}
!146 = distinct !{!146, !145, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringjEE9next_implKb0_ECsl6EuCK7xub1_5insta: argument 0"}
!147 = !{!134}
!148 = !{!136}
!149 = !{!138}
!150 = !{!140}
!151 = !{!140, !138, !136, !134}
!152 = !{!142}
!153 = !{!142, !140, !138, !136, !134}
!154 = !{!144, !142, !140, !138, !136, !134}
!155 = !{!146, !142, !140, !138, !136, !134}
!156 = distinct !{!156, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner7ScannerNtNtNtB4_3str4iter5CharsEEBM_"}
!157 = distinct !{!157, !156, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner7ScannerNtNtNtB4_3str4iter5CharsEEBM_: argument 0"}
!158 = distinct !{!158, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9ScanErrorEEB17_"}
!159 = distinct !{!159, !158, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9ScanErrorEEB17_: argument 0"}
!160 = distinct !{!160, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenEEB17_"}
!161 = distinct !{!161, !160, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenEEB17_: argument 0"}
!162 = distinct !{!162, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenEEB17_"}
!163 = distinct !{!163, !162, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenEEB17_: argument 0"}
!164 = !{!159, !157}
!165 = !{!161}
!166 = !{!163}
!167 = !{i8 0, i8 21}
!168 = distinct !{!168, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1a_4text6inline11MultiLookupeEENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es0_0E0ECsl6EuCK7xub1_5insta"}
!169 = distinct !{!169, !168, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1a_4text6inline11MultiLookupeEENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es0_0E0ECsl6EuCK7xub1_5insta: argument 0"}
!170 = distinct !{!170, !168, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1a_4text6inline11MultiLookupeEENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es0_0E0ECsl6EuCK7xub1_5insta: argument 2"}
!171 = distinct !{!171, !168, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1a_4text6inline11MultiLookupeEENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es0_0E0ECsl6EuCK7xub1_5insta: argument 1"}
!172 = distinct !{!172, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBB_4text6inline11MultiLookupeEE7reverseCsl6EuCK7xub1_5insta"}
!173 = distinct !{!173, !172, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBB_4text6inline11MultiLookupeEE7reverseCsl6EuCK7xub1_5insta: argument 0"}
!174 = distinct !{!174, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBV_4text6inline11MultiLookupeEEECsl6EuCK7xub1_5insta"}
!175 = distinct !{!175, !174, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBV_4text6inline11MultiLookupeEEECsl6EuCK7xub1_5insta: argument 0"}
!176 = distinct !{!176, !174, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBV_4text6inline11MultiLookupeEEECsl6EuCK7xub1_5insta: argument 1"}
end_hunk_1
