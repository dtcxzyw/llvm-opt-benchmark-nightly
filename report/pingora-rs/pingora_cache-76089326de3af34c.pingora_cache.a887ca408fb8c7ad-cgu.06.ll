Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.06?download=true
inline.NumInlined: 310
inline.NumDeleted: 135
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECset5b41vfmiv_13pingora_cache:bb.a
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8cfXl8C2jC4_13cf_rustracing3log3LogEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8cfXl8C2jC4_13cf_rustracing3log3LogENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing3log3LogENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing3log3LogEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing3log3LogENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing3log3LogEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing3tag3TagEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8cfXl8C2jC4_13cf_rustracing4span11BaggageItemEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8cfXl8C2jC4_13cf_rustracing4span11BaggageItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing4span11BaggageItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing4span11BaggageItemEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing4span11BaggageItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8cfXl8C2jC4_13cf_rustracing4span11BaggageItemEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCskeugdADtBsi_12pingora_core9protocols4http8HttpTaskEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCset5b41vfmiv_13pingora_cache7storage9HandleHitNtNtB4_6marker4SendNtB22_4SyncEL_EEB1f_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCset5b41vfmiv_13pingora_cache7storage9HandleHitNtNtCskKLDkoKarTP_4core6marker4SendNtB1z_4SyncEL_ENtNtNtB1B_3ops4drop4Drop4dropBM_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #24
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCset5b41vfmiv_13pingora_cache7storage9HandleHitNtNtCskKLDkoKarTP_4core6marker4SendNtB1z_4SyncEL_ENtNtNtB1B_3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCset5b41vfmiv_13pingora_cache7storage9HandleHitNtNtCskKLDkoKarTP_4core6marker4SendNtB1z_4SyncEL_ENtNtNtB1B_3ops4drop4Drop4dropBM_.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCset5b41vfmiv_13pingora_cache7storage9HandleHitNtNtCskKLDkoKarTP_4core6marker4SendNtB1z_4SyncEL_ENtNtNtB1B_3ops4drop4Drop4dropBM_.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #24
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCset5b41vfmiv_13pingora_cache7storage9HandleHitNtNtCskKLDkoKarTP_4core6marker4SendNtB1z_4SyncEL_ENtNtNtB1B_3ops4drop4Drop4dropBM_.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCset5b41vfmiv_13pingora_cache7storage9HandleHitNtNtCskKLDkoKarTP_4core6marker4SendNtB1z_4SyncEL_ENtNtNtB1B_3ops4drop4Drop4dropBM_.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEB1c_(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEBD_(ptr noalias nofree noundef align 8 dereferenceable(832) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 832, i64 noundef 8) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 832, i64 noundef 8) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECset5b41vfmiv_13pingora_cache.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECset5b41vfmiv_13pingora_cache.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc9unbounded15UnboundedSenderINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs9_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !133, !nonnull !5, !noundef !5
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !134
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEE9drop_slowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !137, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !138
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBG_9unbounded9SemaphoreEECset5b41vfmiv_13pingora_cache.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBL_9unbounded9SemaphoreEE9drop_slowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBG_9unbounded9SemaphoreEECset5b41vfmiv_13pingora_cache.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan4ChanINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1e_9unbounded9SemaphoreEEECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chan2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtBG_9unbounded9SemaphoreEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache14HttpCacheInnerEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load ptr, ptr %i.a, align 8, !align !12, !noundef !5 ; 4 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEEB1y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(832) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEB1c_.exit.i unwind label %.body

.body:                                            ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 832, i64 noundef 8) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !4, !alias.scope !143, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_.exit, label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEB1c_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 832, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEEB1y_.exit

bb.c:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEEB1y_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEB1c_.exit.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !4, !alias.scope !144, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_.exit1, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEEB1y_.exit
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_.exit1: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEEEB1y_.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyEEB11_.exit: ; preds = %.body, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCset5b41vfmiv_13pingora_cache21HttpCacheInnerEnabledEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %.val = load ptr, ptr %i.a, align 8, !align !12, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache4meta9CacheMetaEEB11_.exit, label %bb.b

