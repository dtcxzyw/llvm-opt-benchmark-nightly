Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.06?download=true
inline.NumInlined: 310
inline.NumDeleted: 135
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB7_9HttpCache23revalidate_merge_header0B7_:bb.a
  store i64 %.sroa.7.0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.13.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = call noundef align 8 ptr @_RNvXsD_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9ValueIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d) ; 2 uses
  %.not.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit
  %i.t = phi ptr [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit ], [ %i.s, %bb.f ] ; 2 uses
  %i.u = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !428, !noundef !5 ; 2 uses
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !428
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %bb.g, label %bb.l

._crit_edge:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.x = call noundef align 8 ptr @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13insert_headerReRNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull align 8 %i.t) ; 2 uses
  %.not.i12 = icmp eq ptr %i.x, null
  br i1 %.not.i12, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !429
  store ptr %i.x, ptr %i.b, align 8, !noalias !429
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 20, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #25
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %common.resume unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.ae, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerReRNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull align 8 %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.aa = load i8, ptr %i.c, align 8, !range !21, !alias.scope !430, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.m, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit, !prof !18

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !430
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !430, !nonnull !5, !align !12, !noundef !5
  store ptr %i.ad, ptr %i.a, align 8, !noalias !430
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #25
          to label %bb.o unwind label %bb.n, !noalias !430

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %common.resume unwind label %bb.p, !noalias !430

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !430
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit
  %i.ag = call noundef align 8 ptr @_RNvXsD_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9ValueIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cset5b41vfmiv_13pingora_cacheNtB5_15HttpCacheDigest17add_lock_duration(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !22, !alias.scope !433, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, -1
  br i1 %.not.i.i, label %_RNvCset5b41vfmiv_13pingora_cache19add_duration_to_opt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !alias.scope !433 ; 2 uses
  %i.d = add i64 %i.c, %1                         ; 4 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %bb.f, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i32 %i.b, %2                 ; 3 uses
  %i.g = icmp samesign ugt i32 %i.f, 999999999
  br i1 %i.g, label %bb.d, label %_RNvCset5b41vfmiv_13pingora_cache19add_duration_to_opt.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.d, -1
  br i1 %i.h, label %bb.f, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i64 %i.d, 1
  %i.j = add nsw i32 %i.f, -1000000000
  br label %_RNvCset5b41vfmiv_13pingora_cache19add_duration_to_opt.exit

bb.f:                                             ; preds = %bb.d, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26, !noalias !433
  unreachable

_RNvCset5b41vfmiv_13pingora_cache19add_duration_to_opt.exit: ; preds = %bb.a, %bb.c, %bb.e
  %.sroa.0.0.i.i.pn.i.i = phi i64 [ %i.d, %bb.c ], [ %i.i, %bb.e ], [ %1, %bb.a ]
  %.sroa.4.0.i.i.pn.i.i = phi i32 [ %i.f, %bb.c ], [ %i.j, %bb.e ], [ %2, %bb.a ]
  store i64 %.sroa.0.0.i.i.pn.i.i, ptr %0, align 8, !alias.scope !433
  store i32 %.sroa.4.0.i.i.pn.i.i, ptr %i.a, align 8, !alias.scope !433
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cset5b41vfmiv_13pingora_cacheNtB5_15HttpCacheDigest19add_lookup_duration(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !range !22, !alias.scope !436, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i, label %_RNvCset5b41vfmiv_13pingora_cache19add_duration_to_opt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !alias.scope !436 ; 2 uses
  %i.e = add i64 %i.d, %1                         ; 4 uses
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.f, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i32 %i.c, %2                 ; 3 uses
  %i.h = icmp samesign ugt i32 %i.g, 999999999
  br i1 %i.h, label %bb.d, label %_RNvCset5b41vfmiv_13pingora_cache19add_duration_to_opt.exit

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %bb.f, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i64 %i.e, 1
  %i.k = add nsw i32 %i.g, -1000000000
  br label %_RNvCset5b41vfmiv_13pingora_cache19add_duration_to_opt.exit

bb.f:                                             ; preds = %bb.d, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26, !noalias !436
  unreachable

_RNvCset5b41vfmiv_13pingora_cache19add_duration_to_opt.exit: ; preds = %bb.a, %bb.c, %bb.e
  %.sroa.0.0.i.i.pn.i.i = phi i64 [ %i.e, %bb.c ], [ %i.j, %bb.e ], [ %1, %bb.a ]
  %.sroa.4.0.i.i.pn.i.i = phi i32 [ %i.g, %bb.c ], [ %i.k, %bb.e ], [ %2, %bb.a ]
  store i64 %.sroa.0.0.i.i.pn.i.i, ptr %i.a, align 8, !alias.scope !436
  store i32 %.sroa.4.0.i.i.pn.i.i, ptr %i.b, align 8, !alias.scope !436
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs1_Cset5b41vfmiv_13pingora_cacheNtB5_13RespCacheable11unwrap_meta(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !437, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef %2, ptr %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.d(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %2)
          to label %bb.g unwind label %bb.j

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ %i.r, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.sroa.0.0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %3, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !440
  %i.j = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 833) 72, i64 noundef 8) #24, !noalias !440 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.i, !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #25
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #22
          to label %.critedge unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.n = load i128, ptr %i.a, align 16, !noundef !5
  %i.o = icmp eq i128 %i.n, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.o, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load i8, ptr %i.q, align 8, !range !13, !noundef !5
  br label %bb.c

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.j

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECset5b41vfmiv_13pingora_cache(ptr nonnull %2, ptr nonnull %3) #22
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.critedge:                                        ; preds = %bb.l, %bb.e
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.s, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body10

bb.l:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #22
  br label %.critedge
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache10cache_meta(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !23, !noundef !5
  switch i64 %i.c, label %bb.b [
    i64 4, label %bb.c
    i64 5, label %bb.g
    i64 6, label %bb.c
    i64 7, label %bb.c
    i64 8, label %bb.c
    i64 9, label %bb.c
    i64 10, label %bb.c
  ], !prof !441

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_Cset5b41vfmiv_13pingora_cacheNtB5_10CachePhaseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val13 = load ptr, ptr %i.d, align 8, !align !12, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %.val13, null
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val13, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !align !12, !noundef !5 ; 2 uses
  %.not2.i = icmp eq ptr %i.f, null
  br i1 %.not2.i, label %bb.f, label %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit, !prof !18

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #26
  unreachable

_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 776 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !align !12, !noundef !5
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %bb.n, label %bb.m, !prof !18

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val12 = load ptr, ptr %i.i, align 8, !align !12, !noundef !5 ; 2 uses
  %.not.i14 = icmp eq ptr %.val12, null
  br i1 %.not.i14, label %bb.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val12, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !align !12, !noundef !5 ; 3 uses
  %.not2.i15 = icmp eq ptr %i.k, null
  br i1 %.not2.i15, label %bb.j, label %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit16, !prof !18

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #26
  unreachable

_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit16: ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 800
  %i.m = load ptr, ptr %i.l, align 8, !noundef !5
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.k, label %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit19, !prof !18

bb.k:                                             ; preds = %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_Cset5b41vfmiv_13pingora_cacheNtB5_10CachePhaseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #26
  unreachable

_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit19: ; preds = %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 776 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !align !12, !noundef !5
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.l, label %bb.m, !prof !18

bb.l:                                             ; preds = %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit19
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26
  unreachable

bb.m:                                             ; preds = %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit, %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit19
  %.sroa.0.0 = phi ptr [ %i.n, %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit19 ], [ %i.g, %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache13inner_enabled.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache10cache_miss(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !23, !noundef !5
  switch i64 %i.b, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse11inject_data:bb.a
_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse8put_data.exit: ; preds = %bb.e
  %i.bj = add i64 %i.bf, %3
  store i64 %i.bj, ptr %i.av, align 8, !alias.scope !699, !noalias !700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 0, ptr %i.aq, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 5 uses
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 34 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.755.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.cn

bb.i:                                             ; preds = %.backedge, %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse8put_data.exit
  %i.dg = load i8, ptr %1, align 8, !range !14, !noundef !5 ; 2 uses
  switch i8 %i.dg, label %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit.thread [
    i8 3, label %bb.bs
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.bs
  ]

_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit.thread: ; preds = %bb.bs, %bb.i, %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit, %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.cn

bb.j:                                             ; preds = %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !705
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.dh = phi i64 [ 0, %bb.j ], [ %i.dp, %bb.k ]  ; 5 uses
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) @114, i64 32, i1 false), !noalias !705
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) @114, i64 32, i1 false), !noalias !705
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) @114, i64 32, i1 false), !noalias !705
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.dh
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) @114, i64 32, i1 false), !noalias !705
  %i.dp = add nuw nsw i64 %i.dh, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.dp, 256
  br i1 %exitcond.not.i.3, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !705
  store i8 0, ptr %i.bm, align 8, !noalias !705
  store i16 0, ptr %i.bn, align 2, !noalias !705
  store ptr null, ptr %i.aj, align 8, !noalias !705
  store ptr %i.ak, ptr %i.bp, align 8, !noalias !705
  store i64 256, ptr %i.bq, align 8, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !705
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bs, i8 0, i64 5, i1 false), !noalias !705
  store i8 1, ptr %i.ai, align 1, !noalias !705
  store i8 1, ptr %i.br, align 1, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !705
  %i.dq = load ptr, ptr %i.au, align 8, !alias.scope !704, !noalias !706, !nonnull !5, !noundef !5
  %i.dr = load i64, ptr %i.av, align 8, !alias.scope !704, !noalias !706, !noundef !5
  invoke void @_RNvMs3_Cs1ll6eLl40nD_8httparseNtB5_12ParserConfig14parse_response(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(7) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %i.dr)
          to label %.noexc unwind label %.loopexit78

