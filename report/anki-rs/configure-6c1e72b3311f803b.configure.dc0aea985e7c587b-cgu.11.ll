Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.11?download=true
inline.NumInlined: 163
inline.NumDeleted: 69
begin_hunk_0_@_ZN9configure5pylib11build_pylib17h75fe24f07e3eb243E:bb.a
bb.bu:                                            ; preds = %.body, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit", %bb.g, %bb.br, %bb.bo, %bb.bl, %bb.bd, %bb.aq, %bb.ao, %bb.t
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.bv:                                            ; preds = %bb.bg, %bb.ab
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN9configure5pylib11check_pylib17hc97e3581078b3bf3E(ptr noalias noundef align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !238 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.f = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !239
  %i.h = tail call noundef dereferenceable_or_null(13) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 13, 22) 13, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !239 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 range(i64 13, 22) 13) #21
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 48, i64 noundef 8) #18
  br label %bb.w

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @41, i64 13, i1 false), !noalias !240
  store i64 13, ptr %i.f, align 8
  %.sroa.05.sroa.4.0..sroa.050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %.sroa.05.sroa.4.0..sroa.050.0..sroa_idx, align 8
  %.sroa.05.sroa.5.0..sroa.050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 13, ptr %.sroa.05.sroa.5.0..sroa.050.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 -9223372036854775808, ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 1, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98c6837e4dd74476E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.g unwind label %.thread71

.thread71:                                        ; preds = %bb.j, %bb.p, %bb.f, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.g:                                             ; preds = %bb.f
  store i64 -9223372036854775805, ptr %i.d, align 8, !alias.scope !241
  %i.m = invoke noundef ptr @_ZN9ninja_gen6python13python_format17h20478c36a1ec291cE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.h unwind label %.thread71  ; 2 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.n = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #18 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 96) #21
          to label %bb.u unwind label %.thread71

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 11)
          to label %bb.m unwind label %bb.l

.thread:                                          ; preds = %bb.l, %bb.o
  %.pn = phi { ptr, i32 } [ %i.s, %bb.o ], [ %i.p, %bb.l ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 96, i64 noundef 8) #18
  br label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.m:                                             ; preds = %bb.k
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !242
  %i.q = call noundef dereferenceable_or_null(21) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 13, 22) 21, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !242 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 range(i64 13, 22) 21) #21
          to label %.noexc48 unwind label %bb.o

.noexc48:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #19
          to label %.thread unwind label %bb.t

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.q, ptr noundef nonnull align 1 dereferenceable(21) @44, i64 21, i1 false), !noalias !243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 21, ptr %i.t, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.q, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 21, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 -9223372036854775808, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @45, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 11, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr @43, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 1, ptr %i.x, align 8
  store i64 -9223372036854775805, ptr %i.c, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.n, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %i.y = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h3c0321af7a141899E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @46, i64 noundef 18, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.q unwind label %.thread71  ; 2 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not38 = icmp eq ptr %i.y, null
  br i1 %.not38, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.z = call noundef ptr @_ZN9ninja_gen6python16check_complexity17h551311facff1cfbdE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.v
  %.sroa.0.0 = phi ptr [ %i.z, %bb.r ], [ %.sroa.0.2, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0

bb.t:                                             ; preds = %bb.x, %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.u:                                             ; preds = %bb.j
  unreachable

bb.v:                                             ; preds = %bb.h, %bb.q
  %.sroa.0.2 = phi ptr [ %i.m, %bb.h ], [ %i.y, %bb.q ]
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.e)
  br label %bb.s

bb.w:                                             ; preds = %bb.e, %bb.x
  %.pn40.pn = phi { ptr, i32 } [ %.pn4070, %bb.x ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %.pn40.pn

bb.x:                                             ; preds = %.thread71, %.thread
  %.pn4070 = phi { ptr, i32 } [ %.pn, %.thread ], [ %lpad.thr_comm, %.thread71 ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.e) #19
          to label %bb.w unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h3a2f09abfba67388E(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !279 {
.lr.ph.i:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 30, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 2)
  %.sroa.07.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.07.sroa.4.0.copyload = load i64, ptr %.sroa.07.sroa.4.0..sroa_idx, align 8 ; 26 uses
  %.sroa.07.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.07.sroa.6.0.copyload = load i64, ptr %.sroa.07.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.07.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.07.sroa.7.0.copyload = load i64, ptr %.sroa.07.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.07.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.07.sroa.8.0.copyload = load i64, ptr %.sroa.07.sroa.8.0..sroa_idx, align 8
  %.sroa.07.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.07.sroa.10.0.copyload = load i64, ptr %.sroa.07.sroa.10.0..sroa_idx, align 8
  %.sroa.07.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.07.sroa.12.0.copyload = load ptr, ptr %.sroa.07.sroa.12.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 16 uses
  %.sroa.07.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.07.sroa.13.0.copyload = load i64, ptr %.sroa.07.sroa.13.0..sroa_idx, align 8 ; 41 uses
  %.sroa.07.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.07.sroa.14.0.copyload = load ptr, ptr %.sroa.07.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.07.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.07.sroa.15.0.copyload = load i64, ptr %.sroa.07.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.b = trunc nuw i64 %.sroa.07.sroa.0.0.copyload to i1
  %i.c = add i64 %.sroa.07.sroa.15.0.copyload, -1 ; 3 uses
  br i1 %i.b, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.sroa.14.0.copyload) ]
  %i.d = sub i64 %.sroa.07.sroa.15.0.copyload, %.sroa.07.sroa.6.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.4.0.copyload, i64 %.sroa.07.sroa.15.0.copyload)
  %i.e = add i64 %.sroa.07.sroa.4.0.copyload, -1
  %.first_iter = icmp ult i64 %i.e, %.sroa.07.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.07.sroa.4.0.copyload
  %exitcond.not.i.us319.not = icmp ult i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.15.0.copyload
  %invariant.op423 = sub i64 1, %.sroa.07.sroa.4.0.copyload
  %.not82.us322 = icmp eq i64 %.sroa.07.sroa.4.0.copyload, 0
  br label %bb.a

