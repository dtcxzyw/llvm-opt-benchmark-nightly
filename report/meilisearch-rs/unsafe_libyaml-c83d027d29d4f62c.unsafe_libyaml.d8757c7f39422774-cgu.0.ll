Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml3api11yaml_strdup17h8cc8728489c61115E:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN14unsafe_libyaml7externs6strdup17h7b1b52f88d46d798E.exit
  %.sroa.0.0 = phi ptr [ %i.h, %_ZN14unsafe_libyaml7externs6strdup17h7b1b52f88d46d798E.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i64 %1, 8                        ; 4 uses
  %i.c = icmp ugt i64 %1, -9
  br i1 %i.c, label %bb.c, label %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i", !prof !3

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i": ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.b, i64 noundef 8)
  br i1 %i.d, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.e:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.e = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #21 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit, !prof !3

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.b) #20
  unreachable

_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit: ; preds = %bb.e
  store i64 %i.b, ptr %i.e, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = add nuw i64 %1, 8                        ; 4 uses
  %i.j = icmp ugt i64 %1, -9
  br i1 %i.j, label %bb.h, label %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i1", !prof !3

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i1": ; preds = %bb.g
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.i, i64 noundef 8)
  br i1 %i.k, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i1"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.j:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i1"
  %i.l = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.i) #21 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.k, label %_ZN14unsafe_libyaml7externs7realloc17h51affd74cdf3d7faE.exit, !prof !3

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.i) #20
  unreachable

_ZN14unsafe_libyaml7externs7realloc17h51affd74cdf3d7faE.exit: ; preds = %bb.j
  store i64 %i.i, ptr %i.l, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml7externs7realloc17h51affd74cdf3d7faE.exit, %_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit
  %.pn = phi ptr [ %i.e, %_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit ], [ %i.l, %_ZN14unsafe_libyaml7externs7realloc17h51affd74cdf3d7faE.exit ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr %.0.val, ptr %.0.val1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %.0.val1 to i64
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !noundef !5
  %i.f = load ptr, ptr %1, align 8, !noundef !5   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not8 = icmp sgt i64 %i.i, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %0, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit, %.preheader
  %.lcssa5 = phi ptr [ %i.f, %.preheader ], [ %i.ap, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa5, ptr align 1 %.0.val, i64 %i.d, i1 false)
  %i.j = load ptr, ptr %1, align 8, !noundef !5
  %i.k = getelementptr i8, ptr %i.j, i64 %i.d
  store ptr %i.k, ptr %1, align 8
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit
  %i.l = phi ptr [ %i.s, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi i64 [ %i.aq, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ], [ %i.g, %.lr.ph.preheader ]
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = add i64 %i.o, 4611686018427387904
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i", !prof !3

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i": ; preds = %.lr.ph
  %i.r = shl nsw i64 %i.o, 1
  %i.s = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.l, i64 noundef %i.r) ; 5 uses
  %i.t = load ptr, ptr %2, align 8, !noundef !5
  %i.u = load ptr, ptr %0, align 8, !noundef !5
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.x, i1 false)
  %i.z = load ptr, ptr %1, align 8, !noundef !5
  %i.aa = load ptr, ptr %0, align 8, !noundef !5
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ad
  store ptr %i.ae, ptr %1, align 8
  %i.af = load ptr, ptr %2, align 8, !noundef !5
  %i.ag = load ptr, ptr %0, align 8, !noundef !5
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = add i64 %i.aj, 4611686018427387904
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.c, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit, !prof !3

bb.c:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  %i.am = shl nsw i64 %i.aj, 1
  %i.an = getelementptr i8, ptr %i.s, i64 %i.am
  store ptr %i.an, ptr %2, align 8
  store ptr %i.s, ptr %0, align 8
  %i.ao = load ptr, ptr %2, align 8, !noundef !5
  %i.ap = load ptr, ptr %1, align 8, !noundef !5  ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %.not = icmp sgt i64 %i.as, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api17yaml_event_delete17h4f01a6edee4be18eE(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @0, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 1058) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !range !6, !noundef !5
  switch i32 %i.b, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5 [
    i32 3, label %bb.d
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.j
    i32 9, label %bb.l
  ]

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split: ; preds = %._crit_edge, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, %bb.f
  %.sink34 = phi ptr [ %i.ar, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11 ], [ %i.aj, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9 ], [ %i.ab, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7 ], [ %i.o, %bb.f ], [ %i.at, %._crit_edge ]
  %i.c = getelementptr inbounds i8, ptr %.sink34, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.d, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split, %._crit_edge, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, %bb.f, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit: ; preds = %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !5
  %.not16 = icmp eq ptr %i.k, %i.m
  br i1 %.not16, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.u, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6: ; preds = %bb.g, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, label %bb.i

bb.i:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

bb.j:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noundef !5 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.ah, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9: ; preds = %bb.j, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !5 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

bb.l:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noundef !5 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ap, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11: ; preds = %bb.l, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

._crit_edge.loopexit:                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15
  %.pre = load ptr, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.at = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.k, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit ] ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

.lr.ph:                                           ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15
  %.sroa.0.017 = phi ptr [ %i.be, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15 ], [ %i.k, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit ] ; 3 uses
  %i.av = load ptr, ptr %.sroa.0.017, align 8, !noundef !5 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.ay, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14: ; preds = %.lr.ph, %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noundef !5 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15, label %bb.o

bb.o:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.bd, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14, %bb.o
  %i.be = getelementptr i8, ptr %.sroa.0.017, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.l, align 8, !noundef !5
  %.not = icmp eq ptr %i.be, %i.bf
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !5
  %i.c = icmp eq ptr %i.a, %i.b
  %.pre8 = load ptr, ptr %2, align 8              ; 3 uses
  %.pre10 = load ptr, ptr %3, align 8             ; 2 uses
  %i.d = icmp eq ptr %.pre8, %.pre10
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit7"
  %i.e = phi ptr [ %i.o, %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit7" ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %.pre9, %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit7" ], [ %.pre10, %bb.a ] ; 5 uses
  %i.g = phi ptr [ %.pre, %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit7" ], [ %.pre8, %bb.a ]
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %.pre8 to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = add i64 %i.k, 4611686018427387904
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit", !prof !3

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit": ; preds = %bb.c
  %i.n = shl nsw i64 %i.k, 1
  %i.o = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.a, i64 noundef %i.n) ; 5 uses
  %i.p = load ptr, ptr %1, align 8, !noundef !5
  %i.q = load ptr, ptr %0, align 8, !noundef !5
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr i8, ptr %i.o, i64 %i.t
  store ptr %i.u, ptr %1, align 8
  %i.v = load ptr, ptr %2, align 8, !noundef !5
  %i.w = load ptr, ptr %0, align 8, !noundef !5
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %2, align 8
  %i.ab = load ptr, ptr %3, align 8, !noundef !5
  %i.ac = load ptr, ptr %0, align 8, !noundef !5
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = add i64 %i.af, 4611686018427387904
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit7", !prof !3

bb.e:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit7": ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit"
  %i.ai = shl nsw i64 %i.af, 1
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %3, align 8
  store ptr %i.o, ptr %0, align 8
  %.pre = load ptr, ptr %2, align 8
  %.pre9 = load ptr, ptr %3, align 8
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %1, align 8, !noundef !5  ; 3 uses
  %.not = icmp eq ptr %i.ak, %i.f
  br i1 %.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.i
  ret void

bb.h:                                             ; preds = %bb.f
  %i.al = ptrtoint ptr %i.f to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.ak, i64 %i.an, i1 false)
  %.pre11 = load ptr, ptr %0, align 8
  %.pre12 = load ptr, ptr %2, align 8
  %.pre13 = load ptr, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.ao = phi ptr [ %i.f, %bb.f ], [ %.pre13, %bb.h ]
  %i.ap = phi ptr [ %i.f, %bb.f ], [ %.pre12, %bb.h ]
  %i.aq = phi ptr [ %i.e, %bb.f ], [ %.pre11, %bb.h ]
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr i8, ptr %i.aq, i64 %i.at
  store ptr %i.au, ptr %2, align 8
  %i.av = load ptr, ptr %0, align 8, !noundef !5
  store ptr %i.av, ptr %1, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !noundef !5
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = add i64 %i.e, 4611686018427387904
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit", !prof !3

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit": ; preds = %bb.a
  %i.h = shl nsw i64 %i.e, 1
  %i.i = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.a, i64 noundef %i.h) ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !noundef !5
  %i.k = load ptr, ptr %0, align 8, !noundef !5
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  store ptr %i.o, ptr %1, align 8
  %i.p = load ptr, ptr %2, align 8, !noundef !5
  %i.q = load ptr, ptr %0, align 8, !noundef !5
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = add i64 %i.t, 4611686018427387904
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit2", !prof !3

bb.c:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit2": ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit"
  %i.w = shl nsw i64 %i.t, 1
  %i.x = getelementptr i8, ptr %i.i, i64 %i.w
  store ptr %i.x, ptr %2, align 8
  store ptr %i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api17yaml_token_delete17h3d0b03cb10d54adeE(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 469) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !range !7, !noundef !5
  switch i32 %i.b, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1 [
    i32 4, label %bb.d
    i32 18, label %bb.f
    i32 19, label %bb.g
    i32 20, label %bb.h
    i32 21, label %bb.j
  ]

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1.sink.split: ; preds = %bb.j, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, %bb.g, %bb.f, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %.sink16 = phi ptr [ %i.y, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4 ], [ %i.q, %bb.g ], [ %i.n, %bb.f ], [ %i.k, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit ], [ %i.ab, %bb.j ]
  %i.c = getelementptr inbounds i8, ptr %.sink16, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.d, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1.sink.split, %bb.j, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, %bb.g, %bb.f, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit: ; preds = %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1.sink.split

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1.sink.split

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1.sink.split

bb.h:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.w, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4: ; preds = %bb.h, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noundef !5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1.sink.split

bb.j:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api18yaml_parser_delete17hb77613ec8f376aa3E(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 187) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.f, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit: ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3, label %bb.e

bb.e:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.k, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !noundef !5
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3, %.lr.ph
  %i.q = phi ptr [ %i.s, %.lr.ph ], [ %i.n, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3 ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 80
  store ptr %i.r, ptr %i.l, align 8
  tail call void @_ZN14unsafe_libyaml3api17yaml_token_delete17h3d0b03cb10d54adeE(ptr noundef %i.q)
  %i.s = load ptr, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !noundef !5
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4: ; preds = %._crit_edge, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ae, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, label %bb.h

bb.h:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !5 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, label %bb.i

bb.i:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ao, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.aq = load ptr, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8, label %bb.j

bb.j:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.at, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %i.au, align 8, !noundef !5 ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10
  %i.az = phi ptr [ %i.bl, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10 ], [ %i.ax, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8 ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16 ; 2 uses
  store ptr %i.ba, ptr %i.av, align 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !5 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !5 ; 2 uses
  %i.be = icmp eq ptr %i.bb, null
  br i1 %i.be, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, label %bb.k

bb.k:                                             ; preds = %.lr.ph16
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 -8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %i.bg, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9: ; preds = %.lr.ph16, %bb.k
  %i.bh = icmp eq ptr %i.bd, null
  br i1 %i.bh, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10, label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bj, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %bb.l
  %i.bk = load ptr, ptr %i.au, align 8, !noundef !5 ; 2 uses
  %i.bl = load ptr, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %._crit_edge17, label %.lr.ph16

._crit_edge17:                                    ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8
  %.lcssa12 = phi ptr [ %i.aw, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8 ], [ %i.bk, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10 ] ; 2 uses
  %i.bn = icmp eq ptr %.lcssa12, null
  br i1 %i.bn, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, label %bb.m

bb.m:                                             ; preds = %._crit_edge17
  %i.bo = getelementptr inbounds i8, ptr %.lcssa12, i64 -8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.bp, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11: ; preds = %._crit_edge17, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(480) %0, i8 0, i64 480, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !noundef !5
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = add i64 %i.e, 4611686018427387904
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit", !prof !3

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit": ; preds = %bb.a
  %i.h = shl nsw i64 %i.e, 1
  %i.i = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.a, i64 noundef %i.h) ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !noundef !5
  %i.k = load ptr, ptr %0, align 8, !noundef !5
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.n, i1 false)
  %i.p = load ptr, ptr %1, align 8, !noundef !5
  %i.q = load ptr, ptr %0, align 8, !noundef !5
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr i8, ptr %i.i, i64 %i.t
  store ptr %i.u, ptr %1, align 8
  %i.v = load ptr, ptr %2, align 8, !noundef !5
  %i.w = load ptr, ptr %0, align 8, !noundef !5
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = add i64 %i.z, 4611686018427387904
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit3", !prof !3

