Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.01?download=true
inline.NumInlined: 778
inline.NumDeleted: 277
begin_hunk_0_@_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn:bb.a
  %.val.i.i.i.i = load i32, ptr %i.ag, align 4, !range !1962, !alias.scope !1963, !noalias !1966, !noundef !4 ; 2 uses
  %.sroa.1016.sroa.0.0.extract.trunc17.i = trunc i32 %.val.i.i.i.i to i8
  %.sroa.1016.sroa.6.0.extract.shift18.i = and i32 %.val.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !range !1968, !alias.scope !1969, !noalias !1972, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i.i.i = load i32, ptr %i.aj, align 4, !range !1962, !alias.scope !1969, !noalias !1972, !noundef !4
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %i.al = load i16, ptr %i.ak, align 4, !alias.scope !1951, !noalias !1954
  %.sroa.013.sroa.7.0.extract.trunc.i = zext i16 %i.al to i32
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12
  %i.an = load i8, ptr %i.am, align 4, !range !1974, !alias.scope !1975, !noalias !1978, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 13
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !1975, !noalias !1978
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !1975, !noalias !1978, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i3.i.i = load i32, ptr %i.as, align 4, !range !1962, !alias.scope !1975, !noalias !1978, !noundef !4
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i32 %i.ar to i8
  %.sroa.1016.sroa.6.0.extract.shift.i = and i32 %i.ar, -256
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i
  %.sroa.013.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ %.val.i.i.i, %bb.g ], [ %.sroa.013.sroa.7.0.extract.trunc.i, %bb.h ], [ %.val.i3.i.i, %bb.i ]
  %.sroa.1016.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1016.sroa.6.0.extract.shift18.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.1016.sroa.6.0.extract.shift.i, %bb.i ]
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc17.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ %i.ai, %bb.g ], [ undef, %bb.h ], [ %.sroa.1016.sroa.0.0.extract.trunc.i, %bb.i ]
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.ap, %bb.i ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.an, %bb.i ]
  %.sink.i.i = phi i8 [ %i.x, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ]
  %.sroa.013.sroa.0.0.i = load i32, ptr %.sroa.012.047.i, align 4, !range !1962, !alias.scope !1951, !noalias !1954, !noundef !4
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.045.i ; 4 uses
  %.sroa.013.sroa.7.0.insert.ext.i = zext i32 %.sroa.013.sroa.7.0.i to i64
  %.sroa.013.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.013.sroa.7.0.insert.ext.i, 32
  %.sroa.013.sroa.0.0.insert.ext.i = zext i32 %.sroa.013.sroa.0.0.i to i64
  %.sroa.013.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.013.sroa.7.0.insert.shift.i, %.sroa.013.sroa.0.0.insert.ext.i
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i32
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1016.sroa.6.sroa.0.0.i, %.sroa.1016.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store i64 %.sroa.013.sroa.0.0.insert.insert.i, ptr %i.at, align 4, !noalias !1961
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.1016.sroa.0.0.insert.insert.i, ptr %.sroa.430.0..sroa_idx.i, align 4, !noalias !1961
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.531.0..sroa_idx.i, align 4, !noalias !1961
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 %.sink.i.i, ptr %.sroa.632.0..sroa_idx.i, align 4, !noalias !1961
  %i.au = icmp eq i64 %i.s, 0
  br i1 %i.au, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1961
  unreachable

