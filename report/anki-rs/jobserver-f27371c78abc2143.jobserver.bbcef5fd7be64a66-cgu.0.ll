Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/jobserver-f27371c78abc2143.jobserver.bbcef5fd7be64a66-cgu.0?download=true
inline.NumInlined: 69
inline.NumDeleted: 7
begin_hunk_0_@_ZN9jobserver6Client11try_acquire17hcfb01be164544deeE:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN9jobserver6Client11try_acquire28_$u7b$$u7b$closure$u7d$$u7d$17h455cf560b31eec2eE"(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) %0, ptr align 8 %1, i8 %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h74b2eef42f5d1f39E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h74b2eef42f5d1f39E.exit": ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17h8da5b28f0e2079f6E"(ptr nonnull align 1 %i.e)
  store ptr %i.d, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.g, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9jobserver6Client12from_env_ext17hec3dcd76f675b161E(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) %0, i1 zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = tail call { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hb0ccbde14d2d3b4bE"(ptr nonnull align 8 @87, i64 3) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = tail call { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3map17h8432f660f16ea74fE(ptr %i.k, ptr %i.l) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_ZN4core4iter6traits8iterator8Iterator8find_map17h6bc349321d06ad6cE(ptr nonnull sret([40 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not = icmp eq i64 %i.r, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.v = invoke { ptr, i64 } @"_ZN70_$LT$std..ffi..os_str..OsString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5f9c430f744160faE"(ptr nonnull align 8 %i.i)
          to label %bb.h unwind label %bb.w       ; 2 uses

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.f, align 8
  invoke void @"_ZN69_$LT$std..ffi..os_str..OsString$u20$as$u20$core..default..Default$GT$7default17he20581853969b36cE"(ptr nonnull sret([24 x i8]) align 8 %i.e)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.u, %bb.q, %bb.o, %bb.l, %bb.d
  %.sink30 = phi ptr [ %i.s, %bb.u ], [ %i.s, %bb.q ], [ %i.s, %bb.o ], [ %i.s, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.d ]
  %.sink = phi i64 [ %i.u, %bb.u ], [ %i.u, %bb.q ], [ %i.u, %bb.o ], [ %i.u, %bb.l ], [ 0, %bb.d ]
  store ptr %.sink30, ptr %0, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %.sroa.25.0..sroa_idx.i, align 8
  ret void

.body:                                            ; preds = %bb.w, %bb.v, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %i.x, %bb.f ], [ %i.ba, %bb.w ]
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.f) #27
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.w, %bb.v, %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.z = extractvalue { ptr, i64 } %i.v, 0
  %i.aa = extractvalue { ptr, i64 } %i.v, 1
  %i.ab = invoke { ptr, i64 } @_ZN3std3ffi6os_str5OsStr6to_str17hf10af6072223cd10E(ptr align 1 %i.z, i64 %i.aa)
          to label %bb.i unwind label %bb.w       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %.not13 = icmp eq ptr %i.ac, null
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = invoke { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hb0ccbde14d2d3b4bE"(ptr nonnull align 8 @76, i64 2)
          to label %.noexc unwind label %bb.w     ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.ae = extractvalue { ptr, i64 } %i.ab, 1
  %i.af = extractvalue { ptr, ptr } %i.ad, 0
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  store ptr %i.af, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = invoke { ptr, i64 } @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h821c8aa6549055f6E"(ptr nonnull align 8 %i.b, ptr nonnull align 1 %i.ac, i64 %i.ae)
          to label %.noexc16 unwind label %bb.w   ; 2 uses

.noexc16:                                         ; preds = %.noexc
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = invoke { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$8and_then17h656ead82757b8e2cE"(ptr align 1 %i.aj, i64 %i.ak)
          to label %bb.m unwind label %bb.w       ; 2 uses

bb.k:                                             ; preds = %bb.i
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h6548efdb18f9fa02E"(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 1 @88, i64 15)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.33.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx.i18, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -9223372036854775806, ptr %i.am, align 8
  br label %bb.e

bb.m:                                             ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  %.not14 = icmp eq ptr %i.an, null
  br i1 %.not14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = extractvalue { ptr, i64 } %i.al, 1
  invoke void @_ZN9jobserver3imp6Client4open17h33e1bf365b901085E(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr nonnull align 1 %i.an, i64 %i.ao, i1 zeroext %1)
          to label %bb.p unwind label %bb.w

bb.o:                                             ; preds = %bb.m
  %.sroa.33.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx.i20, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -9223372036854775807, ptr %i.ap, align 8
  br label %bb.e

bb.p:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.c, align 8
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  %.sroa.33.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx.i22, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.e

bb.r:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.av, align 8
  %i.aw = invoke ptr @_ZN5alloc5alloc15exchange_malloc17h2b545ffab6073e0eE(i64 48, i64 8)
          to label %bb.u unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr72drop_in_place$LT$alloc..sync..ArcInner$LT$jobserver..imp..Client$GT$$GT$17h8e10d87a9ddff80aE"(ptr nonnull align 8 %i.a) #27
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -9223372036854775800, ptr %i.az, align 8, !alias.scope !8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aw, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !8
  br label %bb.e

bb.v:                                             ; preds = %bb.s
  invoke void @"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h45b84964f55c98f9E"(ptr nonnull align 8 %i.i) #27
          to label %.body unwind label %bb.g

bb.w:                                             ; preds = %bb.b, %bb.h, %bb.k, %bb.n, %bb.j, %.noexc, %.noexc16
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h45b84964f55c98f9E"(ptr nonnull align 8 %i.i) #27
          to label %.body unwind label %bb.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN9jobserver6Client12from_env_ext28_$u7b$$u7b$closure$u7d$$u7d$17h555cac3ffcdae851E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readnone align 1 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN9jobserver6Client12from_env_ext28_$u7b$$u7b$closure$u7d$$u7d$17hcca674ca7d75b121E"(ptr sret([40 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.h, align 8
  %i.i = call { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hc12a43528a7b92f2E"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @_ZN3std3env7_var_os17h554c1800069f5c16E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 1 %i.j, i64 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core6option15Option$LT$T$GT$3map17h2d7111b224a68ccbE"(ptr sret([40 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.c)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN9jobserver6Client12from_env_ext28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1afac020f1a49da8E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9jobserver6Client14configure_make17h42ab2cf354748ed8E(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %0, align 8
  call fastcc void @_ZN9jobserver6Client10mflags_env17hf30d7839700db986E(ptr noalias align 8 %i.a, ptr %.val)
  %i.b = invoke align 8 ptr @_ZN3std7process7Command3env17h99d442faef8d2eaeE(ptr align 8 %1, ptr nonnull align 1 @84, i64 15, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h74cca206eaae197aE"(ptr nonnull align 8 %i.a) #27
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = invoke align 8 ptr @_ZN3std7process7Command3env17h99d442faef8d2eaeE(ptr align 8 %1, ptr nonnull align 1 @85, i64 9, ptr nonnull align 8 %i.a)
          to label %bb.d unwind label %bb.b       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = invoke align 8 ptr @_ZN3std7process7Command3env17h99d442faef8d2eaeE(ptr align 8 %1, ptr nonnull align 1 @86, i64 6, ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.b       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke void @_ZN9jobserver3imp6Client9configure17h9a2cf1703d4e4627E(ptr nonnull align 8 %i.g, ptr align 8 %1)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h74cca206eaae197aE"(ptr nonnull align 8 %i.a)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN9jobserver6Client3new17hcc420006d6f282f4E(i64 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @_ZN9jobserver3imp6Client3new17h52b75e4a9a960851E(ptr nonnull sret([32 x i8]) align 8 %i.b, i64 %0)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h97cf5bd0213324a0E"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a8ac8d79d40bdfeE"(ptr %i.g, ptr nonnull align 8 @89)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = invoke ptr @_ZN5alloc5alloc15exchange_malloc17h2b545ffab6073e0eE(i64 48, i64 8)
          to label %"_ZN5alloc4sync12Arc$LT$T$GT$3new17h0d3c78d695ff41f2E.exit" unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr72drop_in_place$LT$alloc..sync..ArcInner$LT$jobserver..imp..Client$GT$$GT$17h8e10d87a9ddff80aE"(ptr nonnull align 8 %i.a) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

"_ZN5alloc4sync12Arc$LT$T$GT$3new17h0d3c78d695ff41f2E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.k, 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc4sync12Arc$LT$T$GT$3new17h0d3c78d695ff41f2E.exit", %bb.b
  %.merged = phi { i64, ptr } [ %i.h, %bb.b ], [ %i.n, %"_ZN5alloc4sync12Arc$LT$T$GT$3new17h0d3c78d695ff41f2E.exit" ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9jobserver6Client7acquire17hda443ebafc2153a2E(ptr sret([16 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @_ZN9jobserver3imp6Client7acquire17h17f985335d9f330aE(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h18d1119f3ec4af5aE"(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.e = load i8, ptr %i.b, align 8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6ae9ad424e6986b4E"(ptr sret([16 x i8]) align 8 %0, ptr %i.h, ptr nonnull align 8 @90)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = load ptr, ptr %1, align 8
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h74b2eef42f5d1f39E.exit"

bb.d:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h74b2eef42f5d1f39E.exit": ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..clone..Clone$GT$5clone17h8da5b28f0e2079f6E"(ptr nonnull align 1 %i.o)
  store ptr %i.n, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.j, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 1
  br label %bb.e

bb.e:                                             ; preds = %"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h74b2eef42f5d1f39E.exit", %bb.b
  ret void
end_hunk_0
begin_hunk_1_@_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17hcb635ba34019eaafE
declare void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17hcb635ba34019eaafE(ptr align 8, i1 zeroext) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3f24407e5cb94730E"(ptr align 8) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h26daa406d6b62d5aE"(ptr align 8) unnamed_addr #11

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc05c51457da13f39E"(ptr align 8, ptr, i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hf685d8152d911075E"(ptr align 8, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17hd023a0a9a78b4e99E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN3std4sync6poison4Flag4done17hc53d9fe0a702ac6eE(ptr align 1, ptr align 1) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr align 4) unnamed_addr #20

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i1 } @"_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17hc2fed53c9d17b433E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN9jobserver3imp12spawn_helper28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h068b613bc10137b7E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i1 } @"_ZN3std4sync6poison20PoisonError$LT$T$GT$10into_inner17h2d129936c7b168eeE"(ptr align 8, i1 zeroext) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i1 } @"_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17h989caa85614d9ee4E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h821c8aa6549055f6E"(ptr align 8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$8and_then17h656ead82757b8e2cE"(ptr align 1, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3str21_$LT$impl$u20$str$GT$5split17hf91795af5b25af33E"(ptr sret([72 x i8]) align 8, ptr align 1, i64, i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heebab2bb1eadcc3cE"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3str21_$LT$impl$u20$str$GT$11rsplit_once17h71dae1a0ff73be9aE"(ptr sret([32 x i8]) align 8, ptr align 1, i64, ptr align 1, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17h362fbfbb3f672337E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9jobserver3imp6Client10string_arg17hc1b3a8ab1f3ffbf2E(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17ha4d1a5eab42f44caE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$16new_v1_formatted17h9df5aa3f53997210E"(ptr sret([48 x i8]) align 8, ptr align 8, i64, ptr align 8, i64, ptr align 8, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9jobserver3imp6Client7acquire17h17f985335d9f330aE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h18d1119f3ec4af5aE"(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6b196f078a559994E"(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h27415ef205c99614E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9jobserver3imp6Client11try_acquire17h3223a3fa83ed1846E(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5a048c51c8dc219bE"(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core6option15Option$LT$T$GT$3map17hc38a57b04b9e4dfbE"(ptr sret([16 x i8]) align 8, i1 zeroext, i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h52dee93e24f075cbE"(ptr sret([16 x i8]) align 8, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3map17h8432f660f16ea74fE(ptr, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4iter6traits8iterator8Iterator8find_map17h6bc349321d06ad6cE(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN69_$LT$std..ffi..os_str..OsString$u20$as$u20$core..default..Default$GT$7default17he20581853969b36cE"(ptr sret([24 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN70_$LT$std..ffi..os_str..OsString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5f9c430f744160faE"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_ZN3std3ffi6os_str5OsStr6to_str17hf10af6072223cd10E(ptr align 1, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h6548efdb18f9fa02E"(ptr sret([24 x i8]) align 8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9jobserver3imp6Client4open17h33e1bf365b901085E(ptr sret([40 x i8]) align 8, ptr align 1, i64, i1 zeroext) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core6option15Option$LT$T$GT$3map17h2d7111b224a68ccbE"(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN3std7process7Command3env17h99d442faef8d2eaeE(ptr align 8, ptr align 1, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9jobserver3imp6Client9configure17h9a2cf1703d4e4627E(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9jobserver3imp6Client3new17h52b75e4a9a960851E(ptr sret([32 x i8]) align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h97cf5bd0213324a0E"(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a8ac8d79d40bdfeE"(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6ae9ad424e6986b4E"(ptr sret([16 x i8]) align 8, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @"_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5b2856249036ae12E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$$LP$$RF$str$C$std..ffi..os_str..OsString$RP$$GT$$GT$17hc2324f14b4232d66E"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_ZN9jobserver3imp6Client9available17hd7f34e72136eb197E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr40drop_in_place$LT$jobserver..Acquired$GT$17hc323bf691cc5d23cE"(ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!4 = !{ptr @_ZN3std9panicking12catch_unwind7do_call17h77f664723c80c5c0E, ptr @_ZN3std9panicking12catch_unwind7do_call17hb9f6693e8a59a9a2E}
!5 = !{ptr @_ZN3std9panicking12catch_unwind8do_catch17h09f6d393e3044e5eE, ptr @_ZN3std9panicking12catch_unwind8do_catch17h1f00298bd6d774afE}
!6 = distinct !{!6, i1 false, !"_ZN9jobserver7FromEnv6new_ok17h1e31863a86d9e00cE"}
!7 = distinct !{!7, !6, !"_ZN9jobserver7FromEnv6new_ok17h1e31863a86d9e00cE: argument 0"}
!8 = !{!7}
end_hunk_1