.noexc:                                           ; preds = %bb.l
  %i.ds = load i64, ptr %i.ah, align 8, !range !11, !noalias !705, !noundef !5 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 2
  br i1 %i.dt, label %.split.i, label %bb.q

.split.i:                                         ; preds = %.noexc
  %i.du = load i8, ptr %i.bt, align 8, !range !707, !noalias !705, !noundef !5 ; 2 uses
  store i8 5, ptr %1, align 8, !alias.scope !704, !noalias !706
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.du, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !704, !noalias !706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !705
  store i16 13, ptr %i.ag, align 8, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !705
  %i.dv = load ptr, ptr %i.au, align 8, !alias.scope !704, !noalias !706, !nonnull !5, !noundef !5
  %i.dw = load i64, ptr %i.av, align 8, !alias.scope !704, !noalias !706, !noundef !5
  store ptr %i.dv, ptr %i.ae, align 8, !noalias !705
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !705
  store ptr %i.ae, ptr %i.ad, align 8, !noalias !705
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs1DOjokLtCNv_4bstr4bstr4BStrNtB6_5Debug3fmtCset5b41vfmiv_13pingora_cache, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !705
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @117, ptr noundef nonnull %i.ad)
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !708
  invoke void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af)
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc28
  %i.dy = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtCs1ll6eLl40nD_8httparse5ErrorE4fromCset5b41vfmiv_13pingora_cache(i8 noundef range(i8 0, 7) %i.du)
          to label %_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseNtNtCsexYYUdYSQU6_5alloc6string6StringNtCs1ll6eLl40nD_8httparse5ErrorECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.m, !noalias !709 ; 2 uses