bb.c:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit3": ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit"
  %i.ac = shl nsw i64 %i.z, 1
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ac
  store ptr %i.ad, ptr %2, align 8
  store ptr %i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api19yaml_emitter_delete17h0e18793ed747d3d6E(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 317) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.f, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit: ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3, label %bb.e

bb.e:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.k, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, label %bb.f

bb.f:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.p, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !noundef !5
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, %.lr.ph
  %i.v = phi ptr [ %i.x, %.lr.ph ], [ %i.s, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4 ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 96
  store ptr %i.w, ptr %i.q, align 8
  tail call void @_ZN14unsafe_libyaml3api17yaml_event_delete17h4f01a6edee4be18eE(ptr noundef %i.v)
  %i.x = load ptr, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.y = load ptr, ptr %i.r, align 8, !noundef !5
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ae, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5: ; preds = %._crit_edge, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, label %bb.h

bb.h:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %i.ak, align 8, !noundef !5 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !noundef !5 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8
  %i.ap = phi ptr [ %i.bb, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8 ], [ %i.an, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6 ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -16 ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.au = icmp eq ptr %i.ar, null
  br i1 %i.au, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, label %bb.i

bb.i:                                             ; preds = %.lr.ph15
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.aw, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7: ; preds = %.lr.ph15, %bb.i
  %i.ax = icmp eq ptr %i.at, null
  br i1 %i.ax, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8, label %bb.j

bb.j:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.az, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, %bb.j
  %i.ba = load ptr, ptr %i.ak, align 8, !noundef !5 ; 2 uses
  %i.bb = load ptr, ptr %i.al, align 8, !noundef !5 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %._crit_edge16, label %.lr.ph15

._crit_edge16:                                    ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6
  %.lcssa11 = phi ptr [ %i.am, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6 ], [ %i.ba, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8 ] ; 2 uses
  %i.bd = icmp eq ptr %.lcssa11, null
  br i1 %i.bd, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, label %bb.k

bb.k:                                             ; preds = %._crit_edge16
  %i.be = getelementptr inbounds i8, ptr %.lcssa11, i64 -8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.bf, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9: ; preds = %._crit_edge16, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !5 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10, label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.bk, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(408) %0, i8 0, i64 408, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api20yaml_document_delete17h639f02d9704b107cE(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 1231) #20
  unreachable

.lr.ph:                                           ; preds = %.preheader, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11
  %i.f = phi ptr [ %i.ag, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11 ], [ %i.d, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -96 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  %i.h = load i32, ptr %i.g, align 8, !range !8, !noundef !5
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -88
  %i.j = load ptr, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -80
  %.sroa.04.0.copyload = load ptr, ptr %i.k, align 8 ; 4 uses
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.n, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit: ; preds = %.lr.ph, %bb.c
  switch i32 %i.h, label %default.unreachable38 [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 0, label %bb.i
  ]

._crit_edge:                                      ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, %.preheader
  %.lcssa19 = phi ptr [ %i.c, %.preheader ], [ %i.af, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11 ] ; 2 uses
  %i.o = icmp eq ptr %.lcssa19, null
  br i1 %i.o, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds i8, ptr %.lcssa19, i64 -8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9: ; preds = %._crit_edge, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10, label %bb.e

bb.e:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.v, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noundef !5
  %.not23 = icmp eq ptr %i.x, %i.z
  br i1 %.not23, label %._crit_edge26, label %.lr.ph25

default.unreachable38:                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  unreachable

bb.f:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.aa = icmp eq ptr %.sroa.04.0.copyload, null
  br i1 %i.aa, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11.sink.split

bb.g:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.ab = icmp eq ptr %.sroa.04.0.copyload, null
  br i1 %i.ab, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11.sink.split

bb.h:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, null
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11.sink.split

bb.i:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 1246) #20
  unreachable

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11.sink.split: ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = getelementptr inbounds i8, ptr %.sroa.04.0.copyload, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ae, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11.sink.split, %bb.h, %bb.g, %bb.f
  %i.af = load ptr, ptr %0, align 8, !noundef !5  ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge26.loopexit:                           ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit16
  %.pre = load ptr, ptr %i.w, align 8
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10
  %i.ai = phi ptr [ %.pre, %._crit_edge26.loopexit ], [ %i.x, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10 ] ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14, label %bb.j

bb.j:                                             ; preds = %._crit_edge26
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.al, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14: ; preds = %._crit_edge26, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  ret void

.lr.ph25:                                         ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit16
  %.sroa.0.024 = phi ptr [ %i.av, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit16 ], [ %i.x, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10 ] ; 3 uses
  %i.am = load ptr, ptr %.sroa.0.024, align 8, !noundef !5 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15, label %bb.k

bb.k:                                             ; preds = %.lr.ph25
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ap, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15: ; preds = %.lr.ph25, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit16, label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.au, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit16

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit16: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15, %bb.l
  %i.av = getelementptr i8, ptr %.sroa.0.024, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.y, align 8, !noundef !5
  %.not = icmp eq ptr %i.av, %i.aw
  br i1 %.not, label %._crit_edge26.loopexit, label %.lr.ph25
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api21yaml_parser_set_input17he2b986c59d9dc6adE(ptr nofree noundef captures(address_is_null) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 280) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7, i64 noundef 34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 281) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN14unsafe_libyaml3api22yaml_document_get_node17h704972ed0f35634dE(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 1276) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [96 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noundef !5
  %.not = icmp ugt ptr %i.e, %i.g
  %i.h = getelementptr i8, ptr %i.e, i64 -96
  %spec.select = select i1 %.not, ptr null, ptr %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api22yaml_emitter_set_break17h7ba3c12777e5807dE(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 463) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %1, ptr %i.b, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api22yaml_emitter_set_width17ha9ad80cf6e077f59E(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 451) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %. = tail call i32 @llvm.smax.i32(i32 %1, i32 -1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %., ptr %i.b, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN14unsafe_libyaml3api22yaml_parser_initialize17heea112f54676b9c9E(ptr nofree noundef writeonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 168) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(480) %0, i8 0, i64 480, i1 false)
  %i.b = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 16392, i64 noundef 8)
  br i1 %i.b, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.c = tail call noundef align 8 dereferenceable_or_null(16392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16392, i64 noundef 8) #21 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit, !prof !3

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16392) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit: ; preds = %bb.e
  store i64 16392, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.c, i64 16392
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.i, ptr %i.j, align 8
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 49160, i64 noundef 8)
  br i1 %i.k, label %bb.h, label %bb.g, !prof !4

bb.g:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.h:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.l = tail call noundef align 8 dereferenceable_or_null(49160) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 49160, i64 noundef 8) #21 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit2, !prof !3

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 49160) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit2: ; preds = %bb.h
  store i64 49160, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.l, i64 49160
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.r, ptr %i.s, align 8
  %i.t = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 1288, i64 noundef 8)
  br i1 %i.t, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit2
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

end_hunk_0
begin_hunk_1_@_ZN14unsafe_libyaml6loader16yaml_parser_load17h85bc3ab8ea2808cbE:bb.a
  store i32 %i.er, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.10.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.10.i.i.i, i64 36, i1 false)
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i, i64 24, i1 false)
  %i.fs = load ptr, ptr %i.ay, align 8, !noundef !5
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !noundef !5
  %i.fv = getelementptr i8, ptr %i.fu, i64 96
  store ptr %i.fv, ptr %i.ft, align 8
  %i.fw = load ptr, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !noundef !5
  %i.fz = load ptr, ptr %i.fw, align 8, !noundef !5
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = sdiv i64 %i.gc, 96
  %i.ge = trunc i64 %i.gd to i32                  ; 2 uses
  %i.gf = load ptr, ptr %i.bz, align 8, !noundef !5
  %i.gg = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6loader27yaml_parser_register_anchor17hea39da72ff4168c1E(ptr noundef nonnull %0, i32 noundef %i.ge, ptr noundef %i.gf)
  br i1 %i.gg, label %_ZN14unsafe_libyaml6loader23yaml_parser_load_scalar17hd3e7490eb226fbccE.exit.i.i, label %_ZN14unsafe_libyaml6loader23yaml_parser_load_scalar17hd3e7490eb226fbccE.exit.thread.i.i

_ZN14unsafe_libyaml6loader23yaml_parser_load_scalar17hd3e7490eb226fbccE.exit.thread.i.i: ; preds = %bb.au, %bb.an, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  br label %bb.av

_ZN14unsafe_libyaml6loader23yaml_parser_load_scalar17hd3e7490eb226fbccE.exit.i.i: ; preds = %bb.au
  %i.gh = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6loader25yaml_parser_load_node_add17h6245c98b5986b1b8E(ptr noundef nonnull %0, ptr %.sroa.0.025.i, ptr %.sroa.33.0.i, i32 noundef %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  %spec.select72.i.i = select i1 %i.gh, ptr @15, ptr @14
  br label %bb.av

bb.av:                                            ; preds = %_ZN14unsafe_libyaml6loader23yaml_parser_load_scalar17hd3e7490eb226fbccE.exit.i.i, %_ZN14unsafe_libyaml6loader23yaml_parser_load_scalar17hd3e7490eb226fbccE.exit.thread.i.i
  %i.gi = phi ptr [ @14, %_ZN14unsafe_libyaml6loader23yaml_parser_load_scalar17hd3e7490eb226fbccE.exit.thread.i.i ], [ %spec.select72.i.i, %_ZN14unsafe_libyaml6loader23yaml_parser_load_scalar17hd3e7490eb226fbccE.exit.i.i ]
  %i.gj = load i8, ptr %i.gi, align 1, !range !9, !noundef !5
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %_ZN14unsafe_libyaml6loader25yaml_parser_load_document17h0f3318bdf36fed51E.exit, label %bb.ac

bb.aw:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i18.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i)
  %i.gl = load ptr, ptr %i.ca, align 8, !noundef !5 ; 7 uses
  %i.gm = load ptr, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !noundef !5
  %i.gp = load ptr, ptr %i.gm, align 8, !noundef !5
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp slt i64 %i.gs, 206158430016
  br i1 %i.gt, label %.critedge.i.i.i, label %bb.ax

