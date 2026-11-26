Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.1?download=true
inline.NumInlined: 242
inline.NumDeleted: 115
begin_hunk_0
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"\17\00\00\00\00\00\00\00\07\01\00\00*\00\00\00" }>, align 8
@20 = private unnamed_addr constant [4 x i8] c"None", align 1
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core }>, align 8
@22 = private unnamed_addr constant [4 x i8] c"Some", align 1
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRjNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core }>, align 8
@24 = private unnamed_addr constant [13 x i8] c"ThreadBuilder", align 1
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsg_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10RegistryIdNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@26 = private unnamed_addr constant [4 x i8] c"pool", align 1
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@28 = private unnamed_addr constant [5 x i8] c"index", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core }>, align 8
@30 = private unnamed_addr constant [4 x i8] c"name", align 1
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core }>, align 8
@32 = private unnamed_addr constant [10 x i8] c"stack_size", align 1
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtCskVyUMSjkkSy_10rayon_core9ErrorKindNtB6_5Debug3fmtBy_ }>, align 8
@34 = private unnamed_addr constant [20 x i8] c"ThreadPoolBuildError", align 1
@35 = private unnamed_addr constant [4 x i8] c"kind", align 1
@36 = private unnamed_addr constant [10 x i8] c"RegistryId", align 1
@37 = private unnamed_addr constant [4 x i8] c"addr", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [640 x i8], align 128             ; 19 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 4 uses
  %i.f = alloca [384 x i8], align 128             ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [104 x i8], align 16              ; 14 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [88 x i8], align 8                ; 16 uses
  %.sroa.539 = alloca [27 x i8], align 1          ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 13 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [1 x i8], align 1                 ; 4 uses
  %i.x = invoke noundef i64 @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsB5_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
          to label %bb.c unwind label %bb.f

bb.b:                                             ; preds = %bb.ax, %bb.aw, %bb.f, %.thread140
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn95143, %.thread140 ], [ %i.am, %bb.f ], [ %.pn48.pn.pn.pn, %bb.ax ], [ %.pn48.pn.pn.pn, %bb.aw ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #21
          to label %bb.bh unwind label %bb.bb

bb.c:                                             ; preds = %bb.a
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 65535) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.z = load i8, ptr %i.y, align 1, !range !4, !noundef !5
  store i8 %i.z, ptr %i.w, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %..i, ptr %i.ab, align 8
  store ptr %i.w, ptr %i.s, align 8
  invoke void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs1xwejQucwHj_5alloc3vec3VecB3n_EIB4P_B4u_EEB1u_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs1xwejQucwHj_5alloc3vec3VecB3p_EIB4R_B4w_EEB1u_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, i64 noundef 0, i64 noundef %..i)
          to label %bb.e unwind label %bb.bg

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ag = load i64, ptr %i.u, align 8, !range !6, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ai
  store ptr %i.af, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ag, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.g unwind label %.thread114

.thread114:                                       ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.thread96

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.az
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, i64 noundef %..i)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.an, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #21
          to label %.thread96 unwind label %bb.bb

bb.i:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_()
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #21
          to label %bb.h unwind label %bb.bb

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539)
  %.sroa.539.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.539, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.539.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.539, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.539)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 1, ptr %i.c, align 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i64 0, ptr %i.au, align 128
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %i.ao, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 128
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store ptr %i.ao, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 128
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.av = load <2 x ptr>, ptr %i.aq, align 8
  store ptr null, ptr %i.aq, align 8
  store <2 x ptr> %i.av, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.aw = load <2 x ptr>, ptr %i.ar, align 8
  store ptr null, ptr %i.ar, align 8
  store <2 x ptr> %i.aw, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.ax = load <2 x ptr>, ptr %i.as, align 8
  store ptr null, ptr %i.as, align 8
  store <2 x ptr> %i.ax, ptr %.sroa.9.0..sroa_idx, align 64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 16
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !82
  %i.ay = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 384, 641) 640, i64 noundef 128) #22, !noalias !82 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.m, label %bb.q, !prof !7

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #23
          to label %.noexc unwind label %bb.n, !noalias !82

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1i_(ptr noalias nofree noundef nonnull align 128 dereferenceable(640) %i.c) #21
          to label %.thread96 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body61:                                          ; preds = %bb.ag, %bb.v, %bb.p, %.critedge
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %.critedge ], [ %i.cj, %bb.v ], [ %i.bc, %bb.p ], [ %i.cy, %bb.ag ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_(ptr nonnull %i.o) #21
          to label %bb.aw unwind label %bb.bb

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i65, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.q:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.ay, ptr noundef nonnull align 128 dereferenceable(640) %i.c, i64 640, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ay, ptr %i.o, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.bf = load i64, ptr %i.v, align 8, !range !6, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !5 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 288230376151711744
  call void @llvm.assume(i1 %i.bi)
  %.idx = shl nuw nsw i64 %i.bh, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx
  %.sroa.084.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.485.0.copyload = load ptr, ptr %.sroa.485.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.586.0.copyload = load i64, ptr %.sroa.586.0..sroa_idx, align 8 ; 2 uses
  %i.bk = icmp ult i64 %.sroa.586.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.485.0.copyload, i64 %.sroa.586.0.copyload
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.be, ptr %i.k, align 8
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.be, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.08.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.bf, ptr %.sroa.08.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.08.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.bj, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  store ptr %.sroa.485.0.copyload, ptr %.sroa.08.sroa.2.0..sroa_idx, align 8
  %.sroa.08.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  store ptr %.sroa.485.0.copyload, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %.sroa.084.0.copyload, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  store ptr %i.bl, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83
  %i.bm = icmp eq i64 %i.bh, 0
  br i1 %i.bm, label %.loopexit, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i.lr.ph: ; preds = %bb.q
  %.sroa.522.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.1289.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i.lr.ph, %.backedge
  %i.bv = phi ptr [ %i.be, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i.lr.ph ], [ %i.dl, %.backedge ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.bw, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !88
  %.sroa.5.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.5.0.copyload13.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx12.i.i.i, align 8, !noalias !89 ; 3 uses
  %.not.i.i.i = icmp eq i8 %.sroa.5.0.copyload13.i.i.i, 2
  br i1 %.not.i.i.i, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i
  %.sroa.7.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.522.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false), !noalias !90
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !90
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.bx = load ptr, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !alias.scope !92, !nonnull !5, !noundef !5
  %i.by = load ptr, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8, !alias.scope !92, !nonnull !5, !noundef !5 ; 4 uses
  %i.bz = icmp eq ptr %i.by, %i.bx
  br i1 %i.bz, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.ca = load ptr, ptr %i.b, align 8, !alias.scope !96, !noalias !90, !nonnull !5, !noundef !5
  %i.cb = atomicrmw add ptr %i.ca, i64 -1 release, align 8, !noalias !97
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #25
          to label %.loopexit unwind label %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90

.critedge:                                        ; preds = %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak, %bb.ba, %.noexc77, %bb.be
  %.pn48.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ba ], [ %i.en, %.noexc77 ], [ %i.dc, %bb.ak ], [ %i.en, %bb.be ], [ %lpad.loopexit.split-lp171, %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.k) #21
          to label %.body61 unwind label %bb.bb

