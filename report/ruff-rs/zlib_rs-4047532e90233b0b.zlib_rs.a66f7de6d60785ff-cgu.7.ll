Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zlib_rs-4047532e90233b0b.zlib_rs.a66f7de6d60785ff-cgu.7?download=true
inline.NumInlined: 48
inline.NumDeleted: 11
begin_hunk_0_@_RNvMs_NtNtCsehVNULHUZqJ_7zlib_rs7deflate9hash_calcNtB4_16StandardHashCalc19quick_insert_stringB8_:bb.a

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = tail call { ptr, i64 } @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuttE12as_mut_sliceB4_(ptr nonnull align 8 %i.w) ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 1        ; 2 uses
  %i.z = tail call i64 @_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6w_mask(ptr align 64 %0)
  %i.aa = and i64 %i.z, %1                        ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = extractvalue { ptr, i64 } %i.x, 0
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.aa
  store i16 %i.u, ptr %i.ad, align 2
  %i.ae = tail call { ptr, i64 } @_RNvMs_NtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB4_12WeakArrayMuttKj10000_E12as_mut_sliceB6_(ptr nonnull align 8 %i.o) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  %i.ag = icmp ugt i64 %i.af, %i.n
  br i1 %i.ag, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.aa, i64 %i.y, ptr nonnull align 8 @47) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = extractvalue { ptr, i64 } %i.ae, 0
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.n
  store i16 %i.v, ptr %i.ai, align 2
  br label %_RNvMs_NtNtCsehVNULHUZqJ_7zlib_rs7deflate9hash_calcNtB4_16StandardHashCalc18quick_insert_valueB8_.exit

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.n, i64 %i.af, ptr nonnull align 8 @48) #20
  unreachable

