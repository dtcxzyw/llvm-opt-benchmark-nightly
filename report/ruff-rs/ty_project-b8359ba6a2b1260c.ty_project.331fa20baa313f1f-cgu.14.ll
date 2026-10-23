Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.14?download=true
inline.NumInlined: 1518
inline.NumDeleted: 840
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs0_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_20ExcludeFilterBuilder5build:bb.a
bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.i, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.i, %bb.f ], [ %i.p, %bb.m ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project4glob7exclude10IgnoreGlobEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #47
          to label %bb.c unwind label %bb.o, !noalias !1827

bb.g:                                             ; preds = %bb.e
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1828
  %i.j = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 54273) 64, i64 noundef range(i64 4, 9) 8) #49, !noalias !1828 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %bb.k, !prof !7

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc.i unwind label %bb.i, !noalias !1827

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB1z_EECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #47
          to label %.body.i unwind label %bb.j, !noalias !1827

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !1827
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !1827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1826
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1829
  %i.n = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 54273) 24, i64 noundef range(i64 4, 9) 8) #49, !noalias !1829 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc24.i unwind label %bb.m, !noalias !1827

.noexc24.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool4PoolINtNtBG_3vec3VecjEEEECs4o81Y09oZk1_10ty_project(ptr %i.j) #47
          to label %.body.i unwind label %bb.n, !noalias !1827

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !1827
  unreachable

bb.o:                                             ; preds = %.body.i, %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !1827
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.p ], [ %.pn.i, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4o81Y09oZk1_10ty_project4glob7exclude20ExcludeFilterBuilderEBH_(ptr noalias noundef align 8 dereferenceable(48) %1) #47
          to label %bb.u unwind label %bb.t

_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit: ; preds = %bb.k
  store i64 1, ptr %i.n, align 8, !noalias !1827
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !1827
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1827
  %.sroa.06.i.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !1826 ; 2 uses
  %.sroa.06.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.06.i.sroa.4.0.copyload = load i64, ptr %.sroa.06.i.sroa.4.0..sroa_idx, align 8, !noalias !1826 ; 2 uses
  %.sroa.06.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.sroa.5.0..sroa_idx, i64 16, i1 false)
  %.sroa.06.i.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.i.sroa.5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.06.i.sroa.7.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.06.i.sroa.7.32.copyload = load i64, ptr %.sroa.06.i.sroa.7.32..sroa_idx, align 8, !noalias !1826 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1826
  %i.t = icmp eq i64 %.sroa.06.i.sroa.0.0.copyload, -1
  br i1 %i.t, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit.thread, %_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit
  %.sroa.7.036 = phi i64 [ %i.e, %_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit.thread ], [ %.sroa.06.i.sroa.4.0.copyload, %_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit ]
  %.sroa.11.035 = phi i64 [ %.sroa.513.0.copyload.i, %_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit.thread ], [ %.sroa.06.i.sroa.7.32.copyload, %_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit ]
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.i.sroa.5, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.036, ptr %i.u, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.035, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.r:                                             ; preds = %_RNvMs7_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_16GitignoreBuilder5build.exit
  %i.v = ptrtoint ptr %i.n to i64
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.i.sroa.5, i64 32, i1 false)
  store i64 %.sroa.06.i.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.06.i.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.06.i.sroa.7.32.copyload, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.v, ptr %.sroa.67.0..sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4o81Y09oZk1_10ty_project4glob7exclude20ExcludeFilterBuilderEBH_(ptr noalias noundef align 8 dereferenceable(48) %1)
  ret void

bb.t:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.u:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs4o81Y09oZk1_10ty_project8metadata8settingsNtB5_11SrcSettings7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([960 x i8]) align 16 captures(none) dereferenceable(960) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtCs4o81Y09oZk1_10ty_project4globNtB4_20IncludeExcludeFilterNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([944 x i8]) align 16 captures(none) dereferenceable(944) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i8 1, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 945
  store i8 0, ptr %i.b, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNvMs1_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB5_9Gitignore7matched(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 5 uses
  %i.f = icmp ult i64 %i.e, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB19_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB2b_E3get0jECs4o81Y09oZk1_10ty_project(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @72), !noalias !1832 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8, !noalias !1832 ; 2 uses
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E8get_slowCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.k, i64 noundef %i.l, i64 noundef %i.n)
  br label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit

bb.d:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.m release, align 8, !noalias !1832
  %i.p = inttoptr i64 %i.l to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %i.q, align 8
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.s, align 8
  br label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit

_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.u, align 8
  store i64 -1, ptr %i.a, align 8
  invoke void @_RNvMs7_Cs3AS159VDs7t_7globsetNtB5_9Candidate8from_cow(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

.sink.split:                                      ; preds = %.split24.us, %bb.n
  %.sroa.0.0.ph = phi i8 [ %.20, %bb.n ], [ 0, %.split24.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB1w_EECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(32) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i8 %.sroa.0.0

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.ad, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB1w_EECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(32) %i.b) #47
          to label %bb.p unwind label %bb.o

bb.g:                                             ; preds = %.split28, %.split24.us, %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load i64, ptr %i.b, align 8, !range !22, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.x, align 8, !nonnull !4
  %.sroa.01.0 = select i1 %i.y, ptr %i.ab, ptr %i.ac
  invoke void @_RNvMs3_Cs3AS159VDs7t_7globsetNtB5_7GlobSet22matches_candidate_into(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.01.0)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.split26.us, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs3AS159VDs7t_7globset9CandidateECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(72) %i.c) #47
          to label %bb.f unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.x, align 8, !nonnull !4
  %.sroa.02.0 = select i1 %i.y, ptr %i.ag, ptr %i.ah ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4 ; 2 uses
  %i.ap = icmp eq i64 %i.al, 0                    ; 2 uses
  br i1 %3, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.j
  br i1 %i.ap, label %.split24.us, label %.lr.ph

.split.us:                                        ; preds = %bb.j
  br i1 %i.ap, label %.split24.us, label %bb.k

bb.k:                                             ; preds = %.split.us
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.e
  br i1 %i.as, label %.split28, label %.split26.us

.split:                                           ; preds = %bb.l
  %i.at = icmp eq ptr %i.aj, %i.au
  br i1 %i.at, label %.split24.us, label %.lr.ph

.lr.ph:                                           ; preds = %.split.preheader, %.split
  %.sroa.5.039 = phi ptr [ %i.au, %.split ], [ %i.am, %.split.preheader ]
  %i.au = getelementptr inbounds i8, ptr %.sroa.5.039, i64 -8 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !4 ; 4 uses
  %i.aw = icmp ult i64 %i.av, %i.e
  br i1 %i.aw, label %bb.l, label %.split26.us

.split24.us:                                      ; preds = %.split, %.split.preheader, %.split.us
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs3AS159VDs7t_7globset9CandidateECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(72) %i.c)
          to label %.sink.split unwind label %bb.g

bb.l:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  %i.az = load i8, ptr %i.ay, align 1, !range !11, !noundef !4
  %4 = trunc nuw i8 %i.az to i1
  br i1 %4, label %.split, label %.split28

.split26.us:                                      ; preds = %.lr.ph, %bb.k
  %.us-phi = phi i64 [ %i.ar, %bb.k ], [ %i.av, %.lr.ph ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #46
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %.split26.us
  unreachable

.split28:                                         ; preds = %bb.l, %bb.k
  %i.ba = phi i64 [ %i.ar, %bb.k ], [ %i.av, %bb.l ]
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i8, ptr %i.bc, align 8, !range !11, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs3AS159VDs7t_7globset9CandidateECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(72) %i.c)
          to label %bb.n unwind label %bb.g

bb.n:                                             ; preds = %.split28
  %.20 = add nuw nsw i8 %i.bd, 1
  br label %.sink.split

bb.o:                                             ; preds = %bb.i, %bb.f
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.p:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4o81Y09oZk1_10ty_project8metadata8settingsNtB5_12FileSettings5rules(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  %i.d = tail call { i32, i32 } %i.c(ptr noundef nonnull %1) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %i.g = tail call noundef nonnull align 16 ptr @_RINvMs5_NvCs4o81Y09oZk1_10ty_project1__NtB8_7Project8settingsDNtNtB8_2db2DbEL_EB8_(i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %2)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1088
  %i.i = load ptr, ptr %i.h, align 16, !nonnull !4, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4o81Y09oZk1_10ty_project8metadata8settingsNtB5_12FileSettings8analysis(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  %i.e = tail call { i32, i32 } %i.d(ptr noundef nonnull %1) ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = extractvalue { i32, i32 } %i.e, 1
  %i.h = tail call noundef nonnull align 16 ptr @_RINvMs5_NvCs4o81Y09oZk1_10ty_project1__NtB8_7Project8settingsDNtNtB8_2db2DbEL_EB8_(i32 noundef %i.f, i32 noundef %i.g, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %2)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 984
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs45bxiIjzMqg_5salsa5inputINtB5_5ValueNtCs4o81Y09oZk1_10ty_project7ProjectE12memory_usageBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { i64, i64 } @_RNvXs_NvCs4o81Y09oZk1_10ty_project1__NtB6_7ProjectNtNtCs45bxiIjzMqg_5salsa5input13Configuration9heap_size(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %2, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMs5_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB5_18MemoTableWithTypes12memory_usage(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @76, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 7, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 112, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 312, ptr %i.k, align 8
  store i64 %i.c, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueE12insert_entryCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECs4o81Y09oZk1_10ty_project()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  store ptr %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvMsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtB18_4LeafE16push_with_handleCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  store ptr %i.v, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3L_11VacantEntryB1C_B1X_E12insert_entry0ECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(32) %2) #47
          to label %bb.h unwind label %bb.f

.critedge9:                                       ; preds = %bb.h
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #47
          to label %.critedge9 unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB9_7set_val9SetValZSTE12insert_entryCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_0
