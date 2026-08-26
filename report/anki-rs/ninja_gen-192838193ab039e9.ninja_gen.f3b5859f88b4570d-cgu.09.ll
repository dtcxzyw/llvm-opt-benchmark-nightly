Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ninja_gen-192838193ab039e9.ninja_gen.f3b5859f88b4570d-cgu.09?download=true
inline.NumInlined: 175
inline.NumDeleted: 104
begin_hunk_0_@"_ZN87_$LT$ninja_gen..configure..ConfigureBuild$u20$as$u20$ninja_gen..action..BuildAction$GT$5files17h4d3087c1e480e50fE":bb.a
bb.l:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @41, i64 noundef 4)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17h762759532c89a0ebE"(ptr noalias noundef align 8 dereferenceable(48) %i.c) #21
          to label %bb.k unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 3, ptr %i.s, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.l, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 3, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.e, align 8
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h46507a6fe2abad40E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @42, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 11, ptr %i.t, align 8
  call void @_ZN9ninja_gen5build11FilesHandle11add_outputs17hb2e0bdcdad888206E(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.p:                                             ; preds = %bb.n, %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.q:                                             ; preds = %bb.h, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.h ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN9ninja_gen3cog10cog_render17ha7d9f3068f4cba34E(ptr noalias noundef align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h27b187f480cce668E", ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168
  store ptr @44, ptr %i.b, align 8, !noalias !175
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !175
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !175
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !175
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !175
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17h762759532c89a0ebE"(ptr noalias noundef align 8 dereferenceable(48) %4) #21
          to label %bb.i unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %3, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %4, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %i.m, align 8
  %i.n = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17hea7d7a663cfe846cE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h27b187f480cce668E", ptr %.sroa.413.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  store ptr @46, ptr %i.a, align 8, !noalias !183
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.419.0..sroa_idx, align 8, !noalias !183
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.520.0..sroa_idx, align 8, !noalias !183
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.621.0..sroa_idx, align 8, !noalias !183
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.722.0..sroa_idx, align 8, !noalias !183
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.p, align 8
  %i.q = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17hea7d7a663cfe846cE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.b       ; 2 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not15 = icmp eq ptr %i.q, null
  br i1 %.not15, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17h762759532c89a0ebE"(ptr noalias noundef align 8 dereferenceable(48) %4)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.r, %bb.j ], [ %i.k, %bb.b ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17h762759532c89a0ebE"(ptr noalias noundef align 8 dereferenceable(48) %3) #21
          to label %bb.n unwind label %bb.m

bb.j:                                             ; preds = %bb.l, %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h, %bb.l
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.l ], [ null, %bb.h ]
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17h762759532c89a0ebE"(ptr noalias noundef align 8 dereferenceable(48) %3)
  ret ptr %.sroa.0.0

bb.l:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.1 = phi ptr [ %i.n, %bb.d ], [ %i.q, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17h762759532c89a0ebE"(ptr noalias noundef align 8 dereferenceable(48) %4)
          to label %bb.k unwind label %bb.j

bb.m:                                             ; preds = %bb.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.n:                                             ; preds = %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9ninja_gen3git15locate_git_head17h048f5112d1ec5e16E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [176 x i8], align 8               ; 6 uses
  %i.k = alloca [176 x i8], align 8               ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 15 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %1 = alloca [24 x i8], align 8                  ; 14 uses
  %.sroa.42 = alloca [24 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_ZN3std2fs8metadata17hf12744a63450af51E(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 9)
  %i.u = load i64, ptr %i.k, align 8, !range !50, !noundef !4
  %.not = icmp eq i64 %i.u, 2
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb9e4a1d86362059aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_ZN3std2fs12canonicalize17h852640a70f758689E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @28, i64 noundef 1)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.w = load i64, ptr %i.p, align 8, !range !57, !alias.scope !187, !noalias !189, !noundef !4
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  br i1 %i.x, label %bb.c, label %bb.h, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !191
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !187, !noalias !189, !nonnull !4, !noundef !4
  store ptr %i.z, ptr %i.f, align 8, !noalias !191
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #18
          to label %bb.e unwind label %bb.d, !noalias !192

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb9e4a1d86362059aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #21
          to label %common.resume unwind label %bb.f, !noalias !192

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !192
  unreachable

common.resume:                                    ; preds = %.body46, %.body71, %bb.ah, %bb.q, %bb.m, %bb.j, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.ah ], [ %i.aa, %bb.d ], [ %i.ac, %bb.g ], [ %i.ag, %bb.j ], [ %i.am, %bb.m ], [ %i.ar, %bb.q ], [ %i.cz, %.body71 ], [ %.pn.pn, %.body46 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #21
          to label %common.resume unwind label %bb.i, !noalias !193

bb.h:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !192, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val32 = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val33 = load i64, ptr %i.ae, align 8, !noundef !4
  invoke void @_ZN3std2fs12canonicalize17h852640a70f758689E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val32, i64 noundef %.val33)
          to label %_ZN5dunce12canonicalize17h61c9d012b8bb9a2eE.exit unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !193
  unreachable

_ZN5dunce12canonicalize17h61c9d012b8bb9a2eE.exit: ; preds = %bb.h
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit" unwind label %bb.j, !noalias !193

bb.j:                                             ; preds = %_ZN5dunce12canonicalize17h61c9d012b8bb9a2eE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.k, !noalias !193

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !193
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit": ; preds = %_ZN5dunce12canonicalize17h61c9d012b8bb9a2eE.exit
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.ai = load i64, ptr %i.r, align 8, !range !57, !alias.scope !200, !noalias !202, !noundef !4
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %i.aj, label %bb.l, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d57965b3bac5d7E.exit", !prof !6

bb.l:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !204
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !200, !noalias !202, !nonnull !4, !noundef !4
  store ptr %i.al, ptr %i.g, align 8, !noalias !204
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #18
          to label %bb.n unwind label %bb.m, !noalias !205

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb9e4a1d86362059aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #21
          to label %common.resume unwind label %bb.o, !noalias !205

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !205
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d57965b3bac5d7E.exit": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !205, !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_ZN6camino11Utf8PathBuf13from_path_buf17hd772cdb5f9b5e293E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.ao = load i64, ptr %i.t, align 8, !range !5, !alias.scope !210, !noalias !207, !noundef !4
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.p, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h787750b2968c38a4E.exit", !prof !6

bb.p:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d57965b3bac5d7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !212
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !207
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #18
          to label %bb.r unwind label %bb.q, !noalias !212

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #21
          to label %common.resume unwind label %bb.s, !noalias !212

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !212
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h787750b2968c38a4E.exit": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d57965b3bac5d7E.exit"
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.at, i64 24, i1 false), !alias.scope !212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.bb = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #19 ; 5 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.be, label %bb.bf, !prof !6