_RNvMs_NtNtCsehVNULHUZqJ_7zlib_rs7deflate9hash_calcNtB4_16StandardHashCalc18quick_insert_valueB8_.exit: ; preds = %bb.d, %bb.i
  ret i16 %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx212adler32_avx2(i32 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE4loadCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i8 0)
  switch i32 %i.a, label %bb.b [
    i32 0, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2
    i32 1, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4avx2CsehVNULHUZqJ_7zlib_rs()
  br i1 %i.b, label %bb.c, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4bmi1CsehVNULHUZqJ_7zlib_rs()
  br i1 %i.c, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4: ; preds = %bb.c, %bb.b
  tail call void @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE5storeCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i32 0, i8 0)
  br label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit: ; preds = %bb.c
  %i.d = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4bmi2CsehVNULHUZqJ_7zlib_rs() ; 2 uses
  %i.e = zext i1 %i.d to i32
  tail call void @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE5storeCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i32 %i.e, i8 0)
  br i1 %i.d, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2: ; preds = %bb.a, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @52, i64 65, ptr nonnull align 8 @54) #20
  unreachable

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread: ; preds = %bb.a, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit
  %i.f = tail call fastcc i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx217adler32_avx2_help(i32 %0, ptr %1, i64 %2)
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx217adler32_avx2_help(i32 %0, ptr %1, i64 %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [16 x i8], align 16               ; 4 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [32 x i8], align 32               ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [32 x i8], align 32               ; 4 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [16 x i8], align 16               ; 4 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [16 x i8], align 16               ; 4 uses
  %i.y = alloca [16 x i8], align 16               ; 4 uses
  %i.z = alloca [16 x i8], align 16               ; 4 uses
  %i.aa = alloca [16 x i8], align 16              ; 4 uses
  %i.ab = alloca [16 x i8], align 16              ; 4 uses
  %i.ac = alloca [16 x i8], align 16              ; 4 uses
  %i.ad = alloca [16 x i8], align 16              ; 4 uses
  %i.ae = alloca [16 x i8], align 16              ; 4 uses
  %i.af = alloca [32 x i8], align 32              ; 4 uses
  %i.ag = alloca [16 x i8], align 16              ; 4 uses
  %i.ah = alloca [32 x i8], align 32              ; 4 uses
  %i.ai = alloca [32 x i8], align 32              ; 4 uses
  %i.aj = alloca [32 x i8], align 32              ; 4 uses
  %i.ak = alloca [32 x i8], align 32              ; 4 uses
  %i.al = alloca [32 x i8], align 32              ; 4 uses
  %i.am = alloca [32 x i8], align 32              ; 4 uses
  %i.an = alloca [32 x i8], align 32              ; 4 uses
  %i.ao = alloca [32 x i8], align 32              ; 4 uses
  %i.ap = alloca [32 x i8], align 32              ; 4 uses
  %i.aq = alloca [32 x i8], align 32              ; 4 uses
  %i.ar = alloca [32 x i8], align 32              ; 4 uses
  %i.as = alloca [32 x i8], align 32              ; 4 uses
  %i.at = alloca [32 x i8], align 32              ; 4 uses
  %i.au = alloca [32 x i8], align 32              ; 4 uses
  %i.av = alloca [32 x i8], align 32              ; 4 uses
  %i.aw = alloca [32 x i8], align 32              ; 4 uses
  %i.ax = alloca [32 x i8], align 32              ; 4 uses
  %i.ay = alloca [32 x i8], align 32              ; 4 uses
  %i.az = alloca [32 x i8], align 32              ; 4 uses
  %i.ba = alloca [32 x i8], align 32              ; 4 uses
  %i.bb = alloca [32 x i8], align 32              ; 4 uses
  %i.bc = alloca [32 x i8], align 32              ; 4 uses
  %i.bd = alloca [32 x i8], align 32              ; 4 uses
  %i.be = alloca [32 x i8], align 32              ; 4 uses
  %i.bf = alloca [32 x i8], align 32              ; 4 uses
  %i.bg = alloca [32 x i8], align 32              ; 4 uses
  %i.bh = alloca [16 x i8], align 16              ; 4 uses
  %i.bi = alloca [16 x i8], align 16              ; 4 uses
  %i.bj = alloca [16 x i8], align 16              ; 4 uses
  %i.bk = alloca [16 x i8], align 16              ; 4 uses
  %i.bl = alloca [64 x i8], align 32              ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 6 uses
  %i.bn = alloca [32 x i8], align 32              ; 8 uses
  %i.bo = alloca [32 x i8], align 32              ; 8 uses
  %i.bp = alloca [24 x i8], align 8               ; 3 uses
  %i.bq = alloca [24 x i8], align 8               ; 2 uses
  %i.br = alloca [24 x i8], align 8               ; 2 uses
  %i.bs = alloca [48 x i8], align 8               ; 7 uses
  %i.bt = tail call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8is_emptyCsehVNULHUZqJ_7zlib_rs(ptr %1, i64 %2)
  br i1 %i.bt, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m256iECsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([48 x i8]) align 8 %i.bs, ptr %1, i64 %2)
  %i.bu = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.ce = load i64, ptr %i.cd, align 8            ; 5 uses
  %i.cf = lshr i32 %0, 16                         ; 2 uses
  %i.cg = and i32 %0, 65535                       ; 2 uses
  %i.ch = icmp ult i64 %i.bw, 16
  br i1 %i.ch, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ci = icmp ult i64 %i.bw, 32
  br i1 %i.ci, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.cj = call i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler327generic14adler32_len_16(i32 %i.cg, ptr %i.bu, i64 %i.bw, i32 %i.cf)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ck = call i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler327generic14adler32_len_64(i32 %i.cg, ptr %i.bu, i64 %i.bw, i32 %i.cf)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.013.0 = phi i32 [ %i.cj, %bb.d ], [ %i.ck, %bb.e ], [ %0, %bb.c ] ; 2 uses
  %i.cl = lshr i32 %.sroa.013.0, 16               ; 2 uses
  %i.cm = and i32 %.sroa.013.0, 65535             ; 2 uses
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtB4_9core_arch3x867___m256i6chunksCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([24 x i8]) align 8 %i.bq, ptr align 32 %i.by, i64 %i.ca, i64 173, ptr nonnull align 8 @55)
  call void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_5slice4iter6ChunksNtNtNtB8_9core_arch3x867___m256iENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([24 x i8]) align 8 %i.br, ptr nonnull align 8 %i.bq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  %i.cn = call { ptr, i64 } @_RNvXs17_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_6ChunksNtNtNtBa_9core_arch3x867___m256iENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.bp) ; 2 uses
  %i.co = extractvalue { ptr, i64 } %i.cn, 0      ; 2 uses
  %.not20 = icmp eq ptr %i.co, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit
  %i.cr = phi ptr [ %i.co, %.lr.ph ], [ %i.ep, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit ]
  %i.cs = phi { ptr, i64 } [ %i.cn, %.lr.ph ], [ %i.eo, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit ]
  %.sroa.01.022 = phi i32 [ %i.cl, %.lr.ph ], [ %7, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit ]
  %.sroa.07.021 = phi i32 [ %i.cm, %.lr.ph ], [ %6, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit ]
  %i.ct = extractvalue { ptr, i64 } %i.cs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_cvtsi32_si128CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.bk, i32 range(i32 0, 65536) %.sroa.07.021)
  %i.cu = load <2 x i64>, ptr %i.bk, align 16
  store <2 x i64> %i.cu, ptr %i.bj, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x863avx22__mm256_zextsi128_si256CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.bo, ptr nonnull align 16 %i.bj)
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_cvtsi32_si128CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.bi, i32 range(i32 0, 65536) %.sroa.01.022)
  %i.cv = load <2 x i64>, ptr %i.bi, align 16
  store <2 x i64> %i.cv, ptr %i.bh, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x863avx22__mm256_zextsi128_si256CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.bn, ptr nonnull align 16 %i.bh)
  %i.cw = load <4 x i64>, ptr %i.bo, align 32
  %i.cx = call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtB4_9core_arch3x867___m256i4iterCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 32 %i.cr, i64 %i.ct) ; 2 uses
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0
  %i.cz = extractvalue { ptr, ptr } %i.cx, 1
  %i.da = call { ptr, ptr } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtBa_9core_arch3x867___m256iENtNtNtNtBa_4iter6traits8iterator8Iterator6copiedBJ_ECsehVNULHUZqJ_7zlib_rs(ptr %i.cy, ptr %i.cz) ; 2 uses
  %i.db = extractvalue { ptr, ptr } %i.da, 0
  %i.dc = extractvalue { ptr, ptr } %i.da, 1
  %i.dd = call { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtB8_9core_arch3x867___m256iEENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(ptr %i.db, ptr %i.dc) ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dd, 0
  %i.df = extractvalue { ptr, ptr } %i.dd, 1
  store ptr %i.de, ptr %i.bm, align 8
  store ptr %i.df, ptr %i.cp, align 8
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtBa_9core_arch3x867___m256iEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([64 x i8]) align 32 %i.bl, ptr nonnull align 8 %i.bm)
  %i.dg = load i8, ptr %i.bl, align 32
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.lr.ph.i, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.04.011.i = phi <4 x i64> [ %i.dr, %.lr.ph.i ], [ %i.cw, %bb.g ]
  %.sroa.05.010.i = phi <4 x i64> [ %i.dm, %.lr.ph.i ], [ zeroinitializer, %bb.g ]
  %i.di = load <4 x i64>, ptr %i.cq, align 32     ; 2 uses
  store <4 x i64> %i.di, ptr %i.ba, align 32
  store <4 x i64> zeroinitializer, ptr %i.az, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx215__mm256_sad_epu8CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.bb, ptr nonnull align 32 %i.ba, ptr nonnull align 32 %i.az)
  %i.dj = load <4 x i64>, ptr %i.bb, align 32
  %i.dk = load <4 x i64>, ptr %i.bo, align 32
  store <4 x i64> %i.dk, ptr %i.ax, align 32
  store <4 x i64> %i.dj, ptr %i.aw, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx216__mm256_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.ay, ptr nonnull align 32 %i.ax, ptr nonnull align 32 %i.aw)
  %i.dl = load <4 x i64>, ptr %i.ay, align 32
  store <4 x i64> %i.dl, ptr %i.bo, align 32
  store <4 x i64> %.sroa.05.010.i, ptr %i.au, align 32
  store <4 x i64> %.sroa.04.011.i, ptr %i.at, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx216__mm256_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.av, ptr nonnull align 32 %i.au, ptr nonnull align 32 %i.at)
  %i.dm = load <4 x i64>, ptr %i.av, align 32     ; 2 uses
  store <4 x i64> %i.di, ptr %i.ar, align 32
  store <4 x i64> <i64 1808788007904223008, i64 1230066625199609624, i64 651345242494996240, i64 72623859790382856>, ptr %i.aq, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx220__mm256_maddubs_epi16CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.as, ptr nonnull align 32 %i.ar, ptr nonnull align 32 %i.aq)
  %i.dn = load <4 x i64>, ptr %i.as, align 32
  store <4 x i64> %i.dn, ptr %i.ao, align 32
  store <4 x i64> splat (i64 281479271743489), ptr %i.an, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx217__mm256_madd_epi16CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.ap, ptr nonnull align 32 %i.ao, ptr nonnull align 32 %i.an)
  %i.do = load <4 x i64>, ptr %i.ap, align 32
  %i.dp = load <4 x i64>, ptr %i.bn, align 32
  store <4 x i64> %i.do, ptr %i.al, align 32
  store <4 x i64> %i.dp, ptr %i.ak, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx216__mm256_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.am, ptr nonnull align 32 %i.al, ptr nonnull align 32 %i.ak)
  %i.dq = load <4 x i64>, ptr %i.am, align 32
  store <4 x i64> %i.dq, ptr %i.bn, align 32
  %i.dr = load <4 x i64>, ptr %i.bo, align 32
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtBa_9core_arch3x867___m256iEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([64 x i8]) align 32 %i.bl, ptr nonnull align 8 %i.bm)
  %i.ds = load i8, ptr %i.bl, align 32
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.lr.ph.i, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit

_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit: ; preds = %.lr.ph.i, %bb.g
  %.sroa.05.0.lcssa.i = phi <4 x i64> [ zeroinitializer, %bb.g ], [ %i.dm, %.lr.ph.i ]
  store <4 x i64> %.sroa.05.0.lcssa.i, ptr %i.bf, align 32
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx217__mm256_slli_epi32Kl5_ECsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.bg, ptr nonnull align 32 %i.bf)
  %i.du = load <4 x i64>, ptr %i.bg, align 32
  %i.dv = load <4 x i64>, ptr %i.bn, align 32
  store <4 x i64> %i.dv, ptr %i.bd, align 32
  store <4 x i64> %i.du, ptr %i.bc, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx216__mm256_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.be, ptr nonnull align 32 %i.bd, ptr nonnull align 32 %i.bc)
  %i.dw = load <4 x i64>, ptr %i.be, align 32
  store <4 x i64> %i.dw, ptr %i.bn, align 32
  %i.dx = load <4 x i64>, ptr %i.bo, align 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store <4 x i64> %i.dx, ptr %i.ai, align 32
  store <4 x i64> <i64 8589934592, i64 25769803780, i64 4294967297, i64 4294967297>, ptr %i.ah, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx227__mm256_permutevar8x32_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.aj, ptr nonnull align 32 %i.ai, ptr nonnull align 32 %i.ah)
  %i.dy = load <4 x i64>, ptr %i.aj, align 32
  store <4 x i64> %i.dy, ptr %i.af, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x863avx22__mm256_castsi256_si128CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.ag, ptr nonnull align 32 %i.af)
  %i.dz = load <2 x i64>, ptr %i.ag, align 16     ; 3 uses
  store <2 x i64> %i.dz, ptr %i.ad, align 16
  store <2 x i64> %i.dz, ptr %i.ac, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse218__mm_unpackhi_epi64CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.ae, ptr nonnull align 16 %i.ad, ptr nonnull align 16 %i.ac)
  %i.ea = load <2 x i64>, ptr %i.ae, align 16
  store <2 x i64> %i.dz, ptr %i.aa, align 16
  store <2 x i64> %i.ea, ptr %i.z, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse213__mm_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.ab, ptr nonnull align 16 %i.aa, ptr nonnull align 16 %i.z)
  %i.eb = load <2 x i64>, ptr %i.ab, align 16     ; 2 uses
  store <2 x i64> %i.eb, ptr %i.x, align 16
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Kl1_ECsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.y, ptr nonnull align 16 %i.x)
  %i.ec = load <2 x i64>, ptr %i.y, align 16
  store <2 x i64> %i.eb, ptr %i.v, align 16
  store <2 x i64> %i.ec, ptr %i.u, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse213__mm_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.w, ptr nonnull align 16 %i.v, ptr nonnull align 16 %i.u)
  %i.ed = load <2 x i64>, ptr %i.w, align 16
  store <2 x i64> %i.ed, ptr %i.t, align 16
  %i.ee = call i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_cvtsi128_si32CsehVNULHUZqJ_7zlib_rs(ptr nonnull align 16 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ef = load <4 x i64>, ptr %i.bn, align 32     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store <4 x i64> %i.ef, ptr %i.r, align 32
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx224__mm256_extracti128_si256Kl1_ECsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.s, ptr nonnull align 32 %i.r)
  %i.eg = load <2 x i64>, ptr %i.s, align 16
  store <4 x i64> %i.ef, ptr %i.p, align 32
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x863avx22__mm256_castsi256_si128CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.q, ptr nonnull align 32 %i.p)
  %i.eh = load <2 x i64>, ptr %i.q, align 16
  store <2 x i64> %i.eg, ptr %i.n, align 16
  store <2 x i64> %i.eh, ptr %i.m, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse213__mm_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.o, ptr nonnull align 16 %i.n, ptr nonnull align 16 %i.m)
  %i.ei = load <2 x i64>, ptr %i.o, align 16      ; 3 uses
  store <2 x i64> %i.ei, ptr %i.k, align 16
  store <2 x i64> %i.ei, ptr %i.j, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse218__mm_unpackhi_epi64CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.l, ptr nonnull align 16 %i.k, ptr nonnull align 16 %i.j)
  %i.ej = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.ei, ptr %i.h, align 16
  store <2 x i64> %i.ej, ptr %i.g, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse213__mm_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.i, ptr nonnull align 16 %i.h, ptr nonnull align 16 %i.g)
  %i.ek = load <2 x i64>, ptr %i.i, align 16      ; 2 uses
  store <2 x i64> %i.ek, ptr %i.e, align 16
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Kl1_ECsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.f, ptr nonnull align 16 %i.e)
  %i.el = load <2 x i64>, ptr %i.f, align 16
  store <2 x i64> %i.ek, ptr %i.c, align 16
  store <2 x i64> %i.el, ptr %i.b, align 16
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse213__mm_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c, ptr nonnull align 16 %i.b)
  %i.em = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.em, ptr %i.a, align 16
  %i.en = call i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_cvtsi128_si32CsehVNULHUZqJ_7zlib_rs(ptr nonnull align 16 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %3 = insertelement <2 x i32> poison, i32 %i.ee, i64 0
  %4 = insertelement <2 x i32> %3, i32 %i.en, i64 1
  %5 = urem <2 x i32> %4, splat (i32 65521)       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.eo = call { ptr, i64 } @_RNvXs17_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_6ChunksNtNtNtBa_9core_arch3x867___m256iENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.bp) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0      ; 2 uses
  %.not = icmp eq ptr %i.ep, null
  %6 = extractelement <2 x i32> %5, i64 0         ; 2 uses
  %7 = extractelement <2 x i32> %5, i64 1         ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit, %bb.f
  %.sroa.07.0.lcssa = phi i32 [ %i.cm, %bb.f ], [ %6, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit ] ; 3 uses
  %.sroa.01.0.lcssa = phi i32 [ %i.cl, %bb.f ], [ %7, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler324avx215helper_32_bytes.exit ] ; 3 uses
  %i.eq = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8is_emptyCsehVNULHUZqJ_7zlib_rs(ptr %i.cc, i64 %i.ce)
  br i1 %i.eq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.er = icmp ult i64 %i.ce, 16
  br i1 %i.er, label %bb.k, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.es = shl nuw i32 %.sroa.01.0.lcssa, 16
  %i.et = or disjoint i32 %i.es, %.sroa.07.0.lcssa
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.eu = icmp ult i64 %i.ce, 32
  br i1 %i.eu, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ev = call i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler327generic14adler32_len_16(i32 %.sroa.07.0.lcssa, ptr %i.cc, i64 %i.ce, i32 %.sroa.01.0.lcssa)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @56, i64 40, ptr nonnull align 8 @57) #20
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ew = call i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7adler327generic14adler32_len_64(i32 %.sroa.07.0.lcssa, ptr %i.cc, i64 %i.ce, i32 %.sroa.01.0.lcssa)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.k, %bb.i
  %.sroa.0.0 = phi i32 [ %i.ew, %bb.m ], [ %i.et, %bb.i ], [ %i.ev, %bb.k ], [ %0, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10compare25616compare256_slice(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %1, 256
  %.not.i14 = icmp eq ptr %0, null
  %.not.i1 = select i1 %i.a, i1 true, i1 %.not.i14
  br i1 %.not.i1, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit2

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @59) #20
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit2: ; preds = %bb.a
  %i.b = icmp ult i64 %3, 256
  %.not.i5 = icmp eq ptr %2, null
  %.not.i = select i1 %i.b, i1 true, i1 %.not.i5
  br i1 %.not.i, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit2
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @60) #20
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit2
  %i.c = tail call i32 @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE4loadCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i8 0)
  switch i32 %i.c, label %bb.d [
    i32 0, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2.i
    i32 1, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i
  ]