bb.m:                                             ; preds = %.noexc29
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.ea = load i64, ptr %i.t, align 8, !range !11, !alias.scope !710, !noalias !708, !noundef !5 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 2
  br i1 %i.eb, label %.body30, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.ec = icmp eq i64 %i.ea, 0
  br i1 %i.ec, label %.body30, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !alias.scope !712, !noalias !708, !noundef !5 ; 2 uses
  %i.ee = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.ee, label %.body30, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !712, !noalias !708, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #24, !noalias !713
  br label %.body30

_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseNtNtCsexYYUdYSQU6_5alloc6string6StringNtCs1ll6eLl40nD_8httparse5ErrorECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %.noexc29
  %i.eg = extractvalue { ptr, ptr } %i.dy, 0      ; 2 uses
  %i.eh = extractvalue { ptr, ptr } %i.dy, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.ei = invoke fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull %i.eg, ptr nonnull %i.eh)
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseNtNtCsexYYUdYSQU6_5alloc6string6StringNtCs1ll6eLl40nD_8httparse5ErrorECset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !705
  br label %.thread

bb.q:                                             ; preds = %.noexc
  %i.ej = load i64, ptr %i.bt, align 8, !noalias !705
  %i.ek = trunc nuw i64 %i.ds to i1
  br i1 %i.ek, label %.thread66, label %bb.r

