Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.13?download=true
inline.NumInlined: 525
inline.NumDeleted: 159
begin_hunk_0_@_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit:bb.a
bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %0) unnamed_addr #0 {
bb.a:
  br label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit

_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit: ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge, %bb.a
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge ] ; 6 uses
  %i.a = load i64, ptr %.sroa.0.0, align 8, !range !422, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %.loopexit.loopexit
    i64 1, label %bb.c
    i64 2, label %.loopexit.loopexit
    i64 3, label %bb.d
    i64 4, label %.loopexit.loopexit
    i64 5, label %.loopexit.loopexit
    i64 6, label %.loopexit.loopexit
    i64 7, label %.loopexit.loopexit
    i64 8, label %bb.l
    i64 9, label %bb.q
    i64 10, label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge.sink.split
    i64 11, label %.loopexit.loopexit
    i64 12, label %bb.r
    i64 13, label %.loopexit.loopexit
    i64 14, label %.loopexit.loopexit
  ]

bb.b:                                             ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit
  unreachable

bb.c:                                             ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit.loopexit, label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge

bb.d:                                             ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.i = tail call noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE4lastB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h), !noalias !937 ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !936

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.i, align 8, !range !221, !noalias !937, !noundef !5
  %i.k = icmp sgt i64 %i.j, -1
  br i1 %i.k, label %bb.g, label %.loopexit.loopexit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20, !noalias !937
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i), !noalias !940 ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !936

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %i.l, align 8, !range !30, !noalias !940, !noundef !5 ; 2 uses
  %i.n = xor i64 %i.m, -9223372036854775808
  %i.o = icmp slt i64 %i.m, 0
  %i.p = select i1 %i.o, i64 %i.n, i64 2
  switch i64 %i.p, label %bb.j [
    i64 0, label %.loopexit.loopexit
    i64 1, label %.loopexit
    i64 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !940
  unreachable

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !940, !noundef !5 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.r, null
  br i1 %.not2.i.i, label %.loopexit.loopexit, label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge

bb.l:                                             ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.t = tail call noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s), !noalias !943 ; 3 uses
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %bb.n, label %bb.m, !prof !936

bb.m:                                             ; preds = %bb.l
  %i.u = load i64, ptr %i.t, align 8, !range !30, !noalias !943, !noundef !5 ; 2 uses
  %i.v = xor i64 %i.u, -9223372036854775808
  %i.w = icmp slt i64 %i.u, 0
  %i.x = select i1 %i.w, i64 %i.v, i64 2
  switch i64 %i.x, label %bb.o [
    i64 0, label %.loopexit.loopexit
    i64 1, label %.loopexit
    i64 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !943
  unreachable

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !noalias !943, !noundef !5 ; 2 uses
  %.not2.i = icmp eq ptr %i.z, null
  br i1 %.not2.i, label %.loopexit.loopexit, label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge

bb.q:                                             ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit
  br label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge.sink.split

_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge.sink.split: ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %bb.q
  %.sink43 = phi i64 [ 40, %bb.q ], [ 72, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sink43
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  br label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge

_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge: ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge.sink.split, %bb.c, %bb.k, %bb.p, %bb.y
  %.sroa.0.0.be = phi ptr [ %i.z, %bb.p ], [ %i.g, %bb.c ], [ %i.r, %bb.k ], [ %i.am, %bb.y ], [ %i.ab, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge.sink.split ]
  br label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit

bb.r:                                             ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.ad = tail call noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE4lastB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac), !noalias !946 ; 3 uses
  %.not.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i9, label %bb.t, label %bb.s, !prof !936

bb.s:                                             ; preds = %bb.r
  %i.ae = load i64, ptr %i.ad, align 8, !range !221, !noalias !946, !noundef !5
  %i.af = icmp sgt i64 %i.ae, -1
  br i1 %i.af, label %bb.u, label %.loopexit.loopexit

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20, !noalias !946
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ag = tail call noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad), !noalias !949 ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i11, label %bb.w, label %bb.v, !prof !936

