Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/build_script_build-07516fc6f52d2ead.build_script_build.c2134d2b204f2bd1-cgu.0?download=true
inline.NumInlined: 82
inline.NumDeleted: 60
begin_hunk_0_@"_ZN18build_script_build11run_command28_$u7b$$u7b$closure$u7d$$u7d$17he3104fbb3dae0511E":bb.a
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h1ace1dfaa93d1a5dE"(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 @20, ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.d, ptr nonnull align 8 @21) #19
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN18build_script_build12build_c_code28_$u7b$$u7b$closure$u7d$$u7d$17h16cab477495683ccE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_ZN3std4path7PathBuf7as_path17hb05ea9718e822de8E(ptr align 8 %2) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  tail call fastcc void @_ZN18build_script_build8obj_path17h8143a021d650207eE(ptr noalias align 8 %0, ptr align 1 %i.a, i64 %i.c, ptr align 1 %i.e, i64 %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN18build_script_build12build_c_code28_$u7b$$u7b$closure$u7d$$u7d$17h479e7e2f58ecfbdcE"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcac873f9157a931cE"(ptr align 8 %1) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call { ptr, i64 } @_ZN3std4path4Path9extension17h14b5a7bd556c0375E(ptr align 1 %i.c, i64 %i.d) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9b70ca2c5dec0bdcE.exit.i"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @5) #19
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h9b70ca2c5dec0bdcE.exit.i": ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = tail call { ptr, i64 } @_ZN3std3ffi6os_str5OsStr6to_str17h5fe2cf9f23c46d3aE(ptr nonnull align 1 %i.f, i64 %i.g) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %_ZN18build_script_build10is_perlasm17hca6478b2761bafcbE.exit

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9b70ca2c5dec0bdcE.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @6) #19
  unreachable

_ZN18build_script_build10is_perlasm17hca6478b2761bafcbE.exit: ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9b70ca2c5dec0bdcE.exit.i"
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  store ptr %i.i, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hb8eb402bf3d3555eE"(ptr nonnull align 8 %i.a, ptr nonnull align 8 @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = xor i1 %i.l, true
  ret i1 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN18build_script_build12build_c_code28_$u7b$$u7b$closure$u7d$$u7d$17h742cbb379487ae3cE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = tail call { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcac873f9157a931cE"(ptr align 8 %1) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = tail call { ptr, i64 } @_ZN3std4path4Path9extension17h14b5a7bd556c0375E(ptr align 1 %i.c, i64 %i.d) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store ptr %i.f, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hc9389f6b078fb6dfE"(ptr nonnull align 8 %i.a, ptr nonnull align 8 @34)
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8
  %i.k = call zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr align 8 %i.j, ptr nonnull align 8 @36)
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  %i.m = call zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr align 8 %i.l, ptr nonnull align 8 @38)
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = call zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr nonnull align 8 %i.o, ptr nonnull align 8 @40)
  %i.q = xor i1 %i.p, true
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.sroa.0.0 = phi i1 [ %i.q, %bb.e ], [ true, %bb.d ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN18build_script_build12build_c_code28_$u7b$$u7b$closure$u7d$$u7d$17hb1dc32206f1ec9abE"(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [152 x i8], align 8               ; 11 uses
  %i.e = alloca [152 x i8], align 8               ; 7 uses
  %i.f = alloca [472 x i8], align 8               ; 17 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [472 x i8], align 8               ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 2 uses
  %i.v = load ptr, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = tail call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h72bb046c47615830E"(ptr align 8 %i.z, i64 %i.ab) ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0
  %i.am = extractvalue { ptr, ptr } %i.ak, 1
  call void @_ZN4core4iter6traits8iterator8Iterator5chain17h24535e4c0783c184E(ptr nonnull sret([32 x i8]) align 8 %i.u, ptr %i.al, ptr %i.am, ptr align 8 %i.ad, i64 %i.af)
  %i.an = load ptr, ptr %0, align 8               ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load i64, ptr %i.ay, align 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.x, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN2cc5Build3new17h696ba78bf15e6c91E(ptr nonnull sret([472 x i8]) align 8 %i.f), !noalias !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6
  invoke void @_ZN2cc5Build12get_compiler17hce9f5e609ff00ea8E(ptr nonnull sret([152 x i8]) align 8 %i.e, ptr nonnull align 8 %i.f)
          to label %.noexc.i.i unwind label %bb.ba, !noalias !6

.noexc.i.i:                                       ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 3 uses
  %i.bc = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr nonnull align 8 %i.bb, ptr nonnull align 8 @40)
          to label %bb.d unwind label %bb.c, !noalias !6

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp2, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bd, %bb.c ] ; 2 uses
  %.sroa.03.0.i.i.i = phi i8 [ %.sroa.03.2.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.03.1.i.i.i, %bb.c ]
  %2 = trunc nuw i8 %.sroa.03.0.i.i.i to i1
  br i1 %2, label %bb.az, label %.body.i.i

