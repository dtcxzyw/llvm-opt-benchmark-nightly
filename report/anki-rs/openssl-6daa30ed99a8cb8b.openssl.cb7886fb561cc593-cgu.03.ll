Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/openssl-6daa30ed99a8cb8b.openssl.cb7886fb561cc593-cgu.03?download=true
inline.NumInlined: 211
inline.NumDeleted: 59
begin_hunk_0_@"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Public$GT$19public_key_from_pem17hd595f818874a8588E":bb.a
bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN67_$LT$openssl..bio..MemBioSlice$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb16bdf86ecf80d22E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr46drop_in_place$LT$openssl..bio..MemBioSlice$GT$17h06079cf81a536068E.exit" unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  %.sroa.07.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.07.0.copyload, ptr %0, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.623.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  call void @"_ZN67_$LT$openssl..bio..MemBioSlice$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb16bdf86ecf80d22E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #11
  unreachable

"_ZN4core3ptr46drop_in_place$LT$openssl..bio..MemBioSlice$GT$17h06079cf81a536068E.exit": ; preds = %bb.f
  resume { ptr, i32 } %i.j

bb.j:                                             ; preds = %bb.h, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Public$GT$22from_public_components17he4f70dc94ebc5f9eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  invoke void @_ZN11openssl_sys7openssl4init17h4e20513a74f605afE()
          to label %bb.b unwind label %.thread132

.thread132:                                       ; preds = %bb.a, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @BN_free(ptr noundef %4) #12
  br label %.thread106

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @DSA_new() #12     ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c)
          to label %.thread unwind label %.thread132

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @DSA_set0_pqg(ptr noundef nonnull %i.e, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  %i.h = icmp sgt i32 %i.g, 0                     ; 3 uses
  br i1 %i.h, label %bb.e, label %bb.f

.thread:                                          ; preds = %bb.c
  %.sroa.06.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.811.0.copyload = load i64, ptr %.sroa.811.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.06.0.copyload, ptr %0, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.68.0.copyload, ptr %.sroa.260.0..sroa_idx, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.811.0.copyload, ptr %.sroa.361.0..sroa_idx, align 8
  call void @BN_free(ptr noundef %4) #12
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef i32 @DSA_set0_key(ptr noundef nonnull %i.e, ptr noundef %4, ptr noundef null) #12
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.k, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.l

bb.i:                                             ; preds = %bb.m, %bb.n, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h
  %.sroa.039.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.641.0.copyload = load i32, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.379.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.844.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %.sroa.022.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.624.0.copyload = load i32, ptr %.sroa.624.0..sroa_idx, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.370.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.827.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @DSA_free(ptr noundef nonnull %i.e) #12
  call void @BN_free(ptr noundef %4) #12
  br i1 %i.h, label %.thread122, label %.thread106

bb.m:                                             ; preds = %bb.j, %bb.k
  %.sroa.039.0.copyload.sink = phi i64 [ %.sroa.039.0.copyload, %bb.j ], [ %.sroa.022.0.copyload, %bb.k ]
  %.sroa.641.0.copyload.sink = phi i32 [ %.sroa.641.0.copyload, %bb.j ], [ %.sroa.624.0.copyload, %bb.k ]
  store i64 %.sroa.039.0.copyload.sink, ptr %0, align 8
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.641.0.copyload.sink, ptr %.sroa.278.0..sroa_idx, align 8
  call void @DSA_free(ptr noundef nonnull %i.e) #12
  call void @BN_free(ptr noundef %4) #12
  br i1 %i.h, label %bb.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  call void @BN_free(ptr noundef %3) #12
  call void @BN_free(ptr noundef %2) #12
  call void @BN_free(ptr noundef %1) #12
  br label %bb.i

.thread106:                                       ; preds = %.thread132, %bb.l
  %.pn82131 = phi { ptr, i32 } [ %i.d, %.thread132 ], [ %i.l, %bb.l ]
  call void @BN_free(ptr noundef %3) #12
  call void @BN_free(ptr noundef %2) #12
  call void @BN_free(ptr noundef %1) #12
  br label %.thread122

.thread122:                                       ; preds = %bb.l, %.thread106
  %.pn86120 = phi { ptr, i32 } [ %.pn82131, %.thread106 ], [ %i.l, %bb.l ]
  resume { ptr, i32 } %.pn86120
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN7openssl3dsa33Dsa$LT$openssl..pkey..Private$GT$23from_private_components17hcfd480d410000d47E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  invoke void @_ZN11openssl_sys7openssl4init17h4e20513a74f605afE()
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.l, %bb.c
  %.sroa.049.0 = phi i1 [ true, %bb.c ], [ %i.h, %bb.l ]
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.l, %bb.l ]
  call void @BN_free(ptr noundef %5) #12
  call void @BN_free(ptr noundef %4) #12
  br i1 %.sroa.049.0, label %.thread, label %.thread115

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @DSA_new() #12     ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c)
          to label %.critedge unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.g = tail call noundef i32 @DSA_set0_pqg(ptr noundef nonnull %i.e, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12 ; 2 uses
  %i.h = icmp slt i32 %i.g, 1                     ; 2 uses
  br i1 %i.h, label %bb.h, label %bb.g

.critedge:                                        ; preds = %bb.e
  %.sroa.06.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.811.0.copyload = load i64, ptr %.sroa.811.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.06.0.copyload, ptr %0, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.68.0.copyload, ptr %.sroa.260.0..sroa_idx, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.811.0.copyload, ptr %.sroa.361.0..sroa_idx, align 8
  call void @BN_free(ptr noundef %5) #12
  call void @BN_free(ptr noundef %4) #12
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @DSA_set0_key(ptr noundef nonnull %i.e, ptr noundef %5, ptr noundef %4) #12
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.o unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.k, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.n, %bb.p, %bb.i
  ret void

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @DSA_free(ptr noundef nonnull %i.e) #12
  br label %bb.b

bb.m:                                             ; preds = %bb.j
  %.sroa.039.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.641.0.copyload = load i32, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.379.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.844.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.sroa.022.0.copyload.sink = phi i64 [ %.sroa.022.0.copyload, %bb.o ], [ %.sroa.039.0.copyload, %bb.m ]
  %.sroa.624.0.copyload.sink = phi i32 [ %.sroa.624.0.copyload, %bb.o ], [ %.sroa.641.0.copyload, %bb.m ]
  store i64 %.sroa.022.0.copyload.sink, ptr %0, align 8
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.624.0.copyload.sink, ptr %.sroa.269.0..sroa_idx, align 8
  %6 = icmp sgt i32 %i.g, 0
  call void @DSA_free(ptr noundef nonnull %i.e) #12
  call void @BN_free(ptr noundef %5) #12
  call void @BN_free(ptr noundef %4) #12
  br i1 %6, label %bb.k, label %bb.p

bb.o:                                             ; preds = %bb.h
  %.sroa.022.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.624.0.copyload = load i32, ptr %.sroa.624.0..sroa_idx, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.370.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.827.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.p:                                             ; preds = %.critedge, %bb.n
  call void @BN_free(ptr noundef %3) #12
  call void @BN_free(ptr noundef %2) #12
  call void @BN_free(ptr noundef %1) #12
  br label %bb.k

.thread:                                          ; preds = %bb.b
  call void @BN_free(ptr noundef %3) #12
  call void @BN_free(ptr noundef %2) #12
  call void @BN_free(ptr noundef %1) #12
  br label %.thread115

.thread115:                                       ; preds = %bb.b, %.thread
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN7openssl3dsa33Dsa$LT$openssl..pkey..Private$GT$8generate17h97ce1a2133fabc94E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Params$GT$15generate_params17h6c712144a2fadc00E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %1)
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775808
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.610.0.copyload = load i64, ptr %.sroa.610.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %0, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.610.0.copyload, ptr %.sroa.313.0..sroa_idx, align 8
  br label %"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Params$GT$12generate_key17he691195e5f6342aaE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.f = tail call noundef i32 @DSA_generate_key(ptr noundef %i.e) #12, !noalias !19
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.h, align 8, !alias.scope !19
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !19
  br label %"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Params$GT$12generate_key17he691195e5f6342aaE.exit"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.g, !noalias !19

