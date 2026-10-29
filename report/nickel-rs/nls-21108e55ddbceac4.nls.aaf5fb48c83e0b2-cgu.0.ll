Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4f3c7ace8a91f4bE":bb.a
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 -28
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !17484, !noalias !17476, !noundef !44
  %i.bl = getelementptr inbounds i8, ptr %i.as, i64 -64
  %i.bm = load i32, ptr %i.bl, align 8, !range !80, !alias.scope !17484, !noalias !17476, !noundef !44 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.as, i64 -60
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !17484, !noalias !17476
  %i.bp = getelementptr inbounds i8, ptr %i.as, i64 -56
  %i.bq = load i32, ptr %i.bp, align 8, !range !80, !alias.scope !17484, !noalias !17476, !noundef !44 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.as, i64 -52
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !17484, !noalias !17476
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !17485 ; 4 uses
  %.sroa.5.0.copyload3.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !17485 ; 3 uses
  %.sroa.6.0.copyload5.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !17485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17485
  %i.bt = invoke { ptr, i64 } @_ZN16nickel_lang_core5cache11SourceCache12clone_source17ha44d6ec5383a53adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.m, i32 noundef %i.ac)
          to label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2ae4629cc0176dedE.exit.i.i.i" unwind label %bb.g, !noalias !17487 ; 2 uses

bb.g:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1be03306e0295e75E.exit.i.i.i.i.i"
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.bv, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !17488
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i"

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i": ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.bu

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2ae4629cc0176dedE.exit.thread.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17475
  br label %bb.i

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2ae4629cc0176dedE.exit.i.i.i": ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h1be03306e0295e75E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17475
  %.not.i5.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i5.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2ae4629cc0176dedE.exit.i.i.i", %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2ae4629cc0176dedE.exit.thread.i.i.i"
  %.not.i.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.not.i.i, label %"_ZN4core3ptr111drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$url..Url$C$alloc..sync..Arc$LT$str$GT$$RP$$GT$$GT$17hfee0cae4873420f0E.exit.i", label %bb.b

bb.j:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2ae4629cc0176dedE.exit.i.i.i"
  %i.bw = getelementptr inbounds i8, ptr %i.as, i64 -24
  %.sroa.1879.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.1879.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(17) %i.bw, i64 17, i1 false), !noalias !17465
  %i.bx = trunc nuw i32 %i.bq to i1
  %.sroa.54.0.i.i.i.i.i.i = select i1 %i.bx, i32 %i.bs, i32 undef
  %i.by = trunc nuw i32 %i.bm to i1
  %.sroa.52.0.i.i.i.i.i.i = select i1 %i.by, i32 %i.bo, i32 undef
  %i.bz = trunc nuw i16 %i.bg to i1
  %.sroa.5.0.i.i.i.i.i.i = select i1 %i.bz, i16 %i.bi, i16 undef
  %i.ca = extractvalue { ptr, i64 } %i.bt, 0
  %i.cb = extractvalue { ptr, i64 } %i.bt, 1
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !17464
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload3.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !17464
  %.sroa.667.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload5.i.i.i.i.i.i, ptr %.sroa.667.0..sroa_idx.i, align 8, !alias.scope !17464
  %.sroa.768.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bm, ptr %.sroa.768.0..sroa_idx.i, align 8, !alias.scope !17464
  %.sroa.869.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.52.0.i.i.i.i.i.i, ptr %.sroa.869.0..sroa_idx.i, align 4, !alias.scope !17464
  %.sroa.970.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bq, ptr %.sroa.970.0..sroa_idx.i, align 8, !alias.scope !17464
  %.sroa.1071.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.54.0.i.i.i.i.i.i, ptr %.sroa.1071.0..sroa_idx.i, align 4, !alias.scope !17464
  %.sroa.1172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %i.bg, ptr %.sroa.1172.0..sroa_idx.i, align 8, !alias.scope !17464
  %.sroa.1273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %.sroa.5.0.i.i.i.i.i.i, ptr %.sroa.1273.0..sroa_idx.i, align 2, !alias.scope !17464
  %.sroa.1374.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <4 x i32> %i.be, ptr %.sroa.1374.0..sroa_idx.i, align 4, !alias.scope !17464
  %.sroa.1778.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.bk, ptr %.sroa.1778.0..sroa_idx.i, align 4, !alias.scope !17464
  %.sroa.2081.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ca, ptr %.sroa.2081.0..sroa_idx.i, align 8, !alias.scope !17464
  %.sroa.2182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.cb, ptr %.sroa.2182.0..sroa_idx.i, align 8, !alias.scope !17464
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17h6880c60a4f492d46E.exit