bb.c:                                             ; preds = %bb.au, %bb.k, %bb.j, %bb.h, %bb.f, %.noexc.i.i
  %.sroa.03.1.i.i.i = phi i8 [ %.sroa.03.2.i.i.i, %bb.au ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %.noexc.i.i ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc.i.i
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.g, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %i.e, i64 152, i1 false), !noalias !6
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.be = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr align 8 %i.an, ptr nonnull align 8 @42)
          to label %bb.g unwind label %bb.c, !noalias !6

bb.g:                                             ; preds = %bb.f
  br i1 %i.be, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.bf = invoke zeroext i1 @_ZN2cc4tool4Tool13is_like_clang17h62b6fd19627fc5d5E(ptr nonnull align 8 %i.e)
          to label %bb.i unwind label %bb.c, !noalias !6

bb.i:                                             ; preds = %bb.h
  br i1 %i.bf, label %bb.e, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke align 8 ptr @_ZN2cc5Build8compiler17hd0046d4e79759ef6E(ptr nonnull align 8 %i.f, ptr nonnull align 1 @43, i64 5)
          to label %bb.k unwind label %bb.c, !noalias !6 ; 0 uses

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cc5Build12get_compiler17hce9f5e609ff00ea8E(ptr nonnull sret([152 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %bb.l unwind label %bb.c, !noalias !6

bb.l:                                             ; preds = %bb.k, %bb.e
  %.sroa.03.2.i.i.i = phi i8 [ 0, %bb.e ], [ 1, %bb.k ] ; 3 uses
  invoke void @_ZN3std4path4Path4join17h8019228f0bbba227E(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 1 %i.ap, i64 %i.ar, ptr nonnull align 1 @44, i64 7)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.r, %bb.av, %bb.at, %bb.as, %bb.ap, %bb.an, %bb.ak, %bb.aj, %.critedge.i.i.i, %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %.invoke.i.i.i, %bb.x, %bb.v, %bb.u, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr35drop_in_place$LT$cc..tool..Tool$GT$17ha0166c56e0224b04E"(ptr nonnull align 8 %i.d) #18
          to label %bb.b unwind label %bb.ay, !noalias !6

bb.m:                                             ; preds = %bb.l
  %i.bh = invoke align 8 ptr @_ZN2cc5Build7include17h6e5a8f30b9a08bd4E(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.c)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bi = invoke align 8 ptr @_ZN2cc5Build7include17h2fd7df3b95912a73E(ptr nonnull align 8 %i.f, ptr align 1 %i.ax, i64 %i.az)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bj = invoke zeroext i1 @_ZN2cc4tool4Tool12is_like_msvc17h03d752e5e130e7c7E(ptr nonnull align 8 %i.d)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %..i.i.i.i = select i1 %i.bj, i64 12, i64 17
  %.1.i.i.i.i = select i1 %i.bj, ptr @450, ptr @468
  %i.bk = invoke { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h445b32b14e026f7fE"(ptr nonnull align 8 %.1.i.i.i.i, i64 %..i.i.i.i)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  store ptr %i.bl, ptr %i.b, align 8, !noalias !6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !noalias !6
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %i.bo = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69ef7a023e80c522E"(ptr nonnull align 8 %i.b)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = invoke align 8 ptr @_ZN2cc5Build4flag17hf6e3089a6273d704E(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.bo)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.u:                                             ; preds = %bb.s
  %i.bq = invoke { ptr, i64 } @_ZN5alloc6string6String6as_str17hfb8d72af71af1b51E(ptr nonnull align 8 %i.bb)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1
  store ptr %i.br, ptr %i.a, align 8, !noalias !6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !noalias !6
  %i.bu = invoke zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8contains17h9f6c807e91a157ccE"(ptr nonnull align 8 @50, i64 5, ptr nonnull align 8 %i.a)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.w:                                             ; preds = %bb.v
  br i1 %i.bu, label %.invoke.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = invoke zeroext i1 @_ZN2cc4tool4Tool12is_like_msvc17h03d752e5e130e7c7E(ptr nonnull align 8 %i.d)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.y:                                             ; preds = %bb.x
  br i1 %i.bv, label %bb.z, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.y, %bb.w
  %i.bw = phi ptr [ @52, %bb.w ], [ @51, %bb.y ]
  %i.bx = phi i64 [ 6, %bb.w ], [ 3, %bb.y ]
  %i.by = invoke align 8 ptr @_ZN2cc5Build4flag17hdf2f17ff385b8919E(ptr nonnull align 8 %i.f, ptr nonnull align 1 %i.bw, i64 %i.bx)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.z:                                             ; preds = %.invoke.i.i.i, %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ca = load i8, ptr %i.bz, align 8, !noalias !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = invoke align 8 ptr @_ZN2cc5Build6define17h0bc6dbed736d96ebE(ptr nonnull align 8 %i.f, ptr nonnull align 1 @53, i64 6, ptr align 1 null, i64 undef)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cd = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr nonnull align 8 %i.an, ptr nonnull align 8 @38)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i.i.i, %bb.ah, %bb.ac
  %i.ce = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr nonnull align 8 %i.an, ptr nonnull align 8 @56)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.ae:                                            ; preds = %bb.ac
  %i.cf = invoke zeroext i1 @_ZN2cc4tool4Tool12is_like_msvc17h03d752e5e130e7c7E(ptr nonnull align 8 %i.d)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.af:                                            ; preds = %bb.ae
  br i1 %i.cf, label %bb.ag, label %.critedge.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cg = invoke zeroext i1 @_ZN2cc4tool4Tool16is_like_clang_cl17hf6ed7c4b7d2eb4bfE(ptr nonnull align 8 %i.d)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.cg, label %.critedge.i.i.i, label %bb.ad

.critedge.i.i.i:                                  ; preds = %bb.ah, %bb.af
  %i.ch = invoke align 8 ptr @_ZN2cc5Build4flag17hdf2f17ff385b8919E(ptr nonnull align 8 %i.f, ptr nonnull align 1 @54, i64 6)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.ai:                                            ; preds = %bb.ad
  br i1 %i.ce, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ci = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr nonnull align 8 %i.bb, ptr nonnull align 8 @58)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.ak:                                            ; preds = %bb.aq, %bb.ai
  %i.cj = invoke zeroext i1 @_ZN2cc4tool4Tool13is_like_clang17h62b6fd19627fc5d5E(ptr nonnull align 8 %i.d)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ci, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.at, %bb.ar, %bb.aq, %bb.ao, %bb.al
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 73
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !6
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.av, label %bb.au

bb.an:                                            ; preds = %bb.al
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.co = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr nonnull align 8 %i.cn, ptr nonnull align 8 @60)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.ao:                                            ; preds = %bb.an
  br i1 %i.co, label %bb.ap, label %bb.am

