Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.15?download=true
inline.NumInlined: 257
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeQRShEECset5b41vfmiv_13pingora_cache:bb.a
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECset5b41vfmiv_13pingora_cache.exit

bb.h:                                             ; preds = %.split
  %i.ap = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %i.h, align 8, !alias.scope !393
  store i8 3, ptr %i.a, align 8, !alias.scope !393
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.g, %bb.h, %.thread16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = call { i64, ptr } @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQRShENtNtB7_4read4Read4readCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1      ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = trunc nuw i64 %i.ar to i1
  br i1 %i.au, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %bb.c, %.noexc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECset5b41vfmiv_13pingora_cache(ptr nonnull %i.j) #19
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs54qMqBN3zRt_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionAhj10_ENtB8_11Deserialize11deserializeINtNtB8_5value14U8DeserializerNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvYINtNtNtCs54qMqBN3zRt_10serde_core2de5impls13OptionVisitorAhj10_ENtB8_7Visitor8visit_u8NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs54qMqBN3zRt_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionAhj10_ENtB8_11Deserialize11deserializeQINtNtCsh8kAdcUVRtT_9rmp_serde6decode12DeserializerINtB21_13ReadRefReaderShEEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsj_NtCsh8kAdcUVRtT_9rmp_serde6decodeQINtB6_12DeserializerINtB6_13ReadRefReaderShEENtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_optionINtNtB1p_5impls13OptionVisitorAhj10_EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs54qMqBN3zRt_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EENtB8_11Deserialize11deserializeINtNtB8_5value14U8DeserializerNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvYINtNtNtCs54qMqBN3zRt_10serde_core2de5impls13OptionVisitorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EENtB8_7Visitor8visit_u8NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs54qMqBN3zRt_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EENtB8_11Deserialize11deserializeQINtNtCsh8kAdcUVRtT_9rmp_serde6decode12DeserializerINtB2B_10ReadReaderRShEEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsj_NtCsh8kAdcUVRtT_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderRShEENtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs54qMqBN3zRt_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeENtB8_11Deserialize11deserializeINtNtB8_5value14U8DeserializerNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvYINtNtNtCs54qMqBN3zRt_10serde_core2de5impls13OptionVisitorNtNtCsG258MDvU3F_3std4time10SystemTimeENtB8_7Visitor8visit_u8NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs54qMqBN3zRt_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeENtB8_11Deserialize11deserializeQINtNtCsh8kAdcUVRtT_9rmp_serde6decode12DeserializerINtB2x_13ReadRefReaderShEEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsj_NtCsh8kAdcUVRtT_9rmp_serde6decodeQINtB6_12DeserializerINtB6_13ReadRefReaderShEENtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_optionINtNtB1p_5impls13OptionVisitorNtNtCsG258MDvU3F_3std4time10SystemTimeEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 4 uses
  %i.h = icmp ult i64 %i.g, 96076792050570582
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !52, !noundef !14
  %i.j = icmp eq i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = lshr i64 %i.l, 2
  %i.o = sub nuw i64 %i.l, %i.n
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %bb.d, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit

bb.c:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i64 %i.g, 5
  %.not = icmp ult i64 %i.q, %i.l
  br i1 %.not, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 32769) 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !396
  %i.t = load i64, ptr %i.a, align 8, !range !17, !noalias !396, !noundef !14
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !399, !noalias !396, !noundef !14 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCset5b41vfmiv_13pingora_cache.exit.i, !prof !298

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !396
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #20, !noalias !396
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !396, !nonnull !14, !noundef !14
  %i.aa = icmp samesign ugt i64 %i.w, 7
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  store i64 %i.w, ptr %i.b, align 8, !noalias !396
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !noalias !396
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ac, align 8, !noalias !396
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 8, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECset5b41vfmiv_13pingora_cache.exit unwind label %bb.g, !noalias !396

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCset5b41vfmiv_13pingora_cache.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %common.resume unwind label %bb.h, !noalias !396

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !396
  unreachable

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECset5b41vfmiv_13pingora_cache.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  %i.af = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val14 = load i64, ptr %i.k, align 8, !noundef !14 ; 2 uses
  %i.ai = icmp eq i64 %.val14, 0
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit, label %bb.i