.thread66:                                        ; preds = %bb.q
  store i8 1, ptr %1, align 8, !alias.scope !704, !noalias !706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bg

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !705
  %i.el = load i16, ptr %i.bn, align 2, !range !714, !noalias !705, !noundef !5
  %i.em = trunc nuw i16 %i.el to i1
  br i1 %i.em, label %bb.s, label %bb.x, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.en = load i16, ptr %i.bo, align 4, !noalias !705
  %i.eo = load i64, ptr %i.bq, align 8, !noalias !705, !noundef !5
  invoke void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader5buildtECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.ab, i16 noundef %i.en, i64 noundef 1, i64 %i.eo)
          to label %.noexc33 unwind label %.loopexit78

.noexc33:                                         ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.ep = load i64, ptr %i.ab, align 8, !range !8, !alias.scope !716, !noalias !717, !noundef !5
  %i.eq = icmp eq i64 %i.ep, -1
  br i1 %i.eq, label %bb.t, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i, !prof !18

bb.t:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !718
  %i.er = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !716, !noalias !717, !nonnull !5, !align !12, !noundef !5
  store ptr %i.es, ptr %i.u, align 8, !noalias !718
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #25
          to label %bb.v unwind label %bb.u, !noalias !719

bb.u:                                             ; preds = %bb.t
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #22
          to label %.body30 unwind label %bb.w, !noalias !719

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !719
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %.noexc33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(232) %i.ab, i64 232, i1 false), !alias.scope !720, !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !705
  %i.ev = load ptr, ptr %i.bp, align 8, !noalias !705, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.ew = load i64, ptr %i.bq, align 8, !noalias !705, !noundef !5 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ew, 5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx.i
  %i.ey = icmp eq i64 %i.ew, 0
  br i1 %i.ey, label %._crit_edge.i, label %.lr.ph.i

bb.x:                                             ; preds = %bb.r
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #26
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.x
  unreachable

.lr.ph.i:                                         ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i, %bb.al
  %.sroa.010.078.i = phi ptr [ %i.ez, %bb.al ], [ %i.ev, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.010.078.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !705
  %i.fa = load ptr, ptr %.sroa.010.078.i, align 8, !noalias !706, !nonnull !5, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.010.078.i, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !706, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !705
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %i.fc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.y unwind label %.loopexit71.i, !noalias !706

._crit_edge.i:                                    ; preds = %bb.al, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !705
  invoke void @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ej)
          to label %bb.ap unwind label %.loopexit.split-lp.i.loopexit, !noalias !706

.body.i:                                          ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %bb.aw, %bb.at, %bb.an, %bb.ad, %.loopexit71.i
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.ad ], [ %i.hf, %bb.aw ], [ %lpad.phi76.i, %bb.an ], [ %i.gp, %bb.at ], [ %lpad.loopexit.i, %.loopexit71.i ], [ %lpad.loopexit79, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskspKcFIsYcD_12pingora_http14ResponseHeaderECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(232) %i.ac) #22
          to label %.body30 unwind label %bb.ao, !noalias !706

.loopexit71.i:                                    ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i.loopexit:                    ; preds = %._crit_edge.i, %bb.aq, %bb.ax, %bb.ay
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %bb.z
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %.lr.ph.i
  %i.fd = load i64, ptr %i.w, align 8, !range !17, !noalias !705, !noundef !5
  %i.fe = trunc nuw i64 %i.fd to i1
  %i.ff = load i64, ptr %i.bu, align 8, !range !19, !noalias !705, !noundef !5 ; 3 uses
  br i1 %i.fe, label %bb.z, label %bb.aa, !prof !18

