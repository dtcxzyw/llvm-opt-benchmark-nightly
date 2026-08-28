Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.06?download=true
inline.NumInlined: 310
inline.NumDeleted: 135
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache6enable:bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 168, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache14HttpCacheInnerEEEB1y_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache14HttpCacheInnerEEEB1y_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache14HttpCacheInnerEEB1c_.exit.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtCset5b41vfmiv_13pingora_cache14HttpCacheInnerE3newBG_.exit
  store ptr %i.w, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache7disable(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !597, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !434, !noundef !5
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @107, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8
  %i.h = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.h, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache18release_write_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !align !121, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.k, label %bb.j, !prof !263

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.k = load atomic i64, ptr @_RNvCsdYyxaOYRLxS_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.k, 6
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ugt i64 %i.k, 1
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEB1c_.exit, %bb.f
  ret void

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXse_Cset5b41vfmiv_13pingora_cacheNtB5_13NoCacheReasonNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @104, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 13, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @104, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 13, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @103, ptr %i.q, align 8
  call void @_RINvNtCsdYyxaOYRLxS_3log13___private_api3loguNtB2_12GlobalLoggerECset5b41vfmiv_13pingora_cache(ptr noundef nonnull @102, ptr noundef nonnull %i.b, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !align !121, !noundef !5 ; 6 uses
  store ptr null, ptr %i.r, align 8
  %.not16 = icmp eq ptr %i.s, null
  br i1 %.not16, label %bb.m, label %bb.l, !prof !263

bb.k:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #26
  unreachable

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvMs3_NtCs8cfXl8C2jC4_13cf_rustracing4spanINtB6_4SpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateE8set_tagsNCINvB2_7set_tagNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB2q_9HttpCache7disable0E0INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtB8_3tag3TagEEB2q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #26
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEB1c_(ptr %i.s) #22
          to label %common.resume unwind label %bb.q

bb.o:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(832) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEB1c_.exit unwind label %bb.p

common.resume:                                    ; preds = %bb.n, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.p ], [ %i.t, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 832, i64 noundef 8) #24
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEB1c_.exit: ; preds = %bb.o
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 832, i64 noundef 8) #24
  br label %bb.h

bb.q:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs3_Cset5b41vfmiv_13pingora_cacheNtB5_9HttpCache9cache_key(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !434, !noundef !5
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ], !prof !616

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !align !121, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.e, !prof !263

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !597, !noundef !5
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b, !prof !263

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_Cset5b41vfmiv_13pingora_cacheNtB5_10CachePhaseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #26
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !4, !noundef !5
  %.not4 = icmp eq i64 %i.i, -1
  br i1 %.not4, label %bb.h, label %bb.g, !prof !263

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #26
  unreachable

bb.g:                                             ; preds = %bb.e
  ret ptr %i.h

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse11inject_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 3 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.464.i = alloca i64, align 8              ; 16 uses
  %.sroa.17.i = alloca i64, align 8               ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [232 x i8], align 8              ; 6 uses
  %i.ac = alloca [232 x i8], align 8              ; 12 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [7 x i8], align 1                ; 8 uses
  %i.aj = alloca [40 x i8], align 8               ; 11 uses
  %i.ak = alloca [8192 x i8], align 8             ; 9 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [40 x i8], align 8               ; 10 uses
  %i.ao = alloca [40 x i8], align 8               ; 7 uses
  %i.ap = alloca [232 x i8], align 8              ; 7 uses
  %.sroa.47 = alloca [216 x i8], align 8          ; 2 uses
  %.sroa.13 = alloca [216 x i8], align 8          ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 15 uses
  %i.ar = load i8, ptr %1, align 8, !range !228, !noundef !5 ; 2 uses
  %i.as = icmp eq i8 %i.ar, 4
  br i1 %i.as, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.at = and i8 %i.ar, 6
  %switch.i = icmp eq i8 %i.at, 4
  br i1 %switch.i, label %bb.g, label %bb.c, !prof !596

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !635, !noalias !636, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !635, !noalias !636, !noundef !5
  %i.az = sub i64 %i.ay, %i.aw
  %.not.i.i = icmp ugt i64 %3, %i.az
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = tail call noundef zeroext i1 @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext true), !noalias !636 ; 0 uses
  %.pre.i.i = load i64, ptr %i.av, align 8, !alias.scope !635, !noalias !636
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = phi i64 [ %i.aw, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bc = load ptr, ptr %i.au, align 8, !alias.scope !635, !noalias !636, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false)
  %i.be = load i64, ptr %i.ax, align 8, !alias.scope !635, !noalias !636, !noundef !5
  %i.bf = load i64, ptr %i.av, align 8, !alias.scope !635, !noalias !636, !noundef !5 ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = icmp ugt i64 %3, %i.bg
  br i1 %i.bh, label %bb.f, label %_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse8put_data.exit, !prof !263

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !639
  store i64 %3, ptr %i.al, align 8, !noalias !639
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !noalias !639
  call void @_RNvCs1eA6bChxBZF_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al) #25, !noalias !636
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !640
  store ptr %1, ptr %i.am, align 8, !noalias !640
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs0_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB5_10ParseStateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !640
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #26, !noalias !641
  unreachable

_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse8put_data.exit: ; preds = %bb.e
  %i.bj = add i64 %i.bf, %3
  store i64 %i.bj, ptr %i.av, align 8, !alias.scope !635, !noalias !636
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
  %i.dg = load i8, ptr %1, align 8, !range !228, !noundef !5 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !645
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.dh = phi i64 [ 0, %bb.j ], [ %i.dp, %bb.k ]  ; 5 uses
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) @114, i64 32, i1 false), !noalias !645
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) @114, i64 32, i1 false), !noalias !645
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) @114, i64 32, i1 false), !noalias !645
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.dh
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) @114, i64 32, i1 false), !noalias !645
  %i.dp = add nuw nsw i64 %i.dh, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.dp, 256
  br i1 %exitcond.not.i.3, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !645
  store i8 0, ptr %i.bm, align 8, !noalias !645
  store i16 0, ptr %i.bn, align 2, !noalias !645
  store ptr null, ptr %i.aj, align 8, !noalias !645
  store ptr %i.ak, ptr %i.bp, align 8, !noalias !645
  store i64 256, ptr %i.bq, align 8, !noalias !645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !645
end_hunk_0