bb.i:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECset5b41vfmiv_13pingora_cache.exit
  %.val = load ptr, ptr %i.m, align 8, !nonnull !14, !noundef !14
  %i.aj = shl nuw nsw i64 %.val14, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 2) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit

bb.j:                                             ; preds = %bb.d
  %i.ak = shl i64 %i.l, 1
  %i.al = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE8try_growCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.ak) #17
  br i1 %i.al, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.i, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECset5b41vfmiv_13pingora_cache.exit
  store ptr %i.ag, ptr %i.m, align 8
  store i64 %i.ah, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 6, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
  %i.am = load i64, ptr %i.c, align 8, !range !17, !noundef !14
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !399, !noundef !14 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l, !prof !298

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit
  %i.ar = load i64, ptr %i.aq, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #20
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit
  %i.as = load ptr, ptr %i.aq, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 5
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.au, %bb.m ]
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.n
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx5, align 8
  store i64 0, ptr %i.f, align 8
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit: ; preds = %.backedge.i, %._crit_edge, %bb.r, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECset5b41vfmiv_13pingora_cache.exit, %bb.b
  br label %bb.z

bb.q:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_RNvMs12_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.az = load i64, ptr %i.k, align 8, !noundef !14 ; 2 uses
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bc = add i64 %.idx, -4                       ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.bf = shl i64 %n.vec, 2
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bh
  %i.bi = getelementptr i8, ptr %i.ay, i64 %i.bh
  %next.gep32 = getelementptr i8, ptr %i.bi, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep32, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.01.018.ph = phi ptr [ %i.ay, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph

bb.r:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.bk = shl nuw nsw i64 %i.l, 1
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE8try_growCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.bk) #17
  br i1 %i.bl, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.sroa.01.018 = phi ptr [ %i.bm, %.lr.ph ], [ %.sroa.01.018.ph, %.lr.ph.preheader37 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.01.018, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 2
  store i16 0, ptr %i.bn, align 2
  %i.bo = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bo, label %._crit_edge, label %.lr.ph, !llvm.loop !403

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !404, !nonnull !14, !noundef !14 ; 2 uses
  %i.br = load i64, ptr %i.f, align 8, !alias.scope !404, !noundef !14 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.br, 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i
  %i.bt = icmp eq i64 %i.br, 0
  br i1 %i.bt, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bv = load i16, ptr %i.bu, align 8, !alias.scope !404 ; 3 uses
  %i.bw = load ptr, ptr %i.ax, align 8, !alias.scope !404, !nonnull !14 ; 3 uses
  %i.bx = load i64, ptr %i.k, align 8, !alias.scope !404 ; 4 uses
  %i.by = zext i16 %i.bv to i64
  %.not43 = icmp eq i64 %i.bx, 0
  %.not44 = icmp eq i64 %i.bx, 0
  br label %bb.s

bb.s:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.036.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bz, %.backedge.i ] ; 3 uses
  %.sroa.7.035.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ca, %.backedge.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 96 ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.7.035.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 56
  %i.cc = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.cb) #17 ; 4 uses
  %i.cd = and i16 %i.cc, %i.bv
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 88
  store i16 %i.cc, ptr %i.cf, align 8, !noalias !404
  br label %.outer33