bb.u:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit64", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h787750b2968c38a4E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bd = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.be = load i64, ptr %i.av, align 8, !noundef !4
  %i.bf = invoke { ptr, i64 } @_ZN6camino8Utf8Path3new17h23571155f47a41acE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @41, i64 noundef 4)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.u
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  invoke void @_ZN3std4path4Path4join17h792c4d2e069ab2e2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bd, i64 noundef %i.be, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bg, i64 noundef %i.bh)
          to label %_ZN6camino8Utf8Path4join17h2d8b3953ef3d1e38E.exit unwind label %.loopexit

.body46:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.ay, %bb.an, %bb.af, %.body, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bn, %bb.v ], [ %i.ch, %bb.an ], [ %i.ca, %bb.af ], [ %i.cs, %bb.ay ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E"(ptr noalias noundef align 8 dereferenceable(24) %1) #21
          to label %common.resume unwind label %bb.bd

.loopexit:                                        ; preds = %bb.u, %.noexc, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i60"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.loopexit.split-lp:                               ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i45.invoke"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body46

_ZN6camino8Utf8Path4join17h2d8b3953ef3d1e38E.exit: ; preds = %.noexc
  %i.bi = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.bj = load i64, ptr %i.ax, align 8, !noundef !4
  %i.bk = invoke { ptr, i64 } @_ZN6camino8Utf8Path3new17h23571155f47a41acE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 7)
          to label %.noexc35 unwind label %bb.v   ; 2 uses

.noexc35:                                         ; preds = %_ZN6camino8Utf8Path4join17h2d8b3953ef3d1e38E.exit
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  invoke void @_ZN3std4path4Path4join17h792c4d2e069ab2e2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bi, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bl, i64 noundef %i.bm)
          to label %_ZN6camino8Utf8Path4join17h2d8b3953ef3d1e38E.exit37 unwind label %bb.v