.critedge.i.i.i:                                  ; preds = %bb.aw
  %i.gu = icmp eq ptr %i.gl, null
  br i1 %i.gu, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i.i.i, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  store i32 1, ptr %0, align 8
  %i.gv = icmp eq ptr %i.gl, null
  br i1 %i.gv, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gw = getelementptr inbounds i8, ptr %i.gl, i64 -8 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef %i.gx, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i.i.i, %bb.ay, %bb.ax
  %i.gy = load ptr, ptr %i.bz, align 8, !noundef !5 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -8 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ha, i64 noundef %i.hb, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i

bb.ba:                                            ; preds = %.critedge.i.i.i
  %strlen.i.i21.i.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gl) ; 2 uses
  %i.hc = icmp ne i64 %strlen.i.i21.i.i, 0
  %..i.i22.i.i = zext i1 %i.hc to i64
  %i.hd = add i64 %strlen.i.i21.i.i, -1
  %i.he = call i32 @memcmp(ptr nonnull readonly %i.gl, ptr nonnull @43, i64 %..i.i22.i.i) ; 2 uses
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp eq i32 %i.he, 0
  %spec.store.select.i.i23.i.i = select i1 %i.hg, i64 %i.hd, i64 %i.hf
  %i.hh = icmp eq i64 %spec.store.select.i.i23.i.i, 0
  br i1 %i.hh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hi = getelementptr inbounds i8, ptr %i.gl, i64 -8 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hi, i64 noundef %i.hj, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i.i.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i.i.i: ; preds = %bb.bb, %.critedge.i.i.i
  %i.hk = call fastcc noundef ptr @_ZN14unsafe_libyaml3api11yaml_strdup17h8cc8728489c61115E(ptr noundef nonnull @19) ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i.i.i, %bb.ba
  %.sroa.04.1.i24.i.i = phi ptr [ %i.gl, %bb.ba ], [ %i.hk, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i.i.i ]
  %i.hm = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 72, i64 noundef 8)
  br i1 %i.hm, label %bb.be, label %bb.bd, !prof !4

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.hn = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #21 ; 4 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.bf, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i.i.i, !prof !3

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i.i.i: ; preds = %bb.be
  store i64 72, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.11.i18.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %i.hr = load i32, ptr %i.cc, align 4, !range !21, !noundef !5
  %i.hs = load ptr, ptr %i.ay, align 8, !noundef !5 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !noundef !5 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !noundef !5
  %i.hx = icmp eq ptr %i.hu, %i.hw
  br i1 %i.hx, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i.i.i
  %i.hy = load ptr, ptr %i.hs, align 8, !noundef !5 ; 2 uses
  %i.hz = ptrtoint ptr %i.hu to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 2 uses
  %i.ic = add i64 %i.ib, 4611686018427387904
  %i.id = icmp slt i64 %i.ic, 0
  br i1 %i.id, label %bb.bh, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i33.i.i", !prof !3

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i33.i.i": ; preds = %bb.bg
  %i.ie = shl nsw i64 %i.ib, 1
  %i.if = call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.hy, i64 noundef %i.ie) ; 3 uses
  %i.ig = load ptr, ptr %i.ht, align 8, !noundef !5
  %i.ih = load ptr, ptr %i.hs, align 8, !noundef !5
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = getelementptr i8, ptr %i.if, i64 %i.ik
  store ptr %i.il, ptr %i.ht, align 8
  %i.im = load ptr, ptr %i.hv, align 8, !noundef !5
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = sub i64 %i.in, %i.ij                    ; 2 uses
  %i.ip = add i64 %i.io, 4611686018427387904
  %i.iq = icmp slt i64 %i.ip, 0
  br i1 %i.iq, label %bb.bi, label %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i34.i.i, !prof !3

bb.bi:                                            ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i33.i.i"
  call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i34.i.i: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i33.i.i"
  %i.ir = shl nsw i64 %i.io, 1
  %i.is = getelementptr i8, ptr %i.if, i64 %i.ir
  store ptr %i.is, ptr %i.hv, align 8
  store ptr %i.if, ptr %i.hs, align 8
  %.pre.i35.i.i = load ptr, ptr %i.ay, align 8
  %.phi.trans.insert.i36.i.i = getelementptr inbounds nuw i8, ptr %.pre.i35.i.i, i64 16
  %.pre38.i.i.i = load ptr, ptr %.phi.trans.insert.i36.i.i, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i34.i.i, %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i.i.i
  %i.it = phi ptr [ %i.hu, %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i.i.i ], [ %.pre38.i.i.i, %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i34.i.i ] ; 10 uses
  store i32 2, ptr %i.it, align 8
  %.sroa.6.0..sroa_idx.i25.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i25.i.i, align 4
  %.sroa.63.0..sroa_idx.i26.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store ptr %.sroa.04.1.i24.i.i, ptr %.sroa.63.0..sroa_idx.i26.i.i, align 8
  %.sroa.7.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store ptr %i.hp, ptr %.sroa.7.0..sroa_idx.i27.i.i, align 8
  %.sroa.8.0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store ptr %i.hq, ptr %.sroa.8.0..sroa_idx.i28.i.i, align 8
  %.sroa.9.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  store ptr %i.hp, ptr %.sroa.9.0..sroa_idx.i29.i.i, align 8
  %.sroa.10.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  store i32 %i.hr, ptr %.sroa.10.0..sroa_idx.i30.i.i, align 8
  %.sroa.11.0..sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 44
  store i32 0, ptr %.sroa.11.0..sroa_idx.i31.i.i, align 4
  %.sroa.11.i18.sroa.4.0..sroa.11.0..sroa_idx.i31.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.11.i18.sroa.4.0..sroa.11.0..sroa_idx.i31.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.11.i18.sroa.4.i.i, i64 24, i1 false)
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i, i64 24, i1 false)
  %i.iu = load ptr, ptr %i.ay, align 8, !noundef !5
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !noundef !5
  %i.ix = getelementptr i8, ptr %i.iw, i64 96
  store ptr %i.ix, ptr %i.iv, align 8
  %i.iy = load ptr, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !noundef !5
  %i.jb = load ptr, ptr %i.iy, align 8, !noundef !5
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = sdiv i64 %i.je, 96
  %i.jg = trunc i64 %i.jf to i32                  ; 3 uses
  %i.jh = load ptr, ptr %i.bz, align 8, !noundef !5
  %i.ji = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6loader27yaml_parser_register_anchor17hea39da72ff4168c1E(ptr noundef nonnull %0, i32 noundef %i.jg, ptr noundef %i.jh)
  br i1 %i.ji, label %bb.bk, label %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.jj = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6loader25yaml_parser_load_node_add17h6245c98b5986b1b8E(ptr noundef nonnull %0, ptr %.sroa.0.025.i, ptr %.sroa.33.0.i, i32 noundef %i.jg)
  br i1 %i.jj, label %bb.bl, label %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.jk = ptrtoint ptr %.sroa.33.0.i to i64
  %i.jl = ptrtoint ptr %.sroa.0.025.i to i64
  %i.jm = sub i64 %i.jk, %i.jl                    ; 4 uses
  %i.jn = icmp slt i64 %i.jm, 8589934584
  br i1 %i.jn, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 1, ptr %0, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.28.i.i.i = phi ptr [ @15, %bb.bl ], [ @14, %bb.bm ]
  %i.jo = load i8, ptr %.28.i.i.i, align 1, !range !9, !noundef !5
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jq = icmp eq ptr %.sroa.33.0.i, %.sroa.23.0.i
  br i1 %i.jq, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.jr = add i64 %i.jm, 4611686018427387904
  %i.js = icmp slt i64 %i.jr, 0
  br i1 %i.js, label %bb.bq, label %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i.i, !prof !3

bb.bq:                                            ; preds = %bb.bp
  call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i.i: ; preds = %bb.bp
  %i.jt = shl nsw i64 %i.jm, 1                    ; 2 uses
  %i.ju = call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %.sroa.0.025.i, i64 noundef %i.jt) ; 3 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 %i.jm
  %i.jw = getelementptr i8, ptr %i.ju, i64 %i.jt
  br label %bb.br

bb.br:                                            ; preds = %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i.i, %bb.bo
  %.sroa.33.5.i = phi ptr [ %i.jv, %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i.i ], [ %.sroa.33.0.i, %bb.bo ] ; 2 uses
  %.sroa.23.5.i = phi ptr [ %i.jw, %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i.i ], [ %.sroa.23.0.i, %bb.bo ]
  %.sroa.0.6.i = phi ptr [ %i.ju, %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i.i ], [ %.sroa.0.025.i, %bb.bo ]
  store i32 %i.jg, ptr %.sroa.33.5.i, align 4
  %i.jx = getelementptr i8, ptr %.sroa.33.5.i, i64 4
  br label %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i

_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i: ; preds = %bb.br, %bb.bn, %bb.bk, %bb.bj, %bb.az, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i
  %.sroa.33.4.i = phi ptr [ %.sroa.33.0.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i ], [ %.sroa.33.0.i, %bb.az ], [ %.sroa.33.0.i, %bb.bn ], [ %i.jx, %bb.br ], [ %.sroa.33.0.i, %bb.bk ], [ %.sroa.33.0.i, %bb.bj ]
  %.sroa.23.4.i = phi ptr [ %.sroa.23.0.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i ], [ %.sroa.23.0.i, %bb.az ], [ %.sroa.23.0.i, %bb.bn ], [ %.sroa.23.5.i, %bb.br ], [ %.sroa.23.0.i, %bb.bk ], [ %.sroa.23.0.i, %bb.bj ]
  %.sroa.0.5.i = phi ptr [ %.sroa.0.025.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i ], [ %.sroa.0.025.i, %bb.az ], [ %.sroa.0.025.i, %bb.bn ], [ %.sroa.0.6.i, %bb.br ], [ %.sroa.0.025.i, %bb.bk ], [ %.sroa.0.025.i, %bb.bj ] ; 2 uses
  %i.jy = phi ptr [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i19.i.i ], [ @14, %bb.az ], [ @14, %bb.bn ], [ @15, %bb.br ], [ @14, %bb.bk ], [ @14, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i18.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  %i.jz = load i8, ptr %i.jy, align 1, !range !9, !noundef !5
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %_ZN14unsafe_libyaml6loader25yaml_parser_load_document17h0f3318bdf36fed51E.exit, label %bb.ac

bb.bs:                                            ; preds = %bb.aa
  %i.kb = ptrtoint ptr %.sroa.33.0.i to i64
  %i.kc = ptrtoint ptr %.sroa.0.025.i to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = icmp sgt i64 %i.kd, 3
  br i1 %i.ke, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 64, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 104, i32 noundef 468) #20
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.kf = getelementptr i8, ptr %.sroa.33.0.i, i64 -4
  %i.kg = load i32, ptr %i.kf, align 4, !noundef !5
  %i.kh = load ptr, ptr %i.ay, align 8, !noundef !5
  %i.ki = load ptr, ptr %i.kh, align 8, !noundef !5
  %i.kj = add i32 %i.kg, -1
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr [96 x i8], ptr %i.ki, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 8, !range !8, !noundef !5
  %i.kn = icmp eq i32 %i.km, 2
  br i1 %i.kn, label %.sink.split.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @49, i64 noundef 104, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 104, i32 noundef 470) #20
  unreachable

bb.bw:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i37.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i38.i.i)
  %i.ko = load ptr, ptr %i.ca, align 8, !noundef !5 ; 7 uses
  %i.kp = load ptr, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !noundef !5
  %i.ks = load ptr, ptr %i.kp, align 8, !noundef !5
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = icmp slt i64 %i.kv, 206158430016
  br i1 %i.kw, label %.critedge.i41.i.i, label %bb.bx