bb.u:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.cd, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8, !alias.scope !92
  %i.ce = load ptr, ptr %i.by, align 8, !noalias !98, !nonnull !5, !noundef !5 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cg = load i8, ptr %i.cf, align 8, !range !4, !noalias !98, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1289.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  %i.ch = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !84, !noundef !5 ; 4 uses
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !84
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.9.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ce, ptr %i.i, align 8
  store i8 %i.cg, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.ch)
          to label %bb.x unwind label %bb.bc

.loopexit:                                        ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i, %.backedge, %bb.q, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i unwind label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.2.0..sroa_idx)
          to label %.body61 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i: ; preds = %.loopexit
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.2.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cl = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.cm, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit76

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit76: ; preds = %bb.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
  ret void

bb.x:                                             ; preds = %bb.u
  %i.cn = load <2 x i64>, ptr %1, align 8
  %i.co = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.cp = atomicrmw add ptr %i.co, i64 1 monotonic, align 8
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store <2 x i64> %i.cn, ptr %i.h, align 16
  store ptr %i.ce, ptr %i.bq, align 8
  store i8 %i.cg, ptr %i.br, align 16
  store ptr %i.cr, ptr %i.bs, align 8
  store i64 %i.ch, ptr %i.bt, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cs = icmp eq i64 %i.ch, 0
  %i.ct = load i8, ptr %i.bu, align 8, !range !4
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond = select i1 %i.cs, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 16 dereferenceable(104) %i.h, i64 104, i1 false)
  %i.cv = invoke noundef ptr @_RNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12DefaultSpawnNtB5_11ThreadSpawn5spawn(ptr noalias nofree nonnull poison, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.d)
          to label %bb.ar unwind label %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.y
  %i.cw = invoke noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.ac unwind label %bb.ba

.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.am, %bb.aa, %bb.ae, %bb.ad, %bb.t, %bb.ap
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry13ThreadBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h)
          to label %bb.af unwind label %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 16 dereferenceable(104) %i.h, i64 104, i1 false)
  invoke void @_RNvXs6_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ThreadBuilderE4from(ptr noalias nofree noundef nonnull sret([384 x i8]) align 128 captures(none) dereferenceable(384) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.e)
          to label %bb.ai unwind label %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ad, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i65 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.2.0..sroa_idx)
          to label %.body61 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i65: ; preds = %bb.af
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.2.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit69 unwind label %bb.p

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !99
  %i.da = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 384, 641) 384, i64 noundef 128) #22, !noalias !99 ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.aj, label %bb.am, !prof !7

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #23
          to label %.noexc70 unwind label %bb.ak, !noalias !99

.noexc70:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEBF_(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.f) #21
          to label %.critedge unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.am:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.da, ptr noundef nonnull align 128 dereferenceable(384) %i.f, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.da, ptr %i.a, align 8
  invoke void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNCNvMs8_B1v_B1t_11set_current0uEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.an unwind label %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.de = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 520
  %i.dg = load i64, ptr %i.df, align 8, !noundef !5
  %.not47 = icmp eq i64 %i.dg, 0
  br i1 %.not47, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 512
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  invoke fastcc void @_RNvXs4_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef %i.dj)
          to label %.backedge unwind label %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %bb.aq unwind label %.body56.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  unreachable

.backedge:                                        ; preds = %bb.ao, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103
  %i.dk = load ptr, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !104, !nonnull !5, !noundef !5
  %i.dl = load ptr, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !104, !nonnull !5, !noundef !5 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.dk
  br i1 %i.dm, label %.loopexit, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i

bb.ar:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not46 = icmp eq ptr %i.cv, null
  br i1 %.not46, label %.backedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 2, ptr %0, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.dn, align 8
  br label %bb.af

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit69: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.do = load ptr, ptr %i.o, align 8, !noalias !105, !nonnull !5, !noundef !5 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 464
  %i.dq = atomicrmw add ptr %i.dp, i64 -1 acq_rel, align 8, !noalias !105
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit69
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 512
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !105, !nonnull !5, !noundef !5 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 520
  %i.dv = load i64, ptr %i.du, align 8, !noalias !105, !noundef !5 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.dv, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 472
  br label %bb.au

bb.au:                                            ; preds = %.noexc73, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i ], [ %i.dz, %.noexc73 ] ; 2 uses
  %.sroa.7.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ea, %.noexc73 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 48 ; 2 uses
  %i.ea = add nuw nsw i64 %.sroa.7.09.i.i.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 16
  %i.ec = atomicrmw xchg ptr %i.eb, i64 3 acq_rel, align 8, !noalias !105
  %i.ed = icmp eq i64 %i.ec, 2
  br i1 %i.ed, label %bb.av, label %.noexc73

.noexc73:                                         ; preds = %bb.av, %bb.au
  %i.ee = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ee, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit, label %bb.au

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr noundef nonnull align 8 %i.dy, i64 noundef %.sroa.7.09.i.i.i)
          to label %.noexc73 unwind label %bb.ay, !noalias !105

bb.aw:                                            ; preds = %.body61, %bb.ay
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %.body61 ], [ %i.ei, %bb.ay ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ef = load ptr, ptr %i.o, align 8, !alias.scope !108, !nonnull !5, !noundef !5
  %i.eg = atomicrmw add ptr %i.ef, i64 -1 release, align 8, !noalias !108
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.ax, label %bb.b

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.b unwind label %bb.bb

bb.ay:                                            ; preds = %bb.av
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit: ; preds = %.noexc73, %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit69
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.ej = load ptr, ptr %i.o, align 8, !alias.scope !111, !nonnull !5, !noundef !5
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 release, align 8, !noalias !111
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit76

bb.az:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit76 unwind label %bb.f

bb.ba:                                            ; preds = %bb.ab
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry13ThreadBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h) #21
          to label %.critedge unwind label %bb.bb

bb.bb:                                            ; preds = %bb.be, %bb.bd, %bb.ax, %.body61, %.thread140, %bb.bg, %bb.bf, %.thread96, %bb.ba, %.critedge, %bb.k, %bb.h, %bb.b
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bc:                                            ; preds = %bb.u
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !noalias !112
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bd, label %.noexc77

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #25
          to label %.noexc77 unwind label %bb.bb

.noexc77:                                         ; preds = %bb.bd, %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.eq = load ptr, ptr %i.j, align 8, !alias.scope !116, !nonnull !5, !noundef !5
  %i.er = atomicrmw add ptr %i.eq, i64 -1 release, align 8, !noalias !116
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.be, label %.critedge

