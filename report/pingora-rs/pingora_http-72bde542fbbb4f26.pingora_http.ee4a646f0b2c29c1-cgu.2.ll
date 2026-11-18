Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_http-72bde542fbbb4f26.pingora_http.ee4a646f0b2c29c1-cgu.2?download=true
inline.NumInlined: 184
inline.NumDeleted: 106
begin_hunk_0_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 104
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs84JG9zk80ZV_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #19
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_CskspKcFIsYcD_12pingora_httpNtNtCs84JG9zk80ZV_4http7request5PartsINtNtCskKLDkoKarTP_4core7convert4FromNtB5_13RequestHeaderE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) initializes((0, 224)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(352) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.b = load i64, ptr %i.a, align 8, !range !392, !alias.scope !391, !noundef !9
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1M_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.val2.i.i = load i64, ptr %i.d, align 8, !alias.scope !394, !noundef !9 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !394, !nonnull !9, !noundef !9
  %i.g = shl nuw nsw i64 %.val2.i.i, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.g, i64 noundef 2) #19, !noalias !394
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1r_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.h)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.h, align 8, !range !11, !alias.scope !396, !noundef !9 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.j, label %.body.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val3.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !397, !nonnull !9, !noundef !9
  %i.l = mul nuw i64 %.val2.i.i.i, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !398
  br label %.body.i.i

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit.i.i
  %.val.i.i.i = load i64, ptr %i.h, align 8, !range !11, !alias.scope !396, !noundef !9 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1q_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val1.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !397, !nonnull !9, !noundef !9
  %i.o = mul nuw i64 %.val.i.i.i, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !399
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1q_.exit.i

.body.i.i:                                        ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1Z_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.p) #17
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !394
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1q_.exit.i: ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1Z_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1M_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1q_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.i, %.body.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.val2 = load i64, ptr %i.t, align 8            ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskspKcFIsYcD_12pingora_http.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val3 = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !400
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskspKcFIsYcD_12pingora_http.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1M_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1q_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.val = load i64, ptr %i.w, align 8             ; 2 uses
  %i.x = icmp eq i64 %.val, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskspKcFIsYcD_12pingora_http.exit4, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1M_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val1 = load ptr, ptr %i.y, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !401
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskspKcFIsYcD_12pingora_http.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskspKcFIsYcD_12pingora_http.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1M_.exit, %bb.j
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskspKcFIsYcD_12pingora_http(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.731.i = alloca [40 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !9 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !411
  %i.g = mul nuw nsw i64 %i.f, 72                 ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !411
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !411
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !412
  %i.k = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !412 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #20, !noalias !411
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.f, ptr %i.b, align 8, !noalias !411
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !411
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %3

3:                                                ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.042.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.y, %bb.e ] ; 9 uses
  %.sroa.7.041.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.e ] ; 3 uses
  %.sroa.10.040.i = phi i64 [ %i.f, %.lr.ph.i ], [ %4, %bb.e ]
  %4 = add nsw i64 %.sroa.10.040.i, -1            ; 2 uses
  %5 = icmp eq ptr %.sroa.012.042.i, %2
  br i1 %5, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit, label %bb.d

bb.d:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.042.i, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.q = load ptr, ptr %i.p, align 8, !noalias !415, !nonnull !9, !align !10, !noundef !9
  %i.r = load ptr, ptr %i.q, align 8, !noalias !415, !nonnull !9, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.042.i, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.042.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !noalias !415, !noundef !9
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.042.i, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noalias !415, !noundef !9
  invoke void %i.r(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 %i.s, ptr noundef %i.u, i64 noundef %i.w)
          to label %bb.e unwind label %bb.g, !noalias !411, !inline_history !410