bb.k:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.045.i, ptr %i.p, align 8, !noalias !1948
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.l unwind label %bb.j, !noalias !1961

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit: ; preds = %.lr.ph.i, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !1948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1948
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1983
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1983
  %i.h = load i64, ptr %i.b, align 8, !range !706, !noalias !1983, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1950, !noalias !1983, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !1913

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1983
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !1983
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1983, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1983
  store i64 %i.k, ptr %i.c, align 8, !noalias !1983
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1983
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.014.074.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.v, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 22 uses
  %.sroa.7.071.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.070.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.t, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ]
  %i.t = add i64 %.sroa.10.070.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.014.074.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 32
  %i.w = add nuw nsw i64 %.sroa.7.071.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  %i.x = load i32, ptr %.sroa.014.074.i, align 8, !range !619, !alias.scope !1988, !noalias !1989, !noundef !4 ; 2 uses
  switch i32 %i.x, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  %i.z = load i32, ptr %i.y, align 8, !range !625, !alias.scope !1994, !noalias !1995, !noundef !4
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !1997, !alias.scope !1994, !noalias !1995, !noundef !4
  %i.ae = load ptr, ptr %i.ab, align 8, !alias.scope !1994, !noalias !1995, !nonnull !4, !noundef !4 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1998, !noundef !4 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ah, ptr %i.ae, align 8, !noalias !1998
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, !prof !1913

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !range !1997, !alias.scope !1999, !noalias !2002, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !1999, !noalias !2002, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = invoke noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.am)
          to label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i unwind label %bb.s, !noalias !2004

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %.val2.i.i.i.i.i = load i32, ptr %i.aj, align 4, !range !1962, !alias.scope !2005, !noalias !2008, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !2005, !noalias !2008
  %i.aq = inttoptr i64 %.val1.i.i.i.i.i to ptr
  %.sroa.846.sroa.0.0.extract.trunc.i.i = trunc i32 %storemerge.i.i.i.i to i8
  %2 = zext i32 %.val2.i.i.i.i.i to i64
  %3 = shl nuw i64 %2, 32
  %i.ar = and i32 %storemerge.i.i.i.i, -256
  br label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i, %bb.f
  %.sroa.10.0.i.i = phi i8 [ %i.al, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ undef, %bb.f ]
  %.sroa.846.sroa.0.0.i.i = phi i8 [ %.sroa.846.sroa.0.0.extract.trunc.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ %i.ad, %bb.f ]
  %.sroa.846.sroa.5.sroa.0.0.i.i = phi i32 [ %i.ar, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ 0, %bb.f ]
  %.sroa.545.0.i.i = phi ptr [ %i.aq, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ %i.ae, %bb.f ]
  %.sroa.517.sroa.0.4.insert.insert.i = phi i64 [ %3, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ 1, %bb.f ]
  %i.as = ptrtoint ptr %.sroa.545.0.i.i to i64
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.av = load i8, ptr %i.au, align 8, !range !38, !alias.scope !1988, !noalias !1989, !noundef !4 ; 2 uses
  %.not25.i.i = icmp eq i8 %i.av, 2
  br i1 %.not25.i.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !range !2010, !alias.scope !1988, !noalias !1989, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 12
  %i.az = load i8, ptr %i.ay, align 4, !range !1968, !alias.scope !1988, !noalias !1989, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !alias.scope !1988, !noalias !1989, !noundef !4
  %.sroa.517.sroa.0.0.insert.ext.i = zext i32 %i.bb to i64
  %.sroa.517.sroa.0.4.insert.ext27.i = zext nneg i8 %i.az to i64
  %.sroa.517.sroa.0.4.insert.shift28.i = shl nuw nsw i64 %.sroa.517.sroa.0.4.insert.ext27.i, 32
  %.sroa.517.sroa.0.4.insert.insert30.i = or disjoint i64 %.sroa.517.sroa.0.4.insert.shift28.i, %.sroa.517.sroa.0.0.insert.ext.i
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !76, !alias.scope !1988, !noalias !1989, !noundef !4
  %.not.i.i = icmp eq i64 %i.bd, -1
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.be = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %.noexc12.i unwind label %bb.s, !noalias !2004 ; 2 uses

.noexc12.i:                                       ; preds = %bb.m
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  %i.bh = ptrtoint ptr %i.bf to i64
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.n:                                             ; preds = %bb.j
  %.val1.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !2011, !noalias !2014
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !range !1968, !alias.scope !2011, !noalias !2014, !noundef !4
  %.sroa.09.sroa.5.0.insert.ext.i.i = zext nneg i8 %i.bj to i64
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2016
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %.noexc13.i unwind label %bb.s, !noalias !2004