bb.be:                                            ; preds = %.noexc77
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #25
          to label %.critedge unwind label %bb.bb

.thread106:                                       ; preds = %.thread96
  br i1 %.sroa.015.0101, label %bb.bf, label %.thread140

.thread96:                                        ; preds = %bb.n, %bb.h, %.thread114
  %.pn48.pn.pn.pn.pn105 = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.al, %.thread114 ], [ %i.ba, %bb.n ] ; 2 uses
  %.sroa.015.0101 = phi i1 [ true, %bb.h ], [ true, %.thread114 ], [ false, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #21
          to label %.thread106 unwind label %bb.bb

bb.bf:                                            ; preds = %.thread106
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #21
          to label %.thread140 unwind label %bb.bb

bb.bg:                                            ; preds = %bb.d
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #21
          to label %.thread140 unwind label %bb.bb

.thread140:                                       ; preds = %bb.bf, %.thread106, %bb.bg
  %.pn48.pn.pn.pn.pn.pn95143 = phi { ptr, i32 } [ %i.et, %bb.bg ], [ %.pn48.pn.pn.pn.pn105, %.thread106 ], [ %.pn48.pn.pn.pn.pn105, %bb.bf ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #21
          to label %bb.b unwind label %bb.bb

bb.bh:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry13ThreadBuilderEBF_:bb.a
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !237, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !237
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !241, !nonnull !5, !noundef !5
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !241
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6 unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit: ; preds = %.body, %bb.f, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %eh.lpad-body, %bb.f ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !245, !nonnull !5, !noundef !5
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !245
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !249, !nonnull !5, !noundef !5
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !249
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9 unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit, %bb.h, %bb.l
  %.pn2 = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %.pn, %bb.h ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !252, !nonnull !5, !noundef !5
  %i.z = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !252
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !255, !nonnull !5, !noundef !5
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !255
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit11

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit11: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9, %bb.m
  ret void

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit, %bb.k
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread7builder7BuilderECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !258, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskVyUMSjkkSy_10rayon_core.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskVyUMSjkkSy_10rayon_core.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB2_20init_global_registryNtB2_12DefaultSpawnE0EB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 8 uses
  %i.c = alloca [104 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.d, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.f = load atomic i32, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry16THE_REGISTRY_SET acquire, align 4, !noalias !265
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !265
  store ptr %i.b, ptr %i.a, align 8, !noalias !265
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNtCskVyUMSjkkSy_10rayon_core8registry16THE_REGISTRY_SET, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.f unwind label %bb.d, !noalias !265

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.c)
          to label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB11_20init_global_registryNtB11_12DefaultSpawnE0E0EB13_.exit unwind label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !range !14, !alias.scope !266, !noalias !265, !noundef !5
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b)
          to label %.body unwind label %bb.h, !noalias !265

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !265
  %i.k = load i64, ptr %i.b, align 8, !range !14, !alias.scope !267, !noalias !265, !noundef !5
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_.exit4.i unwind label %bb.i, !noalias !265

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_.exit4.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !265
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB11_20init_global_registryNtB11_12DefaultSpawnE0E0EB13_.exit

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !265
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  %.val = load i64, ptr %i.d, align 8, !range !10, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load ptr, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1A_20ThreadPoolBuildErrorEEB1A_(i64 %.val, ptr %.val1) #21
          to label %bb.k unwind label %bb.j

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB11_20init_global_registryNtB11_12DefaultSpawnE0E0EB13_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_.exit4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0B15_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  store i64 2, ptr %i.d, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !278
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !279
  call void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !277
  %i.e = load i64, ptr %i.c, align 8, !range !10, !noalias !278, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !278 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, align 8, !noalias !278
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0.i = phi ptr [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !278
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %.val.i = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !range !10, !noalias !278, !noundef !5
  %i.h = getelementptr i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8 ; 3 uses
  %.val8.i = load ptr, ptr %i.h, align 8, !noalias !278 ; 4 uses
  %i.i = icmp eq i64 %.val.i, 2
  br i1 %i.i, label %bb.e, label %_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !281
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.j = ptrtoint ptr %.val8.i to i64             ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
    i64 1, label %bb.g
  ], !prof !11

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = icmp ult ptr %.val8.i, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  call void @llvm.assume(i1 %i.l)
  call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.val8.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !282, !noalias !281
  store i8 3, ptr %i.a, align 8, !alias.scope !282, !noalias !281
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i unwind label %bb.h, !noalias !281

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !281
  br label %_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_.exit

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %i.e, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !278
  store ptr %.sroa.6.0.i, ptr %i.h, align 8, !noalias !278
  resume { ptr, i32 } %i.q

_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
  store i64 %i.e, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !278
  store ptr %.sroa.6.0.i, ptr %i.h, align 8, !noalias !278
  ret void

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB13_23default_global_registryE0E0B15_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [96 x i8], align 8                ; 12 uses
  %i.g = alloca [16 x i8], align 8                ; 13 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !align !15, !noundef !5 ; 5 uses
  store ptr null, ptr %i.h, align 8
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.ab, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !311
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  store i8 0, ptr %i.k, align 8, !noalias !311
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %i.l, align 8, !noalias !311
  store i64 0, ptr %i.f, align 8, !noalias !311
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr null, ptr %i.m, align 8, !noalias !311
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr null, ptr %i.n, align 8, !noalias !311
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  store i8 0, ptr %i.o, align 1, !noalias !311
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !311
  call void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.d), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !311
  %i.p = load i64, ptr %i.g, align 8, !noalias !309
  %.not.i.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i.i, label %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.thread19.i, label %bb.c

_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.thread19.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload22.i = load ptr, ptr %.sroa.5.0..sroa_idx21.i, align 8, !noalias !309
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.q = invoke noundef zeroext i1 @_RNvMs4_CskVyUMSjkkSy_10rayon_coreNtB5_20ThreadPoolBuildError14is_unsupported(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.e unwind label %bb.d, !noalias !311

bb.d:                                             ; preds = %bb.m, %bb.h, %bb.f, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #21
          to label %common.resume.i unwind label %bb.u, !noalias !311

bb.e:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.f, label %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.g unwind label %bb.d, !noalias !311

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i

bb.h:                                             ; preds = %bb.g
  store i64 1, ptr %i.j, align 8, !noalias !311
  store i8 1, ptr %i.k, align 8, !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !311
  invoke void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.f)
          to label %bb.i unwind label %bb.d, !noalias !311

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr %i.e, align 8, !range !10, !noalias !311, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !314, !noalias !311 ; 4 uses
  %switch.i.i.i.i.i.i = icmp samesign ult i64 %i.u, 2
  br i1 %switch.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !315
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i) ]
  %i.x = ptrtoint ptr %.val1.i.i.i.i.i to i64     ; 2 uses
  %i.y = and i64 %i.x, 3
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
    i64 1, label %bb.m
  ], !prof !11