bb.a:                                             ; preds = %.loopexit19.thread.i.i.i.us, %.lr.ph.i.split.us
  %.sroa.39.0.us = phi i64 [ 0, %.lr.ph.i.split.us ], [ %.sroa.11.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 4 uses
  %.sroa.2937.0.us = phi i64 [ %.sroa.07.sroa.10.0.copyload, %.lr.ph.i.split.us ], [ %.sroa.2937.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 2 uses
  %.sroa.17.0.us = phi i64 [ %.sroa.07.sroa.8.0.copyload, %.lr.ph.i.split.us ], [ %.sroa.11.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 3 uses
  %i.f = icmp eq i64 %.sroa.2937.0.us, -1
  %i.g = add i64 %.sroa.17.0.us, %i.c             ; 3 uses
  %i.h = icmp ult i64 %i.g, %.sroa.07.sroa.13.0.copyload ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  br i1 %i.h, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

.lr.ph.i21.us:                                    ; preds = %bb.b, %.sink.split.i.us
  %i.i = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.2937.0.us, %bb.b ] ; 3 uses
  %i.j = phi i64 [ %i.am, %.sink.split.i.us ], [ %i.g, %bb.b ]
  %i.k = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.17.0.us, %bb.b ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !280, !noundef !5
  %i.n = and i8 %i.m, 63
  %i.o = zext nneg i8 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.p, %.sroa.07.sroa.7.0.copyload
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i21.us
  %.sroa.0.0.i.i23.us = call i64 @llvm.umax.i64(i64 %i.i, i64 %.sroa.07.sroa.4.0.copyload) ; 4 uses
  %umax49.i24.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i23.us, i64 %.sroa.07.sroa.15.0.copyload)
  %exitcond.not.i26.us314.not = icmp ult i64 %.sroa.0.0.i.i23.us, %.sroa.07.sroa.15.0.copyload
  br i1 %exitcond.not.i26.us314.not, label %.lr.ph, label %.preheader83.us.preheader

bb.d:                                             ; preds = %bb.e
  %i.s = add nuw i64 %.sroa.02.0.i25.us315, 1     ; 2 uses
  %exitcond.not.i26.us = icmp eq i64 %i.s, %umax49.i24.us
  br i1 %exitcond.not.i26.us, label %.preheader83.us.preheader, label %.lr.ph

.preheader83.us.preheader:                        ; preds = %bb.d, %bb.c
  %i.t = icmp ult i64 %i.i, %.sroa.07.sroa.4.0.copyload
  br i1 %i.t, label %.lr.ph317, label %.loopexit19.thread.i.i.i.us

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.02.0.i25.us315 = phi i64 [ %i.s, %bb.d ], [ %.sroa.0.0.i.i23.us, %bb.c ] ; 4 uses
  %i.u = add i64 %.sroa.02.0.i25.us315, %i.k      ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.07.sroa.13.0.copyload
  br i1 %i.v, label %bb.e, label %.split.us

bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %.sroa.02.0.i25.us315
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !281, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.u
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !280, !noundef !5
  %.not21.i28.us = icmp eq i8 %i.x, %i.z
  br i1 %.not21.i28.us, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.reass.reass = add i64 %i.k, %invariant.op
  %i.aa = add i64 %.reass.reass, %.sroa.02.0.i25.us315
  br label %.sink.split.i.us

.preheader83.us:                                  ; preds = %bb.h
  %i.ab = icmp ult i64 %i.i, %i.ac
  br i1 %i.ab, label %.lr.ph317, label %.loopexit19.thread.i.i.i.us

.lr.ph317:                                        ; preds = %.preheader83.us.preheader, %.preheader83.us
  %.sroa.2.0.i29.us316 = phi i64 [ %i.ac, %.preheader83.us ], [ %.sroa.07.sroa.4.0.copyload, %.preheader83.us.preheader ]
  %i.ac = add i64 %.sroa.2.0.i29.us316, -1        ; 6 uses
  %i.ad = icmp ult i64 %i.ac, %.sroa.07.sroa.15.0.copyload
  br i1 %i.ad, label %bb.g, label %.split137.us

bb.g:                                             ; preds = %.lr.ph317
  %i.ae = add i64 %i.ac, %i.k                     ; 3 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.07.sroa.13.0.copyload
  br i1 %i.af, label %bb.h, label %.split140.us

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %i.ac
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !281, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !280, !noundef !5
  %.not.i30.us = icmp eq i8 %i.ah, %i.aj
  br i1 %.not.i30.us, label %.preheader83.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i64 %i.k, %.sroa.07.sroa.6.0.copyload
  br label %.sink.split.i.us

bb.j:                                             ; preds = %.lr.ph.i21.us
  %i.al = add i64 %i.k, %.sroa.07.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.j, %bb.i, %bb.f
  %.sink.i.us = phi i64 [ %i.d, %bb.i ], [ 0, %bb.f ], [ 0, %bb.j ]
  %.ph71.i.us = phi i64 [ %i.ak, %bb.i ], [ %i.aa, %bb.f ], [ %i.al, %bb.j ] ; 2 uses
  %i.am = add i64 %.ph71.i.us, %i.c               ; 2 uses
  %i.an = icmp ult i64 %i.am, %.sroa.07.sroa.13.0.copyload
  br i1 %i.an, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

bb.k:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  br i1 %i.h, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.lr.ph.i16.us:                                    ; preds = %bb.k, %bb.r
  %i.ao = phi i64 [ %i.bp, %bb.r ], [ %i.g, %bb.k ]
  %i.ap = phi i64 [ %i.bo, %bb.r ], [ %.sroa.17.0.us, %bb.k ] ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !282, !noundef !5
  %i.as = and i8 %i.ar, 63
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.au, %.sroa.07.sroa.7.0.copyload
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.q, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i16.us
  br i1 %exitcond.not.i.us319.not, label %.lr.ph321, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.l
  %i.ax = add nuw i64 %.sroa.02.0.i.us320, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ax, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph321

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not82.us322, label %.loopexit19.thread.i.i.i.us, label %.lr.ph324

.lr.ph321:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us320 = phi i64 [ %i.ax, %.preheader ], [ %.sroa.07.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ay = add i64 %.sroa.02.0.i.us320, %i.ap      ; 2 uses
  %i.az = icmp ult i64 %i.ay, %.sroa.07.sroa.13.0.copyload
  br i1 %i.az, label %bb.l, label %.split144.us

bb.l:                                             ; preds = %.lr.ph321
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %.sroa.02.0.i.us320
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !283, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !282, !noundef !5
  %.not21.i.us = icmp eq i8 %i.bb, %i.bd
  br i1 %.not21.i.us, label %.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.reass273.reass = add i64 %i.ap, %invariant.op423
  %i.be = add i64 %.reass273.reass, %.sroa.02.0.i.us320
  br label %bb.r

.preheader.us:                                    ; preds = %bb.o
  %.not82.us = icmp eq i64 %i.bf, 0
  br i1 %.not82.us, label %.loopexit19.thread.i.i.i.us, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us323 = phi i64 [ %i.bf, %.preheader.us ], [ %.sroa.07.sroa.4.0.copyload, %.preheader.us.preheader ]
  %i.bf = add i64 %.sroa.2.0.i.us323, -1          ; 5 uses
  br i1 %.first_iter, label %bb.n, label %.split148.us

bb.n:                                             ; preds = %.lr.ph324
  %i.bg = add i64 %i.bf, %i.ap                    ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bh, label %bb.o, label %.split151.us

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !283, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !282, !noundef !5
  %.not.i.us = icmp eq i8 %i.bj, %i.bl
  br i1 %.not.i.us, label %.preheader.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add i64 %.sroa.07.sroa.6.0.copyload, %i.ap
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i16.us
  %i.bn = add i64 %i.ap, %.sroa.07.sroa.15.0.copyload
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %i.bo = phi i64 [ %i.be, %bb.m ], [ %i.bn, %bb.q ], [ %i.bm, %bb.p ] ; 2 uses
  %i.bp = add i64 %i.bo, %i.c                     ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bq, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.loopexit19.thread.i.i.i.us:                      ; preds = %.preheader83.us.preheader, %.preheader.us.preheader, %.preheader83.us, %.preheader.us
  %.pn = phi i64 [ %i.ap, %.preheader.us ], [ %i.k, %.preheader83.us ], [ %i.ap, %.preheader.us.preheader ], [ %i.k, %.preheader83.us.preheader ]
  %.sroa.2937.1.ph.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader83.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader83.us.preheader ]
  %.sroa.11.1.ph.us = add i64 %.pn, %.sroa.07.sroa.15.0.copyload ; 2 uses
  br label %bb.a

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.br = and i64 %.sroa.07.sroa.6.0.copyload, 65536
  %.not81 = icmp eq i64 %i.br, 0
  br i1 %.not81, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.split
  %i.bs = trunc i64 %.sroa.07.sroa.6.0.copyload to i1 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.07.sroa.4.0.copyload, 0
  br i1 %i.bt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.preheader
  %.not.i.i.i.peel.i.i.i.peel = icmp ult i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i.peel, label %bb.t, label %.split.i.i.i.peel.i.i.i.peel

.split.i.i.i.peel.i.i.i.peel:                     ; preds = %bb.s
  %i.bu = icmp eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bu, label %bb.u, label %.loopexit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !284, !noalias !285, !noundef !5
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %bb.u, label %.loopexit.i.i.i

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel.i.i.i.peel, %.lr.ph.i.i.i.i.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload ; 4 uses
  %i.bz = icmp samesign eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bz, label %.loopexit19.i.i.i.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = load i8, ptr %i.by, align 1, !noalias !286, !noundef !5 ; 5 uses
  %i.cb = icmp sgt i8 %i.ca, -1
  br i1 %i.cb, label %bb.w, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel": ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cd = and i8 %i.ca, 31
  %i.ce = zext nneg i8 %i.cd to i32               ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 1
  %i.cg = icmp samesign ne i64 %i.cf, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cg)
  %i.ch = load i8, ptr %i.cc, align 1, !noalias !286, !noundef !5
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32               ; 2 uses
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = icmp samesign ugt i8 %i.ca, -33
  br i1 %i.cm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel", label %bb.x

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.co = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 2
  %i.cp = icmp samesign ne i64 %i.co, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i8, ptr %i.cn, align 1, !noalias !286, !noundef !5
  %i.cr = shl nuw nsw i32 %i.ck, 6
  %i.cs = and i8 %i.cq, 63
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cr, %i.ct            ; 2 uses
  %i.cv = shl nuw nsw i32 %i.ce, 12
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = icmp samesign ugt i8 %i.ca, -17
  br i1 %i.cx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel", label %bb.x

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel"
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.cz = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 3
  %i.da = icmp samesign ne i64 %i.cz, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.da)
  %i.db = load i8, ptr %i.cy, align 1, !noalias !286, !noundef !5
  %i.dc = shl nuw nsw i32 %i.ce, 18
  %i.dd = and i32 %i.dc, 1835008
  %i.de = shl nuw nsw i32 %i.cu, 6
  %i.df = and i8 %i.db, 63
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = or disjoint i32 %i.de, %i.dg
  %i.di = or disjoint i32 %i.dh, %i.dd
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dj = zext nneg i8 %i.ca to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel = phi i32 [ %i.cw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel" ], [ %i.di, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel" ], [ %i.cl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel" ], [ %i.dj, %bb.w ] ; 4 uses
  %i.dk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.dk)
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 128
  br i1 %i.dl, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 2048
  br i1 %i.dm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 65536
  %..i.i.peel.i.i.i.peel = select i1 %i.dn, i64 3, i64 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.01.0.i.i.peel.i.i.i.peel = phi i64 [ 2, %bb.z ], [ %..i.i.peel.i.i.i.peel, %bb.aa ], [ 1, %bb.y ]
  %i.do = add i64 %.sroa.01.0.i.i.peel.i.i.i.peel, %.sroa.07.sroa.4.0.copyload ; 12 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i.i.i.peel = icmp ult i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i.peel, label %bb.ad, label %.split.i.i.i.i.i.i.peel