.critedge.i41.i.i:                                ; preds = %bb.bw
  %i.kx = icmp eq ptr %i.ko, null
  br i1 %i.kx, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i65.i.i, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  store i32 1, ptr %0, align 8
  %i.ky = icmp eq ptr %i.ko, null
  br i1 %i.ky, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kz = getelementptr inbounds i8, ptr %i.ko, i64 -8 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kz, i64 noundef %i.la, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i65.i.i, %bb.by, %bb.bx
  %i.lb = load ptr, ptr %i.bz, align 8, !noundef !5 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i
  %i.ld = getelementptr inbounds i8, ptr %i.lb, i64 -8 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ld, i64 noundef %i.le, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i

bb.ca:                                            ; preds = %.critedge.i41.i.i
  %strlen.i.i42.i.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ko) ; 2 uses
  %i.lf = icmp ne i64 %strlen.i.i42.i.i, 0
  %..i.i43.i.i = zext i1 %i.lf to i64
  %i.lg = add i64 %strlen.i.i42.i.i, -1
  %i.lh = call i32 @memcmp(ptr nonnull readonly %i.ko, ptr nonnull @43, i64 %..i.i43.i.i) ; 2 uses
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp eq i32 %i.lh, 0
  %spec.store.select.i.i44.i.i = select i1 %i.lj, i64 %i.lg, i64 %i.li
  %i.lk = icmp eq i64 %spec.store.select.i.i44.i.i, 0
  br i1 %i.lk, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ll = getelementptr inbounds i8, ptr %i.ko, i64 -8 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ll, i64 noundef %i.lm, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i65.i.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i65.i.i: ; preds = %bb.cb, %.critedge.i41.i.i
  %i.ln = call fastcc noundef ptr @_ZN14unsafe_libyaml3api11yaml_strdup17h8cc8728489c61115E(ptr noundef nonnull @17) ; 2 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i65.i.i, %bb.ca
  %.sroa.04.1.i45.i.i = phi ptr [ %i.ko, %bb.ca ], [ %i.ln, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit31.i65.i.i ]
  %i.lp = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 136, i64 noundef 8)
  br i1 %i.lp, label %bb.ce, label %bb.cd, !prof !4

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.ce:                                            ; preds = %bb.cc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.lq = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #21 ; 4 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %bb.cf, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i46.i.i, !prof !3

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 136) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i46.i.i: ; preds = %bb.ce
  store i64 136, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.11.i37.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i38.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %i.lu = load i32, ptr %i.cc, align 4, !range !21, !noundef !5
  %i.lv = load ptr, ptr %i.ay, align 8, !noundef !5 ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 3 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !noundef !5 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 3 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !noundef !5
  %i.ma = icmp eq ptr %i.lx, %i.lz
  br i1 %i.ma, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i46.i.i
  %i.mb = load ptr, ptr %i.lv, align 8, !noundef !5 ; 2 uses
  %i.mc = ptrtoint ptr %i.lx to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md                    ; 2 uses
  %i.mf = add i64 %i.me, 4611686018427387904
  %i.mg = icmp slt i64 %i.mf, 0
  br i1 %i.mg, label %bb.ch, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i60.i.i", !prof !3

bb.ch:                                            ; preds = %bb.cg
  call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i60.i.i": ; preds = %bb.cg
  %i.mh = shl nsw i64 %i.me, 1
  %i.mi = call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.mb, i64 noundef %i.mh) ; 3 uses
  %i.mj = load ptr, ptr %i.lw, align 8, !noundef !5
  %i.mk = load ptr, ptr %i.lv, align 8, !noundef !5
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64               ; 2 uses
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = getelementptr i8, ptr %i.mi, i64 %i.mn
  store ptr %i.mo, ptr %i.lw, align 8
  %i.mp = load ptr, ptr %i.ly, align 8, !noundef !5
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = sub i64 %i.mq, %i.mm                    ; 2 uses
  %i.ms = add i64 %i.mr, 4611686018427387904
  %i.mt = icmp slt i64 %i.ms, 0
  br i1 %i.mt, label %bb.ci, label %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i61.i.i, !prof !3

bb.ci:                                            ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i60.i.i"
  call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i61.i.i: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i60.i.i"
  %i.mu = shl nsw i64 %i.mr, 1
  %i.mv = getelementptr i8, ptr %i.mi, i64 %i.mu
  store ptr %i.mv, ptr %i.ly, align 8
  store ptr %i.mi, ptr %i.lv, align 8
  %.pre.i62.i.i = load ptr, ptr %i.ay, align 8
  %.phi.trans.insert.i63.i.i = getelementptr inbounds nuw i8, ptr %.pre.i62.i.i, i64 16
  %.pre38.i64.i.i = load ptr, ptr %.phi.trans.insert.i63.i.i, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i61.i.i, %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i46.i.i
  %i.mw = phi ptr [ %i.lx, %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i46.i.i ], [ %.pre38.i64.i.i, %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit.i61.i.i ] ; 10 uses
  store i32 3, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i48.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i48.i.i, align 4
  %.sroa.63.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %.sroa.04.1.i45.i.i, ptr %.sroa.63.0..sroa_idx.i49.i.i, align 8
  %.sroa.7.0..sroa_idx.i50.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store ptr %i.ls, ptr %.sroa.7.0..sroa_idx.i50.i.i, align 8
  %.sroa.8.0..sroa_idx.i51.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.lt, ptr %.sroa.8.0..sroa_idx.i51.i.i, align 8
  %.sroa.9.0..sroa_idx.i52.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  store ptr %i.ls, ptr %.sroa.9.0..sroa_idx.i52.i.i, align 8
  %.sroa.10.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 40
  store i32 %i.lu, ptr %.sroa.10.0..sroa_idx.i53.i.i, align 8
  %.sroa.11.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 44
  store i32 0, ptr %.sroa.11.0..sroa_idx.i54.i.i, align 4
  %.sroa.11.i37.sroa.4.0..sroa.11.0..sroa_idx.i54.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.11.i37.sroa.4.0..sroa.11.0..sroa_idx.i54.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.11.i37.sroa.4.i.i, i64 24, i1 false)
  %.sroa.12.0..sroa_idx.i55.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i55.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i38.i.i, i64 24, i1 false)
  %i.mx = load ptr, ptr %i.ay, align 8, !noundef !5
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !noundef !5
  %i.na = getelementptr i8, ptr %i.mz, i64 96
  store ptr %i.na, ptr %i.my, align 8
  %i.nb = load ptr, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !noundef !5
  %i.ne = load ptr, ptr %i.nb, align 8, !noundef !5
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = sdiv i64 %i.nh, 96
  %i.nj = trunc i64 %i.ni to i32                  ; 3 uses
  %i.nk = load ptr, ptr %i.bz, align 8, !noundef !5
  %i.nl = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6loader27yaml_parser_register_anchor17hea39da72ff4168c1E(ptr noundef nonnull %0, i32 noundef %i.nj, ptr noundef %i.nk)
  br i1 %i.nl, label %bb.ck, label %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.nm = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6loader25yaml_parser_load_node_add17h6245c98b5986b1b8E(ptr noundef nonnull %0, ptr %.sroa.0.025.i, ptr %.sroa.33.0.i, i32 noundef %i.nj)
  br i1 %i.nm, label %bb.cl, label %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.nn = ptrtoint ptr %.sroa.33.0.i to i64
  %i.no = ptrtoint ptr %.sroa.0.025.i to i64
  %i.np = sub i64 %i.nn, %i.no                    ; 4 uses
  %i.nq = icmp slt i64 %i.np, 8589934584
  br i1 %i.nq, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i32 1, ptr %0, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.28.i58.i.i = phi ptr [ @15, %bb.cl ], [ @14, %bb.cm ]
  %i.nr = load i8, ptr %.28.i58.i.i, align 1, !range !9, !noundef !5
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nt = icmp eq ptr %.sroa.33.0.i, %.sroa.23.0.i
  br i1 %i.nt, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.nu = add i64 %i.np, 4611686018427387904
  %i.nv = icmp slt i64 %i.nu, 0
  br i1 %i.nv, label %bb.cq, label %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit67.i.i, !prof !3

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit67.i.i: ; preds = %bb.cp
  %i.nw = shl nsw i64 %i.np, 1                    ; 2 uses
  %i.nx = call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %.sroa.0.025.i, i64 noundef %i.nw) ; 3 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 %i.np
  %i.nz = getelementptr i8, ptr %i.nx, i64 %i.nw
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit67.i.i, %bb.co
  %.sroa.33.3.i = phi ptr [ %i.ny, %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit67.i.i ], [ %.sroa.33.0.i, %bb.co ] ; 2 uses
  %.sroa.23.3.i = phi ptr [ %i.nz, %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit67.i.i ], [ %.sroa.23.0.i, %bb.co ]
  %.sroa.0.4.i = phi ptr [ %i.nx, %_ZN14unsafe_libyaml3api17yaml_stack_extend17hd2c58edb3dcd2dbfE.exit67.i.i ], [ %.sroa.0.025.i, %bb.co ]
  store i32 %i.nj, ptr %.sroa.33.3.i, align 4
  %i.oa = getelementptr i8, ptr %.sroa.33.3.i, i64 4
  br label %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i

_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i: ; preds = %bb.cr, %bb.cn, %bb.ck, %bb.cj, %bb.bz, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i
  %.sroa.33.2.i = phi ptr [ %.sroa.33.0.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i ], [ %.sroa.33.0.i, %bb.bz ], [ %.sroa.33.0.i, %bb.cn ], [ %i.oa, %bb.cr ], [ %.sroa.33.0.i, %bb.ck ], [ %.sroa.33.0.i, %bb.cj ]
  %.sroa.23.2.i = phi ptr [ %.sroa.23.0.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i ], [ %.sroa.23.0.i, %bb.bz ], [ %.sroa.23.0.i, %bb.cn ], [ %.sroa.23.3.i, %bb.cr ], [ %.sroa.23.0.i, %bb.ck ], [ %.sroa.23.0.i, %bb.cj ]
  %.sroa.0.3.i = phi ptr [ %.sroa.0.025.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i ], [ %.sroa.0.025.i, %bb.bz ], [ %.sroa.0.025.i, %bb.cn ], [ %.sroa.0.4.i, %bb.cr ], [ %.sroa.0.025.i, %bb.ck ], [ %.sroa.0.025.i, %bb.cj ] ; 2 uses
  %i.ob = phi ptr [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i39.i.i ], [ @14, %bb.bz ], [ @14, %bb.cn ], [ @15, %bb.cr ], [ @14, %bb.ck ], [ @14, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i37.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i38.i.i)
  %i.oc = load i8, ptr %i.ob, align 1, !range !9, !noundef !5
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %_ZN14unsafe_libyaml6loader25yaml_parser_load_document17h0f3318bdf36fed51E.exit, label %bb.ac

bb.cs:                                            ; preds = %bb.aa
  %i.oe = ptrtoint ptr %.sroa.33.0.i to i64
  %i.of = ptrtoint ptr %.sroa.0.025.i to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = icmp sgt i64 %i.og, 3
  br i1 %i.oh, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 64, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 104, i32 noundef 566) #20
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.oi = getelementptr i8, ptr %.sroa.33.0.i, i64 -4
  %i.oj = load i32, ptr %i.oi, align 4, !noundef !5
  %i.ok = load ptr, ptr %i.ay, align 8, !noundef !5
  %i.ol = load ptr, ptr %i.ok, align 8, !noundef !5
  %i.om = add i32 %i.oj, -1
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr [96 x i8], ptr %i.ol, i64 %i.on ; 2 uses
  %i.op = load i32, ptr %i.oo, align 8, !range !8, !noundef !5
  %i.oq = icmp eq i32 %i.op, 3
  br i1 %i.oq, label %.sink.split.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 103, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 104, i32 noundef 568) #20
  unreachable