bb.v:                                             ; preds = %bb.u
  %i.ah = load i64, ptr %i.ag, align 8, !range !30, !noalias !949, !noundef !5 ; 2 uses
  %i.ai = xor i64 %i.ah, -9223372036854775808
  %i.aj = icmp slt i64 %i.ah, 0
  %i.ak = select i1 %i.aj, i64 %i.ai, i64 2
  switch i64 %i.ak, label %bb.x [
    i64 0, label %.loopexit.loopexit
    i64 1, label %.loopexit
    i64 2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !949
  unreachable

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !949, !noundef !5 ; 2 uses
  %.not2.i.i12 = icmp eq ptr %i.am, null
  br i1 %.not2.i.i12, label %.loopexit.loopexit, label %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit.backedge

.loopexit.loopexit:                               ; preds = %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit, %bb.c, %bb.h, %bb.e, %bb.m, %bb.v, %bb.s, %bb.k, %bb.p, %bb.y
  %.sroa.07.0.ph = phi i1 [ false, %bb.y ], [ false, %bb.p ], [ true, %bb.v ], [ false, %bb.s ], [ false, %bb.k ], [ true, %bb.h ], [ false, %bb.e ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ], [ true, %bb.m ], [ false, %bb.c ], [ false, %_RNvNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path19last_type_in_bounds.exit ]
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.m, %bb.h, %.loopexit.loopexit
  %.sroa.07.0 = phi i1 [ %.sroa.07.0.ph, %.loopexit.loopexit ], [ false, %bb.h ], [ false, %bb.m ], [ false, %bb.v ]
  ret i1 %.sroa.07.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10parse_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(168) %2, i8 noundef range(i8 0, 14) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [168 x i8], align 8               ; 4 uses
  %i.g = alloca [168 x i8], align 8               ; 4 uses
  %i.h = alloca [168 x i8], align 8               ; 9 uses
  %i.i = alloca [168 x i8], align 8               ; 9 uses
  %i.j = alloca [168 x i8], align 8               ; 13 uses
  %i.k = alloca [248 x i8], align 8               ; 5 uses
  %i.l = alloca [168 x i8], align 8               ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %4 = alloca [24 x i8], align 8                  ; 7 uses
  %.sroa.433.sroa.0 = alloca [24 x i8], align 8   ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.625 = alloca [24 x i8], align 8          ; 6 uses
  %i.p = alloca [248 x i8], align 8               ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [168 x i8], align 8               ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.48.sroa.0.sroa.0 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.7 = alloca [12 x i8], align 4            ; 2 uses
  %5 = alloca [8 x i8], align 8                   ; 5 uses
  %6 = alloca [24 x i8], align 8                  ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 21 uses
  %i.u = alloca [32 x i8], align 8                ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %.sroa.433.sroa.5.0..sroa.433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.433.sroa.6.0..sroa.433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ac = icmp samesign ugt i8 %3, 6
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.414.i.sroa.4.0..sroa.414.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.414.i.sroa.5.0..sroa.414.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.419.i.sroa.4.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.419.i.sroa.5.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.48.sroa.0.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit137, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB5_11ParseBuffer4fork(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noundef nonnull align 8 %1)
          to label %bb.d unwind label %.loopexit

bb.c:                                             ; preds = %.body102
  br i1 %.sroa.040.5, label %.thread, label %bb.eb

.loopexit:                                        ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i133
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i139
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2op5BinOpEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull align 8 %i.u)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #16
          to label %.thread unwind label %bb.bu

bb.f:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.t, align 8, !range !52, !noundef !5
  %.not = icmp eq i64 %i.aj, -1
  br i1 %.not, label %bb.g, label %bb.cl

bb.g:                                             ; preds = %bb.f
  %.sroa.0152.0.copyload = load i32, ptr %i.ab, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx, i64 12, i1 false)
  switch i32 %.sroa.0152.0.copyload, label %default.unreachable.i [
    i32 0, label %bb.p
    i32 1, label %bb.p
    i32 2, label %bb.h
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.n
    i32 12, label %.thread210
    i32 13, label %.thread210
    i32 14, label %.thread210
    i32 15, label %.thread210
    i32 16, label %.thread210
    i32 17, label %.thread210
    i32 18, label %bb.o
    i32 19, label %bb.o
    i32 20, label %bb.o
    i32 21, label %bb.o
    i32 22, label %bb.o
    i32 23, label %bb.o
    i32 24, label %bb.o
    i32 25, label %bb.o
    i32 26, label %bb.o
    i32 27, label %bb.o
  ]

default.unreachable.i:                            ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  br label %bb.p

bb.m:                                             ; preds = %bb.g
  br label %bb.p

bb.n:                                             ; preds = %bb.g, %bb.g
  br label %bb.p

bb.o:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  br label %bb.p

.body98:                                          ; preds = %.loopexit246, %.loopexit.split-lp247, %.body.i.thread, %.body.i, %bb.ay, %bb.dx, %bb.dh, %bb.bv
  %.sroa.040.3 = phi i1 [ false, %bb.bv ], [ %.sroa.040.7242, %bb.dx ], [ false, %bb.dh ], [ true, %.body.i.thread ], [ true, %bb.ay ], [ true, %.body.i ], [ true, %.loopexit.split-lp247 ], [ true, %.loopexit246 ]
  %.pn74 = phi { ptr, i32 } [ %i.cd, %bb.bv ], [ %.pn.pn243, %bb.dx ], [ %.pn, %bb.dh ], [ %eh.lpad-body.i223, %.body.i.thread ], [ %i.bu, %bb.ay ], [ %lpad.thr_comm.split-lp, %.body.i ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp247 ], [ %lpad.loopexit248, %.loopexit246 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #16
          to label %.body102 unwind label %bb.bu

.loopexit246:                                     ; preds = %bb.r, %bb.cl, %bb.cn, %bb.cu, %bb.v
  %lpad.loopexit248 = landingpad { ptr, i32 }
          cleanup
  br label %.body98

.loopexit.split-lp247:                            ; preds = %bb.t, %bb.dj
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %.body98

bb.p:                                             ; preds = %bb.g, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ 1, %bb.o ], [ 12, %bb.h ], [ 4, %bb.i ], [ 3, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 7, %bb.m ], [ 10, %bb.n ], [ 11, %bb.g ], [ 11, %bb.g ] ; 2 uses
  %i.ak = icmp samesign ult i8 %.sroa.0.0.i, %3
  br i1 %i.ak, label %.loopexit251, label %bb.r