default.unreachable:                              ; preds = %bb.x, %bb.r, %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.z = icmp ult ptr %.val1.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aa = and i64 %i.x, 1095216660480
  %i.ab = icmp ne i64 %i.aa, 1095216660480
  call void @llvm.assume(i1 %i.z)
  call void @llvm.assume(i1 %i.ab)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %.val1.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !316, !noalias !315
  store i8 3, ptr %i.c, align 8, !alias.scope !316, !noalias !315
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i unwind label %bb.d, !noalias !315

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !315
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_.exit.i.i.i

bb.n:                                             ; preds = %bb.i
  %.sroa.5.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload12.i = load ptr, ptr %.sroa.5.0..sroa_idx11.i, align 8, !noalias !309 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !311
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.ae = load i64, ptr %i.g, align 8, !range !10, !alias.scope !317, !noalias !311, !noundef !5 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !320, !noalias !311, !nonnull !5, !noundef !5
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !321
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25, !noalias !311
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i3.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !323, !noalias !311 ; 4 uses
  %switch.i.i.i4.i.i.i = icmp samesign ult i64 %i.ae, 2
  br i1 %switch.i.i.i4.i.i.i, label %.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !324
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i3.i.i.i) ]
  %i.al = ptrtoint ptr %.val1.i.i3.i.i.i to i64   ; 2 uses
  %i.am = and i64 %i.al, 3
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i
    i64 3, label %bb.s
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i
    i64 1, label %bb.t
  ], !prof !11

bb.s:                                             ; preds = %bb.r
  %i.an = icmp ult ptr %.val1.i.i3.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ao = and i64 %i.al, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.an)
  call void @llvm.assume(i1 %i.ap)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %.val1.i.i3.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !325, !noalias !324
  store i8 3, ptr %i.b, align 8, !alias.scope !325, !noalias !324
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar), !noalias !324
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !324
  br label %.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !311
  br label %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i

bb.u:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !311
  unreachable

common.resume.i:                                  ; preds = %bb.aa, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.bc, %bb.aa ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_.exit.i.i.i, %bb.g, %bb.e
  %.sroa.0.0.copyload.pr.i = load i64, ptr %i.g, align 8, !noalias !309 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !309 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !310
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.pr.i, -1
  br i1 %.not.i, label %bb.v, label %bb.w

.sink.split.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i, %bb.q, %bb.p, %bb.o, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.thread19.i
  %.sroa.5.018.ph.i = phi ptr [ %.sroa.5.0.copyload22.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.thread19.i ], [ %.sroa.5.0.copyload12.i, %bb.p ], [ %.sroa.5.0.copyload12.i, %bb.o ], [ %.sroa.5.0.copyload12.i, %bb.q ], [ %.sroa.5.0.copyload12.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !310
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i
  %.sroa.5.018.i = phi ptr [ %.sroa.5.0.copyload.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i ], [ %.sroa.5.018.ph.i, %.sink.split.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.018.i) ]
  store ptr %.sroa.5.018.i, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, align 8, !noalias !309
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i
  %.sroa.6.0.i = phi ptr [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %bb.v ], [ %.sroa.5.0.copyload.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ -1, %bb.v ], [ %.sroa.0.0.copyload.pr.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i ] ; 2 uses
  %.val.i = load i64, ptr %i.i, align 8, !range !10, !alias.scope !309, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.val8.i = load ptr, ptr %i.at, align 8, !alias.scope !309 ; 4 uses
  %i.au = icmp eq i64 %.val.i, 2
  br i1 %i.au, label %bb.x, label %_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB4_23default_global_registryE0B6_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !326
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.av = ptrtoint ptr %.val8.i to i64            ; 2 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
    i64 3, label %bb.y
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
    i64 1, label %bb.z
  ], !prof !11

bb.y:                                             ; preds = %bb.x
  %i.ax = icmp ult ptr %.val8.i, inttoptr (i64 188978561024 to ptr)
  %i.ay = and i64 %i.av, 1095216660480
  %i.az = icmp ne i64 %i.ay, 1095216660480
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.assume(i1 %i.az)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ba = getelementptr i8, ptr %.val8.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !327, !noalias !326
  store i8 3, ptr %i.a, align 8, !alias.scope !327, !noalias !326
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i unwind label %bb.aa, !noalias !326

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !326
  br label %_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB4_23default_global_registryE0B6_.exit

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.i, ptr %i.i, align 8, !alias.scope !309
  store ptr %.sroa.6.0.i, ptr %i.at, align 8, !alias.scope !309
  br label %common.resume.i

_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB4_23default_global_registryE0B6_.exit: ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
  store i64 %.sroa.0.0.i, ptr %i.i, align 8, !alias.scope !309
  store ptr %.sroa.6.0.i, ptr %i.at, align 8, !alias.scope !309
  ret void