bb.ap:                                            ; preds = %bb.ao
  %i.cp = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h1fa5d4e48f1698e5E"(ptr nonnull align 8 %i.an, ptr nonnull align 8 @36)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.cp, label %bb.ak, label %bb.am

bb.ar:                                            ; preds = %bb.ak
  br i1 %i.cj, label %bb.as, label %bb.am

bb.as:                                            ; preds = %bb.ar
  %i.cq = invoke align 8 ptr @_ZN2cc5Build4flag17hdf2f17ff385b8919E(ptr nonnull align 8 %i.f, ptr nonnull align 1 @61, i64 12)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.cr = invoke align 8 ptr @_ZN2cc5Build6define17hab537394ca41a885E(ptr nonnull align 8 %i.f, ptr nonnull align 1 @62, i64 21, ptr nonnull align 1 @63, i64 1)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.au:                                            ; preds = %bb.av, %bb.am
  invoke void @"_ZN4core3ptr35drop_in_place$LT$cc..tool..Tool$GT$17ha0166c56e0224b04E"(ptr nonnull align 8 %i.d)
          to label %bb.aw unwind label %bb.c, !noalias !6

bb.av:                                            ; preds = %bb.am
  %i.cs = invoke align 8 ptr @_ZN2cc5Build20warnings_into_errors17h0f6101a927fcf0d3E(ptr nonnull align 8 %i.f, i1 zeroext true)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6 ; 0 uses