bb.z:                                             ; preds = %bb.y
  %i.fg = load i64, ptr %i.bv, align 8, !noalias !705
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ff, i64 %i.fg) #25
          to label %bb.am unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !706

bb.aa:                                            ; preds = %bb.y
  %i.fh = load ptr, ptr %i.bv, align 8, !noalias !705, !nonnull !5, !noundef !5 ; 2 uses
  %i.fi = icmp ule i64 %i.fc, %i.ff
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !705
  %.not.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  store i64 %i.ff, ptr %i.z, align 8, !noalias !705
  store ptr %i.fh, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !705
  store i64 %i.fc, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !705
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.010.078.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !706, !nonnull !5, !noundef !5
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.010.078.i, i64 24
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !706, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !705
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.fm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ae unwind label %.loopexit72.i, !noalias !706

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr nonnull align 1 %i.fa, i64 %i.fc, i1 false), !noalias !706
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ah
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ae:                                            ; preds = %bb.ab
  %i.fn = load i64, ptr %i.v, align 8, !range !17, !noalias !705, !noundef !5
  %i.fo = trunc nuw i64 %i.fn to i1
  %i.fp = load i64, ptr %i.bw, align 8, !range !19, !noalias !705, !noundef !5 ; 3 uses
  br i1 %i.fo, label %bb.af, label %bb.ag, !prof !18

bb.af:                                            ; preds = %bb.ae
  %i.fq = load i64, ptr %i.bx, align 8, !noalias !705
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.fp, i64 %i.fq) #25
          to label %bb.am unwind label %.loopexit.split-lp73.i, !noalias !706

bb.ag:                                            ; preds = %bb.ae
  %i.fr = load ptr, ptr %i.bx, align 8, !noalias !705, !nonnull !5, !noundef !5 ; 2 uses
  %i.fs = icmp ule i64 %i.fm, %i.fp
  call void @llvm.assume(i1 %i.fs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !705
  store i64 %i.fp, ptr %i.y, align 8, !noalias !705
  store ptr %i.fr, ptr %i.by, align 8, !noalias !705
  store i64 0, ptr %i.bz, align 8, !noalias !705
  %.not29.i = icmp eq i64 %i.fm, 0
  br i1 %.not29.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  invoke void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1c_3vec3VechEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.aj unwind label %bb.ad, !noalias !706

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull align 1 %i.fk, i64 %i.fm, i1 false), !noalias !706
  store i64 %i.fm, ptr %i.bz, align 8, !noalias !705
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !705
  %i.ft = load i8, ptr %i.aa, align 8, !range !21, !noalias !705, !noundef !5
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !705, !nonnull !5, !align !12, !noundef !5
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse11inject_data:bb.a
  br i1 %.not.i30.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.noexc55
  %i.kw = lshr i64 %i.ku, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !766
  %i.kx = load ptr, ptr %i.k, align 8, !alias.scope !764, !noalias !765, !nonnull !5, !noundef !5
  %i.ky = load i64, ptr %i.cy, align 8, !alias.scope !764, !noalias !765, !noundef !5
  %i.kz = load i64, ptr %i.cz, align 8, !alias.scope !764, !noalias !765, !noundef !5
  %i.la = sub nsw i64 0, %i.kw
  %i.lb = getelementptr inbounds i8, ptr %i.kx, i64 %i.la
  %i.lc = add i64 %i.ky, %i.kw
  %i.ld = add i64 %i.kz, %i.kw                    ; 2 uses
  %i.le = icmp sgt i64 %i.ld, -1
  call void @llvm.assume(i1 %i.le)
  store i64 %i.ld, ptr %i.e, align 8, !noalias !766
  store ptr %i.lb, ptr %i.da, align 8, !noalias !766
  store i64 %i.lc, ptr %i.db, align 8, !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !766
  invoke void @_RNvXsE_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc56 unwind label %.loopexit78