bb.d:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit
  %i.d = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4avx2CsehVNULHUZqJ_7zlib_rs()
  br i1 %i.d, label %bb.e, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4.i

bb.e:                                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4bmi1CsehVNULHUZqJ_7zlib_rs()
  br i1 %i.e, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4.i

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE5storeCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i32 0, i8 0)
  br label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2.i

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i: ; preds = %bb.e
  %i.f = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4bmi2CsehVNULHUZqJ_7zlib_rs() ; 2 uses
  %i.g = zext i1 %i.f to i32
  tail call void @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE5storeCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i32 %i.g, i8 0)
  br i1 %i.f, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2.i

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2.i: ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4.i, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit
  %i.h = tail call i64 @_RNvNtNtNtCsehVNULHUZqJ_7zlib_rs7deflate10compare2564rust10compare256(ptr nonnull %0, ptr nonnull %2)
  br label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10compare25610compare256.exit

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i: ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRAhj100_E6unwrapCsehVNULHUZqJ_7zlib_rs.exit
  %i.i = tail call fastcc i64 @_RNvNtNtNtCsehVNULHUZqJ_7zlib_rs7deflate10compare2564avx210compare256(ptr nonnull %0, ptr nonnull %2)
  br label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10compare25610compare256.exit

_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10compare25610compare256.exit: ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2.i, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i
  %.sroa.0.0.i = phi i64 [ %i.i, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i ], [ %i.h, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10compare25620compare256_rle_slice(i8 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RNvNtNtNtCsehVNULHUZqJ_7zlib_rs7deflate10compare2564rust14compare256_rle(i8 %0, ptr %1, i64 %2)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10slide_hash10slide_hash(ptr align 64 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 16
  %i.c = trunc i64 %i.b to i16                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = tail call { ptr, i64 } @_RNvMs_NtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB4_12WeakArrayMuttKj10000_E12as_mut_sliceB6_(ptr nonnull align 8 %i.d) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  tail call fastcc void @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10slide_hash16slide_hash_chain(ptr align 2 %i.f, i64 %i.g, i16 %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = tail call { ptr, i64 } @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuttE12as_mut_sliceB4_(ptr nonnull align 8 %i.h) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  tail call fastcc void @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10slide_hash16slide_hash_chain(ptr align 2 %i.j, i64 %i.k, i16 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7deflate10slide_hash16slide_hash_chain(ptr align 2 %0, i64 %1, i16 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE4loadCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i8 0)
  switch i32 %i.a, label %bb.b [
    i32 0, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2
    i32 1, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4avx2CsehVNULHUZqJ_7zlib_rs()
  br i1 %i.b, label %bb.c, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4bmi1CsehVNULHUZqJ_7zlib_rs()
  br i1 %i.c, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4: ; preds = %bb.c, %bb.b
  tail call void @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE5storeCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i32 0, i8 0)
  br label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit: ; preds = %bb.c
  %i.d = tail call zeroext i1 @_RNvNtNtNtNtCs6fkgK6y3Hie_10std_detect6detect4arch3x8621___is_feature_detected4bmi2CsehVNULHUZqJ_7zlib_rs() ; 2 uses
  %i.e = zext i1 %i.d to i32
  tail call void @_RNvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicmE5storeCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 4 @_RNvNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE, i32 %i.e, i8 0)
  br i1 %i.d, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread, label %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2: ; preds = %bb.a, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread4, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit
  tail call void @_RNvNtNtNtCsehVNULHUZqJ_7zlib_rs7deflate10slide_hash4rust16slide_hash_chain(ptr align 2 %0, i64 %1, i16 %2)
  br label %bb.d

_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread: ; preds = %bb.a, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit
  tail call void @_RNvNtNtNtCsehVNULHUZqJ_7zlib_rs7deflate10slide_hash4avx216slide_hash_chain(ptr align 2 %0, i64 %1, i16 %2)
  br label %bb.d

bb.d:                                             ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread, %_RNvNtCsehVNULHUZqJ_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7inflate6writer15slice_to_uninit(ptr %0, i64 %1) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsehVNULHUZqJ_7zlib_rs7inflate8inftrees13inflate_table(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i8 %1, ptr align 2 %2, i64 %3, i64 %4, ptr align 2 %5, i64 %6, i64 %7, ptr nofree align 2 captures(none) %8, i64 %9) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 2                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [32 x i8], align 2                ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %.not.i = icmp ugt i64 %4, %3
  br i1 %.not.i, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexStE5indexCsehVNULHUZqJ_7zlib_rs.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %4, i64 %3, ptr nonnull align 8 @62) #20
  unreachable

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexStE5indexCsehVNULHUZqJ_7zlib_rs.exit: ; preds = %bb.a
  %i.k = tail call { ptr, ptr } @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice4iterRStNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(ptr align 2 %2, i64 %4) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  store ptr %i.l, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.n, align 8
  br label %.outer197

.outer197:                                        ; preds = %bb.bh, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexStE5indexCsehVNULHUZqJ_7zlib_rs.exit
  %.sroa.012.0.ph = phi i64 [ %i.gn, %bb.bh ], [ 0, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexStE5indexCsehVNULHUZqJ_7zlib_rs.exit ] ; 10 uses
  %.sroa.0.0.ph = phi i64 [ %i.go, %bb.bh ], [ 15, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexStE5indexCsehVNULHUZqJ_7zlib_rs.exit ] ; 6 uses
  br label %bb.c
end_hunk_0