bb.cw:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.0.2.i = phi ptr [ %.sroa.0.025.i, %bb.aa ], [ %.sroa.0.1.i, %bb.ac ]
  %i.or = load i8, ptr %i.bz, align 8, !range !9, !noundef !5
  %i.os = load ptr, ptr %i.ay, align 8, !noundef !5
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 49
  store i8 %i.or, ptr %i.ot, align 1
  %i.ou = load ptr, ptr %i.ay, align 8, !noundef !5
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ov, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  br label %_ZN14unsafe_libyaml6loader25yaml_parser_load_document17h0f3318bdf36fed51E.exit

bb.cx:                                            ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit3
  call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @44, i64 noundef 43, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 104, i32 noundef 133) #20
  unreachable

_ZN14unsafe_libyaml6loader25yaml_parser_load_document17h0f3318bdf36fed51E.exit: ; preds = %bb.z, %bb.ah, %bb.av, %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i, %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i, %bb.cw
  %.sroa.0.728.i = phi ptr [ %.sroa.0.2.i, %bb.cw ], [ %.sroa.0.025.i, %bb.ah ], [ %.sroa.0.025.i, %bb.av ], [ %.sroa.0.5.i, %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i ], [ %.sroa.0.3.i, %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i ], [ %.sroa.0.025.i, %bb.z ]
  %i.ow = phi ptr [ @15, %bb.cw ], [ @14, %_ZN14unsafe_libyaml6loader24yaml_parser_load_mapping17h98d47b165fd1de05E.exit.thread.i.i ], [ @14, %_ZN14unsafe_libyaml6loader25yaml_parser_load_sequence17hde766bcaed04ad11E.exit.thread.i.i ], [ @14, %bb.av ], [ @14, %bb.ah ], [ @14, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ox = load i8, ptr %i.ow, align 1, !range !9, !noundef !5
  %i.oy = trunc nuw i8 %i.ox to i1
  %i.oz = getelementptr inbounds i8, ptr %.sroa.0.728.i, i64 -8 ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oz, i64 noundef %i.pa, i64 noundef 8) #21
  br i1 %i.oy, label %bb.m, label %bb.cy

bb.cy:                                            ; preds = %_ZN14unsafe_libyaml6loader25yaml_parser_load_document17h0f3318bdf36fed51E.exit
  %i.pb = load ptr, ptr %i.au, align 8, !noundef !5 ; 3 uses
  %i.pc = load ptr, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %._crit_edge.i8, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.cy, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i7
  %i.pe = phi ptr [ %i.pm, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i7 ], [ %i.pb, %bb.cy ]
  %i.pf = phi ptr [ %i.pl, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i7 ], [ %i.pc, %bb.cy ]
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -40 ; 3 uses
  store ptr %i.pg, ptr %i.av, align 8
  %i.ph = load ptr, ptr %i.pg, align 8, !noundef !5 ; 2 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i7, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i4
  %i.pj = getelementptr inbounds i8, ptr %i.ph, i64 -8 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pj, i64 noundef %i.pk, i64 noundef 8) #21
  %.pre.i5 = load ptr, ptr %i.au, align 8
  %.pre6.i6 = load ptr, ptr %i.av, align 8
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i7

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i7: ; preds = %bb.cz, %.lr.ph.i4
  %i.pl = phi ptr [ %i.pg, %.lr.ph.i4 ], [ %.pre6.i6, %bb.cz ] ; 2 uses
  %i.pm = phi ptr [ %i.pe, %.lr.ph.i4 ], [ %.pre.i5, %bb.cz ] ; 3 uses
  %i.pn = icmp eq ptr %i.pm, %i.pl
  br i1 %i.pn, label %._crit_edge.i8, label %.lr.ph.i4

._crit_edge.i8:                                   ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i7, %bb.cy
  %.lcssa3.i9 = phi ptr [ %i.pb, %bb.cy ], [ %i.pm, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i7 ] ; 2 uses
  %i.po = icmp eq ptr %.lcssa3.i9, null
  br i1 %i.po, label %_ZN14unsafe_libyaml6loader26yaml_parser_delete_aliases17hd6b9fc6d1035fac8E.exit10, label %bb.da

bb.da:                                            ; preds = %._crit_edge.i8
  %i.pp = getelementptr inbounds i8, ptr %.lcssa3.i9, i64 -8 ; 2 uses
  %i.pq = load i64, ptr %i.pp, align 8, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pp, i64 noundef %i.pq, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml6loader26yaml_parser_delete_aliases17hd6b9fc6d1035fac8E.exit10

_ZN14unsafe_libyaml6loader26yaml_parser_delete_aliases17hd6b9fc6d1035fac8E.exit10: ; preds = %._crit_edge.i8, %bb.da
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %_ZN14unsafe_libyaml6loader26yaml_parser_delete_aliases17hd6b9fc6d1035fac8E.exit10, %bb.l, %bb.q, %_ZN14unsafe_libyaml6loader26yaml_parser_delete_aliases17hd6b9fc6d1035fac8E.exit
  %.sroa.0.0 = phi i1 [ false, %_ZN14unsafe_libyaml6loader26yaml_parser_delete_aliases17hd6b9fc6d1035fac8E.exit ], [ true, %bb.q ], [ true, %bb.l ], [ true, %_ZN14unsafe_libyaml6loader26yaml_parser_delete_aliases17hd6b9fc6d1035fac8E.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6loader25yaml_parser_load_node_add17h6245c98b5986b1b8E(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(address) %.0.val, ptr nofree readonly captures(address) %.16.val, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.0.val, %.16.val
  br i1 %i.a, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.16.val, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = add i32 %i.c, -1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [96 x i8], ptr %i.f, i64 %i.h ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !range !8, !noundef !5
  switch i32 %i.j, label %bb.c [
end_hunk_1
begin_hunk_2_@_ZN14unsafe_libyaml7scanner29yaml_parser_fetch_flow_scalar17h27a076f4a9d487c3E:bb.a
  br i1 %.not.i242.i, label %._crit_edge.i243.i.loopexit, label %.lr.ph.i239.i

_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245.i: ; preds = %._crit_edge.i243.i, %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre362.i, %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245_crit_edge.i ], [ %i.abp, %._crit_edge.i243.i ]
  store ptr %i.yn, ptr %i.cb, align 8
  %i.acu = load ptr, ptr %i.cd, align 8, !noundef !5
  %i.acv = ptrtoint ptr %i.acu to i64
  %i.acw = sub i64 %i.acv, %.pre-phi.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yn, i8 0, i64 %i.acw, i1 false)
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hn
  call fastcc void @_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E(ptr noundef %i.e, ptr noundef %i.bn, ptr noundef %i.bp)
  %.pre360.i = load ptr, ptr %i.bn, align 8
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hn
  %i.acx = phi ptr [ %i.abk, %bb.hn ], [ %.pre360.i, %bb.hr ] ; 2 uses
  %i.acy = getelementptr i8, ptr %i.acx, i64 1
  store ptr %i.acy, ptr %i.bn, align 8
  store i8 32, ptr %i.acx, align 1
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245.i
  store ptr %i.yj, ptr %i.bu, align 8
  %i.acz = load ptr, ptr %i.bw, align 8, !noundef !5
  %i.ada = ptrtoint ptr %i.acz to i64
  %i.adb = ptrtoint ptr %i.yj to i64
  %i.adc = sub i64 %i.ada, %i.adb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yj, i8 0, i64 %i.adc, i1 false)
  br label %bb.hg

.loopexit296.i.sink.split:                        ; preds = %bb.af, %.thread.i, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.al, %bb.an, %bb.dq, %bb.cj, %bb.fh, %bb.fl, %bb.fq, %bb.fu, %bb.fz, %bb.gd, %bb.gh, %bb.gl
  %.sink206 = phi ptr [ @167, %bb.dq ], [ @167, %bb.fh ], [ @167, %bb.gl ], [ @167, %bb.gh ], [ @167, %bb.gd ], [ @167, %bb.fz ], [ @167, %bb.fu ], [ @167, %bb.fq ], [ @167, %bb.fl ], [ @167, %bb.cj ], [ @164, %bb.an ], [ @164, %bb.al ], [ @164, %bb.ai ], [ @164, %bb.ai ], [ @164, %bb.ai ], [ @164, %bb.ai ], [ @164, %bb.ai ], [ @164, %.thread.i ], [ @164, %bb.af ]
  %.sink = phi ptr [ @168, %bb.dq ], [ @169, %bb.fh ], [ @169, %bb.gl ], [ @169, %bb.gh ], [ @169, %bb.gd ], [ @169, %bb.fz ], [ @169, %bb.fu ], [ @169, %bb.fq ], [ @169, %bb.fl ], [ @170, %bb.cj ], [ @165, %bb.ai ], [ @165, %bb.ai ], [ @165, %bb.ai ], [ @165, %bb.ai ], [ @165, %bb.ai ], [ @165, %bb.al ], [ @165, %bb.an ], [ @166, %.thread.i ], [ @166, %bb.af ]
  store i32 3, ptr %0, align 8
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink206, ptr %i.add, align 8
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ade, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.adf, align 8
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adg, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  br label %.loopexit296.i

.loopexit296.i:                                   ; preds = %bb.hg, %bb.gp, %bb.bw, %.loopexit298.i, %.thread.thread.i, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit194.i, %.loopexit.i, %bb.gy, %.thread277.i, %.loopexit296.i.sink.split, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit.i
  %i.adh = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.adi = icmp eq ptr %i.adh, null
  br i1 %i.adi, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i, label %bb.hu

bb.hu:                                            ; preds = %.loopexit296.i
  %i.adj = getelementptr inbounds i8, ptr %i.adh, i64 -8 ; 2 uses
  %i.adk = load i64, ptr %i.adj, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adj, i64 noundef %i.adk, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i: ; preds = %bb.hu, %.loopexit296.i
  %i.adl = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.adm = icmp eq ptr %i.adl, null
  br i1 %i.adm, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i, label %bb.hv

bb.hv:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i
  %i.adn = getelementptr inbounds i8, ptr %i.adl, i64 -8 ; 2 uses
  %i.ado = load i64, ptr %i.adn, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adn, i64 noundef %i.ado, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i: ; preds = %bb.hv, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i
  %i.adp = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.adq = icmp eq ptr %i.adp, null
  br i1 %i.adq, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i, label %bb.hw

bb.hw:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i
  %i.adr = getelementptr inbounds i8, ptr %i.adp, i64 -8 ; 2 uses
  %i.ads = load i64, ptr %i.adr, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adr, i64 noundef %i.ads, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i: ; preds = %bb.hw, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i
  %i.adt = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.adu = icmp eq ptr %i.adt, null
  br i1 %i.adu, label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18, label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split

bb.hx:                                            ; preds = %bb.go
  %i.adv = load i64, ptr %i.cl, align 8, !noundef !5 ; 2 uses
  %i.adw = icmp eq i64 %i.adv, -1
  br i1 %i.adw, label %bb.hy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i251.i", !prof !3

bb.hy:                                            ; preds = %bb.hx
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i251.i": ; preds = %bb.hx
  %i.adx = add nuw i64 %i.adv, 1
  store i64 %i.adx, ptr %i.cl, align 8
  %i.ady = load i64, ptr %i.cv, align 8, !noundef !5 ; 2 uses
  %i.adz = icmp eq i64 %i.ady, -1
  br i1 %i.adz, label %bb.hz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit252.i, !prof !3