end_hunk_0
begin_hunk_1_@_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor8visit_u8NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache:bb.a
  store i64 %i.c, ptr %i.d, align 8, !noalias !406
  store i8 1, ptr %i.b, align 8, !noalias !406
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !406
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_f32NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, float noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = fpext float %1 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !409
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.c, ptr %i.d, align 8, !noalias !409
  store i8 3, ptr %i.b, align 8, !noalias !409
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !409
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_f64NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, double noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %1, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_i16NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i16 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = sext i16 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !412
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !412
  store i8 2, ptr %i.b, align 8, !noalias !412
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !412
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_i32NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = sext i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !415
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !415
  store i8 2, ptr %i.b, align 8, !noalias !415
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !415
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_i64NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  store i8 2, ptr %i.b, align 8
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_strNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  store i8 5, ptr %i.b, align 8
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_u16NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i16 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = zext i16 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !418
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !418
  store i8 1, ptr %i.b, align 8, !noalias !418
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !418
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_u32NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !421
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !421
  store i8 1, ptr %i.b, align 8, !noalias !421
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !421
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXsx_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtNtCsG258MDvU3F_3std4time10SystemTimeNtBd_11Deserialize11deserialize15DurationVisitorNtBd_7Visitor9visit_u64NtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  store i8 1, ptr %i.b, align 8
  call void @_RNvYNtNtCsh8kAdcUVRtT_9rmp_serde6decode5ErrorNtNtCs54qMqBN3zRt_10serde_core2de5Error12invalid_typeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs3_Cset5b41vfmiv_13pingora_cacheNtB7_9HttpCache23revalidate_merge_header0B7_(ptr nofree nonnull readonly captures(address, read_provenance) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 4, 18) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap7get_allReECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %i.e, align 8, !range !17, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 5 uses
  %i.k = trunc nuw i64 %i.h to i1
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = icmp ult i64 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.j ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.q, align 8
  %i.r = trunc nuw i64 %.sroa.06.0.copyload to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %.sroa.13.0 = phi i64 [ -1, %bb.a ], [ %i.j, %bb.c ], [ %i.j, %bb.e ]
  %.sroa.9.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.c ], [ %.sroa.58.0.copyload, %bb.e ]
  %.sroa.7.0 = phi i64 [ 2, %bb.a ], [ 0, %bb.c ], [ 1, %bb.e ]
  %.sroa.01.0 = phi i64 [ 2, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.01.0, ptr %i.d, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
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
  br i1 %.not.i2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit
  %i.t = phi ptr [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6expectCset5b41vfmiv_13pingora_cache.exit ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
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
define internal fastcc noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef %2, ptr %3) unnamed_addr #3 personality ptr @rust_eh_personality {
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
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCset5b41vfmiv_13pingora_cache3put14parse_responseNtB4_13ResponseParse11inject_data:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #26, !noalias !703
  unreachable

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ]
  %4 = extractvalue { ptr, ptr } %i.dy, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.eh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull %i.eg, ptr nonnull %4)
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseNtNtCsexYYUdYSQU6_5alloc6string6StringNtCs1ll6eLl40nD_8httparse5ErrorECset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !705
  br label %.thread

bb.q:                                             ; preds = %.noexc
  %i.ei = load i64, ptr %i.bt, align 8, !noalias !705
  %i.ej = trunc nuw i64 %i.ds to i1
  br i1 %i.ej, label %.thread66, label %bb.r

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
  %i.ek = load i16, ptr %i.bn, align 2, !range !714, !noalias !705, !noundef !5
  %i.el = trunc nuw i16 %i.ek to i1
  br i1 %i.el, label %bb.s, label %bb.x, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.em = load i16, ptr %i.bo, align 4, !noalias !705
  %i.en = load i64, ptr %i.bq, align 8, !noalias !705, !noundef !5
  invoke void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader5buildtECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.ab, i16 noundef %i.em, i64 noundef 1, i64 %i.en)
          to label %.noexc33 unwind label %.loopexit78

.noexc33:                                         ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.eo = load i64, ptr %i.ab, align 8, !range !8, !alias.scope !716, !noalias !717, !noundef !5
  %i.ep = icmp eq i64 %i.eo, -1
  br i1 %i.ep, label %bb.t, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i, !prof !18

bb.t:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !718
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !716, !noalias !717, !nonnull !5, !align !12, !noundef !5
  store ptr %i.er, ptr %i.u, align 8, !noalias !718
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #25
          to label %bb.v unwind label %bb.u, !noalias !719