"_ZN4core3ptr111drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$url..Url$C$alloc..sync..Arc$LT$str$GT$$RP$$GT$$GT$17hfee0cae4873420f0E.exit.i": ; preds = %bb.i, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !17464
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17h6880c60a4f492d46E.exit

_ZN4core4iter6traits8iterator8Iterator8find_map17h6880c60a4f492d46E.exit: ; preds = %bb.j, %"_ZN4core3ptr111drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$url..Url$C$alloc..sync..Arc$LT$str$GT$$RP$$GT$$GT$17hfee0cae4873420f0E.exit.i"
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h04cc64f65b701c83E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(360) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !92, !alias.scope !17557, !noundef !44 ; 2 uses
  switch i64 %i.a, label %bb.b [
    i64 3, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i"
    i64 2, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i.i.i"
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !17558, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !17559, !nonnull !44, !noundef !44
  %i.e = ptrtoint ptr %.val4.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 20
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !17558, !noundef !44 ; 2 uses
  %.not51.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not51.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i58.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !17560, !nonnull !44, !noundef !44
  %i.l = ptrtoint ptr %.val4.i58.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 20
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.d, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.d ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i.i.i
  %i.q = trunc nuw i64 %i.a to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !17558
  %.not73.i.i.i.i.i.i.i.i.i.i = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i, null
  %.sroa.870.0.not.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, i1 %.not73.i.i.i.i.i.i.i.i.i.i, i1 false ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.sroa.870.0.not.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.p
  %not..sroa.870.0.not.i.i.i.i.i.i.i.i.i.i = xor i1 %.sroa.870.0.not.i.i.i.i.i.i.i.i.i.i, true
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i.i.i", %bb.a
  %.sroa.7.1.i.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %spec.select.i.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i = phi i1 [ true, %bb.a ], [ %not..sroa.870.0.not.i.i.i.i.i.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i.i.i" ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load i64, ptr %i.s, align 8, !range !71, !alias.scope !17561, !noundef !44 ; 2 uses
  %.not51.i.i.i.i.i.i = icmp eq i64 %i.t, 2
  br i1 %.not51.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i.i.i"
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !17562, !noundef !44 ; 2 uses
  %.not.i.i.i.i58.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i58.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val4.i.i.i.i.i59.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !17563, !nonnull !44, !noundef !44
  %i.x = ptrtoint ptr %.val4.i.i.i.i.i59.i.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 20
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.7.0.i.i.i.i61.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !17562, !noundef !44 ; 2 uses
  %.not51.i.i.i.i62.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not51.i.i.i.i62.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val4.i58.i.i.i.i63.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !17564, !nonnull !44, !noundef !44
  %i.ae = ptrtoint ptr %.val4.i58.i.i.i.i63.i.i.i.i.i.i to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = udiv exact i64 %i.ag, 20
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i.i.i": ; preds = %bb.g, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i.i.i"
  %.sroa.8.0.i.i.i.i65.i.i.i.i.i.i = phi i64 [ %i.ah, %bb.g ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i.i.i" ]
  %i.ai = add nuw nsw i64 %.sroa.8.0.i.i.i.i65.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i61.i.i.i.i.i.i
  %i.aj = trunc nuw i64 %i.t to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i.i66.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !17562
  %.not73.i.i.i.i67.i.i.i.i.i.i = icmp ne ptr %.val.i.i.i.i66.i.i.i.i.i.i, null
  %.sroa.870.0.not.i.i.i.i68.i.i.i.i.i.i = select i1 %i.aj, i1 %.not73.i.i.i.i67.i.i.i.i.i.i, i1 false ; 2 uses
  %spec.select86.i.i.i.i.i.i = select i1 %.sroa.870.0.not.i.i.i.i68.i.i.i.i.i.i, i64 undef, i64 %i.ai
  %not..sroa.870.0.not.i.i.i.i68.i.i.i.i.i.i = xor i1 %.sroa.870.0.not.i.i.i.i68.i.i.i.i.i.i, true
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i.i.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i.i.i"
  %.sroa.8.1.i.i.i.i.i.i = phi i64 [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i.i.i" ], [ %spec.select86.i.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i.i.i" ]
  %.sroa.579.0.i.i.i.i.i.i = phi i1 [ true, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i.i.i" ], [ %not..sroa.870.0.not.i.i.i.i68.i.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i.i.i" ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = load i64, ptr %i.al, align 8, !range !92, !alias.scope !17561, !noundef !44
  %spec.select89.i.i.i.i.i.i = icmp samesign ugt i64 %i.am, 1
  %op.rdx11 = select i1 %spec.select89.i.i.i.i.i.i, i1 %.sroa.579.0.i.i.i.i.i.i, i1 false
  %2 = freeze i1 %op.rdx11
  %op.rdx12 = select i1 %2, i1 %.sroa.5.0.i.i.i.i.i.i, i1 false ; 2 uses
  %i.an = add i64 %.sroa.8.1.i.i.i.i.i.i, %.sroa.7.1.i.i.i.i.i.i ; 2 uses
  %i.ao = icmp uge i64 %i.an, %.sroa.7.1.i.i.i.i.i.i
  %.sroa.7.0.i.i = select i1 %op.rdx12, i64 %i.an, i64 undef
  %narrow.i.i = select i1 %op.rdx12, i1 %i.ao, i1 false
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i.i.i", %bb.a
  %.sroa.7.1.i.i = phi i64 [ %.sroa.7.0.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0.i.i = phi i1 [ %narrow.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i.i.i" ], [ true, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aq = load i64, ptr %i.ap, align 8, !range !92, !alias.scope !17557, !noundef !44 ; 2 uses
  switch i64 %i.aq, label %bb.h [
    i64 3, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit102.i.i"
    i64 2, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i73.i.i"
  ]

bb.h:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i"
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !17565, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i60.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i60.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i62.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val4.i.i.i.i.i.i.i.i.i61.i.i = load ptr, ptr %i.at, align 8, !alias.scope !17566, !nonnull !44, !noundef !44
  %i.au = ptrtoint ptr %.val4.i.i.i.i.i.i.i.i.i61.i.i to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 20
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i62.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i62.i.i": ; preds = %bb.i, %bb.h
  %.sroa.7.0.i.i.i.i.i.i.i.i63.i.i = phi i64 [ %i.ax, %bb.i ], [ 0, %bb.h ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !17565, !noundef !44 ; 2 uses
  %.not51.i.i.i.i.i.i.i.i64.i.i = icmp eq ptr %i.az, null
  br i1 %.not51.i.i.i.i.i.i.i.i64.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i66.i.i", label %bb.j

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i62.i.i"
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val4.i58.i.i.i.i.i.i.i.i65.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !17567, !nonnull !44, !noundef !44
  %i.bb = ptrtoint ptr %.val4.i58.i.i.i.i.i.i.i.i65.i.i to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub nuw i64 %i.bb, %i.bc
  %i.be = udiv exact i64 %i.bd, 20
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i66.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i66.i.i": ; preds = %bb.j, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i62.i.i"
  %.sroa.8.0.i.i.i.i.i.i.i.i67.i.i = phi i64 [ %i.be, %bb.j ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i.i.i.i.i62.i.i" ]
  %i.bf = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i67.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i63.i.i
  %i.bg = trunc nuw i64 %i.aq to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val.i.i.i.i.i.i.i.i68.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !17565
  %.not73.i.i.i.i.i.i.i.i69.i.i = icmp ne ptr %.val.i.i.i.i.i.i.i.i68.i.i, null
  %.sroa.870.0.not.i.i.i.i.i.i.i.i70.i.i = select i1 %i.bg, i1 %.not73.i.i.i.i.i.i.i.i69.i.i, i1 false ; 2 uses
  %spec.select.i.i.i.i71.i.i = select i1 %.sroa.870.0.not.i.i.i.i.i.i.i.i70.i.i, i64 undef, i64 %i.bf
  %not..sroa.870.0.not.i.i.i.i.i.i.i.i72.i.i = xor i1 %.sroa.870.0.not.i.i.i.i.i.i.i.i70.i.i, true
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i73.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i73.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i66.i.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i"
  %.sroa.7.1.i.i.i.i74.i.i = phi i64 [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i" ], [ %spec.select.i.i.i.i71.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i66.i.i" ] ; 2 uses
  %.sroa.5.0.i.i.i.i75.i.i = phi i1 [ true, %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i" ], [ %not..sroa.870.0.not.i.i.i.i.i.i.i.i72.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i.i.i.i.i66.i.i" ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bj = load i64, ptr %i.bi, align 8, !range !71, !alias.scope !17568, !noundef !44 ; 2 uses
  %.not51.i.i.i.i77.i.i = icmp eq i64 %i.bj, 2
  br i1 %.not51.i.i.i.i77.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i91.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i73.i.i"
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !17569, !noundef !44 ; 2 uses
  %.not.i.i.i.i58.i.i.i.i78.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i58.i.i.i.i78.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i80.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val4.i.i.i.i.i59.i.i.i.i79.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !17570, !nonnull !44, !noundef !44
  %i.bn = ptrtoint ptr %.val4.i.i.i.i.i59.i.i.i.i79.i.i to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub nuw i64 %i.bn, %i.bo
  %i.bq = udiv exact i64 %i.bp, 20
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i80.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i80.i.i": ; preds = %bb.l, %bb.k
  %.sroa.7.0.i.i.i.i61.i.i.i.i81.i.i = phi i64 [ %i.bq, %bb.l ], [ 0, %bb.k ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !17569, !noundef !44 ; 2 uses
  %.not51.i.i.i.i62.i.i.i.i82.i.i = icmp eq ptr %i.bs, null
  br i1 %.not51.i.i.i.i62.i.i.i.i82.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i84.i.i", label %bb.m

bb.m:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i80.i.i"
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val4.i58.i.i.i.i63.i.i.i.i83.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !17571, !nonnull !44, !noundef !44
  %i.bu = ptrtoint ptr %.val4.i58.i.i.i.i63.i.i.i.i83.i.i to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub nuw i64 %i.bu, %i.bv
  %i.bx = udiv exact i64 %i.bw, 20
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i84.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i84.i.i": ; preds = %bb.m, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i80.i.i"
  %.sroa.8.0.i.i.i.i65.i.i.i.i85.i.i = phi i64 [ %i.bx, %bb.m ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit.i.i.i.i60.i.i.i.i80.i.i" ]
  %i.by = add nuw nsw i64 %.sroa.8.0.i.i.i.i65.i.i.i.i85.i.i, %.sroa.7.0.i.i.i.i61.i.i.i.i81.i.i
  %i.bz = trunc nuw i64 %i.bj to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val.i.i.i.i66.i.i.i.i86.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !17569
  %.not73.i.i.i.i67.i.i.i.i87.i.i = icmp ne ptr %.val.i.i.i.i66.i.i.i.i86.i.i, null
  %.sroa.870.0.not.i.i.i.i68.i.i.i.i88.i.i = select i1 %i.bz, i1 %.not73.i.i.i.i67.i.i.i.i87.i.i, i1 false ; 2 uses
  %spec.select86.i.i.i.i89.i.i = select i1 %.sroa.870.0.not.i.i.i.i68.i.i.i.i88.i.i, i64 undef, i64 %i.by
  %not..sroa.870.0.not.i.i.i.i68.i.i.i.i90.i.i = xor i1 %.sroa.870.0.not.i.i.i.i68.i.i.i.i88.i.i, true
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i91.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i91.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i84.i.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i73.i.i"
  %.sroa.8.1.i.i.i.i92.i.i = phi i64 [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i73.i.i" ], [ %spec.select86.i.i.i.i89.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i84.i.i" ]
  %.sroa.579.0.i.i.i.i93.i.i = phi i1 [ true, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit.i.i.i.i73.i.i" ], [ %not..sroa.870.0.not.i.i.i.i68.i.i.i.i90.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7256e277864e1627E.exit59.i.i.i.i64.i.i.i.i84.i.i" ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.cc = load i64, ptr %i.cb, align 8, !range !92, !alias.scope !17568, !noundef !44
  %spec.select89.i.i.i.i95.i.i = icmp samesign ugt i64 %i.cc, 1
  %op.rdx = select i1 %spec.select89.i.i.i.i95.i.i, i1 %.sroa.579.0.i.i.i.i93.i.i, i1 false
  %3 = freeze i1 %op.rdx
  %op.rdx10 = select i1 %3, i1 %.sroa.5.0.i.i.i.i75.i.i, i1 false ; 2 uses
  %i.cd = add i64 %.sroa.8.1.i.i.i.i92.i.i, %.sroa.7.1.i.i.i.i74.i.i ; 2 uses
  %i.ce = icmp uge i64 %i.cd, %.sroa.7.1.i.i.i.i74.i.i
  %.sroa.8.0.i.i = select i1 %op.rdx10, i64 %i.cd, i64 undef
  %narrow116.i.i = select i1 %op.rdx10, i1 %i.ce, i1 false
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit102.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit102.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i91.i.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i"
  %.sroa.8.1.i.i = phi i64 [ %.sroa.8.0.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i91.i.i" ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i" ]
  %.sroa.5110.0.i.i = phi i1 [ %narrow116.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7e8bf25726edd018E.exit71.i.i.i.i91.i.i" ], [ true, %"_ZN4core6option15Option$LT$T$GT$6map_or17h123ac4202285afccE.exit.i.i" ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !17557, !noundef !44 ; 2 uses
  %.not52.i.i = icmp eq ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val58.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !17557, !nonnull !44
  %i.ci = icmp eq ptr %.val58.i.i, %i.cg
  %.sroa.8113.0.i.i = select i1 %.not52.i.i, i1 true, i1 %i.ci ; 2 uses
  %or.cond54.i.i = select i1 %.sroa.8113.0.i.i, i1 %.sroa.5.0.i.i, i1 false
  %or.cond.i.i = and i1 %.sroa.5110.0.i.i, %.sroa.8113.0.i.i
  %or.cond56.i.i = select i1 %or.cond54.i.i, i1 %or.cond.i.i, i1 false ; 2 uses
  %i.cj = add i64 %.sroa.8.1.i.i, %.sroa.7.1.i.i  ; 2 uses
  %i.ck = icmp uge i64 %i.cj, %.sroa.7.1.i.i
  %.sroa.5.0 = select i1 %or.cond56.i.i, i64 %i.cj, i64 undef
  %narrow = select i1 %or.cond56.i.i, i1 %i.ck, i1 false
  %.sink.i.i = zext i1 %narrow to i64
  store i64 0, ptr %0, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.i, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %i.cm, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h299949ffcde2e013E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i64, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !17599, !noalias !17600 ; 2 uses
  store i64 0, ptr %1, align 8, !alias.scope !17599, !noalias !17600
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %.promoted14 = load ptr, ptr %i.i, align 8      ; 6 uses
  %i.l = trunc nuw i64 %.promoted to i1
  %i.m = add i64 %2, -1                           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17601)
  br i1 %i.l, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.peel", label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17603)
  %i.n = icmp eq ptr %.promoted14, %i.h
  br i1 %i.n, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i.peel"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i.peel": ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.promoted14, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !alias.scope !17604, !noalias !17600
  %.sroa.0.0.copyload1.i.i.i.i.peel = load i64, ptr %.promoted14, align 8, !noalias !17605 ; 3 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.promoted14, i64 16
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.peel = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.peel, align 8, !noalias !17605
  %.not.i.i.i.i.peel = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.peel, -9223372036854775807
  br i1 %.not.i.i.i.i.peel, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread", label %bb.c

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i.peel"
  %.sroa.6.0..sroa_idx2.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.promoted14, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.peel = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.peel, align 8, !noalias !17605
  %.not.i.i.i.i.i.peel = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.peel, -9223372036854775808 ; 3 uses
  %.sroa.04.0.i.i.i.i.i.peel = select i1 %.not.i.i.i.i.i.peel, i64 0, i64 %.sroa.0.0.copyload1.i.i.i.i.peel ; 2 uses
  %.sroa.56.0.i.i.i.i.i.peel = select i1 %.not.i.i.i.i.i.peel, ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.peel ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !17606
  %i.p = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #66, !noalias !17606 ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread6.peel", !prof !49

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread6.peel": ; preds = %bb.c
  %.sroa.6.0.i.i.i.i.i.peel = select i1 %.not.i.i.i.i.i.peel, i64 0, i64 %.sroa.6.sroa.4.0.copyload.i.i.i.i.peel
  store i64 216172782113783809, ptr %i.p, align 8, !noalias !17606
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 -1, ptr %i.r, align 8, !noalias !17606
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.04.0.i.i.i.i.i.peel, ptr %i.s, align 8, !noalias !17607
  %.sroa.5.0..sroa_idx.i.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %.sroa.56.0.i.i.i.i.i.peel, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.peel, align 8, !noalias !17607
  %.sroa.7.0..sroa_idx.i.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %.sroa.6.0.i.i.i.i.i.peel, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.peel, align 8, !noalias !17607
  br label %bb.d

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.peel": ; preds = %.lr.ph
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread", label %bb.d

bb.d:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.peel", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread6.peel"
  %i.t = phi ptr [ %i.o, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread6.peel" ], [ %.promoted14, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.peel" ]
  %.sroa.0.0.i11.peel = phi ptr [ %i.p, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread6.peel" ], [ %i.f, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.peel" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0.i11.peel, ptr %i.b, align 8, !noalias !17608
  %i.u = load i64, ptr %i.j, align 8, !alias.scope !17608, !noundef !44 ; 5 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = load i64, ptr %i.k, align 8, !alias.scope !17608 ; 3 uses
  %i.x = icmp eq i64 %i.w, 32                     ; 2 uses
  %or.cond.i.peel = select i1 %i.v, i1 %i.x, i1 false, !prof !109
  br i1 %or.cond.i.peel, label %.loopexit16, label %bb.e, !prof !109

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.u, %i.w
  br i1 %i.y, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.g, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.peel"

bb.g:                                             ; preds = %bb.f
  %.not.i.peel = icmp eq i64 %i.u, 32
  br i1 %.not.i.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  %i.aa = shl i64 %i.u, 3
  %i.ab = sub i64 256, %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %0, ptr nonnull align 8 %i.z, i64 %i.ab, i1 false), !alias.scope !17608
  %.pre.i.peel = load i64, ptr %i.j, align 8, !alias.scope !17608
  %i.ac = sub i64 32, %.pre.i.peel
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  store i64 %i.ad, ptr %i.k, align 8, !alias.scope !17608
  store i64 0, ptr %i.j, align 8, !alias.scope !17608
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.peel"

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !17608
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.peel"

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.peel": ; preds = %bb.j, %bb.i, %bb.f
  %i.ae = phi i64 [ %i.ad, %bb.i ], [ %i.w, %bb.f ], [ 0, %bb.j ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  store ptr %.sroa.0.0.i11.peel, ptr %i.af, align 8, !alias.scope !17608
  %i.ag = load i64, ptr %i.k, align 8, !alias.scope !17608, !noundef !44
  %i.ah = add i64 %i.ag, 1                        ; 2 uses
  store i64 %i.ah, ptr %i.k, align 8, !alias.scope !17608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = icmp eq i64 %i.m, 0
  br i1 %i.ai, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread", label %.peel.next

.peel.next:                                       ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.peel", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit"
  %i.aj = phi i64 [ %i.bq, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit" ], [ %i.ah, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.peel" ] ; 3 uses
  %i.ak = phi ptr [ %i.an, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit" ], [ %i.t, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.peel" ] ; 5 uses
  %.sroa.4.012 = phi i64 [ %i.al, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit" ], [ %i.m, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h5c3c6866481154d9E.exit.peel" ]
  %i.al = add i64 %.sroa.4.012, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17610)
  %i.am = icmp eq ptr %i.ak, %i.h
  br i1 %i.am, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i": ; preds = %.peel.next
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.i, align 8, !alias.scope !17611, !noalias !17600
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !17612 ; 3 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.6.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !17612
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb9f3571ffadb26E.exit.thread", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !17612
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -9223372036854775808 ; 3 uses
  %.sroa.04.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %.sroa.0.0.copyload1.i.i.i.i ; 2 uses
  %.sroa.56.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !17613
  %i.ao = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #66, !noalias !17613 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.loopexit, label %bb.o, !prof !49

bb.l:                                             ; preds = %.loopexit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = icmp eq i64 %.sroa.04.0.i.i.i.i.i.lcssa, 0
  br i1 %i.ar, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.i.i.i.i.i.lcssa) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.56.0.i.i.i.i.i.lcssa, i64 noundef %.sroa.04.0.i.i.i.i.i.lcssa, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !17614
  br label %common.resume

.loopexit:                                        ; preds = %bb.k, %bb.c
  %.sroa.04.0.i.i.i.i.i.lcssa = phi i64 [ %.sroa.04.0.i.i.i.i.i.peel, %bb.c ], [ %.sroa.04.0.i.i.i.i.i, %bb.k ] ; 2 uses
  %.sroa.56.0.i.i.i.i.i.lcssa = phi ptr [ %.sroa.56.0.i.i.i.i.i.peel, %bb.c ], [ %.sroa.56.0.i.i.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17613
end_hunk_0