bb.aw:                                            ; preds = %bb.au
  %3 = trunc nuw i8 %.sroa.03.2.i.i.i to i1
  br i1 %3, label %bb.ax, label %_ZN18build_script_build9new_build17h9d6c29cc7ea11b76E.exit.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @"_ZN4core3ptr35drop_in_place$LT$cc..tool..Tool$GT$17ha0166c56e0224b04E"(ptr nonnull align 8 %i.e)
          to label %_ZN18build_script_build9new_build17h9d6c29cc7ea11b76E.exit.i unwind label %bb.ba, !noalias !6

bb.ay:                                            ; preds = %bb.az, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !6
  unreachable

bb.az:                                            ; preds = %bb.b
  invoke void @"_ZN4core3ptr35drop_in_place$LT$cc..tool..Tool$GT$17ha0166c56e0224b04E"(ptr nonnull align 8 %i.e) #18
          to label %.body.i.i unwind label %bb.ay, !noalias !6

bb.ba:                                            ; preds = %bb.ax, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ba, %bb.az, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cu, %bb.ba ], [ %.pn.i.i.i, %bb.az ], [ %.pn.i.i.i, %bb.b ]
  invoke void @"_ZN4core3ptr30drop_in_place$LT$cc..Build$GT$17hddbac109700f29a1E"(ptr nonnull align 8 %i.f) #18
          to label %common.resume.i unwind label %bb.bb, !noalias !6

bb.bb:                                            ; preds = %.body.i.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !6
  unreachable

common.resume.i:                                  ; preds = %bb.bc, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn.i, %bb.bc ]
  resume { ptr, i32 } %common.resume.op.i

_ZN18build_script_build9new_build17h9d6c29cc7ea11b76E.exit.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.s, ptr noundef nonnull align 8 dereferenceable(472) %i.f, i64 472, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  store ptr %i.s, ptr %i.q, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ap, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ar, ptr %i.cx, align 8
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each17hc61dfbe104774512E(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q)
          to label %bb.be unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bo, %bb.bi, %bb.bd
  %.pn.i = phi { ptr, i32 } [ %i.cy, %bb.bd ], [ %i.dg, %bb.bo ], [ %i.dd, %bb.bi ]
  invoke void @"_ZN4core3ptr30drop_in_place$LT$cc..Build$GT$17hddbac109700f29a1E"(ptr nonnull align 8 %i.s) #18
          to label %common.resume.i unwind label %bb.bz