.thread210:                                       ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  br i1 %i.ac, label %.loopexit251, label %bb.q

bb.q:                                             ; preds = %.thread210
  %i.al = load i64, ptr %2, align 8, !range !536, !noundef !5 ; 2 uses
  %i.am = icmp ne i64 %i.al, -9223372036854775777
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.al, -9223372036854775804
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.p, %bb.q
  %.sroa.0.0.i212215 = phi i8 [ 6, %bb.q ], [ %.sroa.0.0.i, %bb.p ], [ 6, %bb.s ] ; 2 uses
  invoke void @_RNvXNtNtCsgbWeKYPjk8w_3syn5parse11discouragedNtB4_11ParseBufferNtB2_11Speculative10advance_to(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.u)
          to label %bb.v unwind label %.loopexit246

bb.s:                                             ; preds = %bb.q
  %.val89 = load i32, ptr %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx, align 8, !range !952, !noundef !5
  %.val89.off = add nsw i32 %.val89, -12
  %switch = icmp ult i32 %.val89.off, 6
  br i1 %switch, label %bb.t, label %bb.r

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5errorReEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %6, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 38)
          to label %bb.u unwind label %.loopexit.split-lp247

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bw

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !953
  invoke fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10unary_expr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.i, ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %.loopexit246, !inline_history !956

.noexc:                                           ; preds = %bb.v
  %i.ap = load i64, ptr %i.i, align 8, !range !104, !noalias !953, !noundef !5 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -1
  %.sroa.0185.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !953 ; 2 uses
  %.sroa.4186.0.copyload = load ptr, ptr %.sroa.414.i.sroa.4.0..sroa.414.0..sroa_idx.i.sroa_idx, align 8, !noalias !953 ; 2 uses
  %.sroa.5187.0.copyload = load i64, ptr %.sroa.414.i.sroa.5.0..sroa.414.0..sroa_idx.i.sroa_idx, align 8, !noalias !953 ; 2 uses
  br i1 %i.aq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !953
  br label %bb.bf

bb.x:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.515.0..sroa_idx.i, i64 136, i1 false), !noalias !953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !953
  store i64 %i.ap, ptr %i.j, align 8, !noalias !953
  store i64 %.sroa.0185.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !953
  store ptr %.sroa.4186.0.copyload, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !953
  store i64 %.sroa.5187.0.copyload, ptr %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !953
  %i.ar = icmp eq i8 %.sroa.0.0.i212215, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.bd, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !953
  invoke void @_RNvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB5_11ParseBuffer4fork(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %1)
          to label %.noexc147 unwind label %.body.i.thread228

.noexc147:                                        ; preds = %bb.y
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2op5BinOpEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.a)
          to label %bb.aa unwind label %bb.z, !noalias !953

.body.i146:                                       ; preds = %bb.ae, %bb.ac, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.aw, %bb.ac ], [ %i.as, %bb.z ], [ %i.ay, %bb.ae ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #16
          to label %.body.i.thread unwind label %bb.au, !noalias !953

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i.i, %.noexc147
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i146

bb.aa:                                            ; preds = %.noexc147
  %i.at = load i64, ptr %i.b, align 8, !noalias !953
  %.not.i = icmp eq i64 %i.at, -1
  br i1 %.not.i, label %switch.lookup, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2EqNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ag unwind label %bb.ac, !noalias !953

switch.lookup:                                    ; preds = %bb.aa
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 8, !noalias !953
  %i.av = zext nneg i32 %.sroa.0.0.copyload.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10parse_expr, i64 %i.av
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit.i

bb.ac:                                            ; preds = %bb.al, %bb.ai, %bb.ah, %bb.ab
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %.body.i146 unwind label %bb.au, !noalias !953

_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence8of_binop.exit.i: ; preds = %bb.am, %bb.ak, %bb.aj
  %.sroa.0.0.ph.ph.ph.ph.ph.ph.ph.ph.ph.ph.i = phi i8 [ %..i, %bb.am ], [ 2, %bb.ak ], [ 1, %bb.aj ] ; 2 uses
  %.pr.pr.pr.pr.pr.pr.pr.pr.pr.pr.i = load i64, ptr %i.b, align 8, !alias.scope !957, !noalias !953
  %i.ax = icmp eq i64 %.pr.pr.pr.pr.pr.pr.pr.pr.pr.pr.i, -1
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence8of_binop.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i.i unwind label %bb.ae, !noalias !953

bb.ae:                                            ; preds = %bb.ad
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i146 unwind label %bb.af, !noalias !953

bb.af:                                            ; preds = %bb.ae
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !953
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit.i unwind label %bb.z, !noalias !953

bb.ag:                                            ; preds = %bb.ab
  br i1 %i.au, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.ba = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token6DotDotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ak unwind label %bb.ac, !noalias !953

bb.ai:                                            ; preds = %bb.ag
  %i.bb = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token8FatArrowNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.aj unwind label %bb.ac, !noalias !953

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.bb, label %bb.ah, label %_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence8of_binop.exit.i

bb.ak:                                            ; preds = %bb.ah
  br i1 %i.ba, label %_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence8of_binop.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bc = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2AsNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.am unwind label %bb.ac, !noalias !953

bb.am:                                            ; preds = %bb.al
  %..i = select i1 %i.bc, i8 13, i8 0
  br label %_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence8of_binop.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit.i: ; preds = %switch.lookup, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i.i, %_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence8of_binop.exit.i
  %.sroa.0.05.i = phi i8 [ %.sroa.0.0.ph.ph.ph.ph.ph.ph.ph.ph.ph.ph.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i.i ], [ %.sroa.0.0.ph.ph.ph.ph.ph.ph.ph.ph.ph.ph.i, %_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence8of_binop.exit.i ], [ %switch.load, %switch.lookup ] ; 3 uses
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.aq unwind label %bb.an, !noalias !953

bb.an:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960), !noalias !953
  call void @llvm.experimental.noalias.scope.decl(metadata !963), !noalias !953
  call void @llvm.experimental.noalias.scope.decl(metadata !966), !noalias !953
  %i.be = load ptr, ptr %i.ae, align 8, !alias.scope !969, !noalias !953, !noundef !5 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.body.i.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bg = load i64, ptr %i.be, align 8, !noalias !972, !noundef !5
  %i.bh = add i64 %i.bg, -1                       ; 2 uses
  store i64 %i.bh, ptr %i.be, align 8, !noalias !972
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.ap, label %.body.i.thread

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #18
          to label %.body.i.thread unwind label %bb.at, !noalias !953

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !977), !noalias !953
  call void @llvm.experimental.noalias.scope.decl(metadata !980), !noalias !953
  call void @llvm.experimental.noalias.scope.decl(metadata !983), !noalias !953
  %i.bj = load ptr, ptr %i.ae, align 8, !alias.scope !986, !noalias !953, !noundef !5 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bl = load i64, ptr %i.bj, align 8, !noalias !987, !noundef !5
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  store i64 %i.bm, ptr %i.bj, align 8, !noalias !987
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #18
          to label %bb.av unwind label %.body.i.thread228

