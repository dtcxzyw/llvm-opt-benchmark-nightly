Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-9374fd454a7f6d88.lindera_dictionary.b7b9bc016d0cfa7-cgu.13?download=true
inline.NumInlined: 83
inline.NumDeleted: 21
begin_hunk_0_@"_ZN6flate22gz5write18GzEncoder$LT$W$GT$6finish17hec3f8fee13b2c6b7E":bb.a
  %i.f = load i64, ptr %i.a, align 8
  %.not.i.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @175) #25
          to label %.noexc3 unwind label %bb.b

.noexc3:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core3ptr82drop_in_place$LT$flate2..gz..write..GzEncoder$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1ba844c19e6b6ddaE"(ptr align 8 %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  ret void

bb.j:                                             ; preds = %bb.e
  tail call void @"_ZN4core3ptr82drop_in_place$LT$flate2..gz..write..GzEncoder$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1ba844c19e6b6ddaE"(ptr align 8 %1)
  br label %bb.i

bb.k:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6flate22gz9GzBuilder5write17h9c2468c700d6431fE(ptr nofree writeonly sret([128 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2, i32 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  invoke void @_ZN6flate22gz9GzBuilder11into_header17h46f7c6b3ffa6f1beE(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1, i32 %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_ZN6flate22gz5write10gz_encoder17habc20687f344a2d1E(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a, i32 %3)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb6dcd47dd13e1397E"(ptr align 8 %2) #23
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN6flate22gz9read_into17h09f4f95d35ffc78eE(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = tail call { i64, ptr } @"_ZN71_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h9dd41a807f7e70e7E"(ptr align 8 %0, ptr align 1 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = invoke i8 @_ZN3std2io5error5Error4kind17hbe6743d07948aac5E(ptr nonnull align 8 %i.f)
          to label %bb.g unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.e, null
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = invoke ptr @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb7d82986e6b80d45E"(i8 37, ptr nonnull align 8 @173)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.b, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.c, %bb.h, %bb.d
  %.sroa.5.0 = phi ptr [ %i.j, %bb.d ], [ null, %bb.h ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.n = load i64, ptr %i.b, align 8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.b
  store i8 %i.h, ptr %i.a, align 1
  %i.p = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc3969bd415a9b2a7E"(ptr nonnull align 1 %i.a, ptr nonnull align 1 @33)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  br i1 %i.p, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.h
  %i.q = load ptr, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.j, %bb.f
  %.sroa.0.013 = phi i64 [ 1, %.thread ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.f ]
  %.sroa.5.012 = phi ptr [ %i.q, %.thread ], [ %.sroa.5.0, %bb.j ], [ %.sroa.5.0, %bb.f ]
  %i.r = insertvalue { i64, ptr } poison, i64 %.sroa.0.013, 0
  %i.s = insertvalue { i64, ptr } %i.r, ptr %.sroa.5.012, 1
  ret { i64, ptr } %i.s

bb.j:                                             ; preds = %bb.f
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.f)
  br label %bb.i

bb.k:                                             ; preds = %bb.l, %bb.e
  resume { ptr, i32 } %i.k

bb.l:                                             ; preds = %bb.e
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.f) #23
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN6flate23zio19Writer$LT$W$C$D$GT$10is_present17hfe97602d8a30a7bbE"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h1182477392e093c7E"(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN6flate23zio19Writer$LT$W$C$D$GT$10take_inner17hdc9f1b5c38bfb3a3E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @"_ZN4core6option15Option$LT$T$GT$4take17h5a66a9b7ec70cacaE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.c = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9e63fd96a9b3a3afE.exit"

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @175) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h9e63fd96a9b3a3afE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN6flate23zio19Writer$LT$W$C$D$GT$17write_with_status17h9b9db7ae1b7960e5E"(ptr sret([16 x i8]) align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.c = call ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17he1775a02a1b0c0d9E"(ptr align 8 %1)
  %i.d = call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.c) ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcd3d08e578c80d5cE"(ptr sret([16 x i8]) align 8 %0, ptr nonnull %i.d, ptr nonnull align 8 @177)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = call i64 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$8total_in17hb03c6fab28673c4dE"(ptr nonnull align 8 %i.b) ; 3 uses
  %i.f = call i8 @"_ZN65_$LT$flate2..mem..FlushCompress$u20$as$u20$flate2..zio..Flush$GT$4none17h15a835f4ca6aae17E"()
  %i.g = call i8 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$7run_vec17hd1c8abd8c9a89271E"(ptr nonnull align 8 %i.b, ptr align 1 %2, i64 %3, ptr align 8 %1, i8 %i.f)
  store i8 %i.g, ptr %i.a, align 1
  %i.h = call i64 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$8total_in17hb03c6fab28673c4dE"(ptr nonnull align 8 %i.b) ; 2 uses
  %i.i = load i8, ptr %i.a, align 1
  %i.j = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr align 1 %2, i64 %3)
  %i.k = icmp ne i64 %i.h, %i.e
  %or.cond.not = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %.lcssa14 = phi i64 [ %i.e, %bb.f ], [ %i.h, %bb.d ]
  %i.l = load i8, ptr %i.a, align 1               ; 2 uses
  %i.m = icmp eq i8 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ne i8 %i.i, 2
  %i.p = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h534e6c1146dc3689E"(ptr nonnull align 1 %i.a)
  %or.cond3.not = and i1 %i.o, %i.p
  br i1 %or.cond3.not, label %bb.b, label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.q = call ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 20, ptr nonnull align 1 @176, i64 22)
  store ptr %i.q, ptr %0, align 8
  store i8 3, ptr %i.n, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %4 = sub i64 %.lcssa14, %i.e
  store i64 %4, ptr %0, align 8
  store i8 %i.l, ptr %i.n, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN6flate23zio19Writer$LT$W$C$D$GT$3new17h712b26cbe71f4c67E"(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h84c915c59fa58868E"(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 32768, ptr nonnull align 8 @178)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$flate2..mem..Compress$GT$17hce95b78410b6374aE"(ptr nonnull align 8 %i.b) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd99a4b9cdb7276bbE"(ptr nonnull align 8 %i.c) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17he1775a02a1b0c0d9E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = tail call zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h2532a803a7244694E"(ptr align 8 %0)
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.d = call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_mut17h1ebdd5007804b450E"(ptr nonnull align 8 %i.c) ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4cec694d6f32dadeE.exit"

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @179) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h4cec694d6f32dadeE.exit": ; preds = %bb.b
  %i.e = call { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb3ffd2076cb09974E"(ptr align 8 %0) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = call { i64, ptr } @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17hbea07ca0bc69d863E"(ptr nonnull align 8 %i.d, ptr align 1 %i.f, i64 %i.g) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  %i.k = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.i, ptr %i.j) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = trunc nuw i64 %i.l to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4cec694d6f32dadeE.exit"
  %i.p = call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr %i.m, ptr nonnull align 8 @181)
  br label %.loopexit