bb.e:                                             ; preds = %bb.d
  %i.x = add nuw nsw i64 %.sroa.7.041.i, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.042.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.042.i, i64 64
  %i.aa = load i8, ptr %i.z, align 8, !range !16, !noalias !415, !noundef !9
  store i8 %i.aa, ptr %i.o, align 8, !alias.scope !414, !noalias !413
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.042.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.731.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.731.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %.sroa.7.041.i ; 3 uses
  %i.ad = load <2 x i64>, ptr %.sroa.012.042.i, align 8, !noalias !413
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load <2 x i64>, ptr %i.ab, align 8, !noalias !413
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !noalias !411
  store <2 x i64> %i.ae, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !411
  %.sroa.731.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.731.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.731.i, i64 40, i1 false), !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.731.i)
  %i.af = icmp eq i64 %4, 0
  br i1 %i.af, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit, label %3

bb.f:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !411
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.041.i, ptr %i.n, align 8, !noalias !411
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.h unwind label %bb.f, !noalias !411

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit: ; preds = %3, %bb.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i
  %6 = phi ptr [ %i.j, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i ], [ %i.n, %bb.e ], [ %i.n, %3 ]
  store i64 %i.f, ptr %6, align 8, !noalias !411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !411
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !9 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !425
  %i.g = shl nuw nsw i64 %i.f, 6                  ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !425
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !425
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1B_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !426
  %i.k = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !426 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #20, !noalias !425
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.f, ptr %i.b, align 8, !noalias !425
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !425
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %3

3:                                                ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.z, %bb.e ] ; 8 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.f, %.lr.ph.i ], [ %4, %bb.e ]
  %4 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %5 = icmp eq ptr %.sroa.012.023.i, %2
  br i1 %5, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1B_.exit, label %bb.d

bb.d:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !425
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !428, !nonnull !9, !align !10, !noundef !9
  %i.s = load ptr, ptr %i.r, align 8, !noalias !428, !nonnull !9, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !noalias !428, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 48
  %i.x = load i64, ptr %i.w, align 8, !noalias !428, !noundef !9
  invoke void %i.s(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.t, ptr noundef %i.v, i64 noundef %i.x)
          to label %bb.e unwind label %bb.g, !noalias !425, !inline_history !424

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 16
  %i.ab = load <2 x i64>, ptr %.sroa.012.023.i, align 8, !noalias !429
  store <2 x i64> %i.ab, ptr %i.a, align 16, !alias.scope !427, !noalias !425
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !noalias !429
  store <2 x i64> %i.ac, ptr %i.p, align 16, !alias.scope !427, !noalias !425
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !425
  %i.ae = icmp eq i64 %4, 0
  br i1 %i.ae, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1B_.exit, label %3

bb.f:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !425
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.n, align 8, !noalias !425
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.h unwind label %bb.f, !noalias !425

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1B_.exit: ; preds = %3, %bb.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i
  %6 = phi ptr [ %i.j, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i ], [ %i.n, %bb.e ], [ %i.n, %3 ]
  store i64 %i.f, ptr %6, align 8, !noalias !425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !425
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskspKcFIsYcD_12pingora_http(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.642.i = alloca [40 x i8], align 8        ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !9 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !452
  %i.h = mul nuw nsw i64 %i.g, 104                ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !452
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !452
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !453
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !453 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.h) #20, !noalias !452
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.g, ptr %i.c, align 8, !noalias !452
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !452
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %i.g
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %3