bb.at:                                            ; preds = %bb.ap
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !953
  unreachable

bb.au:                                            ; preds = %bb.ac, %.body.i146
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !953
  unreachable

.body.i.thread228:                                ; preds = %bb.as, %bb.y
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread

.body.i:                                          ; preds = %bb.ba
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body98

bb.av:                                            ; preds = %bb.as, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !953
  %i.bq = icmp ugt i8 %.sroa.0.05.i, %.sroa.0.0.i212215
  %i.br = icmp eq i8 %.sroa.0.05.i, 1
  %or.cond = and i1 %i.ar, %i.br
  %or.cond264 = or i1 %i.bq, %or.cond
  br i1 %or.cond264, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.f, ptr noundef nonnull align 8 dereferenceable(168) %i.j, i64 168, i1 false), !noalias !953
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !992
  %i.bs = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !992 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ax, label %.thread231, !prof !936

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc144 unwind label %bb.ay

.noexc144:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.f) #16
          to label %.body98 unwind label %bb.az, !noalias !953, !inline_history !956

bb.az:                                            ; preds = %bb.ay
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !953, !inline_history !956
  unreachable

.thread231:                                       ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bs, ptr noundef nonnull align 8 dereferenceable(168) %i.j, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !953
  br label %bb.bh

bb.ba:                                            ; preds = %bb.av
  %.val25.i = load ptr, ptr %1, align 8, !noalias !953, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.g, ptr noundef nonnull align 8 dereferenceable(168) %i.j, i64 168, i1 false), !noalias !953
  invoke fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10parse_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.h, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.g, i8 noundef %.sroa.0.05.i)
          to label %bb.bb unwind label %.body.i, !noalias !953, !inline_history !956

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !953
  %i.bw = load i64, ptr %i.h, align 8, !range !104, !noalias !953, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -1
  %.sroa.0203.0.copyload = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !953 ; 2 uses
  %.sroa.4204.0.copyload = load ptr, ptr %.sroa.419.i.sroa.4.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !953 ; 2 uses
  %.sroa.5205.0.copyload = load i64, ptr %.sroa.419.i.sroa.5.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !953 ; 2 uses
  br i1 %i.bx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !953
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.520.0..sroa_idx.i, i64 136, i1 false), !noalias !953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !953
  store i64 %i.bw, ptr %i.j, align 8, !noalias !953
  store i64 %.sroa.0203.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !953
  store ptr %.sroa.4204.0.copyload, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !953
  store i64 %.sroa.5205.0.copyload, ptr %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !953
  %.val.i = load ptr, ptr %1, align 8, !noalias !953, !noundef !5
  %i.by = icmp eq ptr %.val25.i, %.val.i
  br i1 %i.by, label %bb.aw, label %bb.y

.body.i.thread:                                   ; preds = %.body.i146, %bb.an, %bb.ao, %bb.ap, %.body.i.thread228
  %eh.lpad-body.i223 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.i.thread228 ], [ %.pn.i, %.body.i146 ], [ %i.bd, %bb.ao ], [ %i.bd, %bb.ap ], [ %i.bd, %bb.an ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.j) #16
          to label %.body98 unwind label %bb.be, !noalias !953, !inline_history !956