bb.u:                                             ; preds = %bb.t
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #22
          to label %.body30 unwind label %bb.w, !noalias !719

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !719
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %.noexc33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(232) %i.ab, i64 232, i1 false), !alias.scope !720, !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !705
  %i.eu = load ptr, ptr %i.bp, align 8, !noalias !705, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.ev = load i64, ptr %i.bq, align 8, !noalias !705, !noundef !5 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ev, 5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i
  %i.ex = icmp eq i64 %i.ev, 0
  br i1 %i.ex, label %._crit_edge.i, label %.lr.ph.i

bb.x:                                             ; preds = %bb.r
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #26
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.x
  unreachable

.lr.ph.i:                                         ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i, %bb.al
  %.sroa.010.078.i = phi ptr [ %i.ey, %bb.al ], [ %i.eu, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.010.078.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !705
  %i.ez = load ptr, ptr %.sroa.010.078.i, align 8, !noalias !706, !nonnull !5, !noundef !5
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.010.078.i, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !706, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !705
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %i.fb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.y unwind label %.loopexit71.i, !noalias !706

._crit_edge.i:                                    ; preds = %bb.al, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCskspKcFIsYcD_12pingora_http14ResponseHeaderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !705
  invoke void @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ei)
          to label %bb.ap unwind label %.loopexit.split-lp.i.loopexit, !noalias !706

.body.i:                                          ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %bb.aw, %bb.at, %bb.an, %bb.ad, %.loopexit71.i
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.ad ], [ %i.he, %bb.aw ], [ %lpad.phi76.i, %bb.an ], [ %i.go, %bb.at ], [ %lpad.loopexit.i, %.loopexit71.i ], [ %lpad.loopexit79, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.i.loopexit.split-lp ]
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
  %i.fc = load i64, ptr %i.w, align 8, !range !17, !noalias !705, !noundef !5
  %i.fd = trunc nuw i64 %i.fc to i1
  %i.fe = load i64, ptr %i.bu, align 8, !range !19, !noalias !705, !noundef !5 ; 3 uses
  br i1 %i.fd, label %bb.z, label %bb.aa, !prof !18

bb.z:                                             ; preds = %bb.y
  %i.ff = load i64, ptr %i.bv, align 8, !noalias !705
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.fe, i64 %i.ff) #25
          to label %bb.am unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !706

bb.aa:                                            ; preds = %bb.y
  %i.fg = load ptr, ptr %i.bv, align 8, !noalias !705, !nonnull !5, !noundef !5 ; 2 uses
  %i.fh = icmp ule i64 %i.fb, %i.fe
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !705
  %.not.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  store i64 %i.fe, ptr %i.z, align 8, !noalias !705
  store ptr %i.fg, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !705
  store i64 %i.fb, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !705
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.010.078.i, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !706, !nonnull !5, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.010.078.i, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !706, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !705
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.fl, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ae unwind label %.loopexit72.i, !noalias !706

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull align 1 %i.ez, i64 %i.fb, i1 false), !noalias !706
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ah
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ae:                                            ; preds = %bb.ab
  %i.fm = load i64, ptr %i.v, align 8, !range !17, !noalias !705, !noundef !5
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = load i64, ptr %i.bw, align 8, !range !19, !noalias !705, !noundef !5 ; 3 uses
  br i1 %i.fn, label %bb.af, label %bb.ag, !prof !18

bb.af:                                            ; preds = %bb.ae
  %i.fp = load i64, ptr %i.bx, align 8, !noalias !705
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.fo, i64 %i.fp) #25
          to label %bb.am unwind label %.loopexit.split-lp73.i, !noalias !706

bb.ag:                                            ; preds = %bb.ae
  %i.fq = load ptr, ptr %i.bx, align 8, !noalias !705, !nonnull !5, !noundef !5 ; 2 uses
  %i.fr = icmp ule i64 %i.fl, %i.fo
  call void @llvm.assume(i1 %i.fr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !705
  store i64 %i.fo, ptr %i.y, align 8, !noalias !705
  store ptr %i.fq, ptr %i.by, align 8, !noalias !705
  store i64 0, ptr %i.bz, align 8, !noalias !705
  %.not29.i = icmp eq i64 %i.fl, 0
  br i1 %.not29.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  invoke void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1c_3vec3VechEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.aj unwind label %bb.ad, !noalias !706

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fq, ptr nonnull align 1 %i.fj, i64 %i.fl, i1 false), !noalias !706
  store i64 %i.fl, ptr %i.bz, align 8, !noalias !705
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !705
  %i.fs = load i8, ptr %i.aa, align 8, !range !21, !noalias !705, !noundef !5
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
end_hunk_2