.split.i.i.i.i.i.i.peel:                          ; preds = %bb.ac
  %i.dq = icmp eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.dq, label %bb.ae, label %.loopexit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !284, !noalias !287, !noundef !5
  %i.dt = icmp sgt i8 %i.ds, -65
  br i1 %i.dt, label %bb.ae, label %.loopexit.i.i.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do ; 4 uses
  %i.dv = icmp samesign eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.dv, label %.lr.ph.i.i.i.i.preheader373, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = load i8, ptr %i.du, align 1, !noalias !288, !noundef !5 ; 5 uses
  %i.dx = icmp sgt i8 %i.dw, -1
  br i1 %i.dx, label %bb.ag, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel": ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dz = and i8 %i.dw, 31
  %i.ea = zext nneg i8 %i.dz to i32               ; 3 uses
  %i.eb = add nuw nsw i64 %i.do, 1
  %i.ec = icmp samesign ne i64 %i.eb, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i8, ptr %i.dy, align 1, !noalias !288, !noundef !5
  %i.ee = shl nuw nsw i32 %i.ea, 6
  %i.ef = and i8 %i.ed, 63
  %i.eg = zext nneg i8 %i.ef to i32               ; 2 uses
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = icmp samesign ugt i8 %i.dw, -33
  br i1 %i.ei, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ek = add nuw nsw i64 %i.do, 2
  %i.el = icmp samesign ne i64 %i.ek, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.el)
  %i.em = load i8, ptr %i.ej, align 1, !noalias !288, !noundef !5
  %i.en = shl nuw nsw i32 %i.eg, 6
  %i.eo = and i8 %i.em, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.en, %i.ep            ; 2 uses
  %i.er = shl nuw nsw i32 %i.ea, 12
  %i.es = or disjoint i32 %i.eq, %i.er
  %i.et = icmp samesign ugt i8 %i.dw, -17
  br i1 %i.et, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel"
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  %i.ev = add nuw nsw i64 %i.do, 3
  %i.ew = icmp samesign ne i64 %i.ev, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load i8, ptr %i.eu, align 1, !noalias !288, !noundef !5
  %i.ey = shl nuw nsw i32 %i.ea, 18
  %i.ez = and i32 %i.ey, 1835008
  %i.fa = shl nuw nsw i32 %i.eq, 6
  %i.fb = and i8 %i.ex, 63
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.fa, %i.fc
  %i.fe = or disjoint i32 %i.fd, %i.ez
  br label %.loopexit.i.loopexit.i.i.i.peel