bb.be:                                            ; preds = %.body.i.thread
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !953, !inline_history !956
  unreachable

bb.bf:                                            ; preds = %bb.w, %bb.bc
  %.sroa.10.2 = phi i64 [ %.sroa.5187.0.copyload, %bb.w ], [ %.sroa.5205.0.copyload, %bb.bc ]
  %.sroa.7159.0 = phi ptr [ %.sroa.4186.0.copyload, %bb.w ], [ %.sroa.4204.0.copyload, %bb.bc ] ; 2 uses
  %.sroa.0157.0 = phi i64 [ %.sroa.0185.0.copyload, %bb.w ], [ %.sroa.0203.0.copyload, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !953
  %.not68 = icmp eq i64 %.sroa.0157.0, -1
  br i1 %.not68, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0157.0, ptr %i.ca, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7159.0, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.2, ptr %.sroa.551.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bw

bb.bh:                                            ; preds = %.thread231, %bb.bf
  %.sroa.7159.1237 = phi ptr [ %i.bs, %.thread231 ], [ %.sroa.7159.0, %bb.bf ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7159.1237) ]
  store ptr %.sroa.7159.1237, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8
  store i64 0, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.r, ptr noundef nonnull align 8 dereferenceable(168) %2, i64 168, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !995
  %i.cb = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !995 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.bi, label %bb.bl, !prof !936

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc100 unwind label %bb.bj

.noexc100:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.r) #16
          to label %.body83 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body83:                                          ; preds = %bb.bj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #16
          to label %bb.bv unwind label %bb.bu

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cb, ptr noundef nonnull align 8 dereferenceable(168) %i.r, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 -9223372036854775804, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.sroa.0.sroa.0, i64 24, i1 false)
  store i32 %.sroa.0152.0.copyload, ptr %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.48.sroa.0.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, i64 12, i1 false)
  store ptr %i.cb, ptr %.sroa.433.sroa.6.0..sroa.433.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.7159.1237, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ds, %bb.bl
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.bq unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.cg = load ptr, ptr %i.ah, align 8, !alias.scope !1007, !noundef !5 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.body102, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ci = load i64, ptr %i.cg, align 8, !noalias !1010, !noundef !5
  %i.cj = add i64 %i.ci, -1                       ; 2 uses
  store i64 %i.cj, ptr %i.cg, align 8, !noalias !1010
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.bp, label %.body102

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
          to label %.body102 unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.cl = load ptr, ptr %i.ah, align 8, !alias.scope !1024, !noundef !5 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.cn = load i64, ptr %i.cl, align 8, !noalias !1025, !noundef !5
  %i.co = add i64 %i.cn, -1                       ; 2 uses
  store i64 %i.co, ptr %i.cl, align 8, !noalias !1025
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit unwind label %.loopexit252

bb.bt:                                            ; preds = %bb.bp
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bu:                                            ; preds = %.thread, %bb.dx, %.body, %.body81, %.body102, %bb.bv, %.body83, %.body98, %bb.e
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bv:                                            ; preds = %.body83
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %5) #16
          to label %.body98 unwind label %bb.bu

bb.bw:                                            ; preds = %bb.u, %bb.bg, %bb.ct, %bb.dw
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.ca unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.ct = load ptr, ptr %i.ah, align 8, !alias.scope !1039, !noundef !5 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.body102, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.cv = load i64, ptr %i.ct, align 8, !noalias !1042, !noundef !5
  %i.cw = add i64 %i.cv, -1                       ; 2 uses
  store i64 %i.cw, ptr %i.ct, align 8, !noalias !1042
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.bz, label %.body102

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
          to label %.body102 unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %i.cy = load ptr, ptr %i.ah, align 8, !alias.scope !1056, !noundef !5 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit108, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.da = load i64, ptr %i.cy, align 8, !noalias !1057, !noundef !5
  %i.db = add i64 %i.da, -1                       ; 2 uses
  store i64 %i.db, ptr %i.cy, align 8, !noalias !1057
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit108

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit108 unwind label %.loopexit.split-lp253

bb.cd:                                            ; preds = %bb.bz
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.loopexit251:                                     ; preds = %bb.cm, %bb.p, %.thread210
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.ch unwind label %bb.ce

bb.ce:                                            ; preds = %.loopexit251
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %i.df = load ptr, ptr %i.ah, align 8, !alias.scope !1071, !noundef !5 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.body102, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dh = load i64, ptr %i.df, align 8, !noalias !1074, !noundef !5
  %i.di = add i64 %i.dh, -1                       ; 2 uses
  store i64 %i.di, ptr %i.df, align 8, !noalias !1074
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.cg, label %.body102

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
          to label %.body102 unwind label %bb.ck

bb.ch:                                            ; preds = %.loopexit251
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.dk = load ptr, ptr %i.ah, align 8, !alias.scope !1088, !noundef !5 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit113, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.dm = load i64, ptr %i.dk, align 8, !noalias !1089, !noundef !5
  %i.dn = add i64 %i.dm, -1                       ; 2 uses
  store i64 %i.dn, ptr %i.dk, align 8, !noalias !1089
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.cj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit113

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit113 unwind label %.loopexit.split-lp253