3:                                                ; preds = %bb.m, %.lr.ph.i
  %.sroa.013.061.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.q, %bb.m ] ; 15 uses
  %.sroa.7.060.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %bb.m ] ; 3 uses
  %.sroa.10.059.i = phi i64 [ %i.g, %.lr.ph.i ], [ %4, %bb.m ]
  %4 = add nsw i64 %.sroa.10.059.i, -1            ; 2 uses
  %5 = icmp eq ptr %.sroa.013.061.i, %2
  br i1 %5, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 104
  %i.r = add nuw nsw i64 %.sroa.7.060.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 96
  %i.t = load i16, ptr %i.s, align 8, !noalias !454, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !noalias !454, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !454
  %i.w = load ptr, ptr %i.v, align 8, !noalias !454, !nonnull !9, !noundef !9
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !noalias !454, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !454, !noundef !9
  invoke void %i.w(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !452, !inline_history !436

.noexc.i:                                         ; preds = %bb.e
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !454
  %.sroa.411.0.copyload.i.i = load i8, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !454
  %.sroa.512.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.512.0..sroa_idx.i.i, align 1, !noalias !454
  %.sroa.512.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !454
  %.sroa.512.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !454
  %i.ac = zext i56 %.sroa.512.sroa.0.0.copyload.i.i to i64
  %i.ad = shl nuw i64 %i.ac, 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 72
  %i.af = load i8, ptr %i.ae, align 8, !range !15, !noalias !454, !noundef !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc.i
  %.sroa.66.sroa.5.0.i.i = phi ptr [ undef, %bb.f ], [ %.sroa.512.sroa.5.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.66.sroa.4.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.512.sroa.4.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.66.sroa.0.0.i.i = phi i64 [ 0, %bb.f ], [ %i.ad, %.noexc.i ]
  %.sroa.53.0.i.i = phi i8 [ %i.af, %bb.f ], [ %.sroa.411.0.copyload.i.i, %.noexc.i ]
  %.sroa.01.0.i.i = phi ptr [ null, %bb.f ], [ %.sroa.010.0.copyload.i.i, %.noexc.i ] ; 3 uses
  %.sroa.5.0.insert.ext.i.i = zext i8 %.sroa.53.0.i.i to i64
  %.sroa.5.1.insert.insert.i.i = or disjoint i64 %.sroa.66.sroa.0.0.i.i, %.sroa.5.0.insert.ext.i.i
  %i.ag = inttoptr i64 %.sroa.5.1.insert.insert.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !454
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !456, !nonnull !9, !align !10, !noundef !9
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !456, !nonnull !9, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !456, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !noalias !456, !noundef !9
  invoke void %i.aj(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 8 %i.ak, ptr noundef %i.am, i64 noundef %i.ao)
          to label %bb.j unwind label %bb.h, !noalias !454, !inline_history !439

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %i.aq, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !457, !nonnull !9, !noundef !9
  invoke void %i.as(ptr noundef %.sroa.66.sroa.5.0.i.i, ptr noundef %i.ag, i64 noundef %.sroa.66.sroa.4.0.i.i)
          to label %bb.o unwind label %bb.l, !noalias !454, !inline_history !2

bb.j:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 56
  %i.au = load i8, ptr %i.at, align 8, !range !16, !noalias !456, !noundef !9
  store i8 %i.au, ptr %i.p, align 8, !alias.scope !455, !noalias !454
  %i.av = load i64, ptr %.sroa.013.061.i, align 8, !range !12, !noalias !454, !noundef !9
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 8
  %i.ay = load <2 x i64>, ptr %i.ax, align 8, !noalias !454
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !454
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ]
  %i.ba = phi <2 x i64> [ %i.ay, %bb.k ], [ undef, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.642.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.642.i, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !454
  %i.bb = getelementptr inbounds nuw [104 x i8], ptr %i.l, i64 %.sroa.7.060.i ; 8 uses
  store i64 %.sroa.0.0.i12.i, ptr %i.bb, align 8, !noalias !452
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store <2 x i64> %i.ba, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.642.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.642.i, i64 40, i1 false), !noalias !452
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  store ptr %.sroa.01.0.i.i, ptr %.sroa.743.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store ptr %i.ag, ptr %.sroa.844.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.945.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store i64 %.sroa.66.sroa.4.0.i.i, ptr %.sroa.945.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.1046.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  store ptr %.sroa.66.sroa.5.0.i.i, ptr %.sroa.1046.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.1147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  store i16 %i.t, ptr %.sroa.1147.0..sroa_idx.i, align 8, !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.642.i)
  %i.bc = icmp eq i64 %4, 0
  br i1 %i.bc, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit, label %3