bb.e:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4cec694d6f32dadeE.exit"
  %i.q = icmp eq ptr %i.m, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb7d82986e6b80d45E"(i8 23, ptr nonnull align 8 @180)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h1d40b9a15fbf6639E"(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr align 8 %0, i64 %i.n)
  call void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h7d93bac1fca0738dE"(ptr nonnull align 8 %i.a)
  %i.s = call zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h2532a803a7244694E"(ptr align 8 %0)
  br i1 %i.s, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.f, %bb.d
  %.sroa.0.0 = phi ptr [ %i.r, %bb.f ], [ %i.p, %bb.d ], [ null, %bb.a ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$6finish17hfce1f9b78cea40f6E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.d = call ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17he1775a02a1b0c0d9E"(ptr align 8 %0)
  %i.e = call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr nonnull %i.e, ptr nonnull align 8 @183)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = call i64 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$9total_out17h20b244f578450988E"(ptr nonnull align 8 %i.c)
  %i.h = call i8 @"_ZN65_$LT$flate2..mem..FlushCompress$u20$as$u20$flate2..zio..Flush$GT$6finish17h806df331d3502134E"()
  %i.i = call i8 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$7run_vec17hd1c8abd8c9a89271E"(ptr nonnull align 8 %i.c, ptr nonnull align 1 inttoptr (i64 1 to ptr), i64 0, ptr align 8 %0, i8 %i.h)
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h78d79375405e7aa6E"(ptr nonnull sret([16 x i8]) align 8 %i.a, i8 %i.i)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17he54278cc83c5b2b4E"(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.j = load i8, ptr %i.b, align 8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr %i.m, ptr nonnull align 8 @182)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = call i64 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$9total_out17h20b244f578450988E"(ptr nonnull align 8 %i.c)
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %i.n, %bb.e ], [ null, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define nonnull align 8 ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_mut17h1ebdd5007804b450E"(ptr nonnull align 8 %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h4cec694d6f32dadeE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @184) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h4cec694d6f32dadeE.exit": ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN6flate23zio4read17h8536e35b5cc31ce2E(ptr align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @"_ZN74_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h1c020dfcea90be73E"(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %0)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2df9ec8c3720d461E"(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr %i.g, ptr nonnull align 8 @185)
  br label %bb.o

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %i.i = phi ptr [ %i.c, %.lr.ph ], [ %i.ac, %bb.m ] ; 2 uses
  %i.j = load i64, ptr %i.e, align 8              ; 2 uses
  %i.k = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr nonnull align 1 %i.i, i64 %i.j) ; 3 uses
  %i.l = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$9total_out17hdc2908ba559f3d91E"(ptr align 8 %1) ; 5 uses
  %i.m = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$8total_in17h3c861e961b5d0ca2E"(ptr align 8 %1)
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i8 @"_ZN67_$LT$flate2..mem..FlushDecompress$u20$as$u20$flate2..zio..Flush$GT$4none17h8480340a73e7eb97E"()
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = call i8 @"_ZN67_$LT$flate2..mem..FlushDecompress$u20$as$u20$flate2..zio..Flush$GT$6finish17hdf58922b057c957dE"()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0 = phi i8 [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  %i.p = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$3run17hd464aadb10dac857E"(ptr align 8 %1, ptr nonnull align 1 %i.i, i64 %i.j, ptr align 1 %2, i64 %3, i8 %.sroa.04.0) ; 2 uses
  %i.q = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$9total_out17hdc2908ba559f3d91E"(ptr align 8 %1) ; 5 uses
end_hunk_0