bb.ab:                                            ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB18_20init_global_registryNtB18_12DefaultSpawnE0E0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1a_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !alias.scope !341, !noalias !342 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !341, !noalias !342 ; 5 uses
  store i64 2, ptr %i.d, align 8, !alias.scope !341, !noalias !342
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not.i.i, label %bb.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i.i, i64 88, i1 false), !noalias !342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !344
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !noalias !345
  call void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b), !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !343
  %i.e = load i64, ptr %i.c, align 8, !range !10, !noalias !344, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !344 ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, align 8, !noalias !344
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0.i.i.i = phi ptr [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !344
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  %.val.i.i.i = load i64, ptr %.sroa.5.sroa.4.0.copyload.i.i, align 8, !range !10, !noalias !344, !noundef !5
  %i.h = getelementptr i8, ptr %.sroa.5.sroa.4.0.copyload.i.i, i64 8 ; 3 uses
  %.val8.i.i.i = load ptr, ptr %i.h, align 8, !noalias !344 ; 4 uses
  %i.i = icmp eq i64 %.val.i.i.i, 2
  br i1 %i.i, label %bb.e, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB16_20init_global_registryNtB16_12DefaultSpawnE0E0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB18_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !347
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  %i.j = ptrtoint ptr %.val8.i.i.i to i64         ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
    i64 1, label %bb.g
  ], !prof !11

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = icmp ult ptr %.val8.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  call void @llvm.assume(i1 %i.l)
  call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.val8.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !348, !noalias !347
  store i8 3, ptr %i.a, align 8, !alias.scope !348, !noalias !347
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !347

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !347
  br label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB16_20init_global_registryNtB16_12DefaultSpawnE0E0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB18_.exit

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %i.e, ptr %.sroa.5.sroa.4.0.copyload.i.i, align 8, !noalias !344
  store ptr %.sroa.6.0.i.i.i, ptr %i.h, align 8, !noalias !344
  resume { ptr, i32 } %i.q

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26, !noalias !349
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB16_20init_global_registryNtB16_12DefaultSpawnE0E0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB18_.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
  store i64 %i.e, ptr %.sroa.5.sroa.4.0.copyload.i.i, align 8, !noalias !344
  store ptr %.sroa.6.0.i.i.i, ptr %i.h, align 8, !noalias !344
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB18_23default_global_registryE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1a_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !352
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB13_23default_global_registryE0E0B15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskVyUMSjkkSy_10rayon_core8registryNtB2_13ThreadBuilder3run(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [384 x i8], align 128             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !363
  call void @_RNvXs6_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ThreadBuilderE4from(ptr noalias nofree noundef nonnull sret([384 x i8]) align 128 captures(none) dereferenceable(384) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !363
  store ptr %i.c, ptr %i.b, align 8, !noalias !363
  invoke void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNCNvMs8_B1v_B1t_11set_current0uEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !363

.body.i:                                          ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.af, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.cf, %bb.af ], [ %i.d, %bb.b ], [ %i.cn, %bb.ak ], [ %i.cn, %bb.al ], [ %i.ct, %bb.am ], [ %eh.lpad-body.ph.i, %bb.an ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEBF_(ptr noalias nofree noundef align 128 dereferenceable(384) %i.c) #21
          to label %bb.ap unwind label %bb.ao, !noalias !363

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !363
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !noalias !363, !nonnull !5, !noundef !5 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.h = load i64, ptr %i.g, align 128, !noalias !363, !noundef !5 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  %i.j = load i64, ptr %i.i, align 8, !noalias !363, !noundef !5 ; 2 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  %i.m = load ptr, ptr %i.l, align 8, !noalias !363, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RNvXs4_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef %i.o)
          to label %bb.g unwind label %bb.b, !noalias !363

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
          to label %bb.f unwind label %bb.b, !noalias !363

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.q = load ptr, ptr %i.p, align 16, !noalias !363, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !364, !noalias !363, !nonnull !5, !align !15, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5, !noalias !365, !nonnull !5
  invoke void %i.t(ptr noundef nonnull %i.q, i64 noundef %i.h) #27
          to label %_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_.exit.i unwind label %bb.i, !noalias !365, !inline_history !358

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.v)
          to label %bb.k unwind label %bb.j, !noalias !365 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !365
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = extractvalue { ptr, ptr } %i.w, 0        ; 7 uses
  %i.z = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.ab = load ptr, ptr %i.aa, align 32, !noalias !365, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !365, !nonnull !5, !align !15, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !5, !noalias !365, !nonnull !5
  invoke void %i.af(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_.exit.i unwind label %bb.n, !noalias !365

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXNtCskVyUMSjkkSy_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit.i.i unwind label %bb.u, !noalias !365

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCskVyUMSjkkSy_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %bb.an unwind label %bb.o, !noalias !365

bb.o:                                             ; preds = %bb.u, %bb.n
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !365
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit.i.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ai = load ptr, ptr %i.z, align 8, !invariant.load !5, !noalias !365 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void %i.ai(ptr noundef nonnull %i.y)
          to label %bb.q unwind label %bb.s, !noalias !365

bb.q:                                             ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !6, !invariant.load !5, !noalias !365 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !8, !invariant.load !5, !noalias !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef range(i64 1, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #22, !noalias !365
  br label %_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_.exit.i

bb.s:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !6, !invariant.load !5, !noalias !365 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.an, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !8, !invariant.load !5, !noalias !365
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef range(i64 1, -9223372036854775808) %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #22, !noalias !365
  br label %bb.an

bb.u:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core(ptr %i.y, ptr %i.z) #21
          to label %bb.an unwind label %bb.o, !noalias !365

_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_.exit.i: ; preds = %bb.r, %bb.q, %bb.l, %bb.h, %bb.g
  %i.av = load ptr, ptr %i.e, align 16, !noalias !363, !nonnull !5, !noundef !5 ; 2 uses
  %i.aw = load i64, ptr %i.g, align 128, !noalias !363, !noundef !5 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 512 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 520 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !363, !noundef !5 ; 2 uses
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.v, label %.invoke.i

bb.v:                                             ; preds = %_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_.exit.i
  %i.bb = load ptr, ptr %i.ax, align 8, !noalias !363, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %i.aw
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate:bb.a
  %.sroa.0.010 = phi ptr [ %i.e, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  %.sroa.7.09 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 48 ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.09, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 16
  %i.n = atomicrmw xchg ptr %i.m, i64 3 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = icmp eq ptr %i.k, %i.h
  br i1 %i.p, label %.loopexit, label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr noundef nonnull align 8 %i.j, i64 noundef %.sroa.7.09)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread11set_current(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNCNvMs8_B1v_B1t_11set_current0uEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread11yield_local(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = tail call { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr noundef nonnull align 8 %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noundef !5
  switch i64 %i.f, label %default.unreachable [
    i64 0, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread11
    i64 1, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
    i64 2, label %bb.c
  ]

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread11: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.j, 1
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread: ; preds = %bb.a, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %.merged.i8 = phi { ptr, ptr } [ %i.l, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit ], [ %i.c, %bb.a ]
  %.pre-phi7 = phi ptr [ %i.h, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit ], [ %i.d, %bb.a ]
  %i.m = extractvalue { ptr, ptr } %.merged.i8, 1
  tail call void %.pre-phi7(ptr noundef %i.m)
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread11, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread
  %.not10 = phi i1 [ true, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread11 ], [ false, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread ]
  ret i1 %.not10
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = load atomic i64, ptr %1 acquire, align 8
  %i.e = icmp eq i64 %i.d, 3
  br i1 %i.e, label %.loopexit20, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.m, %.noexc14, %bb.l, %bb.k, %.lr.ph, %bb.b, %bb.o, %bb.n, %bb.e, %._crit_edge
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCskVyUMSjkkSy_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit unwind label %bb.r

bb.b:                                             ; preds = %.lr.ph30, %bb.g
  %i.n = invoke { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr noundef nonnull align 8 %i.f)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.preheader.i
  %i.p = load i64, ptr %i.b, align 8, !range !14, !noundef !5
  switch i64 %i.p, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %.noexc10
  unreachable

bb.c:                                             ; preds = %.noexc10
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.r = load ptr, ptr %i.i, align 8, !noundef !5
  br label %.loopexit.i

bb.d:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc10, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.r, %bb.c ], [ undef, %.noexc10 ]
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.c ], [ null, %.noexc10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.t = insertvalue { ptr, ptr } %i.s, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit20:                                      ; preds = %bb.g, %bb.a, %bb.q
  ret void

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc
  %.merged.i = phi { ptr, ptr } [ %i.n, %.noexc ], [ %i.t, %.loopexit.i ] ; 2 uses
  %i.u = extractvalue { ptr, ptr } %.merged.i, 0  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.v = extractvalue { ptr, ptr } %.merged.i, 1
  invoke void %i.u(ptr noundef %i.v)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5
  %i.x = load i64, ptr %i.k, align 128, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 496
  %i.z = atomicrmw add ptr %i.y, i64 65536 seq_cst, align 8 ; 0 uses
  store i64 %i.x, ptr %i.c, align 8
  store i32 0, ptr %i.l, align 8
  store i64 -1, ptr %i.m, align 8
  %i.aa = load atomic i64, ptr %1 acquire, align 8
  %i.ab = icmp eq i64 %i.aa, 3
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.e, %bb.p
  %i.ac = load atomic i64, ptr %1 acquire, align 8
  %i.ad = icmp eq i64 %i.ac, 3
  br i1 %i.ad, label %.loopexit20, label %bb.b

.lr.ph:                                           ; preds = %bb.f, %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit
  %i.ae = invoke fastcc { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9find_work(ptr noundef nonnull align 128 %0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %.lr.ph
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  %.not9 = icmp eq ptr %i.af, null
  %i.ag = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %.not9, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 472 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.ai = load i32, ptr %i.l, align 8, !alias.scope !370, !noundef !5 ; 3 uses
  %i.aj = icmp ult i32 %i.ai, 32
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %i.ai, 32
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !7

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !370

.noexc13:                                         ; preds = %bb.k
  %i.al = add nuw nsw i32 %i.ai, 1
  store i32 %i.al, ptr %i.l, align 8, !alias.scope !370
  br label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit

bb.l:                                             ; preds = %bb.j
  %i.am = invoke noundef i64 @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep15announce_sleepy(ptr noundef nonnull align 8 %i.ah)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !370

.noexc14:                                         ; preds = %bb.l
  store i64 %i.am, ptr %i.m, align 8, !alias.scope !370
  store i32 33, ptr %i.l, align 8, !alias.scope !370
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !370

bb.m:                                             ; preds = %bb.j
  invoke void @_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep5sleepNCNvMs8_NtB5_8registryNtB10_12WorkerThread15wait_until_cold0EB5_(ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 128 %0)
          to label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit: ; preds = %bb.m, %.noexc14, %.noexc13
  %i.an = load atomic i64, ptr %1 acquire, align 8
  %i.ao = icmp eq i64 %i.an, 3
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 496
  %i.aq = atomicrmw add ptr %i.ap, i64 -65536 seq_cst, align 8
  %i.ar = and i64 %i.aq, 65535
  %..i12 = call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 2)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 472
  %i.at = trunc nuw nsw i64 %..i12 to i32
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.as, i32 noundef %i.at)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.au = extractvalue { ptr, ptr } %i.ae, 1
  invoke void %i.af(ptr noundef %i.au)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit
  %i.av = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 496
  %i.ax = atomicrmw add ptr %i.aw, i64 -65536 seq_cst, align 8
  %i.ay = and i64 %i.ax, 65535
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 2)
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 472
  %i.ba = trunc nuw nsw i64 %..i to i32
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.az, i32 noundef %i.ba)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit20

bb.r:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp60
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread16has_injected_job(ptr noundef nonnull align 128 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef zeroext i1 @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 16, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = tail call noundef zeroext i1 @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB11_(ptr noundef nonnull align 128 %i.e)
  %i.g = xor i1 %i.f, true
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9find_work(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [1 x i8], align 1                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = tail call { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr noundef nonnull align 8 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  %i.j = load i64, ptr %i.e, align 8, !range !14, !noundef !5
  switch i64 %i.j, label %.unreachabledefault [
    i64 0, label %.loopexit.i
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noundef !5
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

.loopexit.i:                                      ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.o = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %bb.a, %.loopexit.i
  %.merged.i = phi { ptr, ptr } [ %i.g, %bb.a ], [ %i.p, %.loopexit.i ] ; 2 uses
  %i.q = extractvalue { ptr, ptr } %.merged.i, 0
  %.not.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i1, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_works_0EBM_.exit

bb.e:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.r = getelementptr i8, ptr %0, i64 272        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16, !nonnull !5, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 520
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 4 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 512
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %i.x, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1
  %i.ac = load i64, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = xor i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = shl i64 %i.ae, 25
  %i.ag = xor i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 27
  %i.ai = xor i64 %i.ah, %i.ag                    ; 2 uses
  store i64 %i.ai, ptr %i.y, align 8
  %i.aj = mul i64 %i.ai, 2685821657736338717
  %i.ak = urem i64 %i.aj, %i.u                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  store i64 %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  store i64 %i.ak, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8
  store ptr %0, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.ab, ptr %i.b, align 16
  store i64 %i.u, ptr %.sroa.415.0..sroa_idx.i.i.i, align 16
  store ptr %i.d, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8
  %i.al = call { ptr, ptr } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldjuINtNtB15_12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB3t_8registryNtB4d_12WorkerThread5steal0NCINvNvB1x_8find_map5checkjB3p_NCB47_s_0E0E0B2P_EB3t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq ptr %i.am, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i.i.i, label %bb.g, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ao, label %bb.f, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19: ; preds = %bb.g
  %.val.i.pre = load ptr, ptr %i.r, align 16
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit: ; preds = %bb.f
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
!158 = distinct !{!158, !157, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_: argument 0"}
!159 = distinct !{!159, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_"}
!160 = distinct !{!160, !159, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_: argument 0"}
!161 = distinct !{!161, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_"}
!162 = distinct !{!162, !161, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_: argument 0"}
!163 = distinct !{!163, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_"}
!164 = distinct !{!164, !163, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_: argument 0"}
!165 = distinct !{!165, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_"}
!166 = distinct !{!166, !165, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_: argument 0"}
!167 = distinct !{!167, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_"}
!168 = distinct !{!168, !167, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_: argument 0"}
!169 = distinct !{!169, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_"}
!170 = distinct !{!170, !169, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_: argument 0"}
!171 = distinct !{!171, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!172 = distinct !{!172, !171, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!173 = distinct !{!173, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_"}
!174 = distinct !{!174, !173, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_: argument 0"}
!175 = distinct !{!175, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!176 = distinct !{!176, !175, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!177 = !{!146}
!178 = !{!148}
!179 = !{!150}
!180 = !{!150, !148, !146}
!181 = !{!152}
!182 = !{!154}
!183 = !{!156}
!184 = !{!156, !154, !152}
!185 = !{!158}
!186 = !{!160}
!187 = !{!162}
!188 = !{!162, !160, !158}
!189 = !{!164}
!190 = !{!166}
!191 = !{!168}
!192 = !{!168, !166, !164}
!193 = !{!170}
!194 = !{!172}
!195 = !{!172, !170}
!196 = !{!174}
!197 = !{!176}
!198 = !{!176, !174}
!199 = distinct !{!199, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core"}
!200 = distinct !{!200, !199, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core: argument 0"}
!201 = distinct !{!201, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_"}
!202 = distinct !{!202, !201, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_: argument 0"}
!203 = distinct !{!203, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_"}
!204 = distinct !{!204, !203, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_: argument 0"}
!205 = distinct !{!205, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_"}
!206 = distinct !{!206, !205, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_: argument 0"}
!207 = distinct !{!207, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_"}
!208 = distinct !{!208, !207, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_: argument 0"}
!209 = distinct !{!209, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_"}
!210 = distinct !{!210, !209, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_: argument 0"}
!211 = distinct !{!211, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_"}
!212 = distinct !{!212, !211, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_: argument 0"}
!213 = distinct !{!213, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_"}
!214 = distinct !{!214, !213, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_: argument 0"}
!215 = distinct !{!215, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_"}
!216 = distinct !{!216, !215, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_: argument 0"}
!217 = distinct !{!217, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_"}
!218 = distinct !{!218, !217, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_: argument 0"}
!219 = distinct !{!219, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_"}
!220 = distinct !{!220, !219, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_: argument 0"}
!221 = distinct !{!221, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_"}
!222 = distinct !{!222, !221, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_: argument 0"}
!223 = distinct !{!223, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_"}
!224 = distinct !{!224, !223, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_: argument 0"}
!225 = distinct !{!225, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_"}
!226 = distinct !{!226, !225, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_: argument 0"}
!227 = distinct !{!227, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!228 = distinct !{!228, !227, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!229 = distinct !{!229, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_"}
!230 = distinct !{!230, !229, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_: argument 0"}
!231 = distinct !{!231, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!232 = distinct !{!232, !231, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!233 = !{!200}
!234 = !{!202}
!235 = !{!204}
!236 = !{!206}
!237 = !{!206, !204, !202}
!238 = !{!208}
!239 = !{!210}
!240 = !{!212}
!241 = !{!212, !210, !208}
!242 = !{!214}
!243 = !{!216}
!244 = !{!218}
!245 = !{!218, !216, !214}
!246 = !{!220}
!247 = !{!222}
!248 = !{!224}
!249 = !{!224, !222, !220}
!250 = !{!226}
!251 = !{!228}
!252 = !{!228, !226}
!253 = !{!230}
!254 = !{!232}
!255 = !{!232, !230}
!256 = distinct !{!256, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core"}
!257 = distinct !{!257, !256, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core: argument 0"}
!258 = !{!257}
!259 = distinct !{!259, i1 true, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB11_20init_global_registryNtB11_12DefaultSpawnE0E0EB13_"}
!260 = distinct !{!260, !259, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB11_20init_global_registryNtB11_12DefaultSpawnE0E0EB13_: argument 0"}
!261 = distinct !{!261, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_"}
!262 = distinct !{!262, !261, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_: argument 0"}
!263 = distinct !{!263, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_"}
!264 = distinct !{!264, !263, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_: argument 0"}
!265 = !{!260}
!266 = !{!262}
!267 = !{!264}
!268 = distinct !{!268, i1 true, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_"}
!269 = distinct !{!269, !268, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_: argument 0"}
!270 = distinct !{!270, i1 true, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry20init_global_registryNtB4_12DefaultSpawnE0B6_"}
!271 = distinct !{!271, !270, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry20init_global_registryNtB4_12DefaultSpawnE0B6_: argument 1"}
!272 = distinct !{!272, !270, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry20init_global_registryNtB4_12DefaultSpawnE0B6_: argument 0"}
!273 = distinct !{!273, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_"}
!274 = distinct !{!274, !273, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_: argument 0"}
!275 = distinct !{!275, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core"}
!276 = distinct !{!276, !275, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core: argument 0"}
!277 = !{!272, !271, !269}
!278 = !{!269}
!279 = !{!272}
!280 = !{!271, !269}
!281 = !{!274, !269}
!282 = !{!276}
!283 = distinct !{!283, i1 true, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB4_23default_global_registryE0B6_"}
!284 = distinct !{!284, !283, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB4_23default_global_registryE0B6_: argument 0"}
!285 = distinct !{!285, i1 true, !"_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_"}
!286 = distinct !{!286, !285, !"_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_: argument 0"}
!287 = distinct !{!287, i1 true, !"_RNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registry"}
!288 = distinct !{!288, !287, !"_RNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registry: argument 0"}
!289 = distinct !{!289, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_"}
!290 = distinct !{!290, !289, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_: argument 0"}
!291 = distinct !{!291, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_"}
!292 = distinct !{!292, !291, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_: argument 0"}
!293 = distinct !{!293, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core"}
!294 = distinct !{!294, !293, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core: argument 0"}
!295 = distinct !{!295, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_"}
!296 = distinct !{!296, !295, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_: argument 0"}
!297 = distinct !{!297, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_"}
!298 = distinct !{!298, !297, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_: argument 0"}
!299 = distinct !{!299, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!300 = distinct !{!300, !299, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!301 = distinct !{!301, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_"}
!302 = distinct !{!302, !301, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_: argument 0"}
!303 = distinct !{!303, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core"}
!304 = distinct !{!304, !303, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core: argument 0"}
!305 = distinct !{!305, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_"}
!306 = distinct !{!306, !305, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_: argument 0"}
!307 = distinct !{!307, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core"}
!308 = distinct !{!308, !307, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core: argument 0"}
!309 = !{!284}
!310 = !{!286, !284}
!311 = !{!288, !286, !284}
!312 = !{!290}
!313 = !{!292}
!314 = !{!292, !290}
!315 = !{!292, !290, !288, !286, !284}
!316 = !{!294}
!317 = !{!296}
!318 = !{!298}
!319 = !{!300}
!320 = !{!300, !298, !296}
!321 = !{!300, !298, !296, !288, !286, !284}
!322 = !{!302}
!323 = !{!302, !296}
!324 = !{!302, !296, !288, !286, !284}
!325 = !{!304}
!326 = !{!306, !284}
!327 = !{!308}
!328 = distinct !{!328, i1 true, !"_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB16_20init_global_registryNtB16_12DefaultSpawnE0E0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB18_"}
!329 = distinct !{!329, !328, !"_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB16_20init_global_registryNtB16_12DefaultSpawnE0E0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB18_: argument 0"}
!330 = distinct !{!330, i1 true, !"_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0B15_"}
!331 = distinct !{!331, !330, !"_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0B15_: argument 0"}
!332 = distinct !{!332, i1 true, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_"}
!333 = distinct !{!333, !332, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_: argument 0"}
!334 = distinct !{!334, i1 true, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry20init_global_registryNtB4_12DefaultSpawnE0B6_"}
!335 = distinct !{!335, !334, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry20init_global_registryNtB4_12DefaultSpawnE0B6_: argument 1"}
!336 = distinct !{!336, !334, !"_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry20init_global_registryNtB4_12DefaultSpawnE0B6_: argument 0"}
!337 = distinct !{!337, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_"}
!338 = distinct !{!338, !337, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_: argument 0"}
!339 = distinct !{!339, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core"}
!340 = distinct !{!340, !339, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core: argument 0"}
!341 = !{!329}
!342 = !{!331}
!343 = !{!336, !335, !333, !331, !329}
!344 = !{!333, !331, !329}
!345 = !{!336, !331, !329}
!346 = !{!335, !333, !331, !329}
!347 = !{!338, !333, !331, !329}
!348 = !{!340}
!349 = !{!331, !329}
!350 = distinct !{!350, i1 true, !"_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB16_23default_global_registryE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB18_"}
!351 = distinct !{!351, !350, !"_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB16_23default_global_registryE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB18_: argument 0"}
!352 = !{!351}
!353 = distinct !{!353, i1 true, !"_RNvNtCskVyUMSjkkSy_10rayon_core8registry9main_loop"}
!354 = distinct !{!354, !353, !"_RNvNtCskVyUMSjkkSy_10rayon_core8registry9main_loop: argument 0"}
!355 = distinct !{!355, i1 true, !"_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_"}
!356 = distinct !{!356, !355, !"_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_: argument 0"}
!357 = distinct !{!357, !355, !"_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loop0EB8_: argument 1"}
!358 = distinct !{null, null, null}
!359 = distinct !{!359, i1 true, !"_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loops_0EB8_"}
!360 = distinct !{!360, !359, !"_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loops_0EB8_: argument 0"}
!361 = distinct !{!361, !359, !"_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvB6_9main_loops_0EB8_: argument 1"}
!362 = distinct !{null, null, null}
!363 = !{!354}
!364 = !{!356}
!365 = !{!356, !357, !354}
!366 = !{!360}
!367 = !{!360, !361, !354}
!368 = distinct !{!368, i1 true, !"_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_"}
!369 = distinct !{!369, !368, !"_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_: argument 0"}
!370 = !{!369}
!371 = distinct !{!371, i1 true, !"_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_"}
!372 = distinct !{!372, !371, !"_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_: argument 0"}
!373 = distinct !{!373, i1 true, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB11_23default_global_registryE0EB13_"}
!374 = distinct !{!374, !373, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB11_23default_global_registryE0EB13_: argument 0"}
!375 = distinct !{!375, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_"}
!376 = distinct !{!376, !375, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_: argument 0"}
!377 = distinct !{!377, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core"}
!378 = distinct !{!378, !377, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskVyUMSjkkSy_10rayon_core: argument 0"}
!379 = !{!372}
!380 = !{!374, !372}
!381 = !{!376}
!382 = !{!378}
!383 = distinct !{!383, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core"}
!384 = distinct !{!384, !383, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core: argument 0"}
!385 = distinct !{!385, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskVyUMSjkkSy_10rayon_core"}
!386 = distinct !{!386, !385, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskVyUMSjkkSy_10rayon_core: argument 0"}
!387 = distinct !{!387, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskVyUMSjkkSy_10rayon_core"}
!388 = distinct !{!388, !387, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskVyUMSjkkSy_10rayon_core: argument 0"}
!389 = distinct !{!389, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core"}
!390 = distinct !{!390, !389, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core: argument 0"}
!391 = distinct !{!391, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskVyUMSjkkSy_10rayon_core"}
!392 = distinct !{!392, !391, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskVyUMSjkkSy_10rayon_core: argument 0"}
!393 = distinct !{!393, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECskVyUMSjkkSy_10rayon_core"}
!394 = distinct !{!394, !393, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECskVyUMSjkkSy_10rayon_core: argument 0"}
!395 = distinct !{!395, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core"}
!396 = distinct !{!396, !395, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core: argument 0"}
!397 = distinct !{!397, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskVyUMSjkkSy_10rayon_core"}
!398 = distinct !{!398, !397, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskVyUMSjkkSy_10rayon_core: argument 0"}
!399 = distinct !{!399, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskVyUMSjkkSy_10rayon_core"}
!400 = distinct !{!400, !399, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskVyUMSjkkSy_10rayon_core: argument 0"}
!401 = distinct !{!401, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core"}
!402 = distinct !{!402, !401, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core: argument 0"}
!403 = distinct !{!403, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core"}
!404 = distinct !{!404, !403, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core: argument 0"}
!405 = distinct !{!405, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core"}
!406 = distinct !{!406, !405, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core: argument 0"}
!407 = distinct !{!407, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core"}
!408 = distinct !{!408, !407, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core: argument 0"}
!409 = distinct !{!409, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core"}
!410 = distinct !{!410, !409, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core: argument 0"}
!411 = !{i64 0, i64 -9223372036854775807}
!412 = !{!384}
!413 = !{!386}
!414 = !{!388}
!415 = !{!390}
!416 = !{!390, !388, !386, !384, !394, !392}
!417 = !{!390, !388, !386, !384}
!418 = !{!396}
!419 = !{!398}
!420 = !{!400}
!421 = !{!402}
!422 = !{!402, !400, !398, !396, !394, !392}
!423 = !{!402, !400, !398, !396}
!424 = !{!404}
!425 = !{!406}
!426 = !{!406, !404, !394, !392}
!427 = !{!406, !404}
!428 = !{!408}
!429 = !{!410}
!430 = !{!410, !408, !394, !392}
!431 = !{!410, !408}
!432 = distinct !{!432, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core"}
!433 = distinct !{!433, !432, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core: argument 0"}
!434 = !{!433}
!435 = distinct !{!435, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_"}
!436 = distinct !{!436, !435, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_: argument 0"}
!437 = distinct !{!437, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_"}
!438 = distinct !{!438, !437, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_: argument 0"}
!439 = distinct !{!439, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_"}
!440 = distinct !{!440, !439, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_: argument 0"}
!441 = distinct !{!441, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core"}
!442 = distinct !{!442, !441, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core: argument 0"}
!443 = distinct !{!443, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_"}
!444 = distinct !{!444, !443, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_: argument 0"}
!445 = distinct !{!445, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_"}
!446 = distinct !{!446, !445, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB30_: argument 0"}
!447 = distinct !{!447, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_"}
!448 = distinct !{!448, !447, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2x_: argument 0"}
!449 = distinct !{!449, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_"}
!450 = distinct !{!450, !449, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_: argument 0"}
!451 = distinct !{!451, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!452 = distinct !{!452, !451, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!453 = !{!440, !438, !436}
!454 = !{!442}
!455 = !{!444}
!456 = !{!446}
!457 = !{!448}
!458 = !{!448, !446, !444}
!459 = !{!450}
!460 = !{!452}
!461 = !{!452, !450}
end_hunk_3
