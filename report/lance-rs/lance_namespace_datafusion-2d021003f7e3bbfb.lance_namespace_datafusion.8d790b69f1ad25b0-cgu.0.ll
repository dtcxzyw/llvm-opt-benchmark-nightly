Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15008
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNvXs_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB4_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB23_16CachedReaderDataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ %i.v, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
  %i.u = phi i64 [ %i.s, %bb.c ], [ %i.w, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42305)
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.k, i64 %i.u) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.v = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  %i.w = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 6 uses
  %i.x = load i64, ptr %1, align 8, !range !112, !alias.scope !42303, !noundef !110 ; 4 uses
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !42306, !noundef !110 ; 3 uses
  %i.y = icmp ult i64 %.val.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.thread.i.i, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i: ; preds = %bb.d
  %exitcond.not.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.h, label %bb.e

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.thread.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %exitcond.not9.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not9.i.i, label %bb.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42307
  %i.aa = load ptr, ptr %i.p, align 8, !invariant.load !110, !noalias !42307, !nonnull !110
  call void %i.aa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !42307, !inline_history !42293
  call void @llvm.experimental.noalias.scope.decl(metadata !42308)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42307
  %i.ab = load ptr, ptr %i.p, align 8, !invariant.load !110, !noalias !42307, !nonnull !110
  call void %i.ab(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !42307, !inline_history !42293
  call void @llvm.experimental.noalias.scope.decl(metadata !42309)
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !42310, !nonnull !110, !noundef !110
  %i.ad = mul nuw i64 %i.x, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !42311
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.f, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !42312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42307
  %i.ae = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ae, ptr %i.i, align 8, !alias.scope !42303
  br label %bb.d

_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.af = add nsw i64 %.val.i.i.i, -1             ; 3 uses
  store i64 %i.af, ptr %i.h, align 8, !alias.scope !42304
  %i.ag = icmp samesign ult i64 %i.af, %i.x
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.q, align 8, !alias.scope !42304, !nonnull !110, !noundef !110
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.af ; 3 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !42313 ; 6 uses
  %.not3.i = icmp eq i64 %.sroa.010.0.copyload.i, -1
  br i1 %.not3.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !42313
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !42313 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.010.0.copyload.i, ptr %i.d, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.r, align 8, !invariant.load !110, !nonnull !110
  invoke void %i.aj(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.thread.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  store i8 1, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = icmp eq i64 %.sroa.010.0.copyload.i, 0
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.010.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !42314
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.k:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.c, align 8, !range !112, !noundef !110
  %.not1 = icmp eq i64 %i.am, -1
  br i1 %.not1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = icmp eq i64 %.sroa.010.0.copyload.i, 0
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit4, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.010.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !42315
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit4: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.o:                                             ; preds = %bb.l, %bb.h, %bb.b
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB4_29ExternalManifestCommitHandlerNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !42316 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 29, ptr noalias noundef nonnull readonly captures(address, read_provenance) @921, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @919)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifestNtB4_35LanceNamespaceExternalManifestStoreNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !42317 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @926, i64 noundef 35, ptr noalias noundef nonnull readonly captures(address, read_provenance) @927, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @923, ptr noalias noundef nonnull readonly captures(address, read_provenance) @928, i64 noundef 8, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @924, ptr noalias noundef nonnull readonly captures(address, read_provenance) @929, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @925)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !42318 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @930, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @931, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !42324 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42325
  %i.c = mul nuw nsw i64 %.16.val, 24             ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !42325
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !42325
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !42326
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #44, !noalias !42326 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #48, !noalias !42325
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %.16.val, ptr %i.b, align 8, !noalias !42325
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !42325
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %1 = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.l, %bb.c ], [ %.8.val, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.k, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %2, %bb.c ], [ %.16.val, %.lr.ph.preheader.i ]
  %2 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %3 = icmp eq ptr %.sroa.012.023.i, %1
  br i1 %3, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %4

4:                                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42325
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.c unwind label %bb.d, !noalias !42327

bb.c:                                             ; preds = %4
  %i.k = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !42327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42325
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %.lr.ph.i

bb.d:                                             ; preds = %4
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.j, align 8, !noalias !42325
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #49, !noalias !42327
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i
  %5 = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i ], [ %i.j, %bb.c ], [ %i.j, %.lr.ph.i ]
  store i64 %.16.val, ptr %5, align 8, !noalias !42325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !42328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42325
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !42329 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @933, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @934, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @932)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !42330 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !110, !noundef !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !110
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB5_11UringReaderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !42331 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @940, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @723, i64 noundef 6, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @721, ptr noalias noundef nonnull readonly captures(address, read_provenance) @716, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @713, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @713, ptr noalias noundef nonnull readonly captures(address, read_provenance) @717, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @714)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB5_20ManifestNamingSchemeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !42332 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !114, !noundef !110
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @943, ptr @942
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 2)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCscI6d9CVNmLh_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !42333 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCscI6d9CVNmLh_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsh_NtCs9ipI1vyGjpZ_12tracing_core5fieldReNtB5_5Value6recordCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 !guid !42334 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !110, !noundef !110
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !110
  tail call void @_RNvXs5_NtCs9ipI1vyGjpZ_12tracing_core5fieldeNtB5_5Value6record(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsh_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB5_16ManifestLocationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !42339 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = load <2 x i64>, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i8, ptr %i.g, align 8, !range !114, !noundef !110
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !112, !noundef !110
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.f
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.f ], [ -1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.l, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.55.0.copyload, ptr %.sroa.55.0..sroa_idx6, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx8, align 8
  store <2 x i64> %i.f, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !42340
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.f:                                             ; preds = %bb.b
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsi_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParamsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !42351 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 14 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.5 = alloca [80 x i8], align 8            ; 4 uses
  %i.b = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !112, !noundef !110
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42353)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !42353, !nonnull !110, !noundef !110 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !42353 ; 2 uses
  %i.g = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !42354
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  store ptr %.val.i, ptr %i.a, align 8, !alias.scope !42352
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val1.i, ptr %i.i, align 8, !alias.scope !42352
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42356)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(88) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.c)
          to label %_RNvYTINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtCs5FpxmzdwmiN_3url3UrlENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42358)
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !42359, !nonnull !110, !noundef !110
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !42359
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