bb.ag:                                            ; preds = %bb.af
  %i.ff = zext nneg i8 %i.dw to i32
  br label %.loopexit.i.loopexit.i.i.i.peel

.loopexit.i.loopexit.i.i.i.peel:                  ; preds = %bb.ag, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.i.i.i.peel = phi i32 [ %i.es, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel" ], [ %i.fe, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel" ], [ %i.eh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel" ], [ %i.ff, %bb.ag ]
  %i.fg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.peel, 1114112
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit19.i.i.i.peel:                           ; preds = %bb.u
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.sink.split:                        ; preds = %.loopexit.i.loopexit.i.i.i.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i"
  %.sink = phi i1 [ %i.hs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i" ], [ %i.fg, %.loopexit.i.loopexit.i.i.i.peel ]
  %.sroa.4.0157.ph = phi i64 [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i" ], [ %i.do, %.loopexit.i.loopexit.i.i.i.peel ]
  call void @llvm.assume(i1 %.sink)
  br label %.lr.ph.i.i.i.i.preheader373

.lr.ph.i.i.i.i.preheader373:                      ; preds = %bb.x, %bb.ae, %.loopexit19.i.i.i.peel, %.lr.ph.i.i.i.i.sink.split
  %.sroa.4.0157.ph374 = phi i64 [ %.sroa.4.0157.ph, %.lr.ph.i.i.i.i.sink.split ], [ %.sroa.07.sroa.4.0.copyload, %.loopexit19.i.i.i.peel ], [ %.sroa.07.sroa.13.0.copyload, %bb.ae ], [ %.sroa.07.sroa.4.0.copyload, %bb.x ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.backedge, %.lr.ph.i.i.i.i.preheader373
  %.sroa.4.0157 = phi i64 [ %.sroa.4.0157.ph374, %.lr.ph.i.i.i.i.preheader373 ], [ %.sroa.4.0157.be, %.lr.ph.i.i.i.i.backedge ] ; 13 uses
  %i.fh = icmp eq i64 %.sroa.4.0157, 0
  br i1 %i.fh, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.i.i = icmp ult i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i, label %bb.ai, label %.split.i.i.i.peel.i.i.i

.split.i.i.i.peel.i.i.i:                          ; preds = %bb.ah
  %i.fi = icmp eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.fi, label %bb.aj, label %.loopexit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !284, !noalias !285, !noundef !5
  %i.fl = icmp sgt i8 %i.fk, -65
  br i1 %i.fl, label %bb.aj, label %.loopexit.i.i.i

bb.aj:                                            ; preds = %bb.ai, %.split.i.i.i.peel.i.i.i, %.lr.ph.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157 ; 4 uses
  %i.fn = icmp samesign eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.fn, label %.lr.ph.split.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = load i8, ptr %i.fm, align 1, !noalias !286, !noundef !5 ; 4 uses
  %i.fp = icmp sgt i8 %i.fo, -1
  br i1 %i.fp, label %.thread, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i": ; preds = %bb.ak
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fr = and i8 %i.fo, 31
  %i.fs = zext nneg i8 %i.fr to i32               ; 3 uses
  %i.ft = add nuw nsw i64 %.sroa.4.0157, 1
  %i.fu = icmp samesign ne i64 %i.ft, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fu)
  %i.fv = load i8, ptr %i.fq, align 1, !noalias !286, !noundef !5
  %i.fw = shl nuw nsw i32 %i.fs, 6
  %i.fx = and i8 %i.fv, 63
  %i.fy = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.fz = or disjoint i32 %i.fw, %i.fy
  %i.ga = icmp samesign ugt i8 %i.fo, -33
  br i1 %i.ga, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i", label %bb.al

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i"
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.gc = add nuw nsw i64 %.sroa.4.0157, 2
  %i.gd = icmp samesign ne i64 %i.gc, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gd)
  %i.ge = load i8, ptr %i.gb, align 1, !noalias !286, !noundef !5
  %i.gf = shl nuw nsw i32 %i.fy, 6
  %i.gg = and i8 %i.ge, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh            ; 2 uses
  %i.gj = shl nuw nsw i32 %i.fs, 12
  %i.gk = or disjoint i32 %i.gi, %i.gj
  %i.gl = icmp samesign ugt i8 %i.fo, -17
  br i1 %i.gl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i", label %bb.al

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i"
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.gn = add nuw nsw i64 %.sroa.4.0157, 3
  %i.go = icmp samesign ne i64 %i.gn, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.go)
  %i.gp = load i8, ptr %i.gm, align 1, !noalias !286, !noundef !5
  %i.gq = shl nuw nsw i32 %i.fs, 18
  %i.gr = and i32 %i.gq, 1835008
  %i.gs = shl nuw nsw i32 %i.gi, 6
  %i.gt = and i8 %i.gp, 63
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = or disjoint i32 %i.gs, %i.gu
  %i.gw = or disjoint i32 %i.gv, %i.gr
  br label %bb.al

bb.al:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i = phi i32 [ %i.gk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i" ], [ %i.gw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i" ], [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i" ] ; 4 uses
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 128
  br i1 %i.gy, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 2048
  br i1 %i.gz, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ha = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 65536
  %..i.i.peel.i.i.i = select i1 %i.ha, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.an, %bb.am, %bb.al
  %.sroa.01.0.i.i.peel.i.i.i = phi i64 [ 2, %bb.am ], [ %..i.i.peel.i.i.i, %bb.an ], [ 1, %bb.al ], [ 1, %bb.ak ]
  %i.hb = add i64 %.sroa.01.0.i.i.peel.i.i.i, %.sroa.4.0157 ; 15 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %.not.i.i.i.i.i.i = icmp ult i64 %i.hb, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %bb.ap, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.ao
  %i.hd = icmp eq i64 %i.hb, %.sroa.07.sroa.13.0.copyload
  br i1 %i.hd, label %bb.aq, label %.loopexit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !284, !noalias !287, !noundef !5
  %i.hg = icmp sgt i8 %i.hf, -65
  br i1 %i.hg, label %bb.aq, label %.loopexit.i.i.i

bb.aq:                                            ; preds = %bb.ap, %.split.i.i.i.i.i.i, %.thread
  %i.hh = icmp samesign eq i64 %i.hb, %.sroa.07.sroa.13.0.copyload
  br i1 %i.hh, label %.lr.ph.i.i.i.i.backedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !288, !noundef !5 ; 3 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %.lr.ph.i.i.i.i.backedge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i": ; preds = %bb.ar
  %i.hl = add nuw nsw i64 %i.hb, 1
  %i.hm = icmp samesign ne i64 %i.hl, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

.lr.ph.i.i.i.i.backedge:                          ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i", %bb.ar, %bb.aq
  %.sroa.4.0157.be = phi i64 [ %.sroa.07.sroa.13.0.copyload, %bb.aq ], [ %i.hb, %bb.ar ], [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i" ], [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i"
  %i.ho = add nuw nsw i64 %i.hb, 2
  %i.hp = icmp samesign ne i64 %i.ho, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.hq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i"
  %i.hr = add nuw nsw i64 %i.hb, 3
  %i.hs = icmp samesign ne i64 %i.hr, %.sroa.07.sroa.13.0.copyload
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit.i.i.i:                                  ; preds = %bb.ap, %.split.i.i.i.i.i.i, %bb.ai, %.split.i.i.i.peel.i.i.i, %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.t, %.split.i.i.i.peel.i.i.i.peel
  %.lcssa12.i.i.i = phi i64 [ %.sroa.07.sroa.4.0.copyload, %.split.i.i.i.peel.i.i.i.peel ], [ %.sroa.07.sroa.4.0.copyload, %bb.t ], [ %i.do, %.split.i.i.i.i.i.i.peel ], [ %i.do, %bb.ad ], [ %.sroa.4.0157, %.split.i.i.i.peel.i.i.i ], [ %.sroa.4.0157, %bb.ai ], [ %i.hb, %.split.i.i.i.i.i.i ], [ %i.hb, %bb.ap ]
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.07.sroa.12.0.copyload, i64 noundef %.sroa.07.sroa.13.0.copyload, i64 noundef %.lcssa12.i.i.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !287
  unreachable

.split137.us:                                     ; preds = %.lr.ph317
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ac, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !289
  unreachable

.split140.us:                                     ; preds = %bb.g
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ae, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !289
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.ht = add i64 %i.k, %.sroa.0.0.i.i23.us
  %umax.i27 = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.ht)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i27, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !289
  unreachable

.split148.us:                                     ; preds = %.lr.ph324
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bf, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !290
  unreachable

.split151.us:                                     ; preds = %bb.n
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bg, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !290
  unreachable

.split144.us:                                     ; preds = %.lr.ph321
  %i.hu = add i64 %i.ap, %.sroa.07.sroa.4.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.hu)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !290
  unreachable

.lr.ph.split.i.i:                                 ; preds = %bb.aj, %bb.k, %bb.b, %.sink.split.i.us, %bb.r, %.loopexit19.i.i.i.peel, %.lr.ph.i.split
  %.sroa.39.0133 = phi i64 [ 0, %.loopexit19.i.i.i.peel ], [ 0, %.lr.ph.i.split ], [ %.sroa.39.0.us, %.sink.split.i.us ], [ %.sroa.39.0.us, %bb.r ], [ %.sroa.39.0.us, %bb.k ], [ %.sroa.39.0.us, %bb.b ], [ %.sroa.4.0157, %bb.aj ] ; 2 uses
  %i.hv = sub nuw i64 30, %.sroa.39.0133          ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.39.0133 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.hx = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.im, %.backedge.backedge ] ; 5 uses
  %i.hy = sub nuw nsw i64 %i.hv, %i.hx            ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hx ; 2 uses
  %i.ia = icmp samesign ult i64 %i.hy, 16
  br i1 %i.ia, label %.preheader.i.i.i, label %bb.as

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.as:                                            ; preds = %.backedge
  %i.ib = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hz, i64 noundef %i.hy), !noalias !291
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.at, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.hy, %bb.at ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.at ], [ 1, %.lr.ph.i.i.i ]
  %i.ic = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.id = insertvalue { i64, i64 } %i.ic, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.at
  %.sroa.01.05.i.i.i = phi i64 [ %i.ih, %bb.at ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sroa.01.05.i.i.i
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !292, !noalias !291, !noundef !5
  %i.ig = icmp eq i8 %i.if, 60
  br i1 %i.ig, label %._crit_edge.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i
  %i.ih = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ih, %i.hy
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.as
  %.merged.i.i.i = phi { i64, i64 } [ %i.id, %._crit_edge.i.i.i ], [ %i.ib, %bb.as ] ; 2 uses
  %i.ii = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ij = trunc nuw i64 %i.ii to i1
  br i1 %i.ij, label %bb.au, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

bb.au:                                            ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.ik = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.il = add nuw nsw i64 %i.hx, 1
  %i.im = add i64 %i.il, %i.ik                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.im, %i.hv         ; 2 uses
  %i.in = add i64 %i.hx, %i.ik
  %or.cond.i.i.not = icmp ult i64 %i.in, %i.hv
  br i1 %or.cond.i.i.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.av, %bb.aw
  br label %.backedge

bb.aw:                                            ; preds = %bb.au
  %i.io = add i64 %i.hx, %i.ik                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.io
  %lhsc = load i8, ptr %i.ip, align 1
  %i.iq = icmp eq i8 %lhsc, 60                    ; 2 uses
  %brmerge = select i1 %i.iq, i1 true, i1 %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit", label %.backedge.backedge

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit": ; preds = %bb.aw
  %.mux.le = select i1 %i.iq, i64 %i.io, i64 %i.hv
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit": ; preds = %bb.av, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit"
  %.sroa.4.1.i = phi i64 [ %.mux.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit" ], [ %i.hv, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %i.hv, %bb.av ]
  %i.ir = insertvalue { ptr, i64 } poison, ptr %i.hw, 0
  %i.is = insertvalue { ptr, i64 } %i.ir, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.is
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcae45cf2b18d3a5cE"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3eeda5b08ada749aE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h040d78a81c75c243E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h670739065d6ccec7E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f9b600e0434f438E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24ffc248413dd906E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98c6837e4dd74476E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17heca404c3fae3b838E"(ptr noalias noundef align 8 dereferenceable(296), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9ninja_gen5build11FilesHandle11add_outputs17h5f6ddb99f20bc125E(ptr noalias noundef align 8 dereferenceable(296), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN9ninja_gen5build5Build10add_action17hcad8ddb3724e7394E(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN9ninja_gen5build5Build14add_dependency17h560964a6cf3ea247E(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hd38dcd9586165e74E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hb4ef0338ad10a464E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h24957f40b8e85b8eE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hbba190fa27b603a6E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3e4c56e2a230e719E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN9ninja_gen5build5Build10add_action17h5179106c156724c1E(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h245d25d94735a8eaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN9ninja_gen5build5Build10add_action17h825d7bddca198c2cE(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN9ninja_gen5build5Build10add_action17hc339d63474c22201E(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9configure12anki_version17h0cc5eff0917c3307E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 7) i8 @_ZN9configure8platform31overriden_python_wheel_platform17h483dde8d9d0f881fE() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN9ninja_gen5build5Build10add_action17hcdfb22b909a3a781E(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN9ninja_gen6python13python_format17h20478c36a1ec291cE(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN9ninja_gen5build5Build10add_action17h3c0321af7a141899E(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN9ninja_gen6python16check_complexity17h551311facff1cfbdE(ptr noalias noundef align 8 dereferenceable(248), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!63 = distinct !{!63, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"}
!64 = distinct !{!64, !63, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E: argument 0"}
!65 = distinct !{!65, i1 true, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E"}
!66 = distinct !{!66, !65, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!68 = distinct !{!68, !67, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!70 = distinct !{!70, !69, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!71 = distinct !{!71, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!72 = distinct !{!72, !71, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$ninja_gen..input..BuildInput$GT$$GT$17h534d00f60400d541E"}
!74 = distinct !{!74, !73, !"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$ninja_gen..input..BuildInput$GT$$GT$17h534d00f60400d541E: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E"}
!76 = distinct !{!76, !75, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E"}
!78 = distinct !{!78, !77, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E"}
!80 = distinct !{!80, !79, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E: argument 0"}
!81 = !{i64 7036590045492786137}
!82 = !{i64 0, i64 -9223372036854775803}
!83 = !{!36, !34, !32}
!84 = !{!34, !32}
!85 = !{!38}
!86 = !{!40}
!87 = !{!44, !42}
!88 = !{!42}
!89 = !{!46}
!90 = !{!48}
!91 = !{!56, !54, !52, !50}
!92 = !{!54, !52, !50}
!93 = !{!58}
!94 = !{!60}
!95 = !{!62, !50}
!96 = !{!68, !66, !64, !62, !50}
!97 = !{!66, !64, !62, !50}
!98 = !{!70}
!99 = !{!72}
!100 = !{!76, !74}
!101 = !{!74}
!102 = !{!78}
!103 = !{!80}
!104 = distinct !{!104, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"}
!105 = distinct !{!105, !104, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E"}
!107 = distinct !{!107, !106, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!109 = distinct !{!109, !108, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!111 = distinct !{!111, !110, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!113 = distinct !{!113, !112, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!114 = !{i64 3648948735133413609}
!115 = !{!109, !107, !105}
!116 = !{!107, !105}
!117 = !{!111}
!118 = !{!113}
!119 = !{i64 -388750045895799569}
!120 = !{i64 2450026664201522928}
!121 = distinct !{!121, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17ha59dc12fea923c9fE"}
!122 = distinct !{!122, !121, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17ha59dc12fea923c9fE: argument 0"}
!123 = !{i64 822654106199532695}
!124 = !{!122}
!125 = !{i64 0, i64 2}
!126 = !{i64 -8277823301573252835}
!127 = !{i64 3684848067626919525}
!128 = !{i64 3401910920335023707}
!129 = !{i64 2741978874917620395}
!130 = !{i64 7827939753704841597}
!131 = !{i64 -5964669783958645938}
!132 = !{i64 2022826423948714159}
!133 = !{i64 -5152794032495440420}
!134 = !{i64 7948499641924546307}
!135 = !{i64 -149711775485493721}
!136 = !{i64 -4752822481375156910}
!137 = !{i64 7031626707295731538}
!138 = !{i64 -9187432419410855962}
!139 = !{i64 2669195523341063161}
!140 = !{i64 -6906038806490109923}
!141 = !{i64 -5916322450411864494}
!142 = !{i64 -7363981813368656843}
!143 = !{i64 -5654257976855293835}
!144 = !{i64 -7193544570204292474}
!145 = !{i64 272863214403787038}
!146 = !{i64 -755041484064471904}
!147 = !{i64 -6327536829265538462}
!148 = distinct !{!148, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E"}
!149 = distinct !{!149, !148, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E: argument 0"}
!150 = !{i64 8504856446712528977}
!151 = !{!149}
!152 = distinct !{!152, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"}
!153 = distinct !{!153, !152, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE: argument 0"}
!154 = !{i64 -2684195652994507115}
!155 = !{!153}
!156 = distinct !{!156, i1 true, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"}
!157 = distinct !{!157, !156, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!158 = distinct !{!158, !156, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!159 = distinct !{!159, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"}
!160 = distinct !{!160, !159, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE: argument 0"}
!161 = distinct !{!161, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E"}
!162 = distinct !{!162, !161, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E: argument 0"}
!163 = distinct !{!163, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E"}
!164 = distinct !{!164, !163, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E: argument 0"}
!165 = distinct !{!165, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E"}
!166 = distinct !{!166, !165, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17he1d45079605be904E: argument 0"}
!167 = distinct !{!167, i1 true, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE"}
!168 = distinct !{!168, !167, !"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE: argument 0"}
!169 = distinct !{!169, i1 true, !"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E"}
!170 = distinct !{!170, !169, !"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E: argument 0"}
!171 = distinct !{!171, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"}
!172 = distinct !{!172, !171, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE: argument 0"}
!173 = distinct !{!173, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"}
!174 = distinct !{!174, !173, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"}
!176 = distinct !{!176, !175, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE: argument 0"}
!177 = distinct !{!177, i1 true, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E"}
!178 = distinct !{!178, !177, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E: argument 1"}
!179 = distinct !{!179, !177, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h3b6f713ed6dfe398E: argument 0"}
!180 = distinct !{!180, i1 true, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE"}
!181 = distinct !{!181, !180, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE: argument 1"}
!182 = distinct !{!182, !180, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hc67d44c2584ad46aE: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"}
!184 = distinct !{!184, !183, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E"}
!186 = distinct !{!186, !185, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E: argument 0"}
!187 = distinct !{!187, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!188 = distinct !{!188, !187, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!189 = distinct !{!189, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!190 = distinct !{!190, !189, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!191 = distinct !{!191, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!192 = distinct !{!192, !191, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!193 = distinct !{!193, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"}
!194 = distinct !{!194, !193, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E: argument 0"}
!195 = distinct !{!195, i1 true, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E"}
!196 = distinct !{!196, !195, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E: argument 0"}
!197 = distinct !{!197, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!198 = distinct !{!198, !197, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!199 = distinct !{!199, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!200 = distinct !{!200, !199, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!201 = distinct !{!201, i1 true, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"}
!202 = distinct !{!202, !201, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E: argument 0"}
!203 = !{i64 -7274070033982209502}
!204 = !{!160, !158, !157}
!205 = !{!158}
!206 = !{i64 0, i64 -9223372036854775802}
!207 = !{!162}
!208 = !{!164}
!209 = !{!166}
!210 = !{!168}
!211 = !{!172, !170, !168}
!212 = !{!170, !168}
!213 = !{!174}
!214 = !{!176}
!215 = !{i8 0, i8 6}
!216 = !{!182, !181, !179, !178}
!217 = !{!182, !179}
!218 = !{!188, !186, !184}
!219 = !{!186, !184}
!220 = !{!190}
!221 = !{!192}
!222 = !{!198, !196, !194}
!223 = !{!196, !194}
!224 = !{!200}
!225 = !{!202}
!226 = distinct !{!226, i1 true, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"}
!227 = distinct !{!227, !226, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!228 = distinct !{!228, !226, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!229 = distinct !{!229, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"}
!230 = distinct !{!230, !229, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE: argument 0"}
!231 = distinct !{!231, i1 true, !"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E"}
!232 = distinct !{!232, !231, !"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E: argument 0"}
!233 = distinct !{!233, i1 true, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"}
!234 = distinct !{!234, !233, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 1"}
!235 = distinct !{!235, !233, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E: argument 0"}
!236 = distinct !{!236, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"}
!237 = distinct !{!237, !236, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE: argument 0"}
!238 = !{i64 -6284183945125432004}
!239 = !{!230, !228, !227}
!240 = !{!228}
!241 = !{!232}
!242 = !{!237, !235, !234}
!243 = !{!235}
!244 = distinct !{!244, i1 true, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E"}
!245 = distinct !{!245, !244, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 2"}
!246 = distinct !{!246, !244, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 3"}
!247 = distinct !{!247, i1 true, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E"}
!248 = distinct !{!248, !247, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 2"}
!249 = distinct !{!249, !247, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 3"}
!250 = distinct !{!250, i1 true, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E"}
!251 = distinct !{!251, !250, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E: argument 0"}
!252 = distinct !{!252, i1 true, !"_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E"}
!253 = distinct !{!253, !252, !"_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E: argument 0"}
!254 = distinct !{!254, i1 true, !"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E"}
!255 = distinct !{!255, !254, !"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E: argument 0"}
!256 = distinct !{!256, i1 true, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hef8d2a0ebca17fbfE"}
!257 = distinct !{!257, !256, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hef8d2a0ebca17fbfE: argument 0"}
!258 = distinct !{!258, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"}
!259 = distinct !{!259, !258, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 1"}
!260 = distinct !{!260, !258, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 0"}
!261 = distinct !{!261, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"}
!262 = distinct !{!262, !261, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1:Peel0"}
!263 = distinct !{!263, i1 true, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"}
!264 = distinct !{!264, !263, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 0"}
!265 = distinct !{!265, i1 true, !"_ZN4core3str11validations15next_code_point17hd84f581a1e5a9aacE"}
!266 = distinct !{!266, !265, !"_ZN4core3str11validations15next_code_point17hd84f581a1e5a9aacE: argument 0"}
!267 = distinct !{!267, !263, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1"}
!268 = distinct !{!268, !244, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 1"}
!269 = distinct !{!269, !244, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 0"}
!270 = distinct !{!270, !247, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 1"}
!271 = distinct !{!271, !247, !"_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E: argument 0"}
!272 = distinct !{!272, i1 true, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE"}
!273 = distinct !{!273, !272, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE: argument 0"}
!274 = distinct !{!274, i1 true, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E"}
!275 = distinct !{!275, !274, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 1"}
!276 = distinct !{!276, !274, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 0"}
!277 = distinct !{!277, i1 true, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E"}
!278 = distinct !{!278, !277, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E: argument 0"}
!279 = !{i64 808127423878164896}
!280 = !{!245}
!281 = !{!246}
!282 = !{!248}
!283 = !{!249}
!284 = !{!251}
!285 = !{!264, !262, !260, !259, !257, !255, !253}
!286 = !{!266, !264, !262, !260, !259, !257, !255, !253}
!287 = !{!264, !267, !260, !259, !257, !255, !253}
!288 = !{!266, !264, !267, !260, !259, !257, !255, !253}
!289 = !{!269, !268, !245, !246}
!290 = !{!271, !270, !248, !249}
!291 = !{!276, !275, !273}
!292 = !{!278}
end_hunk_1