bb.ck:                                            ; preds = %bb.cg
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.cl:                                            ; preds = %bb.f
  %i.dq = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2AsNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.cm unwind label %.loopexit246

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.dq, label %bb.cn, label %.loopexit251

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2AsEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 8 %1)
          to label %bb.cs unwind label %.loopexit246

.body102:                                         ; preds = %.loopexit252, %.loopexit.split-lp253, %bb.bp, %bb.bo, %bb.bn, %bb.cg, %bb.cf, %bb.ce, %bb.bx, %bb.by, %bb.bz, %.body98
  %.sroa.040.5 = phi i1 [ %.sroa.040.3, %.body98 ], [ true, %bb.bz ], [ true, %bb.by ], [ true, %bb.bx ], [ true, %bb.ce ], [ true, %bb.cf ], [ true, %bb.cg ], [ true, %bb.bp ], [ true, %bb.bn ], [ true, %bb.bo ], [ true, %.loopexit.split-lp253 ], [ true, %.loopexit252 ]
  %.pn76 = phi { ptr, i32 } [ %.pn74, %.body98 ], [ %i.cs, %bb.bz ], [ %i.cs, %bb.by ], [ %i.cs, %bb.bx ], [ %i.de, %bb.ce ], [ %i.de, %bb.cf ], [ %i.de, %bb.cg ], [ %i.cf, %bb.bp ], [ %i.cf, %bb.bn ], [ %i.cf, %bb.bo ], [ %lpad.loopexit.split-lp255, %.loopexit.split-lp253 ], [ %lpad.loopexit254, %.loopexit252 ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #16
          to label %bb.c unwind label %bb.bu

.loopexit252:                                     ; preds = %bb.bs
  %lpad.loopexit254 = landingpad { ptr, i32 }
          cleanup
  br label %.body102

.loopexit.split-lp253:                            ; preds = %bb.cc, %bb.cj
  %lpad.loopexit.split-lp255 = landingpad { ptr, i32 }
          cleanup
  br label %.body102

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit113: ; preds = %bb.ci, %bb.ch, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.dr = load i64, ptr %i.t, align 8, !range !52, !alias.scope !1094, !noundef !5
  %i.ds = icmp eq i64 %i.dr, -1
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit, label %bb.co

bb.co:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit113
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i: ; preds = %bb.co
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit unwind label %.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit113, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %2, i64 168, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit143, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit
  ret void

bb.cs:                                            ; preds = %bb.cn
  %i.dv = load i64, ptr %i.q, align 8, !range !52, !noundef !5 ; 2 uses
  %.not70 = icmp eq i64 %i.dv, -1
  %i.dw = load i32, ptr %i.v, align 8             ; 2 uses
  br i1 %.not70, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.559.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dv, ptr %i.dx, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.dw, ptr %.sroa.461.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bw

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.o, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.cv unwind label %.loopexit246

bb.cv:                                            ; preds = %bb.cu
  %i.dy = load i64, ptr %i.o, align 8, !range !921, !noundef !5 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.464.0..sroa_idx, i64 24, i1 false)
  br i1 %i.dz, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  br label %bb.dw

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.565.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.430.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, i64 24, i1 false)
  store i64 %i.dy, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1097
  %i.eb = load ptr, ptr %1, align 8, !noalias !1097, !noundef !5
  %i.ec = load ptr, ptr %i.w, align 8, !noalias !1097, !noundef !5
  %i.ed = invoke noundef zeroext i1 @_RNvXs7b_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3DotNtB6_5Token4peek(ptr noundef %i.eb, ptr noundef %i.ec)
          to label %.noexc117 unwind label %.thread238

.noexc117:                                        ; preds = %bb.cx
  br i1 %i.ed, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.noexc119, %.noexc117
  %i.ee = load ptr, ptr %1, align 8, !noalias !1097, !noundef !5
  %i.ef = load ptr, ptr %i.w, align 8, !noalias !1097, !noundef !5
  %i.eg = invoke noundef zeroext i1 @_RNvXs8N_NtCsgbWeKYPjk8w_3syn5tokenNtB6_8QuestionNtB6_5Token4peek(ptr noundef %i.ee, ptr noundef %i.ef)
          to label %.noexc118 unwind label %.thread238

.noexc118:                                        ; preds = %bb.cy
  br i1 %i.eg, label %.split.i, label %bb.df

bb.cz:                                            ; preds = %.noexc117
  %i.eh = load ptr, ptr %1, align 8, !noalias !1097, !noundef !5
  %i.ei = load ptr, ptr %i.w, align 8, !noalias !1097, !noundef !5
  %i.ej = invoke noundef zeroext i1 @_RNvXs7f_NtCsgbWeKYPjk8w_3syn5tokenNtB6_6DotDotNtB6_5Token4peek(ptr noundef %i.eh, ptr noundef %i.ei)
          to label %.noexc119 unwind label %.thread238

.noexc119:                                        ; preds = %bb.cz
  br i1 %i.ej, label %bb.cy, label %bb.da

bb.da:                                            ; preds = %.noexc119
  %i.ek = invoke noundef zeroext i1 @_RNvNvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB7_11ParseBuffer5peek25peek2(ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RNvXs10_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5AwaitNtB6_5Token4peek)
          to label %.noexc120 unwind label %.thread238