.noexc56:                                         ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !766
  store i64 %i.kw, ptr %i.c, align 8, !noalias !768
  %i.lf = load i64, ptr %i.dc, align 8, !alias.scope !767, !noalias !766, !noundef !5 ; 4 uses
  %.not.i.i31.i = icmp ugt i64 %i.kw, %i.lf
  br i1 %.not.i.i31.i, label %bb.cd, label %bb.cg, !prof !18

bb.cd:                                            ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !768
  store i64 %i.lf, ptr %i.b, align 8, !noalias !768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !768
  store ptr %i.c, ptr %i.a, align 8, !noalias !768
  %.sroa.42.0..sroa_idx.i.i32.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i32.i, align 8, !noalias !768
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.lg, align 8, !noalias !768
  %.sroa.46.0..sroa_idx.i.i33.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i33.i, align 8, !noalias !768
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @134, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #26
          to label %.noexc.i35.i unwind label %bb.cf, !noalias !769

.noexc.i35.i:                                     ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %.noexc55
  %i.lh = load ptr, ptr %i.k, align 8, !alias.scope !764, !noalias !765, !nonnull !5, !noundef !5
  %i.li = load i64, ptr %i.cy, align 8, !alias.scope !764, !noalias !765, !noundef !5
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit36.i

bb.cf:                                            ; preds = %bb.cd
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.lk = load ptr, ptr %.sroa.755.0..sroa_idx56.i, align 8, !alias.scope !772, !noalias !766, !noundef !5
  %i.ll = load ptr, ptr %i.d, align 8, !alias.scope !772, !noalias !766, !nonnull !5, !align !12, !noundef !5
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !773, !nonnull !5, !noundef !5
  %i.lo = load ptr, ptr %i.dd, align 8, !alias.scope !772, !noalias !766, !noundef !5
  invoke void %i.ln(ptr noundef %i.lk, ptr noundef %i.lo, i64 noundef %i.lf)
          to label %.body30 unwind label %bb.ch, !noalias !769, !inline_history !657

bb.cg:                                            ; preds = %.noexc56
  %i.lp = sub nuw i64 %i.lf, %i.kw
  %i.lq = load ptr, ptr %i.dd, align 8, !alias.scope !767, !noalias !766, !noundef !5
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !766
  %.sroa.047.0.copyload48.i = load ptr, ptr %i.d, align 8, !noalias !774
  %.sroa.755.0.copyload57.i = load ptr, ptr %.sroa.755.0..sroa_idx56.i, align 8, !noalias !774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !766
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit36.i

bb.ch:                                            ; preds = %bb.cf
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !769
  unreachable

_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit36.i: ; preds = %bb.cg, %bb.ce
  %.sroa.755.0.i = phi ptr [ %i.kt, %bb.ce ], [ %.sroa.755.0.copyload57.i, %bb.cg ]
  %.sroa.652.0.i = phi i64 [ %i.li, %bb.ce ], [ %i.lp, %bb.cg ]
  %.sroa.549.0.i = phi ptr [ %i.lh, %bb.ce ], [ %i.lr, %bb.cg ]
  %.sroa.047.0.i = phi ptr [ @_RNvNtCs1eA6bChxBZF_5bytes9bytes_mut13SHARED_VTABLE, %bb.ce ], [ %.sroa.047.0.copyload48.i, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !752
  br label %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit

_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit: ; preds = %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i44, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit36.i
  %.sroa.17.0 = phi ptr [ %.sroa.755.0.i, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit36.i ], [ %.sroa.7.0.i45, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i44 ]
  %.sroa.15.0 = phi i64 [ %.sroa.652.0.i, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit36.i ], [ %.sroa.6.0.i, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i44 ]
  %.sroa.12.0 = phi ptr [ %.sroa.549.0.i, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit36.i ], [ %.sroa.5.0.i, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i44 ]
  %.sroa.862.0 = phi ptr [ %.sroa.047.0.i, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit36.i ], [ %.sroa.0.0.i, %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i44 ] ; 2 uses
  %.not25 = icmp eq ptr %.sroa.862.0, null
  br i1 %.not25, label %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.lt = load i8, ptr %1, align 8, !range !14, !noundef !5
  %i.lu = icmp eq i8 %i.lt, 4
  store ptr %.sroa.862.0, ptr %i.de, align 8
  store ptr %.sroa.12.0, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %.sroa.15.0, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.17.0, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %i.lv = zext i1 %i.lu to i8
  store i8 %i.lv, ptr %i.df, align 1
  store i8 1, ptr %i.an, align 8
  %i.lw = load i64, ptr %i.bl, align 8, !alias.scope !775, !noalias !776, !noundef !5 ; 3 uses
  %i.lx = load i64, ptr %i.aq, align 8, !range !6, !alias.scope !775, !noalias !776, !noundef !5
  %i.ly = icmp eq i64 %i.lw, %i.lx
  br i1 %i.ly, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskE8grow_oneCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.cm unwind label %bb.ck, !noalias !776

bb.ck:                                            ; preds = %bb.cj
  %i.lz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.an) #22
          to label %.body30 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !776
  unreachable