bb.hz:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i251.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit252.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i251.i"
  %i.aea = add nuw i64 %i.ady, 1
  store i64 %i.aea, ptr %i.cv, align 8
  %i.aeb = load i64, ptr %i.dd, align 8, !noundef !5
  %i.aec = add i64 %i.aeb, -1
  store i64 %i.aec, ptr %i.dd, align 8
  %i.aed = getelementptr i8, ptr %i.vs, i64 1
  store ptr %i.aed, ptr %i.cm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.aee = load ptr, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.aef = load ptr, ptr %i.bn, align 8, !noundef !5
  %i.aeg = ptrtoint ptr %i.aef to i64
  %i.aeh = ptrtoint ptr %i.aee to i64
  %i.aei = sub i64 %i.aeg, %i.aeh                 ; 2 uses
  %.152.i = select i1 %1, i32 2, i32 3            ; 2 uses
  %i.aej = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i, label %bb.ia

bb.ia:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit252.i
  %i.ael = getelementptr inbounds i8, ptr %i.aej, i64 -8 ; 2 uses
  %i.aem = load i64, ptr %i.ael, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ael, i64 noundef %i.aem, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i: ; preds = %bb.ia, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit252.i
  %i.aen = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.aeo = icmp eq ptr %i.aen, null
  br i1 %i.aeo, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i, label %bb.ib

bb.ib:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i
  %i.aep = getelementptr inbounds i8, ptr %i.aen, i64 -8 ; 2 uses
  %i.aeq = load i64, ptr %i.aep, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aep, i64 noundef %i.aeq, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i: ; preds = %bb.ib, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i
  %i.aer = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.aes = icmp eq ptr %i.aer, null
  br i1 %i.aes, label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18, label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split

