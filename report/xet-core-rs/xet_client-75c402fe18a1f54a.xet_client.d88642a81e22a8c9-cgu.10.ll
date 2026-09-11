Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.10?download=true
inline.NumInlined: 1148
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs_NtCs4Sxm5svDswZ_18reqwest_middleware6clientNtB5_20ClientWithMiddleware3getRNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client:bb.a
  %i.x = add nsw i64 %i.w, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !8, !noalias !153, !nonnull !8
  call void %i.ac(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(address) dereferenceable(312) %i.b, ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(312) %i.a) #36, !noalias !152, !inline_history !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  %i.ad = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.q
  br i1 %i.ae, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(312) %i.b, i64 312, i1 false), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !147
  br label %_RINvMs_NtCs4Sxm5svDswZ_18reqwest_middleware6clientNtB5_20ClientWithMiddleware7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit

bb.j:                                             ; preds = %bb.k, %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !143
  unreachable

bb.k:                                             ; preds = %bb.b, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.g, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request14RequestBuilderECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c) #35
          to label %bb.l unwind label %bb.j, !noalias !143

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %.pn.i

_RINvMs_NtCs4Sxm5svDswZ_18reqwest_middleware6clientNtB5_20ClientWithMiddleware7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs4Sxm5svDswZ_18reqwest_middleware6clientNtB5_20ClientWithMiddleware7requestNtCsbc8Eb5TzBdy_3url3UrlECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([312 x i8]) align 8 captures(none) dereferenceable(312) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 5 uses
  %i.b = alloca [312 x i8], align 8               ; 11 uses
  %i.c = alloca [272 x i8], align 8               ; 5 uses
  %.sroa.0 = alloca [272 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtB6_6Client7requestNtCsbc8Eb5TzBdy_3url3UrlECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = invoke { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http10extensions10ExtensionsECsiAynQAjgDuT_10xet_client(ptr null) #35
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 5 uses
  %i.h = extractvalue { ptr, i64 } %i.e, 1        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = invoke { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtBG_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EEECsiAynQAjgDuT_10xet_client(ptr nonnull %i.g, i64 %i.h) #35
          to label %bb.b unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.0, i64 272, i1 false), !noalias !162
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !162
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !162
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !162
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store i64 %i.m, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !162
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !162
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.0, i64 272, i1 false), !alias.scope !164
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx4, align 8, !alias.scope !164
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx6, align 8, !alias.scope !164
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx8, align 8, !alias.scope !164
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.m, ptr %.sroa.8.0..sroa_idx10, align 8, !alias.scope !164
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %.sroa.9.0..sroa_idx12, align 8, !alias.scope !164
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtB1t_6client14RequestBuilderNCINvMs_B3l_NtB3l_20ClientWithMiddleware7requestNtCsbc8Eb5TzBdy_3url3UrlE0ECsiAynQAjgDuT_10xet_client.exit

bb.i:                                             ; preds = %bb.i, %bb.g
  %.sroa.01.0.i = phi i64 [ 0, %bb.g ], [ %i.ac, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %i.b, i64 312, i1 false), !noalias !164
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !noalias !164
  %.val.i = load ptr, ptr %i.s, align 8, !noalias !164, !nonnull !8, !noundef !8
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val10.i = load ptr, ptr %i.t, align 8, !noalias !164, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !8, !noalias !165
  %i.w = add nsw i64 %i.v, -1
  %i.x = and i64 %i.w, -16
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !8, !noalias !165, !nonnull !8
  call void %i.ab(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(address) dereferenceable(312) %i.b, ptr noundef nonnull %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(312) %i.a) #36, !noalias !164, !inline_history !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  %i.ac = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.p
  br i1 %i.ad, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(312) %i.b, i64 312, i1 false), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !164
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtB1t_6client14RequestBuilderNCINvMs_B3l_NtB3l_20ClientWithMiddleware7requestNtCsbc8Eb5TzBdy_3url3UrlE0ECsiAynQAjgDuT_10xet_client.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtB1t_6client14RequestBuilderNCINvMs_B3l_NtB3l_20ClientWithMiddleware7requestNtCsbc8Eb5TzBdy_3url3UrlE0ECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.k:                                             ; preds = %bb.e, %bb.b, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.l:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request14RequestBuilderECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c) #35
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMsb_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB6_11LeafMutator31sufficient_insert_inplace_spaceNtNtNtB8_10page_store4base8PageImplECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 0, 2) %3, i64 %4, i64 noundef range(i64 0, 2) %5, i64 %6, ptr noalias nofree noundef nonnull readonly captures(none) %7, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias nofree noundef nonnull readonly captures(none) %9, i64 noundef range(i64 0, -9223372036854775808) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val15 = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16 = load i64, ptr %i.e, align 8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  call void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %.val16, i64 noundef %3, i64 %4, i64 noundef %5, i64 %6)
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.427.0.copyload = load i8, ptr %.sroa.427.0..sroa_idx, align 8, !alias.scope !178
  %.not = icmp ne i8 %.sroa.427.0.copyload, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ult i64 %1, %i.h
  %or.cond = select i1 %.not, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = call noundef i64 @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor12total_length(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  %i.k = sub i64 %.val16, %i.j                    ; 2 uses
  %i.l = add nuw i64 %10, %8                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit11

bb.d:                                             ; preds = %bb.b
  %i.n = call noundef i64 @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor12total_length(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  %i.o = sub i64 %.val16, %i.n
  %11 = add nuw i64 %10, %8                       ; 2 uses
  %.not6 = icmp eq i64 %3, 0
  %12 = add i64 %11, 4
  %spec.select = select i1 %.not6, i64 %12, i64 %11 ; 2 uses
  %.not7 = icmp eq i64 %5, 0
  %i.p = add i64 %spec.select, 4
  %.sroa.01.1 = select i1 %.not7, i64 %i.p, i64 %spec.select
  %i.q = icmp ule i64 %.sroa.01.1, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit, %bb.b
  %.sroa.0.1 = phi i1 [ false, %bb.b ], [ %i.w, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179
  store i8 2, ptr %i.a, align 1, !noalias !179
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #37, !noalias !180
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit11: ; preds = %bb.c
  %i.r = add i64 %1, 1
  %i.s = call noundef i64 @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor15length_of_pairs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, i64 noundef %1, i64 noundef %i.r) ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit10

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !181
  store i8 2, ptr %i.b, align 1, !noalias !181
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #37, !noalias !182
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit10: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit11
  %i.u = icmp slt i64 %i.k, 0
  br i1 %i.u, label %bb.h, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !183
  store i8 2, ptr %i.c, align 1, !noalias !183
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !184
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit10
  %i.v = sub nsw i64 %i.l, %i.s
  %i.w = icmp sle i64 %i.v, %i.k
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB6_14BranchAccessorNtNtNtB8_10page_store4base8PageImplE13child_for_keyNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashEB2a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = alloca [16 x i8], align 4                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 4 uses
  %.not26 = icmp eq i64 %i.f, 0
  %.sink38.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sink38.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.1, %bb.m ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %.not.i = icmp ult i64 %.sroa.0.0.lcssa, %i.g
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.h = shl i64 %i.g, 4
  %i.i = shl i64 %.sroa.0.0.lcssa, 3
  %i.j = or disjoint i64 %i.h, 8
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !194, !noalias !195, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val10.i = load i64, ptr %i.n, align 8, !noalias !196, !noundef !8 ; 2 uses
  %i.o = or disjoint i64 %i.k, 7
  %or.cond.not.i = icmp ult i64 %i.o, %.val10.i
  br i1 %or.cond.not.i, label %bb.e, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 8
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %i.p, i64 noundef %.val10.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #37, !noalias !196
  unreachable

.lr.ph:                                           ; preds = %bb.a, %bb.m
  %.sroa.0.025 = phi i64 [ %.sroa.0.1, %bb.m ], [ 0, %bb.a ] ; 2 uses
  %.sroa.04.024 = phi i64 [ %.sroa.04.1, %bb.m ], [ %i.f, %bb.a ] ; 2 uses
  %i.q = zext i64 %.sroa.0.025 to i128
  %i.r = zext i64 %.sroa.04.024 to i128
  %i.s = add nuw nsw i128 %i.q, %i.r
  %i.t = lshr i128 %i.s, 1
  %i.u = trunc nuw i128 %i.t to i64               ; 6 uses
  %i.v = tail call { ptr, i64 } @_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base8PageImplE3keyCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.u) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !6

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.j
  %.sink = phi ptr [ %i.am, %bb.j ], [ %i.m, %bb.b ]
  %.sink40 = phi i64 [ %i.ak, %bb.j ], [ %i.k, %bb.b ]
  %.sink38.sroa.phi = phi ptr [ %.sink38.sroa.gep, %bb.j ], [ %.sink38.sroa.gep47, %bb.b ]
  %.lcssa35.sink = phi i64 [ %i.u, %bb.j ], [ %.sroa.0.0.lcssa, %bb.b ]
  %.sink37 = phi ptr [ %i.d, %bb.j ], [ %i.b, %bb.b ]
  %.val.i14 = load ptr, ptr %.sink, align 8, !noalias !8, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i14, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink40
  %.sroa.02.0.copyload.i15 = load i64, ptr %i.y, align 1, !noalias !8
  call void @_RNvMs1_NtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4baseNtB5_10PageNumber13from_le_bytes(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %.sink38.sroa.phi, i64 noundef %.sroa.02.0.copyload.i15)
  store i64 %.lcssa35.sink, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %.sink37, i64 12, i1 false)
  ret void

