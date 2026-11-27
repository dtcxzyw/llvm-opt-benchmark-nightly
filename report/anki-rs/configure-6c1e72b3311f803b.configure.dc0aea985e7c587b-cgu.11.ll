Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.11?download=true
inline.NumInlined: 163
inline.NumDeleted: 69
begin_hunk_0_@_ZN9configure5pylib11check_pylib17hc97e3581078b3bf3E:bb.a
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.f = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !241
  %i.h = tail call noundef dereferenceable_or_null(13) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 13, 22) 13, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !241 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 range(i64 13, 22) 13) #21
          to label %.noexc unwind label %bb.e, !noalias !242

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 48, i64 noundef 8) #18
  br label %bb.w

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @41, i64 13, i1 false), !noalias !243
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
  store i64 -9223372036854775805, ptr %i.d, align 8, !alias.scope !244
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
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !245
  %i.q = call noundef dereferenceable_or_null(21) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 13, 22) 21, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !245 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 range(i64 13, 22) 21) #21
          to label %.noexc48 unwind label %bb.o, !noalias !246

.noexc48:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #19
          to label %.thread unwind label %bb.t

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.q, ptr noundef nonnull align 1 dereferenceable(21) @44, i64 21, i1 false), !noalias !247
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
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h3a2f09abfba67388E(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !284 {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  br i1 %i.h, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

.lr.ph.i21.us:                                    ; preds = %bb.b, %.sink.split.i.us
  %i.i = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.2937.0.us, %bb.b ] ; 3 uses
  %i.j = phi i64 [ %i.am, %.sink.split.i.us ], [ %i.g, %bb.b ]
  %i.k = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.17.0.us, %bb.b ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !285, !noundef !5
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
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !286, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.u
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !285, !noundef !5
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
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !286, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !285, !noundef !5
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
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  br i1 %i.h, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.lr.ph.i16.us:                                    ; preds = %bb.k, %bb.r
  %i.ao = phi i64 [ %i.bp, %bb.r ], [ %i.g, %bb.k ]
  %i.ap = phi i64 [ %i.bo, %bb.r ], [ %.sroa.17.0.us, %bb.k ] ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !287, !noundef !5
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
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !288, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !287, !noundef !5
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
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !288, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !287, !noundef !5
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
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !289, !noalias !290, !noundef !5
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %bb.u, label %.loopexit.i.i.i

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel.i.i.i.peel, %.lr.ph.i.i.i.i.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload ; 4 uses
  %i.bz = icmp samesign eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bz, label %.loopexit19.i.i.i.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = load i8, ptr %i.by, align 1, !noalias !291, !noundef !5 ; 5 uses
  %i.cb = icmp sgt i8 %i.ca, -1
  br i1 %i.cb, label %bb.w, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel": ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cd = and i8 %i.ca, 31
  %i.ce = zext nneg i8 %i.cd to i32               ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 1
  %i.cg = icmp samesign ne i64 %i.cf, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cg)
  %i.ch = load i8, ptr %i.cc, align 1, !noalias !291, !noundef !5
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
  %i.cq = load i8, ptr %i.cn, align 1, !noalias !291, !noundef !5
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
  %i.db = load i8, ptr %i.cy, align 1, !noalias !291, !noundef !5
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
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !289, !noalias !292, !noundef !5
  %i.dt = icmp sgt i8 %i.ds, -65
  br i1 %i.dt, label %bb.ae, label %.loopexit.i.i.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.ab
  %1 = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do ; 4 uses
  %i.du = icmp samesign eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.du, label %.lr.ph.i.i.i.i.preheader373, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = load i8, ptr %1, align 1, !noalias !293, !noundef !5 ; 5 uses
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %27, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel": ; preds = %bb.af
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %3 = and i8 %i.dv, 31
  %4 = zext nneg i8 %3 to i32                     ; 3 uses
  %i.dx = add nuw nsw i64 %i.do, 1
  %i.dy = icmp samesign ne i64 %i.dx, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.dy)
  %5 = load i8, ptr %2, align 1, !noalias !293, !noundef !5
  %6 = shl nuw nsw i32 %4, 6
  %7 = and i8 %5, 63
  %8 = zext nneg i8 %7 to i32                     ; 2 uses
  %9 = or disjoint i32 %6, %8
  %i.dz = icmp samesign ugt i8 %i.dv, -33
  br i1 %i.dz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ea = add nuw nsw i64 %i.do, 2
  %i.eb = icmp samesign ne i64 %i.ea, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.eb)
  %11 = load i8, ptr %10, align 1, !noalias !293, !noundef !5
  %12 = shl nuw nsw i32 %8, 6
  %13 = and i8 %11, 63
  %14 = zext nneg i8 %13 to i32
  %15 = or disjoint i32 %12, %14                  ; 2 uses
  %16 = shl nuw nsw i32 %4, 12
  %17 = or disjoint i32 %15, %16
  %i.ec = icmp samesign ugt i8 %i.dv, -17
  br i1 %i.ec, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel"
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ed = add nuw nsw i64 %i.do, 3
  %i.ee = icmp samesign ne i64 %i.ed, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ee)
  %19 = load i8, ptr %18, align 1, !noalias !293, !noundef !5
  %20 = shl nuw nsw i32 %4, 18
  %21 = and i32 %20, 1835008
  %22 = shl nuw nsw i32 %15, 6
  %23 = and i8 %19, 63
  %24 = zext nneg i8 %23 to i32
  %25 = or disjoint i32 %22, %24
  %26 = or disjoint i32 %25, %21
  br label %.loopexit.i.loopexit.i.i.i.peel