bb.f:                                             ; preds = %bb.e
  %.sroa.05.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !19
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.67.0.copyload.i = load i32, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !19
  %.sroa.810.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.319.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.810.0..sroa_idx.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  store i64 %.sroa.05.0.copyload.i, ptr %0, align 8, !alias.scope !19
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.67.0.copyload.i, ptr %.sroa.218.0..sroa_idx.i, align 8, !alias.scope !19
  call void @DSA_free(ptr noundef %i.e) #12, !noalias !19
  br label %"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Params$GT$12generate_key17he691195e5f6342aaE.exit"

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @DSA_free(ptr noundef %i.e) #12, !noalias !19
  resume { ptr, i32 } %i.i

"_ZN7openssl3dsa32Dsa$LT$openssl..pkey..Params$GT$12generate_key17he691195e5f6342aaE.exit": ; preds = %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN7openssl3dsa6DsaSig23from_private_components17h0fef585a1cbed43dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef ptr @DSA_SIG_new() #12 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @DSA_SIG_set0(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2) #12 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.e, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @BN_free(ptr noundef %2) #12
  call void @BN_free(ptr noundef %1) #12
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.b
  %.sroa.06.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.811.0.copyload = load i64, ptr %.sroa.811.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.06.0.copyload, ptr %0, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.68.0.copyload, ptr %.sroa.220.0..sroa_idx, align 8
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.811.0.copyload, ptr %.sroa.321.0..sroa_idx, align 8
  call void @BN_free(ptr noundef %2) #12
  call void @BN_free(ptr noundef %1) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN7openssl3dsa6DsaSig8from_der17h8af849127c06e7aaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @_ZN11openssl_sys7openssl4init17h4e20513a74f605afE()
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %2, i64 9223372036854775807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.c = call noundef ptr @d2i_DSA_SIG(ptr noundef null, ptr noundef nonnull %i.b, i64 noundef %.sroa.0.0.i) #12 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN7openssl5error10ErrorStack3get17hbdb82c7a54f620f4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink8 = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ -9223372036854775808, %bb.a ]
  %.sink = phi ptr [ %.sroa.5.0.copyload, %bb.b ], [ %i.c, %bb.a ]
  store i64 %.sink8, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef nonnull align 1 ptr @_ZN7openssl3dsa9DsaSigRef1r17h4ac53f5e9bef4a85E(ptr noundef nonnull align 1 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  call void @DSA_SIG_get0(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef null) #12
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef nonnull align 1 ptr @_ZN7openssl3dsa9DsaSigRef1s17hbc5a15731531455eE(ptr noundef nonnull align 1 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  call void @DSA_SIG_get0(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

end_hunk_0