bb.f:                                             ; preds = %.lr.ph
  %i.aa = extractvalue { ptr, i64 } %i.v, 1       ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %3, i64 range(i64 0, -9223372036854775808) %i.aa)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.w, i64 %spec.store.select.i), !alias.scope !197 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %3, %i.aa
  %spec.select.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  switch i8 %i.af, label %bb.h [
    i8 -1, label %bb.m
    i8 0, label %bb.i
    i8 1, label %bb.l
  ]

bb.g:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #37
  unreachable

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.ag = add i64 %i.f, 1                         ; 2 uses
  %.not.i9 = icmp ugt i64 %i.ag, %i.u
  br i1 %.not.i9, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ah = shl i64 %i.ag, 4
  %i.ai = shl i64 %i.u, 3
  %i.aj = or disjoint i64 %i.ah, 8
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !198, !noalias !199, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val10.i11 = load i64, ptr %i.an, align 8, !noalias !200, !noundef !8 ; 2 uses
  %i.ao = or disjoint i64 %i.ak, 7
  %or.cond.not.i12 = icmp ult i64 %i.ao, %.val10.i11
  br i1 %or.cond.not.i12, label %bb.e, label %bb.k, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.ap = add i64 %i.ak, 8
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.ap, i64 noundef %.val10.i11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #37, !noalias !200
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.aq = add nuw i64 %i.u, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l
  %.sroa.04.1 = phi i64 [ %.sroa.04.024, %bb.l ], [ %i.u, %bb.f ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.aq, %bb.l ], [ %.sroa.0.025, %bb.f ] ; 3 uses
  %i.ar = icmp ult i64 %.sroa.0.1, %.sroa.04.1
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

bb.n:                                             ; preds = %bb.i
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB6_14BranchAccessorNtNtNtB8_10page_store4base8PageImplE13child_for_keyReECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = alloca [16 x i8], align 4                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 4 uses
  %.not26 = icmp eq i64 %i.f, 0
  %.sink39.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sink39.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.1, %bb.l ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %.not.i = icmp ult i64 %.sroa.0.0.lcssa, %i.g
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.h = shl i64 %i.g, 4
  %i.i = shl i64 %.sroa.0.0.lcssa, 3
  %i.j = or disjoint i64 %i.h, 8
end_hunk_0