.outer33:                                         ; preds = %bb.v, %bb.s
  %.sroa.014.0.i.ph = phi i64 [ %i.cv, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.i.ph = phi i64 [ %i.cw, %bb.v ], [ %i.ce, %bb.s ] ; 2 uses
  %i.cg = icmp ult i64 %.sroa.04.0.i.ph, %i.bx    ; 2 uses
  %.not43.not = xor i1 %.not43, true
  %brmerge = or i1 %i.cg, %.not43.not
  %.sroa.04.0.i.ph.mux = select i1 %i.cg, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer33
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !404, !noundef !14
  %.not23.i = icmp eq i16 %i.ci, -1
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !404, !noundef !14
  %i.cl = and i16 %i.ck, %i.bv
  %i.cm = zext i16 %i.cl to i64
  %i.cn = sub i64 %.sroa.04.0.i.ph.mux, %i.cm
  %i.co = and i64 %i.cn, %i.by
  %i.cp = icmp samesign ult i64 %i.co, %.sroa.014.0.i.ph
  br i1 %i.cp, label %bb.w, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.cq = trunc i64 %.sroa.7.035.i to i16
  store i16 %i.cq, ptr %i.ch, align 2, !noalias !404
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.y, %bb.u
  %i.cr = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.u ], [ %.sroa.04.2.i.ph.mux, %bb.y ]
  %.sink.i = phi i16 [ %i.cc, %bb.u ], [ %.sroa.619.0.i.ph, %bb.y ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 %.sink.i, ptr %i.ct, align 2, !noalias !404
  %i.cu = icmp eq ptr %i.bz, %i.bs
  br i1 %i.cu, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit, label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.cv = add nuw nsw i64 %.sroa.014.0.i.ph, 1
  %i.cw = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer33

bb.w:                                             ; preds = %bb.t
  %i.cx = trunc i64 %.sroa.7.035.i to i16
  br label %.outer

.outer:                                           ; preds = %bb.x, %bb.w
  %.sroa.04.2.i.ph = phi i64 [ %i.de, %bb.x ], [ %.sroa.04.0.i.ph.mux, %bb.w ] ; 2 uses
  %.sroa.017.0.i.ph = phi i16 [ %i.da, %bb.x ], [ %i.cx, %bb.w ] ; 2 uses
  %.sroa.619.0.i.ph = phi i16 [ %i.dd, %bb.x ], [ %i.cc, %bb.w ] ; 2 uses
  %i.cy = icmp ult i64 %.sroa.04.2.i.ph, %i.bx    ; 2 uses
  %.not44.not = xor i1 %.not44, true
  %brmerge49 = or i1 %i.cy, %.not44.not
  %.sroa.04.2.i.ph.mux = select i1 %i.cy, i64 %.sroa.04.2.i.ph, i64 0 ; 3 uses
  br i1 %brmerge49, label %.loopexit42, label %infloop48

.loopexit42:                                      ; preds = %.outer
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.sroa.04.2.i.ph.mux ; 4 uses
  %i.da = load i16, ptr %i.cz, align 2, !noalias !404, !noundef !14 ; 2 uses
  %i.db = icmp eq i16 %i.da, -1
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit42
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !404, !noundef !14
  store i16 %.sroa.017.0.i.ph, ptr %i.cz, align 2, !noalias !404
  store i16 %.sroa.619.0.i.ph, ptr %i.dc, align 2, !noalias !404
  %i.de = add nuw i64 %.sroa.04.2.i.ph.mux, 1
  br label %.outer

bb.y:                                             ; preds = %.loopexit42
  store i16 %.sroa.017.0.i.ph, ptr %i.cz, align 2, !noalias !404
  br label %.backedge.i

bb.z:                                             ; preds = %bb.r, %bb.j, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit
  %.sroa.0.0 = phi i1 [ true, %bb.j ], [ false, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCset5b41vfmiv_13pingora_cache.exit ], [ true, %bb.r ]
  ret i1 %.sroa.0.0

infloop:                                          ; preds = %.outer33, %infloop
  br label %infloop

infloop48:                                        ; preds = %.outer, %infloop48
  br label %infloop48
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23remove_all_extra_valuesCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !407, !noalias !410, !nonnull !14, !noundef !14 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.g, align 8, !alias.scope !407, !noalias !410 ; 3 uses
  %i.h = icmp ult i64 %1, %.promoted
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.an
  %.sroa.0.078 = phi i64 [ %.sroa.10.0.i, %bb.an ], [ %1, %bb.a ] ; 7 uses
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE8try_growCset5b41vfmiv_13pingora_cache:bb.a
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %.idx, i64 noundef 2) #22
  br label %common.resume

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.o, %.lr.ph54
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.053, i64 4 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %.preheader, label %.lr.ph54