bb.n:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !452
  unreachable

bb.o:                                             ; preds = %bb.i, %bb.h, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.ap, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.060.i, ptr %i.o, align 8, !noalias !452
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.p unwind label %bb.n, !noalias !452

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit: ; preds = %3, %bb.m, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i
  %6 = phi ptr [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i ], [ %i.o, %bb.m ], [ %i.o, %3 ]
  store i64 %i.g, ptr %6, align 8, !noalias !452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !452
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.642.i = alloca [32 x i8], align 8        ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !9 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !480
  %i.h = mul nuw nsw i64 %i.g, 96                 ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !480
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !480
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1w_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !481
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !481 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.h) #20, !noalias !480
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.g, ptr %i.c, align 8, !noalias !480
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !480
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.g
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %3

3:                                                ; preds = %bb.l, %.lr.ph.i
  %.sroa.013.061.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.p, %bb.l ] ; 14 uses
  %.sroa.7.060.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %bb.l ] ; 3 uses
  %.sroa.10.059.i = phi i64 [ %i.g, %.lr.ph.i ], [ %4, %bb.l ]
  %4 = add nsw i64 %.sroa.10.059.i, -1            ; 2 uses
  %5 = icmp eq ptr %.sroa.013.061.i, %2
  br i1 %5, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1w_.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 96
  %i.q = add nuw nsw i64 %.sroa.7.060.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 88
  %i.s = load i16, ptr %i.r, align 8, !noalias !482, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !noalias !482, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !482
  %i.v = load ptr, ptr %i.u, align 8, !noalias !482, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !noalias !482, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !noalias !482, !noundef !9
  invoke void %i.v(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.w, ptr noundef %i.y, i64 noundef %i.aa)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !480, !inline_history !464

.noexc.i:                                         ; preds = %bb.e
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !482
  %.sroa.411.0.copyload.i.i = load i8, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !482
  %.sroa.512.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.512.0..sroa_idx.i.i, align 1, !noalias !482
  %.sroa.512.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !482
  %.sroa.512.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !482
  %i.ab = zext i56 %.sroa.512.sroa.0.0.copyload.i.i to i64
  %i.ac = shl nuw i64 %i.ab, 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 64
  %i.ae = load i8, ptr %i.ad, align 8, !range !15, !noalias !482, !noundef !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc.i
  %.sroa.66.sroa.5.0.i.i = phi ptr [ undef, %bb.f ], [ %.sroa.512.sroa.5.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.66.sroa.4.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.512.sroa.4.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.66.sroa.0.0.i.i = phi i64 [ 0, %bb.f ], [ %i.ac, %.noexc.i ]
  %.sroa.53.0.i.i = phi i8 [ %i.ae, %bb.f ], [ %.sroa.411.0.copyload.i.i, %.noexc.i ]
  %.sroa.01.0.i.i = phi ptr [ null, %bb.f ], [ %.sroa.010.0.copyload.i.i, %.noexc.i ] ; 3 uses
  %.sroa.5.0.insert.ext.i.i = zext i8 %.sroa.53.0.i.i to i64
  %.sroa.5.1.insert.insert.i.i = or disjoint i64 %.sroa.66.sroa.0.0.i.i, %.sroa.5.0.insert.ext.i.i
  %i.af = inttoptr i64 %.sroa.5.1.insert.insert.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !482
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !483, !nonnull !9, !align !10, !noundef !9
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !483, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !483, !noundef !9
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !noalias !483, !noundef !9
  invoke void %i.ai(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.aj, ptr noundef %i.al, i64 noundef %i.an)
          to label %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i unwind label %bb.h, !noalias !482, !inline_history !467

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %i.ap, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !484, !nonnull !9, !noundef !9
  invoke void %i.ar(ptr noundef %.sroa.66.sroa.5.0.i.i, ptr noundef %i.af, i64 noundef %.sroa.66.sroa.4.0.i.i)
          to label %bb.n unwind label %bb.k, !noalias !482, !inline_history !2

_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.g
  %i.as = load i64, ptr %.sroa.013.061.i, align 8, !range !12, !noalias !482, !noundef !9
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 8
  %i.av = load <2 x i64>, ptr %i.au, align 8, !noalias !482
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !482
  unreachable

bb.l:                                             ; preds = %bb.j, %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.j ], [ 0, %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.ax = phi <2 x i64> [ %i.av, %bb.j ], [ undef, %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.642.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !482
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %.sroa.7.060.i ; 8 uses
  store i64 %.sroa.0.0.i12.i, ptr %i.ay, align 8, !noalias !480
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store <2 x i64> %i.ax, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.i, i64 32, i1 false), !noalias !480
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store ptr %.sroa.01.0.i.i, ptr %.sroa.743.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store ptr %i.af, ptr %.sroa.844.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.945.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  store i64 %.sroa.66.sroa.4.0.i.i, ptr %.sroa.945.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.1046.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store ptr %.sroa.66.sroa.5.0.i.i, ptr %.sroa.1046.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.1147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  store i16 %i.s, ptr %.sroa.1147.0..sroa_idx.i, align 8, !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.642.i)
  %i.az = icmp eq i64 %4, 0
  br i1 %i.az, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1w_.exit, label %3