bb.cm:                                            ; preds = %bb.cj, %bb.ci
  %i.mb = load ptr, ptr %i.bk, align 8, !alias.scope !775, !noalias !776, !nonnull !5, !noundef !5
  %i.mc = getelementptr inbounds nuw [40 x i8], ptr %i.mb, i64 %i.lw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mc, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.an, i64 40, i1 false)
  %i.md = add i64 %i.lw, 1
  store i64 %i.md, ptr %i.bl, align 8, !alias.scope !775, !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.backedge

.backedge:                                        ; preds = %bb.cm, %bb.bp
  br label %bb.i

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECset5b41vfmiv_13pingora_cache.exit, %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse10parse_body.exit.thread, %bb.h
  ret void

bb.co:                                            ; preds = %.body30
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !779
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4096, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !779
  %i.b = load i64, ptr %i.a, align 8, !range !17, !noalias !779, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noalias !779, !noundef !5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !779
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #25, !noalias !779
  unreachable

_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !779, !nonnull !5, !noundef !5
  %i.i = icmp samesign ugt i64 %i.e, 4095
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !779
  %i.j = lshr i64 %i.e, 10
  %i.k = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %..i.i.i = tail call noundef range(i64 0, 8) i64 @llvm.umin.i64(i64 range(i64 0, 54) %i.l, i64 7)
  %i.m = shl nuw nsw i64 %..i.i.i, 2
  %i.n = getelementptr i8, ptr null, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 1
  store i8 0, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx4, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @118, ptr %i.q, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noalias noundef align 8 ptr @_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse6finish(ptr noalias nofree noundef align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = load i8, ptr %0, align 8, !range !14, !noundef !5
  switch i8 %i.d, label %.split [
    i8 3, label %.thread
    i8 4, label %bb.e
  ]

.thread:                                          ; preds = %bb.a
  store i8 4, ptr %0, align 8
  br label %bb.e

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs0_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB5_10ParseStateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @119, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !785
  call void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) @121, i64 24, i1 false), !noalias !786
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 3, ptr %i.f, align 1, !noalias !785
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.g, align 8, !noalias !785
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.h, align 8, !noalias !785
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !787
  %i.i = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 833) 72, i64 noundef 8) #24, !noalias !787 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit, !prof !18

bb.b:                                             ; preds = %.split
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #25
          to label %.noexc.i unwind label %bb.c, !noalias !785

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #22
          to label %.critedge.i unwind label %bb.d, !noalias !785

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !785
  unreachable

.critedge.i:                                      ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit: ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !785
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.thread, %_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit ], [ null, %bb.a ], [ null, %.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @118, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB5_10ParseStateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 8, !range !14, !noundef !5
  switch i8 %i.e, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 13)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.d, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 24, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.c, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.b, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCset5b41vfmiv_13pingora_cache13NoCacheReasonNtB6_5Debug3fmtBy_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXse_Cset5b41vfmiv_13pingora_cacheNtB5_13NoCacheReasonNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_Cset5b41vfmiv_13pingora_cacheNtB5_10CachePhaseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !23, !noundef !5
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @137)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 6)
end_hunk_2