.lr.ph56:                                         ; preds = %.preheader, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderCset5b41vfmiv_13pingora_cache.exit33
  %.sroa.016.055 = phi ptr [ %i.cb, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderCset5b41vfmiv_13pingora_cache.exit33 ], [ %i.f, %.preheader ] ; 3 uses
  %i.bj = load i16, ptr %.sroa.016.055, align 2, !noundef !14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.016.055, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !noundef !14 ; 2 uses
  %.not.i29 = icmp eq i16 %i.bj, -1
  br i1 %.not.i29, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderCset5b41vfmiv_13pingora_cache.exit33, label %bb.r

bb.r:                                             ; preds = %.lr.ph56
  %i.bm = and i16 %i.ah, %i.bl
  %i.bn = zext i16 %i.bm to i64
  br label %bb.s

bb.s:                                             ; preds = %.backedge, %bb.r
  %.sroa.01.0.i30 = phi i64 [ %i.bn, %bb.r ], [ %.sroa.01.0.i30.be, %.backedge ] ; 4 uses
  %i.bo = icmp ult i64 %.sroa.01.0.i30, %i.ae
  br i1 %i.bo, label %bb.t, label %.backedge

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i30
  %i.bq = load i16, ptr %i.bp, align 2, !noalias !456, !noundef !14
  %.not7.i32 = icmp eq i16 %i.bq, -1
  br i1 %.not7.i32, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = add nuw i64 %.sroa.01.0.i30, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.s
  %.sroa.01.0.i30.be = phi i64 [ %i.br, %bb.u ], [ 0, %bb.s ]
  br label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i30 ; 2 uses
  store i16 %i.bj, ptr %i.bs, align 2, !noalias !456
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i16 %i.bl, ptr %i.bt, align 2, !noalias !456
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderCset5b41vfmiv_13pingora_cache.exit33

._crit_edge:                                      ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderCset5b41vfmiv_13pingora_cache.exit33, %.preheader
  %i.bu = lshr i64 %i.ae, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !14 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 96076792050570582
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, %i.bu
  %i.ca = sub i64 %i.ae, %i.bz
  invoke void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bv, i64 noundef %i.bx, i64 noundef %i.ca, i64 noundef 8, i64 noundef 96)
          to label %bb.w unwind label %bb.p

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderCset5b41vfmiv_13pingora_cache.exit33: ; preds = %bb.v, %.lr.ph56
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.016.055, i64 4 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ar
  br i1 %i.cc, label %._crit_edge, label %.lr.ph56

bb.w:                                             ; preds = %._crit_edge
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit34, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %.idx, i64 noundef 2) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit34

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit34: ; preds = %bb.x, %bb.w, %bb.a
  ret i1 %i.d

bb.y:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 4 uses
  %i.h = icmp ult i64 %i.g, 88686269585142076
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !52, !noundef !14
  %i.j = icmp eq i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 5 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = lshr i64 %i.l, 2
  %i.o = sub nuw i64 %i.l, %i.n
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %bb.d, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit

bb.c:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i64 %i.g, 5
  %.not = icmp ult i64 %i.q, %i.l
  br i1 %.not, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !459
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 32769) 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !459
  %i.t = load i64, ptr %i.a, align 8, !range !17, !noalias !459, !noundef !14
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !399, !noalias !459, !noundef !14 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCset5b41vfmiv_13pingora_cache.exit.i, !prof !298

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !459
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #20, !noalias !459
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !459, !nonnull !14, !noundef !14
  %i.aa = icmp samesign ugt i64 %i.w, 7
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !459
  store i64 %i.w, ptr %i.b, align 8, !noalias !459
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !noalias !459
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ac, align 8, !noalias !459
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 8, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECset5b41vfmiv_13pingora_cache.exit unwind label %bb.g, !noalias !459

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCset5b41vfmiv_13pingora_cache.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %common.resume unwind label %bb.h, !noalias !459

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !459
  unreachable

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECset5b41vfmiv_13pingora_cache.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !459
  %i.af = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val14 = load i64, ptr %i.k, align 8, !noundef !14 ; 2 uses
  %i.ai = icmp eq i64 %.val14, 0
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit, label %bb.i