bb.v:                                             ; preds = %.noexc35, %_ZN6camino8Utf8Path4join17h2d8b3953ef3d1e38E.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #21
          to label %.body46 unwind label %bb.bd

_ZN6camino8Utf8Path4join17h2d8b3953ef3d1e38E.exit37: ; preds = %.noexc35
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i" unwind label %bb.w

bb.w:                                             ; preds = %_ZN6camino8Utf8Path4join17h2d8b3953ef3d1e38E.exit37
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i": ; preds = %_ZN6camino8Utf8Path4join17h2d8b3953ef3d1e38E.exit37
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit" unwind label %.loopexit83

.body:                                            ; preds = %.loopexit83, %.loopexit.split-lp84, %bb.ar, %bb.w, %bb.bc, %.body55
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.bc ], [ %i.cn, %bb.ar ], [ %eh.lpad-body56, %.body55 ], [ %i.bo, %bb.w ], [ %lpad.loopexit85, %.loopexit83 ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp84 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #21
          to label %.body46 unwind label %bb.bd

.loopexit83:                                      ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit", %bb.aa, %bb.ad, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i", %bb.z
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp84:                             ; preds = %bb.ab, %bb.au
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bq = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.br = load i64, ptr %i.az, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_ZN3std2fs8metadata17hf12744a63450af51E(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bq, i64 noundef %i.br)
          to label %bb.y unwind label %.loopexit83

bb.y:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit"
  %i.bs = load i64, ptr %i.j, align 8, !range !50, !noundef !4
  %.not.i41 = icmp eq i64 %i.bs, 2
  br i1 %.not.i41, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb9e4a1d86362059aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ba)
          to label %bb.aa unwind label %.loopexit83

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bt = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.bu = load i64, ptr %i.av, align 8, !noundef !4
  %i.bv = invoke { ptr, i64 } @_ZN3std4path4Path6parent17h9e40c10fd916450bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu)
          to label %bb.ac unwind label %.loopexit83 ; 2 uses

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bw = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.bx = load i64, ptr %i.az, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN3std2fs8read_dir17h130a1051acd1356cE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bw, i64 noundef %i.bx)
          to label %bb.ap unwind label %.loopexit.split-lp84

bb.ac:                                            ; preds = %bb.aa
  %i.by = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %.not26 = icmp eq ptr %i.by, null
  br i1 %.not26, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = extractvalue { ptr, i64 } %i.bv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_ZN3std4path4Path11to_path_buf17hde9f3f538e8905cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.by, i64 noundef %i.bz)
          to label %bb.aj unwind label %.loopexit83

bb.ae:                                            ; preds = %bb.ac
  store i64 -9223372036854775803, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i45.invoke" unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body46 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i45.invoke": ; preds = %bb.ax, %bb.ae
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit70" unwind label %.loopexit.split-lp

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit70": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i45.invoke"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit52" unwind label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit70"
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit52": ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit70"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.ba

bb.aj:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i54" unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body55 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i54": ; preds = %bb.aj
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit58" unwind label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i54"
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body55

.body55:                                          ; preds = %bb.ak, %bb.am
  %eh.lpad-body56 = phi { ptr, i32 } [ %i.cg, %bb.am ], [ %i.ce, %bb.ak ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %.body

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit58": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i54"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i60" unwind label %bb.an

bb.an:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit58"
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body46 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i60": ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit58"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit64" unwind label %.loopexit

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit64": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i60"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.u

bb.ap:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ck = load i8, ptr %i.cj, align 8, !range !27, !noundef !4 ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 2
  %i.cm = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.cl, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !213
  store ptr %i.cm, ptr %i.d, align 8, !noalias !213
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #18
          to label %bb.as unwind label %bb.ar, !noalias !213

bb.ar:                                            ; preds = %bb.aq
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb9e4a1d86362059aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %.body unwind label %bb.at, !noalias !213

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !213
  unreachable

bb.au:                                            ; preds = %bb.ap
  %i.cp = trunc nuw i8 %i.ck to i1
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h459145a5e152bc35E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull %i.cm, i1 noundef zeroext %i.cp)
          to label %bb.av unwind label %.loopexit.split-lp84

