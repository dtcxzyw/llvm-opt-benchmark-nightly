Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.09?download=true
inline.NumInlined: 137
inline.NumDeleted: 75
begin_hunk_0_@"_ZN79_$LT$ninja_gen..cargo..CargoBuild$u20$as$u20$ninja_gen..action..BuildAction$GT$5files17h1befd530d2db38e1E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  store i64 %i.x, ptr %i.l, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.aa, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.538.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E.exit", %bb.f
  invoke void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h95ba6804c2ac819cE"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %bb.j unwind label %.thread47

.thread47:                                        ; preds = %bb.k, %bb.t, %bb.s, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.ab = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef 8) #18 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !9

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 144) #17
          to label %bb.y unwind label %.thread47

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 18)
          to label %bb.n unwind label %bb.m

.thread42:                                        ; preds = %bb.m, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.ad, %bb.m ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 144, i64 noundef 8) #18
  br label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.thread42

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 19)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.af, %bb.r ], [ %i.ae, %bb.p ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #16
          to label %.thread42 unwind label %bb.aa

bb.p:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 10)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.g) #16
          to label %bb.o unwind label %bb.aa

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 3, ptr %i.ai, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ab, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 3, ptr %.sroa.533.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.i, align 8
  invoke void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17heca404c3fae3b838E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.i)
          to label %bb.t unwind label %.thread47

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h4bcfe662798cc4c7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.04.0, i64 noundef %.sroa.3.0)
          to label %bb.u unwind label %.thread47

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h0395ef6ef75507ccE"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @16, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !7, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h4bcfe662798cc4c7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ak, i64 noundef %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !align !90, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aq, 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.at = load i64, ptr %i.r, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.06.052 = phi ptr [ %i.ao, %.lr.ph ], [ %i.ay, %bb.x ] ; 4 uses
  %.sroa.09.0.in = getelementptr inbounds nuw i8, ptr %.sroa.06.052, i64 8
  %.sroa.09.0 = load ptr, ptr %.sroa.09.0.in, align 8, !nonnull !4, !align !7, !noundef !4
  %.sroa.510.0.in = getelementptr inbounds nuw i8, ptr %.sroa.06.052, i64 16
  %.sroa.510.0 = load i64, ptr %.sroa.510.0.in, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN9ninja_gen5cargo10RustOutput4path17h9306cf9577ed2bfdE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.06.052, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @18, i64 noundef 14, ptr noalias noundef readonly align 1 captures(address, read_provenance) %i.q, i64 %i.at, i8 noundef %.sroa.0.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.aw = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #18 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.w, label %bb.x, !prof !9

._crit_edge:                                      ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 24) #17
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.052, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 1, ptr %i.c, align 8, !alias.scope !91
  store ptr %i.aw, ptr %i.au, align 8, !alias.scope !91
  store i64 1, ptr %i.av, align 8, !alias.scope !91
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$15add_outputs_ext17he70b1a0c32ebae45E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.09.0, i64 noundef %.sroa.510.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = icmp eq ptr %i.ay, %i.ar
  br i1 %i.az, label %._crit_edge, label %bb.v

bb.y:                                             ; preds = %bb.w, %bb.k
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #16
          to label %.thread unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z, %bb.r, %bb.o
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

.thread:                                          ; preds = %bb.z, %bb.ab
  %.pn2841 = phi { ptr, i32 } [ %i.ba, %bb.z ], [ %.pn2845, %bb.ab ]
  resume { ptr, i32 } %.pn2841

bb.ab:                                            ; preds = %.thread47, %.thread42
  %.pn2845 = phi { ptr, i32 } [ %.pn.pn, %.thread42 ], [ %lpad.thr_comm, %.thread47 ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #16
          to label %.thread unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN79_$LT$ninja_gen..rsync..RsyncFiles$u20$as$u20$ninja_gen..action..BuildAction$GT$5files17h8d45be4e912dd1dbE"(ptr noalias noundef align 8 dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$13expand_inputs17h517dc27d305dcac1E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8cbb71417adaf731E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.c unwind label %bb.b

.body10:                                          ; preds = %bb.v, %.body
  %.pn8 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bd, %bb.v ] ; 2 uses
  br i1 %i.w, label %common.resume, label %bb.ad

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.split:                                           ; preds = %bb.w
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.w, label %common.resume, label %bb.ad

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$14add_inputs_vec17h2f27cb78ffd2c4f2E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !7, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  %i.w = icmp eq i64 %i.v, 0                      ; 4 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aa
  store ptr %i.y, ptr %i.j, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.t, ptr %i.ad, align 8
  invoke void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h24355413d3a7f35bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.h unwind label %bb.b

bb.g:                                             ; preds = %bb.h, %bb.e
  %.sroa.3.0 = phi i64 [ 1, %bb.e ], [ %i.af, %bb.h ]
  %.sroa.0.0 = phi ptr [ @19, %bb.e ], [ %i.ae, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN9itertools4free4join17hf56fa4d8cf396cc2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @20, i64 noundef 1)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.t, align 8, !nonnull !4, !align !7, !noundef !4
  %i.af = load i64, ptr %i.u, align 8, !noundef !4
  br label %bb.g