.noexc120:                                        ; preds = %bb.da
  br i1 %i.ek, label %.split.i, label %bb.db

bb.db:                                            ; preds = %.noexc120
  %i.el = invoke noundef zeroext i1 @_RNvNvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB7_11ParseBuffer5peek25peek2(ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RNvXs_NtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB8_5token5Token4peek)
          to label %.noexc121 unwind label %.thread238

.noexc121:                                        ; preds = %bb.db
  br i1 %i.el, label %bb.dc, label %.split.i

bb.dc:                                            ; preds = %.noexc121
  %i.em = invoke noundef zeroext i1 @_RNvNvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB7_11ParseBuffer5peek35peek3(ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RNvXsa_NtCsgbWeKYPjk8w_3syn5tokenNtB5_5ParenNtB5_5Token4peek)
          to label %.noexc122 unwind label %.thread238

.noexc122:                                        ; preds = %bb.dc
  br i1 %i.em, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.noexc122
  %i.en = invoke noundef zeroext i1 @_RNvNvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB7_11ParseBuffer5peek35peek3(ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RNvXs8p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_7PathSepNtB6_5Token4peek)
          to label %.noexc123 unwind label %.thread238

.noexc123:                                        ; preds = %bb.dd
  br i1 %i.en, label %bb.de, label %.split.i

bb.de:                                            ; preds = %.noexc123, %.noexc122
  br label %.split.i

.split.i:                                         ; preds = %.noexc127, %.noexc126, %bb.de, %.noexc123, %.noexc121, %.noexc120, %.noexc118
  %.sink12.i = phi ptr [ @5, %.noexc127 ], [ @4, %.noexc120 ], [ @6, %.noexc126 ], [ @7, %.noexc118 ], [ @3, %bb.de ], [ @2, %.noexc123 ], [ @2, %.noexc121 ]
  %.sink.i = phi i64 [ 15, %.noexc127 ], [ 8, %.noexc120 ], [ 8, %.noexc126 ], [ 3, %.noexc118 ], [ 13, %bb.de ], [ 14, %.noexc123 ], [ 14, %.noexc121 ]
  store ptr %.sink12.i, ptr %i.e, align 8, !noalias !1097, !captures !1100
  store i64 %.sink.i, ptr %i.x, align 8, !noalias !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1097
  store ptr %i.e, ptr %i.c, align 8, !noalias !1097
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsgbWeKYPjk8w_3syn, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !1097
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @8, ptr noundef nonnull %i.c)
          to label %.noexc124 unwind label %.thread238

.noexc124:                                        ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1097
  %i.eo = load i32, ptr %i.y, align 8, !noalias !1097, !noundef !5
  %i.ep = load ptr, ptr %1, align 8, !noalias !1097, !noundef !5
  %i.eq = load ptr, ptr %i.w, align 8, !noalias !1097, !noundef !5
  invoke void @_RINvNtCsgbWeKYPjk8w_3syn5error6new_atNtNtCs4wP2HXfJTCR_5alloc6string6StringEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, i32 noundef %i.eo, ptr noundef %i.ep, ptr noundef %i.eq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.di unwind label %.thread238

bb.df:                                            ; preds = %.noexc118
  %i.er = load ptr, ptr %1, align 8, !noalias !1097, !noundef !5
  %i.es = load ptr, ptr %i.w, align 8, !noalias !1097, !noundef !5
  %i.et = invoke noundef zeroext i1 @_RNvXsc_NtCsgbWeKYPjk8w_3syn5tokenNtB5_7BracketNtB5_5Token4peek(ptr noundef %i.er, ptr noundef %i.es)
          to label %.noexc126 unwind label %.thread238

.noexc126:                                        ; preds = %bb.df
  br i1 %i.et, label %.split.i, label %bb.dg

bb.dg:                                            ; preds = %.noexc126
  %i.eu = load ptr, ptr %1, align 8, !noalias !1097, !noundef !5
  %i.ev = load ptr, ptr %i.w, align 8, !noalias !1097, !noundef !5
  %i.ew = invoke noundef zeroext i1 @_RNvXsa_NtCsgbWeKYPjk8w_3syn5tokenNtB5_5ParenNtB5_5Token4peek(ptr noundef %i.eu, ptr noundef %i.ev)
          to label %.noexc127 unwind label %.thread238

.noexc127:                                        ; preds = %bb.dg
  br i1 %i.ew, label %.split.i, label %.thread244

.thread244:                                       ; preds = %.noexc127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.dk

bb.dh:                                            ; preds = %.body81
  br i1 %i.fa, label %bb.dx, label %.body98

.thread238:                                       ; preds = %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %.split.i, %.noexc124, %bb.df, %bb.dg
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.di:                                            ; preds = %.noexc124
  %.pr = load i64, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not71 = icmp eq i64 %.pr, -1
  br i1 %.not71, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.p)
          to label %bb.dw unwind label %.loopexit.split-lp247