_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i
  %.sink211 = phi ptr [ %i.aer, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %i.adt, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %.sroa.8.116.ph = phi i32 [ %.152.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %.sroa.7.114.ph = phi i64 [ %i.aei, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %.sroa.6.112.ph = phi ptr [ %i.aee, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %.ph = phi ptr [ @15, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %i.aet = getelementptr inbounds i8, ptr %.sink211, i64 -8 ; 2 uses
  %i.aeu = load i64, ptr %i.aet, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aet, i64 noundef %i.aeu, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18

_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18: ; preds = %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i
  %.sroa.8.116 = phi i32 [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ], [ %.152.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %.sroa.8.116.ph, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split ]
  %.sroa.7.114 = phi i64 [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ], [ %i.aei, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %.sroa.7.114.ph, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split ]
  %.sroa.6.112 = phi ptr [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ], [ %i.aee, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %.sroa.6.112.ph, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split ]
  %i.aev = phi ptr [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ], [ @15, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %.ph, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aew = load i8, ptr %i.aev, align 1, !range !9, !noundef !5
  %i.aex = trunc nuw i8 %i.aew to i1
  br i1 %i.aex, label %bb.if, label %bb.ic

bb.ic:                                            ; preds = %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.aez = load ptr, ptr %i.aey, align 8, !noundef !5 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.afb = load ptr, ptr %i.afa, align 8, !noundef !5
  %i.afc = icmp eq ptr %i.aez, %i.afb
  br i1 %i.afc, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr noundef nonnull %i.afd, ptr noundef nonnull %i.afe, ptr noundef nonnull %i.aey, ptr noundef nonnull %i.afa)
  %.pre = load ptr, ptr %i.aey, align 8
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ic, %bb.id
  %i.aff = phi ptr [ %i.aez, %bb.ic ], [ %.pre, %bb.id ] ; 8 uses
  store i32 21, ptr %i.aff, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aff, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  store ptr %.sroa.6.112, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  store i64 %.sroa.7.114, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  store i32 %.sroa.8.116, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aff, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aff, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  %i.afg = load ptr, ptr %i.aey, align 8, !noundef !5
  %i.afh = getelementptr i8, ptr %i.afg, i64 80
  store ptr %i.afh, ptr %i.aey, align 8
  br label %bb.if

bb.if:                                            ; preds = %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18, %bb.ie
  %.sroa.0.0 = phi i1 [ true, %bb.ie ], [ false, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18 ], [ false, %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner29yaml_parser_fetch_more_tokens17h506b0c50f9c5b15fE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.sroa.6.i22.i = alloca [52 x i8], align 4      ; 5 uses
  %.sroa.7.i23.i = alloca [24 x i8], align 8      ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6.i.i = alloca [44 x i8], align 4        ; 5 uses
  %.sroa.7.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  %.sroa.6.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 8 uses
  %.sroa.6.32..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i22.i, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN14unsafe_libyaml7scanner28yaml_parser_fetch_next_token17h16ab2e9eabe5561dE.exit.thread, %bb.a
  %i.aa = load ptr, ptr %i.c, align 8, !noundef !5
  %i.ab = load ptr, ptr %i.d, align 8, !noundef !5
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.ae = load i32, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not17.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not17.i, label %.loopexit46, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.ai = phi ptr [ %i.aq, %bb.d ], [ %i.ah, %bb.c ]
  %i.aj = phi i32 [ %i.an, %bb.d ], [ %i.ae, %bb.c ] ; 3 uses
  %i.ak = phi ptr [ %i.ao, %bb.d ], [ %i.ad, %bb.c ] ; 3 uses
  %.sroa.01.018.i = phi ptr [ %i.ap, %bb.d ], [ %i.ag, %bb.c ] ; 7 uses
  %i.al = load i8, ptr %.sroa.01.018.i, align 8, !range !9, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.i, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i", %.lr.ph.i
  %i.an = phi i32 [ %i.bj, %bb.j ], [ %i.bf, %bb.i ], [ %i.aj, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i" ], [ %i.aj, %.lr.ph.i ] ; 2 uses
  %i.ao = phi ptr [ %i.be, %bb.j ], [ %i.be, %bb.i ], [ %i.ak, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i" ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.01.018.i, i64 40 ; 3 uses
  %i.aq = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i, label %.loopexit46, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  %i.au = load i64, ptr %i.i, align 8, !noundef !5
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load i64, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, -1025
  br i1 %i.ax, label %bb.g, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i", !prof !3

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i": ; preds = %bb.f
  %i.ay = add nuw i64 %i.aw, 1024
  %i.az = load i64, ptr %i.h, align 8, !noundef !5
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %bb.d

bb.h:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i", %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !9, !noundef !5
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN14unsafe_libyaml7scanner29yaml_parser_stale_simple_keys17h57b441a14059266dE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %.sroa.01.018.i, align 8
  %i.be = load ptr, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.bf = load i32, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %i.bg
  %i.bi = icmp eq ptr %i.bh, %.sroa.01.018.i
  br i1 %i.bi, label %bb.j, label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.bj = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.f, align 8
  br label %bb.d

_ZN14unsafe_libyaml7scanner29yaml_parser_stale_simple_keys17h57b441a14059266dE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  store i32 3, ptr %0, align 8
  store ptr @145, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr @146, ptr %i.l, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit46

.loopexit46:                                      ; preds = %bb.d, %bb.c, %_ZN14unsafe_libyaml7scanner29yaml_parser_stale_simple_keys17h57b441a14059266dE.exit
  %i.bk = phi ptr [ %i.ai, %_ZN14unsafe_libyaml7scanner29yaml_parser_stale_simple_keys17h57b441a14059266dE.exit ], [ %i.ag, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %i.bl = phi i32 [ %i.aj, %_ZN14unsafe_libyaml7scanner29yaml_parser_stale_simple_keys17h57b441a14059266dE.exit ], [ %i.ae, %bb.c ], [ %i.an, %bb.d ]
  %i.bm = phi ptr [ %i.ak, %_ZN14unsafe_libyaml7scanner29yaml_parser_stale_simple_keys17h57b441a14059266dE.exit ], [ %i.ad, %bb.c ], [ %i.ao, %bb.d ]
  %i.bn = phi ptr [ @14, %_ZN14unsafe_libyaml7scanner29yaml_parser_stale_simple_keys17h57b441a14059266dE.exit ], [ @15, %bb.c ], [ @15, %bb.d ]
  %i.bo = load i8, ptr %i.bn, align 1, !range !9, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.loopexit47, label %bb.k

bb.k:                                             ; preds = %.loopexit46
  %i.bq = sext i32 %i.bl to i64
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bq ; 2 uses
  %.not74 = icmp eq ptr %i.br, %i.bk
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.cq
  %.sroa.02.075 = phi ptr [ %i.mx, %bb.cq ], [ %i.br, %bb.k ] ; 3 uses
  %i.bs = load i8, ptr %.sroa.02.075, align 8, !range !9, !noundef !5
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.cr, label %bb.cq

._crit_edge:                                      ; preds = %bb.k, %bb.cq
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 1, ptr %i.bu, align 8
  br label %.loopexit47

.loopexit:                                        ; preds = %bb.cr, %bb.b
  %i.bv = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 1)
  br i1 %i.bv, label %bb.l, label %_ZN14unsafe_libyaml7scanner28yaml_parser_fetch_next_token17h16ab2e9eabe5561dE.exit.thread

bb.l:                                             ; preds = %.loopexit
  %i.bw = load i8, ptr %i.o, align 8, !range !9, !noundef !5
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  store i32 -1, ptr %i.p, align 8
  %i.by = load ptr, ptr %i.g, align 8, !noundef !5 ; 3 uses
  %i.bz = load ptr, ptr %i.q, align 8, !noundef !5
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = add i64 %i.ce, 4611686018427387904
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.o, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i", !prof !3

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i": ; preds = %bb.n
  %i.ch = shl nsw i64 %i.ce, 1
  %i.ci = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.cb, i64 noundef %i.ch) ; 3 uses
  %i.cj = load ptr, ptr %i.g, align 8, !noundef !5
  %i.ck = load ptr, ptr %i.e, align 8, !noundef !5
  %i.cl = ptrtoint ptr %i.cj to i64
end_hunk_2
begin_hunk_3_@_ZN14unsafe_libyaml7scanner30yaml_parser_fetch_block_scalar17h7c8e6826b67fd445E:bb.a
  %i.he = phi ptr [ %i.ha, %.preheader.i.i ], [ %i.hx, %._crit_edge.i.loopexit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr align 1 %.val60.i, i64 %i.gy, i1 false)
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.gy
  store ptr %i.hf, ptr %i.ac, align 8
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i, %.lr.ph.preheader.i.i
  %i.hg = phi ptr [ %i.hx, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i ], [ %i.ha, %.lr.ph.preheader.i.i ]
  %i.hh = phi ptr [ %i.hz, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i ], [ %i.gz, %.lr.ph.preheader.i.i ]
  %i.hi = phi ptr [ %i.hp, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.hj = phi i64 [ %i.ia, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i ], [ %i.hb, %.lr.ph.preheader.i.i ]
  %i.hk = ptrtoint ptr %i.hi to i64               ; 3 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 2 uses
  %i.hm = add i64 %i.hl, 4611686018427387904
  %i.hn = icmp slt i64 %i.hm, 0
  br i1 %i.hn, label %bb.bn, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i", !prof !3

bb.bn:                                            ; preds = %.lr.ph.i.i
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i": ; preds = %.lr.ph.i.i
  %i.ho = shl nsw i64 %i.hl, 1
  %i.hp = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.hi, i64 noundef %i.ho) ; 5 uses
  %i.hq = ptrtoint ptr %i.hh to i64
  %i.hr = sub i64 %i.hq, %i.hk                    ; 4 uses
  %i.hs = getelementptr i8, ptr %i.hp, i64 %i.hr
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hs, i8 0, i64 %i.hr, i1 false)
  %i.ht = add i64 %i.hr, 4611686018427387904
  %i.hu = icmp slt i64 %i.ht, 0
  br i1 %i.hu, label %bb.bo, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i, !prof !3

bb.bo:                                            ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i"
  %i.hv = ptrtoint ptr %i.hg to i64
  %i.hw = sub i64 %i.hv, %i.hk                    ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hp, i64 %i.hw  ; 2 uses
  %i.hy = shl nsw i64 %i.hr, 1                    ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hp, i64 %i.hy  ; 3 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %gepdiff.i = sub i64 %i.hy, %i.hw
  %.not.i.i = icmp sgt i64 %gepdiff.i, %i.gy
  br i1 %.not.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i

_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit.i: ; preds = %._crit_edge.i.i, %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre173.i, %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit_crit_edge.i ], [ %i.gx, %._crit_edge.i.i ]
  store ptr %.val60.i, ptr %i.aq, align 8
  %i.ib = load ptr, ptr %i.as, align 8, !noundef !5
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = sub i64 %i.ic, %.pre-phi.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.val60.i, i8 0, i64 %i.id, i1 false)
  %i.ie = load ptr, ptr %i.au, align 8, !noundef !5
  %i.if = load i8, ptr %i.ie, align 1, !noundef !5 ; 2 uses
  %i.ig = icmp ne i8 %i.if, 32
  %i.ih = icmp ne i8 %i.if, 9
  %.sroa.022.0.i = and i1 %i.ig, %i.ih
  br label %bb.bp

bb.bp:                                            ; preds = %.thread114.i, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit.i
  %i.ii = load ptr, ptr %i.au, align 8, !noundef !5 ; 4 uses
  %i.ij = load i8, ptr %i.ii, align 1, !noundef !5
  switch i8 %i.ij, label %.thread114.i [
    i8 13, label %bb.bq
    i8 10, label %bb.bq
    i8 -62, label %bb.br
    i8 -30, label %bb.bs
    i8 0, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bt, %bb.br, %bb.bp, %bb.bp, %bb.bp
  %i.ik = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 2)
  br i1 %i.ik, label %bb.bu, label %.critedge52.i

bb.br:                                            ; preds = %bb.bp
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %i.im = load i8, ptr %i.il, align 1, !noundef !5
  %i.in = icmp eq i8 %i.im, -123
  br i1 %i.in, label %bb.bq, label %.thread114.i

bb.bs:                                            ; preds = %bb.bp
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !noundef !5
  %i.iq = icmp eq i8 %i.ip, -128
  br i1 %i.iq, label %bb.bt, label %.thread114.i

bb.bt:                                            ; preds = %bb.bs
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.is = load i8, ptr %i.ir, align 1, !noundef !5
  %i.it = and i8 %i.is, -2
  %switch30 = icmp eq i8 %i.it, -88
  br i1 %switch30, label %bb.bq, label %.thread114.i

.thread114.i:                                     ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  call fastcc void @_ZN14unsafe_libyaml7scanner4READ17he812c9f45329f0f7E(ptr noundef nonnull %0, ptr noundef %i.f)
  %i.iu = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 1)
  br i1 %i.iu, label %bb.bp, label %.critedge52.i

bb.bu:                                            ; preds = %bb.bq
  call fastcc void @_ZN14unsafe_libyaml7scanner9READ_LINE17h88f7fbc974d67c94E(ptr noundef nonnull %0, ptr noundef %i.e)
  %i.iv = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner36yaml_parser_scan_block_scalar_breaks17h5205279b81f0800cE(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %i.d, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.b)
  br i1 %i.iv, label %.preheader.i, label %.critedge52.i

bb.bv:                                            ; preds = %bb.bd, %.preheader.i
  %cond.i = icmp eq i32 %.sroa.07.0.i, -1
  %.pre.i = load ptr, ptr %i.e, align 8           ; 3 uses
  br i1 %cond.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val59.i = load ptr, ptr %i.aj, align 8, !noundef !5
  call fastcc void @_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE(ptr noundef %i.f, ptr noundef %i.ac, ptr noundef %i.ae, ptr %.pre.i, ptr %.val59.i)
  %i.iw = icmp eq i32 %.sroa.07.0.i, 1
  br i1 %i.iw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.val.i = load ptr, ptr %i.d, align 8, !noundef !5
  %.val57.i = load ptr, ptr %i.aq, align 8, !noundef !5
  call fastcc void @_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE(ptr noundef %i.f, ptr noundef %i.ac, ptr noundef %i.ae, ptr %.val.i, ptr %.val57.i)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ix = load ptr, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.iy = load ptr, ptr %i.ac, align 8, !noundef !5
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.ix to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 2 uses
  %.56.i = select i1 %1, i32 4, i32 5             ; 2 uses
  %i.jc = icmp eq ptr %.pre.i, null
  br i1 %i.jc, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jd = getelementptr inbounds i8, ptr %.pre.i, i64 -8 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jd, i64 noundef %i.je, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i: ; preds = %bb.bz, %bb.by
  %i.jf = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16, label %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16.sink.split

_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16.sink.split: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i
  %.sink148 = phi ptr [ %i.jf, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ %i.ce, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ]
  %.sroa.8.114.ph = phi i32 [ %.56.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ]
  %.sroa.7.112.ph = phi i64 [ %i.jb, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ]
  %.sroa.6.110.ph = phi ptr [ %i.ix, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ]
  %.ph = phi ptr [ @15, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ]
  %i.jh = getelementptr inbounds i8, ptr %.sink148, i64 -8 ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jh, i64 noundef %i.ji, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16

_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16: ; preds = %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16.sink.split, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i
  %.sroa.8.114 = phi i32 [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ], [ %.56.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ %.sroa.8.114.ph, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16.sink.split ]
  %.sroa.7.112 = phi i64 [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ], [ %i.jb, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ %.sroa.7.112.ph, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16.sink.split ]
  %.sroa.6.110 = phi ptr [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ], [ %i.ix, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ %.sroa.6.110.ph, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16.sink.split ]
  %i.jj = phi ptr [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit66.i ], [ @15, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit88.i ], [ %.ph, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jk = load i8, ptr %i.jj, align 1, !range !9, !noundef !5
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !noundef !5 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !noundef !5
  %i.jq = icmp eq ptr %i.jn, %i.jp
  br i1 %i.jq, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr noundef nonnull %i.jr, ptr noundef nonnull %i.js, ptr noundef nonnull %i.jm, ptr noundef nonnull %i.jo)
  %.pre89 = load ptr, ptr %i.jm, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.jt = phi ptr [ %i.jn, %bb.ca ], [ %.pre89, %bb.cb ] ; 8 uses
  store i32 21, ptr %i.jt, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %.sroa.6.110, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store i64 %.sroa.7.112, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store i32 %.sroa.8.114, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  %i.ju = load ptr, ptr %i.jm, align 8, !noundef !5
  %i.jv = getelementptr i8, ptr %i.ju, i64 80
  store ptr %i.jv, ptr %i.jm, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.e, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16, %bb.cc
  %.sroa.0.0 = phi i1 [ true, %bb.cc ], [ false, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_block_scalar17ha8cb0c45cab6bd07E.exit.thread16 ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner30yaml_parser_fetch_plain_scalar17h2fbf55eb1c6ca10cE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 18 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.9.sroa.5 = alloca [24 x i8], align 4     ; 4 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !5
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = load i32, ptr %i.k, align 8, !noundef !5
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = icmp eq i64 %i.o, %i.m
  %i.q = zext i1 %i.p to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i8 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  %i.s = load i8, ptr %i.r, align 4, !range !9, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.x = load ptr, ptr %i.w, align 8, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.z = load ptr, ptr %i.y, align 8, !noundef !5
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv i64 %i.ac, 80
  %i.ae = add i64 %i.ad, %i.v                     ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.v
  br i1 %i.af, label %bb.e, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i", !prof !3

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i": ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !5 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -40    ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !9, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  store i8 0, ptr %i.ak, align 8
  br label %bb.i

bb.g:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  %i.an = getelementptr i8, ptr %i.aj, i64 -39
  %i.ao = load i8, ptr %i.an, align 1, !range !9, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aq = getelementptr i8, ptr %i.aj, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  store i32 3, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @145, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @146, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.04.0.i = phi ptr [ @14, %bb.h ], [ @15, %bb.f ]
  %i.av = load i8, ptr %.sroa.04.0.i, align 1, !range !9, !noundef !5
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.ai, align 8, !noundef !5 ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -40
  store i8 1, ptr %i.ay, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ax, i64 -39
  store i8 %.sroa.01.0.i, ptr %.sroa.2.0..sroa_idx.i, align 1
  %.sroa.33.0..sroa_idx.i = getelementptr i8, ptr %i.ax, i64 -32
  store i64 %i.ae, ptr %.sroa.33.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ax, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false)
  %i.az = load ptr, ptr %i.ah, align 8, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !noundef !5 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.bc
  %i.be = load ptr, ptr %i.ai, align 8, !noundef !5
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.k, label %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = add i32 %i.bb, -1
  store i32 %i.bg, ptr %i.ba, align 8
  br label %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit

_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit: ; preds = %bb.j, %bb.k, %bb.c, %bb.i
  %i.bh = phi ptr [ @14, %bb.i ], [ @15, %bb.c ], [ @15, %bb.k ], [ @15, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.bi = load i8, ptr %i.bh, align 1, !range !9, !noundef !5
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ck, label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit
  store i8 0, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bl = load i32, ptr %i.bk, align 8, !noundef !5
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  %i.bn = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 24, i64 noundef 8)
  br i1 %i.bn, label %bb.n, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.bo = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #21 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.o, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i, !prof !3

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i: ; preds = %bb.n
  store i64 24, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  store ptr %i.bq, ptr %i.f, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 12 uses
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bo, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 11 uses
  store ptr %i.bs, ptr %i.bt, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.bu = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 24, i64 noundef 8)
  br i1 %i.bu, label %bb.q, label %bb.p, !prof !4

bb.p:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.q:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.bv = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #21 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.r, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit41.i, !prof !3

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #20
end_hunk_3
begin_hunk_4_@_ZN14unsafe_libyaml7scanner30yaml_parser_fetch_plain_scalar17h2fbf55eb1c6ca10cE:bb.a
_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i72.i: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i71.i"
  %i.lw = ptrtoint ptr %i.lh to i64
  %i.lx = sub i64 %i.lw, %i.ll                    ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lq, i64 %i.lx  ; 2 uses
  %i.lz = shl nsw i64 %i.ls, 1                    ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lq, i64 %i.lz  ; 3 uses
  %i.mb = ptrtoint ptr %i.ma to i64
  %gepdiff130.i = sub i64 %i.lz, %i.lx
  %.not.i73.i = icmp sgt i64 %gepdiff130.i, %i.kz
  br i1 %.not.i73.i, label %._crit_edge.i74.loopexit.i, label %.lr.ph.i70.i

_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit76.i: ; preds = %._crit_edge.i74.i, %bb.bt
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.val35.i, i8 0, i64 %i.eh, i1 false)
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bs
  %i.mc = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.md = ptrtoint ptr %i.kw to i64
  %i.me = ptrtoint ptr %i.mc to i64               ; 2 uses
  %i.mf = sub i64 %i.md, %i.me                    ; 4 uses
  %i.mg = add i64 %i.mf, 4611686018427387904
  %i.mh = icmp slt i64 %i.mg, 0
  br i1 %i.mh, label %bb.bx, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i, !prof !3

bb.bx:                                            ; preds = %bb.bw
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i: ; preds = %bb.bw
  %i.mi = shl nsw i64 %i.mf, 1                    ; 2 uses
  %i.mj = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.mc, i64 noundef %i.mi) ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 %i.mf
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.mk, i8 0, i64 %i.mf, i1 false)
  %i.ml = ptrtoint ptr %i.ku to i64
  %i.mm = sub i64 %i.ml, %i.me
  %i.mn = getelementptr i8, ptr %i.mj, i64 %i.mm
  %i.mo = getelementptr i8, ptr %i.mj, i64 %i.mi
  store ptr %i.mo, ptr %i.bt, align 8
  store ptr %i.mj, ptr %i.f, align 8
  br label %bb.by