.body:                                            ; preds = %bb.s, %bb.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.ag, %bb.i ], [ %i.bb, %bb.s ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #16
          to label %.body10 unwind label %bb.ac

bb.i:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i", %bb.n, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit", %bb.o, %bb.l, %bb.k, %bb.j, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.g
  invoke void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h0395ef6ef75507ccE"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h4bcfe662798cc4c7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @22, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.p, align 8, !nonnull !4, !align !7, !noundef !4
  %i.ai = load i64, ptr %i.r, align 8, !noundef !4
  invoke void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h4bcfe662798cc4c7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @23, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ah, i64 noundef %i.ai)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101
  store i8 32, ptr %i.d, align 1, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101
  store i8 44, ptr %i.c, align 1, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  store ptr %i.an, ptr %i.b, align 8, !noalias !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !101
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.aq, align 8, !noalias !101
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.ar, align 8, !noalias !101
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h4f86d26b327865ceE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.p unwind label %bb.i

bb.o:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit", %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.av
  store ptr %i.at, ptr %i.e, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.q, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.s, ptr %i.az, align 8
  invoke void @_ZN9ninja_gen5build11FilesHandle11add_outputs17hd5940b88b5b3f31aE(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.u unwind label %bb.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  store ptr @25, ptr %i.a, align 8, !noalias !103
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !103
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !103
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !103
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !103
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #16
          to label %.body unwind label %bb.ac

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i" unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i": ; preds = %bb.r
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit" unwind label %bb.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h0395ef6ef75507ccE"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.o unwind label %bb.i

bb.u:                                             ; preds = %bb.o
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h670739065d6ccec7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body10 unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit" unwind label %.split

bb.x:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit": ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.w, label %bb.y, label %bb.z

bb.y:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit13", %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.z:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h670739065d6ccec7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit13" unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

common.resume:                                    ; preds = %.split, %.body10, %bb.ad, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.aa ], [ %.pn814, %bb.ad ], [ %.pn8, %.body10 ], [ %lpad.thr_comm.split-lp, %.split ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit13": ; preds = %bb.z
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.y

bb.ac:                                            ; preds = %bb.ad, %bb.q, %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

bb.ad:                                            ; preds = %bb.b, %.split, %.body10
  %.pn814 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %.pn8, %.body10 ], [ %i.o, %bb.b ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #16
          to label %common.resume unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN80_$LT$ninja_gen..cargo..CargoClippy$u20$as$u20$ninja_gen..action..BuildAction$GT$5files17hf5182d6c4a03e86bE"(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.e = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef 8) #18 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 144) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN108_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$ninja_gen..input..BuildInput$GT$$GT$4from17hede8b7c8b6ae4d2eE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 10)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.i, %bb.i ], [ %i.h, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.c) #16
          to label %bb.l unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 19)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #16
          to label %bb.f unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 3, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.d, align 8
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17heca404c3fae3b838E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$16add_output_stamp17h5c25302a7059a8e1E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @27, i64 noundef 18)
  ret void

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

bb.l:                                             ; preds = %bb.d, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.f ], [ %i.g, %bb.d ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 144, i64 noundef 8) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN80_$LT$ninja_gen..cargo..CargoFormat$u20$as$u20$ninja_gen..action..BuildAction$GT$5files17h643720233201ad6dE"(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  tail call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h95ba6804c2ac819cE"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !6, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1                  ; 4 uses
  %. = select i1 %i.g, i64 7, i64 0
  %.4 = select i1 %i.g, ptr @28, ptr inttoptr (i64 1 to ptr)
  tail call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h4bcfe662798cc4c7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.4, i64 noundef %.)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !align !7, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  tail call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$15set_working_dir17h4bf919e3efc56178E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @30, i64 noundef 12)
  tail call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h4bcfe662798cc4c7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %spec.select = select i1 %i.g, ptr @33, ptr @32
  %spec.select6 = select i1 %i.g, i64 5, i64 3
  store ptr %spec.select, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select6, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h245d25d94735a8eaE", ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  store ptr @35, ptr %i.a, align 8, !noalias !111
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !111
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !111
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !111
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !111
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$16add_output_stamp17h909a794935494b87E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h003978be7e4a4ae1E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @36, i64 noundef 32, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @37, i64 noundef 2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 32, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a) ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %.lr.ph.split.i.i, !prof !9

.lr.ph.split.i.i:                                 ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 6 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.e = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.t, %.backedge.backedge ] ; 5 uses
  %i.f = sub nuw i64 %i.d, %i.e                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.h = icmp ult i64 %i.f, 16
  br i1 %i.h, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.backedge
  %i.i = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !120
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.f, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.05.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !121, !noalias !120, !noundef !4
  %i.n = icmp eq i8 %i.m, 60
  br i1 %i.n, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
end_hunk_0