bb.dk:                                            ; preds = %.thread244, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.433.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %4, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef nonnull align 8 dereferenceable(168) %2, i64 168, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !1101
  %i.ez = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 168, i64 noundef 8) #14, !noalias !1101 ; 4 uses
  %i.fa = icmp eq ptr %i.ez, null                 ; 2 uses
  br i1 %i.fa, label %bb.dl, label %bb.do, !prof !936

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #19
          to label %.noexc128 unwind label %bb.dm

.noexc128:                                        ; preds = %bb.dl
  unreachable

bb.dm:                                            ; preds = %bb.dl
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.l) #16
          to label %.body81 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body81:                                          ; preds = %bb.dm, %.body
  %.pn = phi { ptr, i32 } [ %i.ff, %.body ], [ %i.fb, %bb.dm ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %4) #16
          to label %bb.dh unwind label %bb.bu

bb.do:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ez, ptr noundef nonnull align 8 dereferenceable(168) %i.l, i64 168, i1 false)
  store ptr %i.ez, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.k, ptr noundef nonnull align 8 dereferenceable(248) %i.p, i64 248, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !1104
  %i.fd = call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 168, 249) 248, i64 noundef 8) #14, !noalias !1104 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.dp, label %bb.ds, !prof !936

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 248) #19
          to label %.noexc130 unwind label %bb.dq

.noexc130:                                        ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.dp
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.k) #16
          to label %.body unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body:                                            ; preds = %bb.dq
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.m) #16
          to label %.body81 unwind label %bb.bu

bb.ds:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.fd, ptr noundef nonnull align 8 dereferenceable(248) %i.k, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.433.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 -9223372036854775800, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.433.sroa.0, i64 24, i1 false)
  store ptr %i.ez, ptr %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx, align 8
  store ptr %i.fd, ptr %.sroa.433.sroa.5.0..sroa.433.0..sroa_idx.sroa_idx, align 8
  store i32 %i.dw, ptr %.sroa.433.sroa.6.0..sroa.433.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bm

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit: ; preds = %bb.br, %bb.bq, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fh = load i64, ptr %i.t, align 8, !range !52, !alias.scope !1107, !noundef !5
  %i.fi = icmp eq i64 %i.fh, -1
  br i1 %i.fi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit137, label %bb.dt

bb.dt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i133 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i133: ; preds = %bb.dt
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit137 unwind label %.loopexit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit137: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.b

bb.dw:                                            ; preds = %bb.dj, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bw

bb.dx:                                            ; preds = %.thread238, %bb.dh
  %.pn.pn243 = phi { ptr, i32 } [ %i.ex, %.thread238 ], [ %.pn, %bb.dh ]
  %.sroa.040.7242 = phi i1 [ true, %.thread238 ], [ false, %bb.dh ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.p) #16
          to label %.body98 unwind label %bb.bu

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit108: ; preds = %bb.cb, %bb.ca, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fl = load i64, ptr %i.t, align 8, !range !52, !alias.scope !1110, !noundef !5
  %i.fm = icmp eq i64 %i.fl, -1
  br i1 %i.fm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit143, label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit108
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i139 unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i139: ; preds = %bb.dy
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit143 unwind label %.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit143: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit108, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %2)
  br label %bb.cr

bb.eb:                                            ; preds = %.thread, %bb.c
  %.pn78208 = phi { ptr, i32 } [ %.pn78209, %.thread ], [ %.pn76, %bb.c ]
  resume { ptr, i32 } %.pn78208

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.dz, %bb.du, %bb.cp, %bb.e, %bb.c
  %.pn78209 = phi { ptr, i32 } [ %.pn76, %bb.c ], [ %i.ai, %bb.e ], [ %i.fj, %bb.du ], [ %i.dt, %bb.cp ], [ %i.fn, %bb.dz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %2) #16
          to label %bb.eb unwind label %bb.bu
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10unary_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 5 uses
  %i.b = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.654 = alloca [24 x i8], align 8          ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 17 uses
  %i.e = alloca [168 x i8], align 8               ; 5 uses
  %i.f = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.630 = alloca [24 x i8], align 8          ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 22 uses
  %i.j = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token3AndNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token4StarNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.k, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token3AndEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %1)
          to label %bb.z unwind label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token3NotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2op4UnOpEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5MinusNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.q, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing12trailer_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1)
  br label %bb.au

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #16
          to label %common.resume unwind label %bb.x

bb.i:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !range !52, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.083.0.copyload = load i64, ptr %i.t, align 8 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.589.0.copyload = load i64, ptr %.sroa.589.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.u, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.083.0.copyload, ptr %.sroa.491.0..sroa_idx, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.589.0.copyload, ptr %.sroa.592.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.an, %bb.ah, %bb.ab, %bb.h, %bb.n, %.body100, %bb.y, %bb.ae, %bb.ak, %.body, %bb.q, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.ah ], [ %i.v, %bb.k ], [ %i.ac, %bb.q ], [ %i.r, %bb.h ], [ %i.an, %bb.ab ], [ %i.bh, %.body ], [ %i.ay, %bb.ak ], [ %i.ap, %bb.ae ], [ %i.aj, %bb.y ], [ %i.ag, %.body100 ], [ %i.x, %bb.n ], [ %i.bd, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.au

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr7parsing10unary_expr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #16
          to label %common.resume unwind label %bb.x

end_hunk_0