bb.av:                                            ; preds = %bb.au
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.cq = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #19 ; 4 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.aw, label %bb.ax, !prof !6

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #18
          to label %bb.bb unwind label %bb.bc

bb.ax:                                            ; preds = %bb.av
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i64 -9223372036854775807, ptr %i.cq, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cq, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0cb05c7260269be1E.exit.i45.invoke" unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body46 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.ba:                                            ; preds = %bb.bk, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit52"
  ret void

bb.bb:                                            ; preds = %bb.aw
  unreachable

bb.bc:                                            ; preds = %bb.aw
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h506966ad25289d0aE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #21
          to label %.body unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.body, %bb.v, %.body46
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.be:                                            ; preds = %bb.t
  call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #18
  unreachable

bb.bf:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !216
  store i64 0, ptr %i.c, align 8, !noalias !216
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !216
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !216
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.cw, align 8, !noalias !216
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !216
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !216
  store ptr %i.c, ptr %i.b, align 8, !noalias !216
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @4, ptr %i.cx, align 8, !noalias !216
  %i.cy = invoke noundef zeroext i1 @"_ZN55_$LT$camino..Utf8Path$u20$as$u20$core..fmt..Display$GT$3fmt17h6b8f00e096bcafa0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 9, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bh unwind label %bb.bg, !noalias !216

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc709ead19665b683E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #21
          to label %.body71 unwind label %bb.bj, !noalias !216

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.cy, label %bb.bi, label %bb.bk, !prof !6

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18
          to label %.noexc.i unwind label %bb.bg, !noalias !216

.noexc.i:                                         ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !216
  unreachable

.body71:                                          ; preds = %bb.bg
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 48, i64 noundef 8) #19
  br label %common.resume

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !216
  store i64 -9223372036854775808, ptr %i.bb, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17hb697f4f7534120e3E(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @57, i64 noundef 36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @58, i64 noundef 2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 36, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h3c0058093b33f845E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a) ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %.lr.ph.split.i.i, !prof !6

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
  %i.i = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !219
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
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !225, !noalias !219, !noundef !4
  %i.n = icmp eq i8 %i.m, 60
  br i1 %i.n, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.k, %._crit_edge.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.p = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit"

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.r = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.s = add i64 %i.e, 1
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.t, %i.d           ; 2 uses
  %i.u = add i64 %i.e, %i.r
  %or.cond.i.i.not = icmp ult i64 %i.u, %i.d
  br i1 %or.cond.i.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.e, %bb.f
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.v = add i64 %i.e, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.v
  %lhsc = load i8, ptr %i.w, align 1
  %i.x = icmp eq i8 %lhsc, 60                     ; 2 uses
  %brmerge = or i1 %i.x, %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit", label %.backedge.backedge

bb.g:                                             ; preds = %bb.a
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #18
  unreachable

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit": ; preds = %bb.f
  %.mux.le = select i1 %i.x, i64 %i.v, i64 %i.d
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit": ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit"
  %.sroa.4.1.i = phi i64 [ %.mux.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit" ], [ %i.d, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %i.d, %bb.e ]
  %i.y = insertvalue { ptr, i64 } %i.b, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17hb6d08d1ea0c693b6E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @61, i64 noundef 29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @58, i64 noundef 2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 29, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h3c0058093b33f845E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a) ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %.lr.ph.split.i.i, !prof !6

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
  %i.i = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !228
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
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !234, !noalias !228, !noundef !4
  %i.n = icmp eq i8 %i.m, 60
  br i1 %i.n, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.k, %._crit_edge.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.p = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit"

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.r = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.s = add i64 %i.e, 1
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.t, %i.d           ; 2 uses
  %i.u = add i64 %i.e, %i.r
  %or.cond.i.i.not = icmp ult i64 %i.u, %i.d
  br i1 %or.cond.i.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.e, %bb.f
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.v = add i64 %i.e, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.v
  %lhsc = load i8, ptr %i.w, align 1
  %i.x = icmp eq i8 %lhsc, 60                     ; 2 uses
  %brmerge = or i1 %i.x, %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit", label %.backedge.backedge

bb.g:                                             ; preds = %bb.a
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #18
end_hunk_0
