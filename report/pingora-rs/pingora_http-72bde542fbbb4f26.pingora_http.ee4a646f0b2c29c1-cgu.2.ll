Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_http-72bde542fbbb4f26.pingora_http.ee4a646f0b2c29c1-cgu.2?download=true
inline.NumInlined: 184
inline.NumDeleted: 106
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskspKcFIsYcD_12pingora_http:bb.a
bb.h:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.041.i, ptr %i.n, align 8, !noalias !411
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.i unwind label %bb.g, !noalias !411

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.d, %bb.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i
  %i.ak = phi ptr [ %i.j, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i ], [ %i.n, %bb.f ], [ %i.n, %bb.d ]
  store i64 %i.f, ptr %i.ak, align 8, !noalias !411
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
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ac, %bb.f ] ; 8 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %bb.f ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.r, %bb.f ]
  %i.r = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.s = icmp eq ptr %.sroa.012.023.i, %i.o
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1B_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !425
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !428, !nonnull !9, !align !10, !noundef !9
  %i.v = load ptr, ptr %i.u, align 8, !noalias !428, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !noalias !428, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !noalias !428, !noundef !9
  invoke void %i.v(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noundef nonnull align 8 %i.w, ptr noundef %i.y, i64 noundef %i.aa)
          to label %bb.f unwind label %bb.h, !noalias !425, !inline_history !424

bb.f:                                             ; preds = %bb.e
  %i.ab = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 16
  %i.ae = load <2 x i64>, ptr %.sroa.012.023.i, align 8, !noalias !429
  store <2 x i64> %i.ae, ptr %i.a, align 16, !alias.scope !427, !noalias !425
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !noalias !429
  store <2 x i64> %i.af, ptr %i.q, align 16, !alias.scope !427, !noalias !425
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !425
  %i.ah = icmp eq i64 %i.r, 0
  br i1 %i.ah, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1B_.exit, label %bb.d

bb.g:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !425
  unreachable