.noexc13.i:                                       ; preds = %bb.o
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !2016
  %.sroa.48.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !2016
  %.sroa.48.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2016
  %.sroa.48.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2016
  %.sroa.48.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2016
  %.sroa.48.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !2016
  %.sroa.48.sroa.8.0.copyload.i.i = load i16, ptr %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2016
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 28
  %i.bm = load i8, ptr %i.bl, align 4, !range !1974, !alias.scope !2017, !noalias !2020, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 29
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !2017, !noalias !2020
  %.val2.i.i.i = load i32, ptr %i.bk, align 8, !range !1962, !alias.scope !2017, !noalias !2020, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !alias.scope !2017, !noalias !2020, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 20
  %.val.i26.i.i = load i32, ptr %i.br, align 4, !range !1962, !alias.scope !2017, !noalias !2020, !noundef !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc13.i
  %.sroa.53.sroa.9.0.i.i = phi i16 [ undef, %bb.p ], [ %.sroa.48.sroa.8.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.8.0.i.i = phi i8 [ %i.bo, %bb.p ], [ %.sroa.48.sroa.7.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.7.0.i.i = phi i8 [ %i.bm, %bb.p ], [ %.sroa.48.sroa.6.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.6.0.i.i = phi i32 [ %i.bq, %bb.p ], [ %.sroa.48.sroa.5.0.copyload.i.i, %.noexc13.i ] ; 2 uses
  %.sroa.53.sroa.5.0.i.i = phi i32 [ %.val.i26.i.i, %bb.p ], [ %.sroa.48.sroa.4.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.0.0.i.i = phi i32 [ %.val2.i.i.i, %bb.p ], [ %.sroa.48.sroa.0.0.copyload.i.i, %.noexc13.i ]
  %.sroa.01.0.i.i = phi i64 [ -1, %bb.p ], [ %.sroa.07.0.copyload.i.i, %.noexc13.i ]
  %.sroa.11.sroa.0.0.insert.ext.i = zext i32 %.sroa.53.sroa.0.0.i.i to i64
  %.sroa.11.sroa.0.4.insert.ext.i = zext i32 %.sroa.53.sroa.5.0.i.i to i64
  %.sroa.11.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.11.sroa.0.4.insert.ext.i, 32
  %.sroa.11.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.11.sroa.0.4.insert.shift.i, %.sroa.11.sroa.0.0.insert.ext.i
  %.sroa.15.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.53.sroa.6.0.i.i to i8
  %.sroa.15.sroa.6.0.extract.shift.i = and i32 %.sroa.53.sroa.6.0.i.i, -256
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.q, %bb.n, %.noexc12.i, %bb.k, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  %.sroa.517.sroa.0.0.i = phi i64 [ %.sroa.517.sroa.0.4.insert.insert.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.01.0.i.i, %bb.q ], [ %.sroa.517.sroa.0.4.insert.insert30.i, %bb.k ], [ %i.bh, %.noexc12.i ], [ %.val1.i.i.i, %bb.n ]
  %.sroa.11.sroa.0.0.i = phi i64 [ %i.as, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.11.sroa.0.4.insert.insert.i, %bb.q ], [ undef, %bb.k ], [ %i.bg, %.noexc12.i ], [ %.sroa.09.sroa.5.0.insert.ext.i.i, %bb.n ]
  %.sroa.15.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.846.sroa.5.sroa.0.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.15.sroa.6.0.extract.shift.i, %bb.q ], [ 0, %bb.k ], [ 0, %.noexc12.i ], [ 0, %bb.n ]
  %.sroa.15.sroa.0.0.i = phi i8 [ %.sroa.846.sroa.0.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.15.sroa.0.0.extract.trunc.i, %bb.q ], [ undef, %bb.k ], [ %i.av, %.noexc12.i ], [ 2, %bb.n ]
  %.sroa.21.0.i = phi i16 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.53.sroa.9.0.i.i, %bb.q ], [ undef, %bb.k ], [ undef, %.noexc12.i ], [ undef, %bb.n ]
  %.sroa.20.0.i = phi i8 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.53.sroa.8.0.i.i, %bb.q ], [ undef, %bb.k ], [ undef, %.noexc12.i ], [ undef, %bb.n ]
  %.sroa.18.0.i = phi i8 [ %.sroa.10.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.53.sroa.7.0.i.i, %bb.q ], [ undef, %bb.k ], [ undef, %.noexc12.i ], [ undef, %bb.n ]
  %.sroa.416.0.i = phi i32 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.q ], [ %i.ax, %bb.k ], [ undef, %.noexc12.i ], [ undef, %bb.n ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.071.i ; 8 uses
  %.sroa.15.sroa.0.0.insert.ext.i = zext i8 %.sroa.15.sroa.0.0.i to i32
  %.sroa.15.sroa.0.0.insert.insert.i = or i32 %.sroa.15.sroa.6.sroa.0.0.i, %.sroa.15.sroa.0.0.insert.ext.i
  store i32 %i.x, ptr %i.bs, align 8, !noalias !2004
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %.sroa.416.0.i, ptr %.sroa.448.0..sroa_idx.i, align 4, !noalias !2004
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.sroa.517.sroa.0.0.i, ptr %.sroa.549.0..sroa_idx.i, align 8, !noalias !2004
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.sroa.11.sroa.0.0.i, ptr %.sroa.650.0..sroa_idx.i, align 8, !noalias !2004
  %.sroa.751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i32 %.sroa.15.sroa.0.0.insert.insert.i, ptr %.sroa.751.0..sroa_idx.i, align 8, !noalias !2004
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  store i8 %.sroa.18.0.i, ptr %.sroa.852.0..sroa_idx.i, align 4, !noalias !2004
  %.sroa.953.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 29
  store i8 %.sroa.20.0.i, ptr %.sroa.953.0..sroa_idx.i, align 1, !noalias !2004
  %.sroa.1054.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 30
  store i16 %.sroa.21.0.i, ptr %.sroa.1054.0..sroa_idx.i, align 2, !noalias !2004
  %i.bt = icmp eq i64 %i.t, 0
  br i1 %i.bt, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %bb.c

bb.r:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2004
  unreachable

bb.s:                                             ; preds = %bb.o, %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.071.i, ptr %i.q, align 8, !noalias !1983
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.t unwind label %bb.r, !noalias !2004

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.c, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !1983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1983
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [248 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2022
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 37191016277640226) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 248), !noalias !2022
  %i.h = load i64, ptr %i.a, align 8, !range !706, !noalias !2022, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1950, !noalias !2022, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !1913

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2022
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2022
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2022, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2022
  store i64 %i.k, ptr %i.c, align 8, !noalias !2022
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2022
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [248 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2022
  invoke void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4attr9AttributeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !2026

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 248
  %i.x = getelementptr inbounds nuw [248 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.x, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false), !noalias !2026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2022
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2026
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2022
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.g unwind label %bb.e, !noalias !2026

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2022
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2028
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !2028
  %i.h = load i64, ptr %i.a, align 8, !range !706, !noalias !2028, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1950, !noalias !2028, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !1913

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2028
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2028
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2028, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2028
  store i64 %i.k, ptr %i.c, align 8, !noalias !2028
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2028
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2028
  invoke void @_RNvXs4_NtCsgbWeKYPjk8w_3syn5errorNtB5_12ErrorMessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !2032

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !2032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2028
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2032
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2028
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.g unwind label %bb.e, !noalias !2032

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2028
  ret void
}

end_hunk_0