27:                                               ; preds = %bb.af
  %28 = zext nneg i8 %i.dv to i32
  br label %.loopexit.i.loopexit.i.i.i.peel

.loopexit.i.loopexit.i.i.i.peel:                  ; preds = %27, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.i.i.i.peel = phi i32 [ %17, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel" ], [ %26, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel" ], [ %9, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel" ], [ %28, %27 ]
  %29 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.peel, 1114112
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit19.i.i.i.peel:                           ; preds = %bb.u
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.sink.split:                        ; preds = %.loopexit.i.loopexit.i.i.i.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i"
  %.sink = phi i1 [ %31, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i" ], [ %29, %.loopexit.i.loopexit.i.i.i.peel ]
  %.sroa.4.0157.ph = phi i64 [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i" ], [ %i.do, %.loopexit.i.loopexit.i.i.i.peel ]
  call void @llvm.assume(i1 %.sink)
  br label %.lr.ph.i.i.i.i.preheader373

.lr.ph.i.i.i.i.preheader373:                      ; preds = %bb.x, %bb.ae, %.loopexit19.i.i.i.peel, %.lr.ph.i.i.i.i.sink.split
  %.sroa.4.0157.ph374 = phi i64 [ %.sroa.4.0157.ph, %.lr.ph.i.i.i.i.sink.split ], [ %.sroa.07.sroa.4.0.copyload, %.loopexit19.i.i.i.peel ], [ %.sroa.07.sroa.13.0.copyload, %bb.ae ], [ %.sroa.07.sroa.4.0.copyload, %bb.x ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.backedge, %.lr.ph.i.i.i.i.preheader373
  %.sroa.4.0157 = phi i64 [ %.sroa.4.0157.ph374, %.lr.ph.i.i.i.i.preheader373 ], [ %.sroa.4.0157.be, %.lr.ph.i.i.i.i.backedge ] ; 13 uses
  %i.ef = icmp eq i64 %.sroa.4.0157, 0
  br i1 %i.ef, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.i.i = icmp ult i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i, label %bb.ah, label %.split.i.i.i.peel.i.i.i

.split.i.i.i.peel.i.i.i:                          ; preds = %bb.ag
  %i.eg = icmp eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.eg, label %bb.ai, label %.loopexit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !289, !noalias !290, !noundef !5
  %i.ej = icmp sgt i8 %i.ei, -65
  br i1 %i.ej, label %bb.ai, label %.loopexit.i.i.i

bb.ai:                                            ; preds = %bb.ah, %.split.i.i.i.peel.i.i.i, %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157 ; 4 uses
  %i.el = icmp samesign eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.el, label %.lr.ph.split.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = load i8, ptr %i.ek, align 1, !noalias !291, !noundef !5 ; 4 uses
  %i.en = icmp sgt i8 %i.em, -1
  br i1 %i.en, label %.thread, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i": ; preds = %bb.aj
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.ep = and i8 %i.em, 31
  %i.eq = zext nneg i8 %i.ep to i32               ; 3 uses
  %i.er = add nuw nsw i64 %.sroa.4.0157, 1
  %i.es = icmp samesign ne i64 %i.er, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.es)
  %i.et = load i8, ptr %i.eo, align 1, !noalias !291, !noundef !5
  %i.eu = shl nuw nsw i32 %i.eq, 6
  %i.ev = and i8 %i.et, 63
  %i.ew = zext nneg i8 %i.ev to i32               ; 2 uses
  %i.ex = or disjoint i32 %i.eu, %i.ew
  %i.ey = icmp samesign ugt i8 %i.em, -33
  br i1 %i.ey, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i", label %bb.ak

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i"
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.fa = add nuw nsw i64 %.sroa.4.0157, 2
  %i.fb = icmp samesign ne i64 %i.fa, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.ez, align 1, !noalias !291, !noundef !5
  %i.fd = shl nuw nsw i32 %i.ew, 6
  %i.fe = and i8 %i.fc, 63
  %i.ff = zext nneg i8 %i.fe to i32
  %i.fg = or disjoint i32 %i.fd, %i.ff            ; 2 uses
  %i.fh = shl nuw nsw i32 %i.eq, 12
  %i.fi = or disjoint i32 %i.fg, %i.fh
  %i.fj = icmp samesign ugt i8 %i.em, -17
  br i1 %i.fj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i", label %bb.ak

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i"
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ek, i64 3
  %i.fl = add nuw nsw i64 %.sroa.4.0157, 3
  %i.fm = icmp samesign ne i64 %i.fl, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fm)
  %i.fn = load i8, ptr %i.fk, align 1, !noalias !291, !noundef !5
  %i.fo = shl nuw nsw i32 %i.eq, 18
  %i.fp = and i32 %i.fo, 1835008
  %i.fq = shl nuw nsw i32 %i.fg, 6
  %i.fr = and i8 %i.fn, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs
  %i.fu = or disjoint i32 %i.ft, %i.fp
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i = phi i32 [ %i.fi, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i" ], [ %i.fu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i" ], [ %i.ex, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i" ] ; 4 uses
  %i.fv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 128
  br i1 %i.fw, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 2048
  br i1 %i.fx, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 65536
  %..i.i.peel.i.i.i = select i1 %i.fy, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.aj, %bb.am, %bb.al, %bb.ak
  %.sroa.01.0.i.i.peel.i.i.i = phi i64 [ 2, %bb.al ], [ %..i.i.peel.i.i.i, %bb.am ], [ 1, %bb.ak ], [ 1, %bb.aj ]
  %i.fz = add i64 %.sroa.01.0.i.i.peel.i.i.i, %.sroa.4.0157 ; 15 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.thread
  %.not.i.i.i.i.i.i = icmp ult i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.an
  %i.gb = icmp eq i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %i.gb, label %bb.ap, label %.loopexit.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.fz
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !289, !noalias !292, !noundef !5
  %i.ge = icmp sgt i8 %i.gd, -65
  br i1 %i.ge, label %bb.ap, label %.loopexit.i.i.i

bb.ap:                                            ; preds = %bb.ao, %.split.i.i.i.i.i.i, %.thread
  %i.gf = icmp samesign eq i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %i.gf, label %.lr.ph.i.i.i.i.backedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.fz
  %i.gh = load i8, ptr %i.gg, align 1, !noalias !293, !noundef !5 ; 3 uses
  %i.gi = icmp sgt i8 %i.gh, -1
  br i1 %i.gi, label %.lr.ph.i.i.i.i.backedge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i": ; preds = %bb.aq
  %i.gj = add nuw nsw i64 %i.fz, 1
  %i.gk = icmp samesign ne i64 %i.gj, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i8 %i.gh, -33
  br i1 %i.gl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

.lr.ph.i.i.i.i.backedge:                          ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i", %bb.aq, %bb.ap
  %.sroa.4.0157.be = phi i64 [ %.sroa.07.sroa.13.0.copyload, %bb.ap ], [ %i.fz, %bb.aq ], [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i" ], [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i"
  %i.gm = add nuw nsw i64 %i.fz, 2
  %i.gn = icmp samesign ne i64 %i.gm, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp samesign ugt i8 %i.gh, -17
  br i1 %i.go, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i"
  %30 = add nuw nsw i64 %i.fz, 3
  %31 = icmp samesign ne i64 %30, %.sroa.07.sroa.13.0.copyload
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit.i.i.i:                                  ; preds = %bb.ao, %.split.i.i.i.i.i.i, %bb.ah, %.split.i.i.i.peel.i.i.i, %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.t, %.split.i.i.i.peel.i.i.i.peel
  %.lcssa12.i.i.i = phi i64 [ %.sroa.07.sroa.4.0.copyload, %.split.i.i.i.peel.i.i.i.peel ], [ %.sroa.07.sroa.4.0.copyload, %bb.t ], [ %i.do, %.split.i.i.i.i.i.i.peel ], [ %i.do, %bb.ad ], [ %.sroa.4.0157, %.split.i.i.i.peel.i.i.i ], [ %.sroa.4.0157, %bb.ah ], [ %i.fz, %.split.i.i.i.i.i.i ], [ %i.fz, %bb.ao ]
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.07.sroa.12.0.copyload, i64 noundef %.sroa.07.sroa.13.0.copyload, i64 noundef %.lcssa12.i.i.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !292
  unreachable

.split137.us:                                     ; preds = %.lr.ph317
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ac, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !294
  unreachable

.split140.us:                                     ; preds = %bb.g
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ae, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !294
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.gp = add i64 %i.k, %.sroa.0.0.i.i23.us
  %umax.i27 = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.gp)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i27, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !294
  unreachable

.split148.us:                                     ; preds = %.lr.ph324
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bf, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !295
  unreachable

.split151.us:                                     ; preds = %bb.n
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bg, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !295
  unreachable

.split144.us:                                     ; preds = %.lr.ph321
  %i.gq = add i64 %i.ap, %.sroa.07.sroa.4.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.gq)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !295
  unreachable

.lr.ph.split.i.i:                                 ; preds = %bb.ai, %bb.k, %bb.b, %.sink.split.i.us, %bb.r, %.loopexit19.i.i.i.peel, %.lr.ph.i.split
  %.sroa.39.0133 = phi i64 [ 0, %.loopexit19.i.i.i.peel ], [ 0, %.lr.ph.i.split ], [ %.sroa.39.0.us, %.sink.split.i.us ], [ %.sroa.39.0.us, %bb.r ], [ %.sroa.39.0.us, %bb.k ], [ %.sroa.39.0.us, %bb.b ], [ %.sroa.4.0157, %bb.ai ] ; 2 uses
  %i.gr = sub nuw i64 30, %.sroa.39.0133          ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.39.0133 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.gt = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.hi, %.backedge.backedge ] ; 5 uses
  %i.gu = sub nuw nsw i64 %i.gr, %i.gt            ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt ; 2 uses
  %i.gw = icmp samesign ult i64 %i.gu, 16
  br i1 %i.gw, label %.preheader.i.i.i, label %bb.ar

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ar:                                            ; preds = %.backedge
  %i.gx = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gv, i64 noundef %i.gu), !noalias !296
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.as, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.gu, %bb.as ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.as ], [ 1, %.lr.ph.i.i.i ]
  %i.gy = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.gz = insertvalue { i64, i64 } %i.gy, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.as
  %.sroa.01.05.i.i.i = phi i64 [ %i.hd, %bb.as ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.01.05.i.i.i
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !297, !noalias !296, !noundef !5
  %i.hc = icmp eq i8 %i.hb, 60
  br i1 %i.hc, label %._crit_edge.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.hd = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.hd, %i.gu
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.ar
  %.merged.i.i.i = phi { i64, i64 } [ %i.gz, %._crit_edge.i.i.i ], [ %i.gx, %bb.ar ] ; 2 uses
  %i.he = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.hf = trunc nuw i64 %i.he to i1
  br i1 %i.hf, label %bb.at, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

bb.at:                                            ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.hg = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.hh = add nuw nsw i64 %i.gt, 1
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.hi, %i.gr         ; 2 uses
  %i.hj = add i64 %i.gt, %i.hg
  %or.cond.i.i.not = icmp ult i64 %i.hj, %i.gr
  br i1 %or.cond.i.i.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.au, %bb.av
  br label %.backedge

bb.av:                                            ; preds = %bb.at
  %i.hk = add i64 %i.gt, %i.hg                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hk
  %lhsc = load i8, ptr %i.hl, align 1
  %i.hm = icmp eq i8 %lhsc, 60                    ; 2 uses
  %brmerge = select i1 %i.hm, i1 true, i1 %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit", label %.backedge.backedge

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit": ; preds = %bb.av
  %.mux.le = select i1 %i.hm, i64 %i.hk, i64 %i.gr
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit": ; preds = %bb.au, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit"
  %.sroa.4.1.i = phi i64 [ %.mux.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit" ], [ %i.gr, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %i.gr, %bb.au ]
  %i.hn = insertvalue { ptr, i64 } poison, ptr %i.gs, 0
  %i.ho = insertvalue { ptr, i64 } %i.hn, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.ho
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
end_hunk_0