bb.by:                                            ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i, %bb.bs
  %i.mp = phi ptr [ %i.ku, %bb.bs ], [ %i.mn, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i ] ; 2 uses
  %i.mq = getelementptr i8, ptr %i.mp, i64 1
  store ptr %i.mq, ptr %i.br, align 8
  store i8 32, ptr %i.mp, align 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit76.i
  %.val36262.i = phi ptr [ %.val36263.i, %bb.by ], [ %.val35.i, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit76.i ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dz, i8 0, i64 %i.ee, i1 false)
  br label %bb.bj

.loopexit.i.sink.split:                           ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ay
  %.sink = phi ptr [ @179, %bb.ay ], [ @178, %bb.ao ], [ @178, %bb.ao ], [ @178, %bb.ao ], [ @178, %bb.ao ], [ @178, %bb.ao ], [ @178, %bb.ao ]
  store i32 3, ptr %0, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @177, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ms, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bh, %.thread95.i, %bb.bj, %bb.bc, %.thread118.i, %.loopexit.i.sink.split, %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit43.i
  %i.mv = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i, label %bb.ca

bb.ca:                                            ; preds = %.loopexit.i
  %i.mx = getelementptr inbounds i8, ptr %i.mv, i64 -8 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mx, i64 noundef %i.my, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i: ; preds = %bb.ca, %.loopexit.i
  %i.mz = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit77.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i
  %i.nb = getelementptr inbounds i8, ptr %i.mz, i64 -8 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nb, i64 noundef %i.nc, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit77.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit77.i: ; preds = %bb.cb, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i
  %i.nd = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit77.i
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -8 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nf, i64 noundef %i.ng, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i: ; preds = %bb.cc, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit77.i
  %i.nh = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15, label %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15.sink.split

.thread112.i:                                     ; preds = %bb.ah, %bb.bg, %.thread.i, %bb.af, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.z, %bb.ar, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.ap, %.thread462.i, %.thread462.i, %.thread462.i, %.thread462.i, %.thread462.i, %bb.ai
  %.sroa.02.1.ph.i = phi i8 [ %.sroa.02.2.i, %bb.ar ], [ %.sroa.02.2.i, %bb.ai ], [ %.sroa.02.2.i, %.thread462.i ], [ %.sroa.02.2.i, %.thread462.i ], [ %.sroa.02.2.i, %.thread462.i ], [ %.sroa.02.2.i, %.thread462.i ], [ %.sroa.02.2.i, %.thread462.i ], [ %.sroa.02.2.i, %bb.ap ], [ %.sroa.02.2.i, %bb.as ], [ %.sroa.02.2.i, %bb.as ], [ %.sroa.02.2.i, %bb.as ], [ %.sroa.02.2.i, %bb.as ], [ %.sroa.02.2.i, %bb.as ], [ %.sroa.02.0277.i, %bb.ac ], [ %.sroa.02.0277.i, %bb.ah ], [ %.sroa.02.0277.i, %bb.z ], [ %.sroa.02.0277.i, %bb.af ], [ %.sroa.02.0277.i, %bb.ac ], [ %.sroa.02.0277.i, %.thread.i ], [ %.sroa.02.3.i, %bb.bg ], [ %.sroa.02.0277.i, %bb.ac ], [ %.sroa.02.0277.i, %bb.ac ], [ %.sroa.02.0277.i, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.nj = load ptr, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.nk = load ptr, ptr %i.br, align 8, !noundef !5
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 2 uses
  %i.no = trunc nuw i8 %.sroa.02.1.ph.i to i1
  br i1 %i.no, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %.thread112.i
  %i.np = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit80.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nr = getelementptr inbounds i8, ptr %i.np, i64 -8 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nr, i64 noundef %i.ns, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit80.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit80.i: ; preds = %bb.ce, %bb.cd
  %i.nt = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit80.i
  %i.nv = getelementptr inbounds i8, ptr %i.nt, i64 -8 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nv, i64 noundef %i.nw, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i: ; preds = %bb.cf, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit80.i
  %i.nx = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15, label %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15.sink.split

bb.cg:                                            ; preds = %.thread112.i
  store i8 1, ptr %i.r, align 4
  br label %bb.cd

_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15.sink.split: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i
  %.sink260 = phi ptr [ %i.nx, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i ], [ %i.nh, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i ]
  %.sroa.7.113.ph = phi i64 [ %i.nn, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i ]
  %.sroa.6.111.ph = phi ptr [ %i.nj, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i ]
  %.ph = phi ptr [ @15, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i ], [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i ]
  %i.nz = getelementptr inbounds i8, ptr %.sink260, i64 -8 ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nz, i64 noundef %i.oa, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15

_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15: ; preds = %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15.sink.split, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i
  %.sroa.7.113 = phi i64 [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i ], [ %i.nn, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i ], [ %.sroa.7.113.ph, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15.sink.split ]
  %.sroa.6.111 = phi ptr [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i ], [ %i.nj, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i ], [ %.sroa.6.111.ph, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15.sink.split ]
  %i.ob = phi ptr [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit78.i ], [ @15, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit81.i ], [ %.ph, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.oc = load i8, ptr %i.ob, align 1, !range !9, !noundef !5
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.of = load ptr, ptr %i.oe, align 8, !noundef !5 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !noundef !5
  %i.oi = icmp eq ptr %i.of, %i.oh
  br i1 %i.oi, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr noundef nonnull %i.oj, ptr noundef nonnull %i.ok, ptr noundef nonnull %i.oe, ptr noundef nonnull %i.og)
  %.pre164 = load ptr, ptr %i.oe, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %i.ol = phi ptr [ %i.of, %bb.ch ], [ %.pre164, %bb.ci ] ; 8 uses
  store i32 21, ptr %i.ol, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store ptr %.sroa.6.111, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  store i64 %.sroa.7.113, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  %i.om = load ptr, ptr %i.oe, align 8, !noundef !5
  %i.on = getelementptr i8, ptr %i.om, i64 80
  store ptr %i.on, ptr %i.oe, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15, %bb.cj
  %.sroa.0.0 = phi i1 [ true, %bb.cj ], [ false, %_ZN14unsafe_libyaml7scanner29yaml_parser_scan_plain_scalar17h4c69e2b0f474c42aE.exit.thread15 ], [ false, %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner36yaml_parser_fetch_document_indicator17h212ca33588268a59E(ptr nofree noundef captures(none) %0, i32 noundef range(i32 5, 7) %1) unnamed_addr #0 {
bb.a:
  %.sroa.6.i = alloca [52 x i8], align 4          ; 5 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.6 = alloca [52 x i8], align 4            ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.preheader.i, label %_ZN14unsafe_libyaml7scanner25yaml_parser_unroll_indent17he45bcbfed113d821E.exit

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !noundef !5
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.lr.ph.i, label %_ZN14unsafe_libyaml7scanner25yaml_parser_unroll_indent17he45bcbfed113d821E.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %.sroa.6.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.pre.i = load ptr, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.o = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.t, %bb.d ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.i, i8 0, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.p = load ptr, ptr %i.k, align 8, !noundef !5
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
  %.pre2.i = load ptr, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.o, %bb.b ], [ %.pre2.i, %bb.c ] ; 3 uses
  store i32 9, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.6.i, i64 52, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false)
  %i.s = load ptr, ptr %i.j, align 8, !noundef !5
  %i.t = getelementptr i8, ptr %i.s, i64 80       ; 2 uses
  store ptr %i.t, ptr %i.j, align 8
  %i.u = load ptr, ptr %i.n, align 8, !noundef !5
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  store ptr %i.v, ptr %i.n, align 8
  %i.w = load i32, ptr %i.v, align 4, !noundef !5 ; 2 uses
  store i32 %i.w, ptr %i.f, align 8
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.b, label %_ZN14unsafe_libyaml7scanner25yaml_parser_unroll_indent17he45bcbfed113d821E.exit

_ZN14unsafe_libyaml7scanner25yaml_parser_unroll_indent17he45bcbfed113d821E.exit: ; preds = %bb.d, %bb.a, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = load ptr, ptr %i.y, align 8, !noundef !5 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -40     ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !9, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN14unsafe_libyaml7scanner25yaml_parser_unroll_indent17he45bcbfed113d821E.exit
  store i8 0, ptr %i.aa, align 8
  br label %bb.h

bb.f:                                             ; preds = %_ZN14unsafe_libyaml7scanner25yaml_parser_unroll_indent17he45bcbfed113d821E.exit
  %i.ad = getelementptr i8, ptr %i.z, i64 -39
  %i.ae = load i8, ptr %i.ad, align 1, !range !9, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.z, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  store i32 3, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @145, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @146, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.02.0 = phi ptr [ @14, %bb.g ], [ @15, %bb.e ]
  %i.am = load i8, ptr %.sroa.02.0, align 1, !range !9, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.an, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i8 0, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5 ; 4 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = and i8 %i.as, -32
  %i.av = icmp eq i8 %i.au, -64
  br i1 %i.av, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.o, %bb.n, %bb.j, %bb.i
  %.sroa.0.0.i = phi i64 [ 3, %bb.n ], [ 1, %bb.i ], [ 2, %bb.j ], [ %..i, %bb.o ] ; 2 uses
  %i.aw = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.0.0.i             ; 4 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.l, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i", !prof !3

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i": ; preds = %bb.k
  store i64 %i.ax, ptr %i.ap, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5 ; 4 uses
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.m, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit, !prof !3

bb.m:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.bc = and i8 %i.as, -16
  %i.bd = icmp eq i8 %i.bc, -32
  br i1 %i.bd, label %bb.k, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = and i8 %i.as, -8
  %i.bf = icmp eq i8 %i.be, -16
  %..i = select i1 %i.bf, i64 4, i64 0
  br label %bb.k

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  %i.bg = add nuw i64 %i.ba, 1                    ; 2 uses
  store i64 %i.bg, ptr %i.az, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5 ; 3 uses
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr i8, ptr %i.ar, i64 %.sroa.0.0.i ; 3 uses
  store ptr %i.bk, ptr %i.aq, align 8
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !5 ; 4 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit
  %i.bn = and i8 %i.bl, -32
  %i.bo = icmp eq i8 %i.bn, -64
  br i1 %i.bo, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.u, %bb.t, %bb.p, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit
  %.sroa.0.0.i6 = phi i64 [ 3, %bb.t ], [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit ], [ 2, %bb.p ], [ %..i5, %bb.u ] ; 2 uses
  %i.bp = add i64 %.sroa.0.0.i6, %i.ax            ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %i.ax
  br i1 %i.bq, label %bb.r, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i7", !prof !3

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable
end_hunk_4