bb.bd:                                            ; preds = %bb.by, %bb.bg, %bb.bf, %bb.be, %_ZN18build_script_build9new_build17h9d6c29cc7ea11b76E.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %_ZN18build_script_build9new_build17h9d6c29cc7ea11b76E.exit.i
  %i.cz = invoke { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h72bb046c47615830E"(ptr align 8 %i.ah, i64 %i.aj)
          to label %bb.bf unwind label %bb.bd     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.da = extractvalue { ptr, ptr } %i.cz, 0
  %i.db = extractvalue { ptr, ptr } %i.cz, 1
  invoke void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h045e0b68823febfcE"(ptr %i.da, ptr %i.db, ptr nonnull align 8 %i.s)
          to label %bb.bg unwind label %bb.bd

bb.bg:                                            ; preds = %bb.bf
  invoke void @"_ZN71_$LT$std..path..PathBuf$u20$as$u20$core..convert..From$LT$$RF$T$GT$$GT$4from17ha261f0b25acc4c06E"(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr align 1 %i.at, i64 %i.av)
          to label %bb.bh unwind label %bb.bd

bb.bh:                                            ; preds = %bb.bg
  %i.dc = invoke { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcac873f9157a931cE"(ptr nonnull align 8 %i.o)
          to label %bb.bj unwind label %bb.bi     ; 2 uses

bb.bi:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bh
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0fb0f18a3f92a4d8E"(ptr nonnull align 8 %i.o) #18
          to label %bb.bc unwind label %bb.bz

bb.bj:                                            ; preds = %bb.bh
  %i.de = extractvalue { ptr, i64 } %i.dc, 0
  %i.df = extractvalue { ptr, i64 } %i.dc, 1
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h2d88dcd1f360c0a8E(ptr nonnull sret([16 x i8]) align 8 %i.j, ptr nonnull align 8 %i.t)
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117heea0cecab037bebdE"(ptr nonnull sret([48 x i8]) align 8 %i.l, ptr nonnull align 8 @68, ptr nonnull align 8 %i.k)
          to label %bb.bl unwind label %bb.bi

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN5alloc3fmt6format17h873a53181cd269baE(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l)
          to label %bb.bm unwind label %bb.bi

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_ZN3std4path4Path4join17hd4efa94520656adcE(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr align 1 %i.de, i64 %i.df, ptr nonnull align 8 %i.n)
          to label %bb.bn unwind label %bb.bi

bb.bn:                                            ; preds = %bb.bm
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0fb0f18a3f92a4d8E"(ptr nonnull align 8 %i.o)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bn
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0fb0f18a3f92a4d8E"(ptr nonnull align 8 %i.p) #18
          to label %bb.bc unwind label %bb.bz

bb.bp:                                            ; preds = %bb.bn
  %i.dh = invoke align 8 ptr @_ZN2cc5Build14cargo_metadata17h0ec63f640040628cE(ptr nonnull align 8 %i.s, i1 zeroext false)
          to label %bb.bq unwind label %bb.bo     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.di = invoke { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcac873f9157a931cE"(ptr nonnull align 8 %i.p)
          to label %bb.br unwind label %bb.bo     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.dj = extractvalue { ptr, i64 } %i.di, 0
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  %i.dl = invoke { ptr, i64 } @_ZN3std4path4Path9file_name17hce417f450fb6c4b1E(ptr align 1 %i.dj, i64 %i.dk)
          to label %bb.bs unwind label %bb.bo     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0
  %i.dn = extractvalue { ptr, i64 } %i.dl, 1
  %i.do = invoke { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$8and_then17h8d1f52413aeb60e0E"(ptr align 1 %i.dm, i64 %i.dn)
          to label %bb.bt unwind label %bb.bo     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.dp = extractvalue { ptr, i64 } %i.do, 0
  %i.dq = extractvalue { ptr, i64 } %i.do, 1
  %i.dr = invoke { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$6expect17hf40f2dd523abd016E"(ptr align 1 %i.dp, i64 %i.dq, ptr nonnull align 1 @69, i64 11, ptr nonnull align 8 @70)
          to label %bb.bu unwind label %bb.bo     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.ds = extractvalue { ptr, i64 } %i.dr, 0
  %i.dt = extractvalue { ptr, i64 } %i.dr, 1
  invoke void @_ZN2cc5Build7compile17h401f933c9c1013e9E(ptr nonnull align 8 %i.s, ptr align 1 %i.ds, i64 %i.dt)
          to label %bb.bv unwind label %bb.bo

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h2d88dcd1f360c0a8E(ptr nonnull sret([16 x i8]) align 8 %i.g, ptr nonnull align 8 %i.t)
          to label %bb.bw unwind label %bb.bo

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117heea0cecab037bebdE"(ptr nonnull sret([48 x i8]) align 8 %i.i, ptr nonnull align 8 @72, ptr nonnull align 8 %i.h)
          to label %bb.bx unwind label %bb.bo

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr nonnull align 8 %i.i)
          to label %bb.by unwind label %bb.bo

bb.by:                                            ; preds = %bb.bx
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0fb0f18a3f92a4d8E"(ptr nonnull align 8 %i.p)
          to label %_ZN18build_script_build13build_library17h67d7e57b97bfce45E.exit unwind label %bb.bd

bb.bz:                                            ; preds = %bb.bo, %bb.bi, %bb.bc
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

_ZN18build_script_build13build_library17h67d7e57b97bfce45E.exit: ; preds = %bb.by
  call void @"_ZN4core3ptr30drop_in_place$LT$cc..Build$GT$17hddbac109700f29a1E"(ptr nonnull align 8 %i.s)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN18build_script_build13build_library28_$u7b$$u7b$closure$u7d$$u7d$17h19511b3d5aaeb560E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  call void @_ZN3std4path4Path4join17h0b07fd4fd5c7210cE(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %i.d, i64 %i.f, ptr align 8 %1)
  %i.g = call align 8 ptr @_ZN2cc5Build4file17hdbc9131924c2c742E(ptr align 8 %i.b, ptr nonnull align 8 %i.a) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN18build_script_build13build_library28_$u7b$$u7b$closure$u7d$$u7d$17h33c804a3a102034fE"(ptr align 1 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN3std3ffi6os_str5OsStr6to_str17h5fe2cf9f23c46d3aE(ptr align 1 %0, i64 %1)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN18build_script_build13build_library28_$u7b$$u7b$closure$u7d$$u7d$17h56e0bcfa5a719623E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call align 8 ptr @_ZN2cc5Build6object17h9fe5c6e6f9b66954E(ptr align 8 %i.a, ptr align 8 %1) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18build_script_build16perlasm_src_dsts17hba0bd25589efcb92E(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