bb.m:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !480
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.h, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ao, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.060.i, ptr %i.o, align 8, !noalias !480
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1U_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.o unwind label %bb.m, !noalias !480

bb.o:                                             ; preds = %bb.n
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1w_.exit: ; preds = %3, %bb.l, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i
  %6 = phi ptr [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i ], [ %i.o, %bb.l ], [ %i.o, %3 ]
  store i64 %i.g, ptr %6, align 8, !noalias !480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !480
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskspKcFIsYcD_12pingora_http(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.d = load i64, ptr %i.a, align 8, !noundef !9 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !490
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !alias.scope !490
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !490
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !491
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !491 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.d) #20, !noalias !492
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !490
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !490
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !490
  store i64 %i.d, ptr %i.k, align 8, !alias.scope !490
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBH_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBH_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i1 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !516, !noundef !9
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !516, !nonnull !9, !align !10, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !516, !nonnull !9, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !516, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !516, !noundef !9
  invoke void %i.n(ptr noundef %i.k, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit.i unwind label %bb.b, !noalias !511, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit7.i: ; preds = %.lr.ph3
  %i.s = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.h, %i.d
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i2 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !521, !noundef !9
  %i.aa = load ptr, ptr %i.x, align 8, !alias.scope !521, !nonnull !9, !align !10, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !521, !nonnull !9, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !521, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !521, !noundef !9
  invoke void %i.ac(ptr noundef %i.z, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit7.i unwind label %bb.c, !noalias !511, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit7.i, %bb.b
  resume { ptr, i32 } %i.u

bb.c:                                             ; preds = %.lr.ph3
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !511
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBH_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1t_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1t_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i1 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !545, !noundef !9
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !545, !nonnull !9, !align !10, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !545, !nonnull !9, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !545, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !545, !noundef !9
  invoke void %i.n(ptr noundef %i.k, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit.i unwind label %bb.b, !noalias !540, !inline_history !1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit7.i: ; preds = %.lr.ph3
  %i.s = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.h, %i.d
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i2 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !550, !noundef !9
  %i.aa = load ptr, ptr %i.x, align 8, !alias.scope !550, !nonnull !9, !align !10, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !550, !nonnull !9, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !550, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !550, !noundef !9
  invoke void %i.ac(ptr noundef %i.z, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit7.i unwind label %bb.c, !noalias !540, !inline_history !1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1s_.exit7.i, %bb.b
  resume { ptr, i32 } %i.u

bb.c:                                             ; preds = %.lr.ph3
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