bb.i:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECset5b41vfmiv_13pingora_cache.exit
  %.val = load ptr, ptr %i.m, align 8, !nonnull !14, !noundef !14
  %i.aj = shl nuw nsw i64 %.val14, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 2) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit

bb.j:                                             ; preds = %bb.d
  %i.ak = shl i64 %i.l, 1
  %i.al = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap8try_growCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.ak) #17
  br i1 %i.al, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.i, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECset5b41vfmiv_13pingora_cache.exit
  store ptr %i.ag, ptr %i.m, align 8
  store i64 %i.ah, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 6, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
  %i.am = load i64, ptr %i.c, align 8, !range !17, !noundef !14
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !399, !noundef !14 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l, !prof !298

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit
  %i.ar = load i64, ptr %i.aq, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #20
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECset5b41vfmiv_13pingora_cache.exit
  %i.as = load ptr, ptr %i.aq, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 5
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.au, %bb.m ]
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.n
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx5, align 8
  store i64 0, ptr %i.f, align 8
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit: ; preds = %.backedge.i, %._crit_edge, %bb.r, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECset5b41vfmiv_13pingora_cache.exit, %bb.b
  br label %bb.z

bb.q:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_RNvMs12_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.az = load i64, ptr %i.k, align 8, !noundef !14 ; 2 uses
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bc = add i64 %.idx, -4                       ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.bf = shl i64 %n.vec, 2
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bh
  %i.bi = getelementptr i8, ptr %i.ay, i64 %i.bh
  %next.gep32 = getelementptr i8, ptr %i.bi, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep32, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !462

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.01.018.ph = phi ptr [ %i.ay, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph

bb.r:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.bk = shl nuw nsw i64 %i.l, 1
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap8try_growCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.bk) #17
  br i1 %i.bl, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.sroa.01.018 = phi ptr [ %i.bm, %.lr.ph ], [ %.sroa.01.018.ph, %.lr.ph.preheader37 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.01.018, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 2
  store i16 0, ptr %i.bn, align 2
  %i.bo = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bo, label %._crit_edge, label %.lr.ph, !llvm.loop !463

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !464, !nonnull !14, !noundef !14 ; 2 uses
  %i.br = load i64, ptr %i.f, align 8, !alias.scope !464, !noundef !14 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.br, 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i
  %i.bt = icmp eq i64 %i.br, 0
  br i1 %i.bt, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bv = load i16, ptr %i.bu, align 8, !alias.scope !464 ; 3 uses
  %i.bw = load ptr, ptr %i.ax, align 8, !alias.scope !464, !nonnull !14 ; 3 uses
  %i.bx = load i64, ptr %i.k, align 8, !alias.scope !464 ; 4 uses
  %i.by = zext i16 %i.bv to i64
  %.not43 = icmp eq i64 %i.bx, 0
  %.not44 = icmp eq i64 %i.bx, 0
  br label %bb.s

bb.s:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.036.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bz, %.backedge.i ] ; 3 uses
  %.sroa.7.035.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ca, %.backedge.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 104 ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.7.035.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 64
  %i.cc = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.cb) #17 ; 4 uses
  %i.cd = and i16 %i.cc, %i.bv
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 96
  store i16 %i.cc, ptr %i.cf, align 8, !noalias !464
  br label %.outer33