bb.h:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.n, align 8, !noalias !425
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.i unwind label %bb.g, !noalias !425

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1B_.exit: ; preds = %bb.d, %bb.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i
  %i.aj = phi ptr [ %i.j, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i ], [ %i.n, %bb.f ], [ %i.n, %bb.d ]
  store i64 %i.f, ptr %i.aj, align 8, !noalias !425
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
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %i.g
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.013.061.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.t, %bb.n ] ; 15 uses
  %.sroa.7.060.i = phi i64 [ 0, %.lr.ph.i ], [ %i.u, %bb.n ] ; 3 uses
  %.sroa.10.059.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.r, %bb.n ]
  %i.r = add nsw i64 %.sroa.10.059.i, -1          ; 2 uses
  %i.s = icmp eq ptr %.sroa.013.061.i, %i.p
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 104
  %i.u = add nuw nsw i64 %.sroa.7.060.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 96
  %i.w = load i16, ptr %i.v, align 8, !noalias !454, !noundef !9
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !noalias !454, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !454
  %i.z = load ptr, ptr %i.y, align 8, !noalias !454, !nonnull !9, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !454, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !454, !noundef !9
  invoke void %i.z(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.aa, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !452, !inline_history !436

.noexc.i:                                         ; preds = %bb.f
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !454 ; 2 uses
  %.sroa.411.0.copyload.i.i = load i8, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !454
  %.sroa.512.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.512.0..sroa_idx.i.i, align 1, !noalias !454
  %.sroa.512.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !454
  %.sroa.512.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !454
  %i.af = zext i56 %.sroa.512.sroa.0.0.copyload.i.i to i64
  %i.ag = shl nuw i64 %i.af, 8
  %2 = icmp eq ptr %.sroa.010.0.copyload.i.i, null
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 72
  %i.ai = load i8, ptr %i.ah, align 8, !range !15, !noalias !454, !noundef !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc.i
  %.sroa.66.sroa.5.0.i.i = phi ptr [ undef, %bb.g ], [ %.sroa.512.sroa.5.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.66.sroa.4.0.i.i = phi i64 [ undef, %bb.g ], [ %.sroa.512.sroa.4.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.66.sroa.0.0.i.i = phi i64 [ 0, %bb.g ], [ %i.ag, %.noexc.i ]
  %.sroa.53.0.i.i = phi i8 [ %i.ai, %bb.g ], [ %.sroa.411.0.copyload.i.i, %.noexc.i ]
  %.sroa.01.0.i.i = phi i1 [ true, %bb.g ], [ %2, %.noexc.i ]
  %.sroa.01.0.i.i.a = phi ptr [ null, %bb.g ], [ %.sroa.010.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.5.0.insert.ext.i.i = zext i8 %.sroa.53.0.i.i to i64
  %.sroa.5.1.insert.insert.i.i = or disjoint i64 %.sroa.66.sroa.0.0.i.i, %.sroa.5.0.insert.ext.i.i
  %i.aj = inttoptr i64 %.sroa.5.1.insert.insert.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !454
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !456, !nonnull !9, !align !10, !noundef !9
  %i.am = load ptr, ptr %i.al, align 8, !noalias !456, !nonnull !9, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !456, !noundef !9
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !456, !noundef !9
  invoke void %i.am(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 8 %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %bb.k unwind label %bb.i, !noalias !454, !inline_history !439

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.01.0.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.a, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !noalias !457, !nonnull !9, !noundef !9
  invoke void %i.au(ptr noundef %.sroa.66.sroa.5.0.i.i, ptr noundef %i.aj, i64 noundef %.sroa.66.sroa.4.0.i.i)
          to label %bb.p unwind label %bb.m, !noalias !454, !inline_history !2

bb.k:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !range !16, !noalias !456, !noundef !9
  store i8 %i.aw, ptr %i.q, align 8, !alias.scope !455, !noalias !454
  %i.ax = load i64, ptr %.sroa.013.061.i, align 8, !range !12, !noalias !454, !noundef !9
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 8
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !noalias !454
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !454
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  %i.bc = phi <2 x i64> [ %i.ba, %bb.l ], [ undef, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.642.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.642.i, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !454
  %i.bd = getelementptr inbounds nuw [104 x i8], ptr %i.l, i64 %.sroa.7.060.i ; 8 uses
  store i64 %.sroa.0.0.i12.i, ptr %i.bd, align 8, !noalias !452
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store <2 x i64> %i.bc, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.642.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.642.i, i64 40, i1 false), !noalias !452
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  store ptr %.sroa.01.0.i.i.a, ptr %.sroa.743.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store ptr %i.aj, ptr %.sroa.844.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.945.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store i64 %.sroa.66.sroa.4.0.i.i, ptr %.sroa.945.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.1046.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  store ptr %.sroa.66.sroa.5.0.i.i, ptr %.sroa.1046.0..sroa_idx.i, align 8, !noalias !452
  %.sroa.1147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i16 %i.w, ptr %.sroa.1147.0..sroa_idx.i, align 8, !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.642.i)
  %i.be = icmp eq i64 %i.r, 0
  br i1 %i.be, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit, label %bb.d

bb.o:                                             ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !452
  unreachable

bb.p:                                             ; preds = %bb.j, %bb.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.as, %bb.j ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.060.i, ptr %i.o, align 8, !noalias !452
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.q unwind label %bb.o, !noalias !452

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBP_5value11HeaderValueENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.d, %bb.n, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i
  %i.bg = phi ptr [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i ], [ %i.o, %bb.n ], [ %i.o, %bb.d ]
  store i64 %i.g, ptr %i.bg, align 8, !noalias !452
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
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.g
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.013.061.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.s, %bb.m ] ; 14 uses
  %.sroa.7.060.i = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %bb.m ] ; 3 uses
  %.sroa.10.059.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.q, %bb.m ]
  %i.q = add nsw i64 %.sroa.10.059.i, -1          ; 2 uses
  %i.r = icmp eq ptr %.sroa.013.061.i, %i.p
  br i1 %i.r, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1w_.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 96
  %i.t = add nuw nsw i64 %.sroa.7.060.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 88
  %i.v = load i16, ptr %i.u, align 8, !noalias !482, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !noalias !482, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !482
  %i.y = load ptr, ptr %i.x, align 8, !noalias !482, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !482, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !482, !noundef !9
  invoke void %i.y(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.z, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !480, !inline_history !464

.noexc.i:                                         ; preds = %bb.f
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !482 ; 2 uses
  %.sroa.411.0.copyload.i.i = load i8, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !482
  %.sroa.512.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.512.0..sroa_idx.i.i, align 1, !noalias !482
  %.sroa.512.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !482
  %.sroa.512.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !482
  %i.ae = zext i56 %.sroa.512.sroa.0.0.copyload.i.i to i64
  %i.af = shl nuw i64 %i.ae, 8
  %2 = icmp eq ptr %.sroa.010.0.copyload.i.i, null
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 64
  %i.ah = load i8, ptr %i.ag, align 8, !range !15, !noalias !482, !noundef !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc.i
  %.sroa.66.sroa.5.0.i.i = phi ptr [ undef, %bb.g ], [ %.sroa.512.sroa.5.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.66.sroa.4.0.i.i = phi i64 [ undef, %bb.g ], [ %.sroa.512.sroa.4.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.66.sroa.0.0.i.i = phi i64 [ 0, %bb.g ], [ %i.af, %.noexc.i ]
  %.sroa.53.0.i.i = phi i8 [ %i.ah, %bb.g ], [ %.sroa.411.0.copyload.i.i, %.noexc.i ]
  %.sroa.01.0.i.i = phi i1 [ true, %bb.g ], [ %2, %.noexc.i ]
  %.sroa.01.0.i.i.a = phi ptr [ null, %bb.g ], [ %.sroa.010.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %.sroa.5.0.insert.ext.i.i = zext i8 %.sroa.53.0.i.i to i64
  %.sroa.5.1.insert.insert.i.i = or disjoint i64 %.sroa.66.sroa.0.0.i.i, %.sroa.5.0.insert.ext.i.i
  %i.ai = inttoptr i64 %.sroa.5.1.insert.insert.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !482
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !483, !nonnull !9, !align !10, !noundef !9
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !483, !nonnull !9, !noundef !9
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !483, !noundef !9
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !483, !noundef !9
  invoke void %i.al(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.am, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i unwind label %bb.i, !noalias !482, !inline_history !467

bb.i:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.01.0.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.a, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !noalias !484, !nonnull !9, !noundef !9
  invoke void %i.at(ptr noundef %.sroa.66.sroa.5.0.i.i, ptr noundef %i.ai, i64 noundef %.sroa.66.sroa.4.0.i.i)
          to label %bb.o unwind label %bb.l, !noalias !482, !inline_history !2

_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.h
  %i.au = load i64, ptr %.sroa.013.061.i, align 8, !range !12, !noalias !482, !noundef !9
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.061.i, i64 8
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !noalias !482
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !482
  unreachable

bb.m:                                             ; preds = %bb.k, %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.k ], [ 0, %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.az = phi <2 x i64> [ %i.ax, %bb.k ], [ undef, %_RNvXs7_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtB5_14CaseHeaderNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.642.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !482
  %i.ba = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %.sroa.7.060.i ; 8 uses
  store i64 %.sroa.0.0.i12.i, ptr %i.ba, align 8, !noalias !480
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x i64> %i.az, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.i, i64 32, i1 false), !noalias !480
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store ptr %.sroa.01.0.i.i.a, ptr %.sroa.743.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store ptr %i.ai, ptr %.sroa.844.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.945.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store i64 %.sroa.66.sroa.4.0.i.i, ptr %.sroa.945.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.1046.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store ptr %.sroa.66.sroa.5.0.i.i, ptr %.sroa.1046.0..sroa_idx.i, align 8, !noalias !480
  %.sroa.1147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i16 %i.v, ptr %.sroa.1147.0..sroa_idx.i, align 8, !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.642.i)
  %i.bb = icmp eq i64 %i.q, 0
  br i1 %i.bb, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1w_.exit, label %bb.d

bb.n:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !480
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.060.i, ptr %i.o, align 8, !noalias !480
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEEB1U_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.p unwind label %bb.n, !noalias !480

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1w_.exit: ; preds = %bb.d, %bb.m, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i
  %i.bd = phi ptr [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.thread.i ], [ %i.o, %bb.m ], [ %i.o, %bb.d ]
  store i64 %i.g, ptr %i.bd, align 8, !noalias !480
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
end_hunk_0