.outer33:                                         ; preds = %bb.v, %bb.s
  %.sroa.014.0.i.ph = phi i64 [ %i.cv, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.i.ph = phi i64 [ %i.cw, %bb.v ], [ %i.ce, %bb.s ] ; 2 uses
  %i.cg = icmp ult i64 %.sroa.04.0.i.ph, %i.bx    ; 2 uses
  %.not43.not = xor i1 %.not43, true
  %brmerge = or i1 %i.cg, %.not43.not
  %.sroa.04.0.i.ph.mux = select i1 %i.cg, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer33
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !464, !noundef !14
  %.not23.i = icmp eq i16 %i.ci, -1
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !464, !noundef !14
  %i.cl = and i16 %i.ck, %i.bv
  %i.cm = zext i16 %i.cl to i64
  %i.cn = sub i64 %.sroa.04.0.i.ph.mux, %i.cm
  %i.co = and i64 %i.cn, %i.by
  %i.cp = icmp samesign ult i64 %i.co, %.sroa.014.0.i.ph
  br i1 %i.cp, label %bb.w, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.cq = trunc i64 %.sroa.7.035.i to i16
  store i16 %i.cq, ptr %i.ch, align 2, !noalias !464
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.y, %bb.u
  %i.cr = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.u ], [ %.sroa.04.2.i.ph.mux, %bb.y ]
  %.sink.i = phi i16 [ %i.cc, %bb.u ], [ %.sroa.619.0.i.ph, %bb.y ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 %.sink.i, ptr %i.ct, align 2, !noalias !464
  %i.cu = icmp eq ptr %i.bz, %i.bs
  br i1 %i.cu, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit, label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.cv = add nuw nsw i64 %.sroa.014.0.i.ph, 1
  %i.cw = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer33

bb.w:                                             ; preds = %bb.t
  %i.cx = trunc i64 %.sroa.7.035.i to i16
  br label %.outer

.outer:                                           ; preds = %bb.x, %bb.w
  %.sroa.04.2.i.ph = phi i64 [ %i.de, %bb.x ], [ %.sroa.04.0.i.ph.mux, %bb.w ] ; 2 uses
  %.sroa.017.0.i.ph = phi i16 [ %i.da, %bb.x ], [ %i.cx, %bb.w ] ; 2 uses
  %.sroa.619.0.i.ph = phi i16 [ %i.dd, %bb.x ], [ %i.cc, %bb.w ] ; 2 uses
  %i.cy = icmp ult i64 %.sroa.04.2.i.ph, %i.bx    ; 2 uses
  %.not44.not = xor i1 %.not44, true
  %brmerge49 = or i1 %i.cy, %.not44.not
  %.sroa.04.2.i.ph.mux = select i1 %i.cy, i64 %.sroa.04.2.i.ph, i64 0 ; 3 uses
  br i1 %brmerge49, label %.loopexit42, label %infloop48

.loopexit42:                                      ; preds = %.outer
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.sroa.04.2.i.ph.mux ; 4 uses
  %i.da = load i16, ptr %i.cz, align 2, !noalias !464, !noundef !14 ; 2 uses
  %i.db = icmp eq i16 %i.da, -1
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit42
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !464, !noundef !14
  store i16 %.sroa.017.0.i.ph, ptr %i.cz, align 2, !noalias !464
  store i16 %.sroa.619.0.i.ph, ptr %i.dc, align 2, !noalias !464
  %i.de = add nuw i64 %.sroa.04.2.i.ph.mux, 1
  br label %.outer

bb.y:                                             ; preds = %.loopexit42
  store i16 %.sroa.017.0.i.ph, ptr %i.cz, align 2, !noalias !464
  br label %.backedge.i

bb.z:                                             ; preds = %bb.r, %bb.j, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit
  %.sroa.0.0 = phi i1 [ true, %bb.j ], [ false, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCset5b41vfmiv_13pingora_cache.exit ], [ true, %bb.r ]
  ret i1 %.sroa.0.0

infloop:                                          ; preds = %.outer33, %infloop
  br label %infloop

infloop48:                                        ; preds = %.outer, %infloop48
  br label %infloop48
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !467, !noalias !470, !nonnull !14, !noundef !14 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.g, align 8, !alias.scope !467, !noalias !470 ; 3 uses
  %i.h = icmp ult i64 %1, %.promoted
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.an
  %.sroa.0.078 = phi i64 [ %.sroa.10.0.i, %bb.an ], [ %1, %bb.a ] ; 7 uses
end_hunk_1
