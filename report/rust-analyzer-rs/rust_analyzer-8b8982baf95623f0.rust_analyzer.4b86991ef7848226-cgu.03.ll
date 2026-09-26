Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.03?download=true
inline.NumInlined: 5950
inline.NumDeleted: 2719
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNCINvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli14analysis_stats9full_nameNCNvMB4_NtNtB6_5flags13AnalysisStats17run_body_lowerings0_0Es_0B8_:bb.a

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #45
          to label %.body unwind label %bb.e, !noalias !12392

bb.c:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.d, label %bb.f, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #48
          to label %.noexc.i unwind label %bb.b, !noalias !12392

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !12392
  unreachable

.body:                                            ; preds = %bb.b
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val1) #45
          to label %bb.k unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !12393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = ptrtoint ptr %.val to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.val, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.p)
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f, %bb.i
  ret void

bb.j:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli14analysis_stats9full_nameNCNvMB4_NtNtB6_5flags13AnalysisStats17run_body_lowerings2_0Es_0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12397
  store i64 0, ptr %i.e, align 8, !noalias !12397
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !12397
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12397
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.i, align 8, !noalias !12397
  store ptr %i.e, ptr %i.d, align 8, !noalias !12397
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @59, ptr %i.j, align 8, !noalias !12397
  %i.k = invoke noundef zeroext i1 @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.b, !noalias !12398

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #45
          to label %.body unwind label %bb.e, !noalias !12398

bb.c:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.d, label %bb.f, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #48
          to label %.noexc.i unwind label %bb.b, !noalias !12398

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !12398
  unreachable

.body:                                            ; preds = %bb.b
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val1) #45
          to label %bb.k unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !12399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = ptrtoint ptr %.val to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.val, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.p)
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f, %bb.i
  ret void

bb.j:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtCs8Xq8PKFYOms_3hir4TypeTNtB1g_3AdtB1e_EuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1g_11term_search4expr4ExprEENCINvNtB3a_7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNtB6_6filter15filter_try_foldB1D_uB1U_NCB3H_s_0NCIB2_B1D_TB1e_B2z_EuB1U_NCB3H_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB5T_B2z_QNCB3H_s1_0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [16 x i8], align 4                ; 8 uses
  %i.l = alloca [8 x i8], align 4                 ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.418.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [56 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 11 uses
  %i.z = alloca [16 x i8], align 4                ; 8 uses
  %i.aa = alloca [8 x i8], align 8                ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 15 uses
  %.sroa.0.i.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.15.i.i = alloca [16 x i8], align 8       ; 5 uses
  %.sroa.02.0.copyload = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.09.0.copyload.i.i = load i32, ptr %.sroa.02.0.copyload, align 8, !noalias !12428 ; 2 uses
  %i.ac = icmp ne i32 %.sroa.09.0.copyload.i.i, 27
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i32 %.sroa.09.0.copyload.i.i, 7
  br i1 %i.ad, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !12429
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTNtCs8Xq8PKFYOms_3hir3AdtNtB18_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB18_11term_search4expr4ExprEENCINvNtB2X_7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs_0NCINvNtB6_10filter_map19filter_map_try_foldB15_TB1u_B2m_EuB1H_NCB3u_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB5t_B2m_QNCB3u_s1_0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a
  %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 24
  %.sroa.811.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12428 ; 7 uses
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 20
  %.sroa.811.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !12428 ; 7 uses
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !12428
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12431)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !12431, !noalias !12432, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %.val.i1 = load ptr, ptr %i.af, align 8, !noalias !12433, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val2.i = load ptr, ptr %i.ag, align 8, !noalias !12433, !nonnull !4, !align !5, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !4, !noalias !12433, !nonnull !4
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.val.i1) #50, !noalias !12433, !inline_history !12411
  br i1 %i.aj, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit
  store i64 -1, ptr %0, align 8, !alias.scope !12434, !noalias !12435
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTNtCs8Xq8PKFYOms_3hir3AdtNtB18_4TypeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB18_11term_search4expr4ExprEENCINvNtB2X_7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs_0NCINvNtB6_10filter_map19filter_map_try_foldB15_TB1u_B2m_EuB1H_NCB3u_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB5t_B2m_QNCB3u_s1_0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12437)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !12438, !noalias !12439, !nonnull !4, !align !5, !noundef !4 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12441
  store ptr %.sroa.02.0.copyload, ptr %i.ab, align 8, !noalias !12442
  %.sroa.8.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.5.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx, i64 16, i1 false)
  switch i8 %.sroa.811.sroa.0.0.copyload.i.i, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i
    i8 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12441
  store i32 %.sroa.811.sroa.8.0.copyload.i.i, ptr %i.aa, align 8, !noalias !12441
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store i32 %.sroa.811.sroa.9.0.copyload.i.i, ptr %i.am, align 4, !noalias !12441
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !12440, !noalias !12443, !nonnull !4, !align !5, !noundef !4 ; 8 uses
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_Cs8Xq8PKFYOms_3hirNtB5_6Struct11is_unstable(i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  br i1 %i.ao, label %bb.au, label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12441
  store i32 %.sroa.811.sroa.8.0.copyload.i.i, ptr %i.l, align 4, !noalias !12441
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %.sroa.811.sroa.9.0.copyload.i.i, ptr %i.ap, align 4, !noalias !12441
  %i.aq = load ptr, ptr %i.al, align 8, !alias.scope !12440, !noalias !12443, !nonnull !4, !align !5, !noundef !4 ; 7 uses
  %i.ar = tail call noundef zeroext i1 @_RNvMse_Cs8Xq8PKFYOms_3hirNtB5_4Enum11is_unstable(i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  br i1 %i.ar, label %bb.bk, label %bb.av

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !range !13, !alias.scope !12440, !noalias !12443, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !12440, !noalias !12443, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12441
  call void @_RNvXsb_Cs8Xq8PKFYOms_3hirNtB5_6StructNtB5_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  %i.aw = call noundef zeroext i1 @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility15is_visible_from(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @6, i32 noundef %i.at, i32 noundef %i.av), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12441
  br i1 %i.aw, label %bb.h, label %bb.au

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12441
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %i.ax, align 4, !noalias !12441
  %.sroa.7.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %.sroa.811.sroa.8.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx3.i.i.i, align 4, !noalias !12441
  %.sroa.9.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %.sroa.811.sroa.9.0.copyload.i.i, ptr %.sroa.9.0..sroa_idx8.i.i.i, align 4, !noalias !12441
  store i32 1, ptr %i.z, align 4, !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !12441
  call void @_RNvMs12_Cs8Xq8PKFYOms_3hirNtB6_10GenericDef15lifetime_params(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.z, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !12441, !noundef !4 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 576460752303423488
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.j, !noalias !12441

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i.i.i unwind label %bb.k, !noalias !12441

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !12441
  unreachable

common.resume.i.i.i:                              ; preds = %bb.bh, %bb.bb, %bb.ay, %bb.at, %bb.as, %bb.w, %bb.m, %bb.j
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.dt, %bb.ay ], [ %i.bc, %bb.j ], [ %i.be, %bb.m ], [ %.pn69.i.i.i, %bb.w ], [ %lpad.thr_comm.i.i.i, %bb.at ], [ %i.dv, %bb.bb ], [ %i.ee, %bb.bh ], [ %.pn69.i.i.i, %bb.as ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12441
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit75.i.i.i unwind label %bb.m, !noalias !12441

bb.m:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !12441

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !12441
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit75.i.i.i: ; preds = %bb.l
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12441
  %i.bg = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type16contains_unknown(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab), !noalias !12441
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.ab, %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit75.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12441
  br label %bb.au

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit75.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !12440, !noalias !12443, !nonnull !4, !align !5, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load i8, ptr %i.bj, align 8, !range !15, !noalias !12441, !noundef !4
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12441
  %i.bm = load i32, ptr %i.aa, align 8, !range !13, !noalias !12441, !noundef !4
  %i.bn = load i32, ptr %i.am, align 4, !noalias !12441, !noundef !4
  call void @_RNvMsa_Cs8Xq8PKFYOms_3hirNtB5_6Struct6fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, i32 noundef %i.bm, i32 noundef %i.bn, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12441
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !12441, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noalias !12441, !noundef !4
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.br
  store ptr %i.bp, ptr %i.w, align 8, !noalias !12441
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !12441
  %i.bu = invoke fastcc noundef zeroext i1 @_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCINvNtNtBS_11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_00ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 %i.an, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.as)
          to label %bb.s unwind label %bb.at, !noalias !12443

bb.r:                                             ; preds = %bb.p
  %i.bv = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type18contains_reference(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  br i1 %i.bv, label %bb.o, label %bb.q

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12441
  br i1 %i.bu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !12441
  call fastcc void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab), !noalias !12441
  invoke void @_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator7collectINtNtCsbSS6DM8SDEO_5alloc3vec3VecB52_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.u)
          to label %bb.v unwind label %bb.at, !noalias !12441

bb.u:                                             ; preds = %bb.s
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir5FieldEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x), !noalias !12441
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12441
  %i.bw = load ptr, ptr %i.bo, align 8, !noalias !12441, !nonnull !4, !noundef !4 ; 3 uses
  %i.bx = load i64, ptr %i.x, align 8, !range !17, !noalias !12441, !noundef !4
  %i.by = load i64, ptr %i.bq, align 8, !noalias !12441, !noundef !4 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 576460752303423488
  call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !12440, !noalias !12443, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  store ptr %i.bw, ptr %i.r, align 8, !noalias !12441
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.bx, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ca, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.cc, ptr %i.cd, align 8, !noalias !12441
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.an, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !12441
  invoke void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNCINvNtNtB1W_11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0s_0EINtB1b_3VecNtNtB2u_4expr4ExprEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B4u_IB4s_IB3Y_B3X_EEINtNtNtB4_6traits7collect12FromIteratorIB4s_B3X_EE9from_iterBQ_E0B5x_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.r)
          to label %bb.y unwind label %bb.x, !noalias !12441

bb.w:                                             ; preds = %bb.ar, %bb.ae, %bb.x
  %.sroa.040.0.i.i.i = phi i8 [ %.sroa.040.1.i.i.i, %bb.x ], [ %.sroa.040.2.i.i.i, %bb.ar ], [ %.sroa.040.2.i.i.i, %bb.ae ]
  %.pn69.i.i.i = phi { ptr, i32 } [ %i.cf, %bb.x ], [ %.pn.i.i.i, %bb.ar ], [ %.pn.i.i.i, %bb.ae ] ; 2 uses
  %i.ce = trunc nuw i8 %.sroa.040.0.i.i.i to i1
  br i1 %i.ce, label %bb.as, label %common.resume.i.i.i

bb.x:                                             ; preds = %bb.an, %bb.v
  %.sroa.040.1.i.i.i = phi i8 [ %.sroa.040.3.i.i.i, %bb.an ], [ 1, %bb.v ]
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12441
  %i.cg = load i64, ptr %i.s, align 8, !range !7, !noalias !12441, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.cg, -1
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12441
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !12441, !noundef !4 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 384307168202282326
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp eq i64 %i.ci, 0
  br i1 %i.ck, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12441
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12441
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12441
  br label %bb.o

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12441
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !12441, !nonnull !4, !noundef !4 ; 3 uses
  %i.cn = load i64, ptr %i.t, align 8, !range !17, !noalias !12441, !noundef !4
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ci
  store ptr %i.cm, ptr %i.n, align 8, !noalias !12441
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.cn, ptr %i.cp, align 8, !noalias !12441
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cm, ptr %i.cq, align 8, !noalias !12441
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.co, ptr %i.cr, align 8, !noalias !12441
  invoke void @_RINvNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product23multi_cartesian_productINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.ag unwind label %bb.af, !noalias !12441

bb.ad:                                            ; preds = %bb.z
  %i.cs = invoke fastcc noundef ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit()
          to label %bb.aj unwind label %bb.af     ; 8 uses

bb.ae:                                            ; preds = %bb.ak, %bb.af
  %.sroa.038.0.i.i.i = phi i8 [ %.sroa.038.2.i.i.i, %bb.ak ], [ %.sroa.038.1.i.i.i, %bb.af ]
  %.sroa.040.2.i.i.i = phi i8 [ %.sroa.040.3.i.i.i, %bb.ak ], [ 1, %bb.af ] ; 2 uses
  %.pn.i.i.i = phi { ptr, i32 } [ %i.df, %bb.ak ], [ %i.cu, %bb.af ] ; 2 uses
  %i.ct = trunc nuw i8 %.sroa.038.0.i.i.i to i1
  br i1 %i.ct, label %bb.ar, label %bb.w

bb.af:                                            ; preds = %bb.ad, %bb.ag, %bb.ac
  %.sroa.038.1.i.i.i = phi i8 [ 1, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.ac ]
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !12441
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.aa, ptr %i.cv, align 8, !noalias !12441
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.v, ptr %i.cw, align 8, !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12441
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtB4_9into_iter8IntoIterBU_EENCNCINvNtBY_7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0s0_0EE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.p)
          to label %bb.ah unwind label %bb.af, !noalias !12441

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12441
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !12441
  %.phi.trans.insert87.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre88.i.i.i = load i64, ptr %.phi.trans.insert87.i.i.i, align 8, !noalias !12441
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = phi i64 [ 1, %bb.aj ], [ %.pre88.i.i.i, %bb.ah ]
  %i.cy = phi ptr [ %i.cs, %bb.aj ], [ %.pre.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.038.2.i.i.i = phi i8 [ 1, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %.sroa.040.3.i.i.i = phi i8 [ 0, %bb.aj ], [ 1, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12441
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cz, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.sroa.5.4..sroa_idx, i64 12, i1 false), !noalias !12441
  %i.da = load ptr, ptr %i.ab, align 8, !noalias !12441, !nonnull !4, !noundef !4
  store ptr %i.da, ptr %i.m, align 8, !noalias !12441
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.cy, i64 %i.cx
  invoke void @_RINvMs_NtCs8Xq8PKFYOms_3hir11term_searchNtB5_11LookupTable6insertINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtNtB1a_5slice4iter4IterNtNtB5_4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.db)
          to label %bb.al unwind label %bb.ak, !noalias !12441

bb.aj:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.418.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !12441
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.i.i.i, i64 24, i1 false), !noalias !12441
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i64 0, ptr %.sroa.519.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store i64 0, ptr %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.620.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.dc = load <2 x i32>, ptr %i.aa, align 8, !noalias !12441
  store i64 -9223372036854775800, ptr %i.cs, align 8, !noalias !12441
  store <2 x i32> %i.dc, ptr %.sroa.620.0..sroa_idx.i.i.i, align 8, !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.418.i.i.i)
  store i64 1, ptr %i.q, align 8, !noalias !12441
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cs, ptr %i.dd, align 8, !noalias !12441
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %i.de, align 8, !noalias !12441
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ai
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #45
          to label %bb.ae unwind label %bb.aq, !noalias !12441

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12441
  %.sroa.417.24.copyload.i.i = load i64, ptr %i.q, align 8, !noalias !12441
  %.sroa.618.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.618.24..sroa_idx.i.i, i64 16, i1 false), !noalias !12444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !12444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12441
  %i.dg = trunc nuw i8 %.sroa.038.2.i.i.i to i1
  br i1 %i.dg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12441
  %i.dh = trunc nuw i8 %.sroa.040.3.i.i.i to i1
  br i1 %i.dh, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.am unwind label %bb.x, !noalias !12441

bb.ao:                                            ; preds = %bb.ap, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12441
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i

bb.ap:                                            ; preds = %bb.am
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v), !noalias !12441
  br label %bb.ao

bb.aq:                                            ; preds = %bb.bh, %bb.at, %bb.as, %bb.ar, %bb.ak
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !12441
  unreachable

bb.ar:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #45
          to label %bb.w unwind label %bb.aq, !noalias !12441

bb.as:                                            ; preds = %bb.w
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #45
          to label %common.resume.i.i.i unwind label %bb.aq, !noalias !12441

bb.at:                                            ; preds = %bb.t, %bb.q
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir5FieldEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #45
          to label %common.resume.i.i.i unwind label %bb.aq, !noalias !12441

bb.au:                                            ; preds = %bb.o, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12441
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i

bb.av:                                            ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !range !13, !alias.scope !12440, !noalias !12443, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !alias.scope !12440, !noalias !12443, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12441
  call void @_RNvXsf_Cs8Xq8PKFYOms_3hirNtB5_4EnumNtB5_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  %i.dn = call noundef zeroext i1 @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility15is_visible_from(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @6, i32 noundef %i.dk, i32 noundef %i.dm), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12441
  br i1 %i.dn, label %bb.aw, label %bb.bk

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12441
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 2, ptr %i.do, align 4, !noalias !12441
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %.sroa.811.sroa.8.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx5.i.i.i, align 4, !noalias !12441
  %.sroa.9.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %.sroa.811.sroa.9.0.copyload.i.i, ptr %.sroa.9.0..sroa_idx10.i.i.i, align 4, !noalias !12441
  store i32 1, ptr %i.k, align 4, !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12441
  call void @_RNvMs12_Cs8Xq8PKFYOms_3hirNtB6_10GenericDef15lifetime_params(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !12441, !noundef !4 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 576460752303423488
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  br i1 %i.ds, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit77.i.i.i unwind label %bb.ay, !noalias !12441

bb.ay:                                            ; preds = %bb.ax
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.az, !noalias !12441

bb.az:                                            ; preds = %bb.ay
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !12441
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit77.i.i.i: ; preds = %bb.ax
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12441
  br label %bb.bd

bb.ba:                                            ; preds = %bb.aw
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit79.i.i.i unwind label %bb.bb, !noalias !12441

bb.bb:                                            ; preds = %bb.ba
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.bc, !noalias !12441

bb.bc:                                            ; preds = %bb.bb
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !12441
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit79.i.i.i: ; preds = %bb.ba
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12441
  %i.dx = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type16contains_unknown(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab), !noalias !12441
  br i1 %i.dx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit79.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit77.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12441
  br label %bb.bk

bb.be:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit79.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !12440, !noalias !12443, !nonnull !4, !align !5, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load i8, ptr %i.ea, align 8, !range !15, !noalias !12441, !noundef !4
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12441
  call fastcc void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab), !noalias !12441
  call void @_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator7collectINtNtCsbSS6DM8SDEO_5alloc3vec3VecB52_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h), !noalias !12441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12441
  invoke void @_RNvMse_Cs8Xq8PKFYOms_3hirNtB5_4Enum8variants(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %bb.bi unwind label %bb.bh, !noalias !12441

bb.bg:                                            ; preds = %bb.be
  %i.ed = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type18contains_reference(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !12441
  br i1 %i.ed, label %bb.bd, label %bb.bf

bb.bh:                                            ; preds = %bb.bi, %bb.bf
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #45
          to label %common.resume.i.i.i unwind label %bb.aq, !noalias !12441

bb.bi:                                            ; preds = %bb.bf
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !12441, !nonnull !4, !noundef !4 ; 3 uses
  %i.eh = load i64, ptr %i.e, align 8, !range !17, !noalias !12441, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !12441, !noundef !4 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 1152921504606846976
  call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12441
  %i.em = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !12440, !noalias !12443, !nonnull !4, !align !5, !noundef !4
  store ptr %i.eg, ptr %i.f, align 8, !noalias !12441
  %.sroa.047.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.eg, ptr %.sroa.047.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.047.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.eh, ptr %.sroa.047.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.047.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.el, ptr %.sroa.047.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.047.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.aq, ptr %.sroa.047.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.047.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.en, ptr %.sroa.047.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.047.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.i, ptr %.sroa.047.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !12441
  %.sroa.047.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.ab, ptr %.sroa.047.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !12441
end_hunk_0
begin_hunk_1_@_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBb_6cloned6ClonedINtNtNtBf_5slice4iter4IterNtB5S_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0Cs6u1mgJOKDyY_13rust_analyzer:bb.a

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14881
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !14878, !noalias !14882, !nonnull !4, !align !5, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !14881
  %i.v = call noundef nonnull ptr @_RNvMs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_10GenericArg13error_from_id(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.j), !noalias !14880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14881
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callTjTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBe_6option6OptionRNtNtNtB1k_3hir8generics17LifetimeParamDataEEENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB3b_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterNtB4C_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB3b_10GenericArgEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %.val, align 8, !alias.scope !14878, !noalias !14882, !nonnull !4, !align !5, !noundef !4
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENtNtNtB8_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w), !noalias !14881
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !range !28, !noalias !14881, !noundef !4
  %.not.i.i.i = icmp eq i32 %i.y, -1
  br i1 %.not.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.e, align 8, !noalias !14881 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !14878, !noalias !14882, !nonnull !4, !align !27, !noundef !4 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4, !range !28, !noalias !14881, !noundef !4
  %.not1.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not1.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !noalias !14881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false), !noalias !14881
  call void @_RNvMs1t_Cs8Xq8PKFYOms_3hirNtB6_11TypeOwnerId10must_unify(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49), !noalias !14881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !14881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14881
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false), !noalias !14881
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  %i.ac = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataCs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %.sroa.0.0.copyload.i.i.i), !noalias !14881
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callTjTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBe_6option6OptionRNtNtNtB1k_3hir8generics17LifetimeParamDataEEENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB3b_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterNtB4C_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB3b_10GenericArgEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callTjTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBe_6option6OptionRNtNtNtB1k_3hir8generics17LifetimeParamDataEEENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB3b_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterNtB4C_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB3b_10GenericArgEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b, %bb.g
  %.sroa.0.0.i.i.i = phi ptr [ %i.af, %bb.g ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14877
  %i.ag = load ptr, ptr %.val1, align 8, !noalias !14877, !nonnull !4, !align !5, !noundef !4
  call void @_RNvXsr_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5_10GenericArgENtB5_18GenericArgsBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull %.sroa.0.0.i.i.i), !noalias !14877
  %i.ah = add i64 %i.h, 1
  store i64 %i.ah, ptr %i.g, align 8
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNCINvXNtCs9p4rgIae0RV_6camino11serde_implsNtB5_18Utf8PathBufVisitorNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor14visit_byte_bufNtNtCs8yjYO7b73r2_10serde_json5error5ErrorE0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %i.h, align 8
  store i8 6, ptr %i.b, align 8
  %i.i = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #45
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.i

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #17 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.sroa.017.0.in = phi ptr [ %1, %bb.a ], [ %.sroa.515.0..sroa_idx, %bb.b ]
  %.sroa.017.0 = load ptr, ptr %.sroa.017.0.in, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.013.0.copyload = load i32, ptr %.sroa.017.0, align 8 ; 4 uses
  %i.a = icmp ne i32 %.sroa.013.0.copyload, 27
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp eq i32 %.sroa.013.0.copyload, 14
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 8
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 3 uses
  %i.c = add i32 %.sroa.013.0.copyload, -2
  %i.d = icmp ugt i32 %.sroa.013.0.copyload, 1
  %narrow = select i1 %i.d, i32 %i.c, i32 25
  switch i32 %narrow, label %bb.e [
    i32 5, label %.sink.split
    i32 22, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink.ph = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.49.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.sink20 = phi i64 [ 8, %bb.c ], [ 24, %.sink.split ]
  %.sink19 = phi ptr [ null, %bb.c ], [ %1, %.sink.split ]
  %.sink = phi i64 [ 1, %bb.c ], [ %.sink.ph, %.sink.split ]
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink20
  store ptr %.sink19, ptr %.sroa.510.0..sroa_idx, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCs6u1mgJOKDyY_13rust_analyzer(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a
  %i.c = sub i64 %1, %i.b
  %i.d = sub nsw i64 58, %i.a                     ; 2 uses
  %i.e = icmp ult i64 %i.d, 58
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.c
  %.sroa.0.0 = select i1 %i.h, ptr null, ptr %i.i
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 32, -9223372036854775808) i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs6u1mgJOKDyY_13rust_analyzer(i64 noundef %0) unnamed_addr #19 {
bb.a:
  %i.a = icmp ult i64 %0, 9223372036854775776
  tail call void @llvm.assume(i1 %i.a)
  %i.b = add nuw nsw i64 %0, 32
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit() unnamed_addr #11 {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #47 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli14analysis_stats16location_csv_pat(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 13 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [8 x i8], align 4                 ; 4 uses
  %i.f = alloca [8 x i8], align 4                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 4                ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap10pat_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %3, i32 noundef %4)
  %i.n = load i32, ptr %i.m, align 4, !range !30, !noundef !4
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.p = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !12, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.v, label %bb.w, !prof !6

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.k, ptr noundef nonnull align 4 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.u = call noundef nonnull ptr @_RNvMsl_Cs33K2ylI4knu_10hir_expandNtB5_9HirFileId15parse_or_expand(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.k, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @65) ; 5 uses
  store ptr %i.u, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli14analysis_stats16location_csv_pat0INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1j_11syntax_node12RustLanguageEEB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.f unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.g, %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.ac, %bb.h ], [ %i.ac, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noundef !4
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6u1mgJOKDyY_13rust_analyzer.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.u) #46
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.u

bb.e:                                             ; preds = %bb.r, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i64 12, i1 false)
  store ptr %i.j, ptr %i.h, align 8
  invoke void @_RNvMsl_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE26original_file_range_rootedCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @65)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val29 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val29, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !4
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val29) #46
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.u

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ah = load i32, ptr %i.i, align 4, !range !13, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !4 ; 2 uses
  %i.ak = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECs6u1mgJOKDyY_13rust_analyzer(i32 noundef %i.ah, i32 noundef %i.aj, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @66)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.al = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.ak)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.am = invoke noundef nonnull align 8 ptr @_RNvMs1_Cs4sl5YdnrCxp_3vfsNtB5_3Vfs9file_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %2, i32 noundef %i.al)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  store ptr %i.am, ptr %i.g, align 8
  %i.an = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECs6u1mgJOKDyY_13rust_analyzer(i32 noundef %i.ah, i32 noundef %i.aj, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @66)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l
  %i.ao = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.an)
          to label %bb.n unwind label %bb.g

bb.n:                                             ; preds = %bb.m
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvCs6oosyzwIepl_6ide_db10line_index(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @65, i32 noundef %i.ao)
          to label %bb.o unwind label %bb.g       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.at = load i32, ptr %i.as, align 4, !noundef !4
  %i.au = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = invoke { i32, i32 } @_RNvMs0_Cs9HU4uknhSfY_10line_indexNtB5_9LineIndex8line_col(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.av, i32 noundef %i.ar)
          to label %bb.p unwind label %bb.g       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = invoke { i32, i32 } @_RNvMs0_Cs9HU4uknhSfY_10line_indexNtB5_9LineIndex8line_col(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, i32 noundef %i.at)
          to label %bb.q unwind label %bb.g       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ba = extractvalue { i32, i32 } %i.aw, 1
  %i.bb = extractvalue { i32, i32 } %i.aw, 0      ; 2 uses
  %i.bc = extractvalue { i32, i32 } %i.az, 0      ; 2 uses
  %i.bd = extractvalue { i32, i32 } %i.az, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.bb, ptr %i.f, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i32 %i.ba, ptr %i.be, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.bc, ptr %i.e, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 %i.bd, ptr %i.bf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bh = add i32 %i.bc, 1
  store i32 %i.bh, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.44.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.bi, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.be, ptr %i.bj, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.bk, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.bf, ptr %i.bl, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @67, ptr noundef nonnull %i.b)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.g

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val28, i64 48 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !4
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1Q_4TypeNtB1Q_9AssocItemETB1O_B2d_NtB1Q_8FunctionEuINtNtB9_12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1Q_11term_search4expr4ExprEENCINvNtB4f_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtBV_6filter15filter_try_foldB2F_uB35_NCB4M_s3_0NCIBR_B2F_TB2d_B3E_EuB35_NCB4M_s4_0NCINvNvNtNtNtBX_6traits8iterator8Iterator8find_map5checkB6X_B3E_QNCB4M_s5_0E0E0E0E0INtB7_5FnMutTuB1N_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14955
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !14955, !nonnull !4, !noundef !4 ; 3 uses
  %i.dg = load i64, ptr %i.q, align 8, !range !17, !noalias !14955, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !14955, !noundef !4 ; 2 uses
  %i.dj = icmp ult i64 %i.di, 164703072086692426
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [56 x i8], ptr %i.df, i64 %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14955
  store ptr %i.df, ptr %i.r, align 8, !noalias !14955
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.df, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !14955
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.dg, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !14955
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.dk, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14955
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.db, ptr %i.dl, align 8, !noalias !14955
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.ba, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !14955
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.an, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !14955
  invoke void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB1W_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtB1b_3VecNtNtB2u_4expr4ExprEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B4p_IB4n_IB3T_B3S_EEINtNtNtB4_6traits7collect12FromIteratorIB4n_B3S_EE9from_iterBQ_E0B5s_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.r)
          to label %bb.aj unwind label %bb.ah, !noalias !14955

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !14955
  %i.dm = load i64, ptr %i.s, align 8, !range !7, !noalias !14955, !noundef !4
  %.not10.i.i.i.i = icmp eq i64 %i.dm, -1
  br i1 %.not10.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14955
  call fastcc void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an), !noalias !14955
  invoke void @_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator7collectINtNtCsbSS6DM8SDEO_5alloc3vec3VecB52_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o)
          to label %bb.ao unwind label %bb.ar, !noalias !14955

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14955
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14955
  br label %bb.ae

bb.am:                                            ; preds = %bb.ae, %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14955
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i

bb.an:                                            ; preds = %bb.ap, %bb.ao
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #45
          to label %common.resume.i.i.i.i unwind label %bb.aq, !noalias !14955

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !14955
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !14955
  %.sroa.4.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx20.i.i.i.i, align 8, !noalias !14955, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx21.i.i.i.i, align 8, !noalias !14955 ; 2 uses
  %i.do = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.dq, align 8, !alias.scope !14959, !noalias !14960
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !14959, !noalias !14960
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !14959, !noalias !14960
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.dp, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !14959, !noalias !14960
  invoke void @_RINvNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product23multi_cartesian_productINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB1o_7sources4once4OnceINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEINtNtB2F_9into_iter8IntoIterB2C_EEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.k)
          to label %bb.ap unwind label %bb.an, !noalias !14955

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !14955
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.am, ptr %i.dr, align 8, !noalias !14955
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.p, ptr %i.ds, align 8, !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14955
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtB4_9into_iter8IntoIterBU_EENCNCINvNtBY_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s0_0EE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.m)
          to label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.an, !noalias !14955

bb.aq:                                            ; preds = %bb.as, %bb.ar, %bb.an, %bb.ab
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !14955
  unreachable

bb.ar:                                            ; preds = %bb.ak
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #45
          to label %bb.as unwind label %bb.aq, !noalias !14955

bb.as:                                            ; preds = %bb.ar, %bb.ah
  %.pn.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.dd, %bb.ah ], [ %lpad.thr_comm.i.i.i.i, %bb.ar ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #45
          to label %common.resume.i.i.i.i unwind label %bb.aq, !noalias !14955

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i: ; preds = %bb.am, %bb.t, %bb.s, %bb.r, %bb.q, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit19.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit17.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !14955
  br label %bb.aw

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !14961
  %.sroa.411.24.copyload.i.i.i = load i64, ptr %i.n, align 8, !noalias !14955 ; 2 uses
  %.sroa.6.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.24..sroa_idx.i.i.i, i64 16, i1 false), !noalias !14961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14955
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !14955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !14955
  %.not.i.i.i = icmp eq i64 %.sroa.411.24.copyload.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, i64 24, i1 false), !noalias !14963
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i, i64 16, i1 false), !noalias !14963
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !14964)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14962
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.411.24.copyload.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !14965
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0INtB7_5FnMutTTNtBX_4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBV_4expr4ExprEEEE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.du, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !14966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14962
  %i.dv = load i64, ptr %i.b, align 8, !range !7, !noalias !14962, !noundef !4
  %.not.i1.i.i.i = icmp eq i64 %i.dv, -1
  br i1 %.not.i1.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !14967
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1j_11term_search4expr4ExprEEB1G_QNCINvNtB2h_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  store i64 -1, ptr %0, align 8, !alias.scope !14968, !noalias !14967
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1j_11term_search4expr4ExprEEB1G_QNCINvNtB2h_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1j_11term_search4expr4ExprEEB1G_QNCINvNtB2h_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14962
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_8FunctionETB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEEuINtNtNtBa_3ops12control_flow11ControlFlowB2a_ENCINvNtB2L_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB25_B2a_QNCB43_s5_0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i

bb.aw:                                            ; preds = %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !14969, !noalias !14970
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_8FunctionETB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEEuINtNtNtBa_3ops12control_flow11ControlFlowB2a_ENCINvNtB2L_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB25_B2a_QNCB43_s5_0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_8FunctionETB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEEuINtNtNtBa_3ops12control_flow11ControlFlowB2a_ENCINvNtB2L_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB25_B2a_QNCB43_s5_0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.aw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1j_11term_search4expr4ExprEEB1G_QNCINvNtB2h_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i)
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_9AssocItemETB1f_B1E_NtB1h_8FunctionEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEENCINvNtB3M_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB6_6filter15filter_try_foldB26_uB2w_NCB4j_s3_0NCIB2_B26_TB1E_B3b_EuB2w_NCB4j_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB6u_B3b_QNCB4j_s5_0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !14971, !noalias !14972
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_9AssocItemETB1f_B1E_NtB1h_8FunctionEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEENCINvNtB3M_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB6_6filter15filter_try_foldB26_uB2w_NCB4j_s3_0NCIB2_B26_TB1E_B3b_EuB2w_NCB4j_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB6u_B3b_QNCB4j_s5_0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_9AssocItemETB1f_B1E_NtB1h_8FunctionEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEENCINvNtB3M_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB6_6filter15filter_try_foldB26_uB2w_NCB4j_s3_0NCIB2_B26_TB1E_B3b_EuB2w_NCB4j_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB6u_B3b_QNCB4j_s5_0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_8FunctionETB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEEuINtNtNtBa_3ops12control_flow11ControlFlowB2a_ENCINvNtB2L_7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB25_B2a_QNCB43_s5_0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1Q_4TypeNtB1Q_9AssocItemETB1O_B2d_NtB1Q_8FunctionEuINtNtB9_12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1Q_11term_search4expr4ExprEENCINvNtB4f_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0NCINvNtBV_6filter15filter_try_foldB2F_uB35_NCB4M_s4_0NCIBR_B2F_TB2d_B3E_EuB35_NCB4M_s5_0NCINvNvNtNtNtBX_6traits8iterator8Iterator8find_map5checkB74_B3E_QNCB4M_s6_0E0E0E0E0INtB7_5FnMutTuB1N_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.45.i.i.i.i = alloca [24 x i8], align 8   ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [12 x i8], align 4                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [16 x i8], align 4               ; 7 uses
  %i.ac = alloca [16 x i8], align 4               ; 8 uses
  %i.ad = alloca [12 x i8], align 4               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.11.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 37 ; 2 uses
  %i.af = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15001)
  %i.ag = icmp ugt i8 %.sroa.4.0.copyload, 1
  %.not.i = icmp eq i32 %.sroa.2.0.copyload, 2
  %or.cond = select i1 %i.ag, i1 true, i1 %.not.i
  br i1 %or.cond, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15003)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !15004, !noalias !15005, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %.val.i.i = load ptr, ptr %i.ai, align 8, !noalias !15006, !nonnull !4, !noundef !4
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val2.i.i = load ptr, ptr %i.aj, align 8, !noalias !15006, !nonnull !4, !align !5, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !4, !noalias !15006, !nonnull !4
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull %.val.i.i) #50, !noalias !15006, !inline_history !14981
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8, !alias.scope !15007, !noalias !15008
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_9AssocItemETB1f_B1E_NtB1h_8FunctionEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEENCINvNtB3M_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0NCINvNtB6_6filter15filter_try_foldB26_uB2w_NCB4j_s4_0NCIB2_B26_TB1E_B3b_EuB2w_NCB4j_s5_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB6B_B3b_QNCB4j_s6_0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15010)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !15011, !noalias !15012, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15013)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15014
  store i32 %.sroa.2.0.copyload, ptr %i.ap, align 4, !noalias !15015
  %.sroa.613.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.sroa.3.0.copyload, ptr %.sroa.613.24..sroa_idx.i, align 4, !noalias !15015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !15016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !15014
  store i8 %.sroa.4.0.copyload, ptr %i.ad, align 4, !noalias !15015
  %.sroa.10.36..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.10.36..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15014
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i8 %.sroa.4.0.copyload, ptr %i.aq, align 4, !noalias !15015
  %.sroa.10.36..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.10.36..sroa_idx16.i, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx, i64 11, i1 false)
  store i32 0, ptr %i.ac, align 4, !noalias !15014
  store i32 4, ptr %i.ab, align 4, !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !15014
  %i.ar = load ptr, ptr %i.ao, align 8, !alias.scope !15013, !noalias !15017, !nonnull !4, !align !5, !noundef !4 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !noalias !15014
  call void @_RNvMs12_Cs8Xq8PKFYOms_3hirNtB6_10GenericDef15lifetime_params(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15014
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !15014, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %i.at, 576460752303423488
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i unwind label %bb.f, !noalias !15014

bb.f:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume.i.i.i.i unwind label %bb.g, !noalias !15014

bb.g:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !15014
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.as, %bb.ab, %bb.o, %bb.l, %bb.i, %bb.f
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.aw, %bb.f ], [ %i.ay, %bb.i ], [ %i.be, %bb.l ], [ %.pn19.i.i.i.i, %bb.as ], [ %.pn19.i.i.i.i, %bb.ab ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.e
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15014
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i unwind label %bb.i, !noalias !15014

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume.i.i.i.i unwind label %bb.j, !noalias !15014

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !15014
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !15014
  call void @_RNvMs12_Cs8Xq8PKFYOms_3hirNtB6_10GenericDef15lifetime_params(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.ab, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !15014, !noundef !4 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 576460752303423488
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit24.i.i.i.i unwind label %bb.l, !noalias !15014

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume.i.i.i.i unwind label %bb.m, !noalias !15014

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !15014
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit24.i.i.i.i: ; preds = %bb.k
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15014
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit26.i.i.i.i unwind label %bb.o, !noalias !15014

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume.i.i.i.i unwind label %bb.p, !noalias !15014

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !15014
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit26.i.i.i.i: ; preds = %bb.n
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !noalias !15014
  %i.bi = call noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function14has_self_param(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.g, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15014
  br i1 %i.bi, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit26.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !range !13, !alias.scope !15013, !noalias !15017, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !15013, !noalias !15017, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15014
  call void @_RNvXsv_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ad, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  %i.bn = call noundef zeroext i1 @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility15is_visible_from(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.i, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @6, i32 noundef %i.bk, i32 noundef %i.bm), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15014
  br i1 %i.bn, label %bb.r, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15014
  store i8 2, ptr %i.y, align 4, !noalias !15014
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !15013, !noalias !15017, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !15014, !nonnull !4, !align !5, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !15014, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load i32, ptr %i.bu, align 8, !range !13, !noalias !15014, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 84
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !15014, !noundef !4
  %i.by = call noundef i8 @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate7edition(i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !noalias !15014
  %i.bz = call noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function17is_unsafe_to_call(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.f, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.y, i8 noundef %i.by), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15014
  br i1 %i.bz, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !noalias !15014
  %i.ca = call noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function11is_unstable(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.e, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15014
  br i1 %i.ca, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15014
  call void @_RNvMs12_Cs8Xq8PKFYOms_3hirNtB6_10GenericDef20type_or_const_params(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.ac, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !15014, !noundef !4 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 576460752303423488
  call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp eq i64 %i.cc, 0
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir16TypeOrConstParamEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15014
  br i1 %i.ce, label %bb.u, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !noalias !15014
  call void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function8ret_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !15014
  call fastcc void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae), !noalias !15014
  call void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type11instantiateINtCs83ee1IJTiSq_6either6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1m_10filter_map9FilterMapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B3q_NtB3q_11GenericArgs5types0ENCNvB2_14type_arguments0EIBN_IB1i_IB2B_IB2Y_NtNtB3s_2ty2TyEENCB58_s_0EINtNtNtB1o_7sources5empty5EmptyBp_EEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.u), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !15014
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.cg = load i8, ptr %i.cf, align 8, !range !15, !noalias !15014, !noundef !4
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.ci = load ptr, ptr %i.w, align 8, !noalias !15014, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.015.0.copyload.i.i.i.i = load i32, ptr %i.ci, align 8, !noalias !15014 ; 2 uses
  %i.cj = icmp ne i32 %.sroa.015.0.copyload.i.i.i.i, 27
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp eq i32 %.sroa.015.0.copyload.i.i.i.i, 13
  br i1 %i.ck, label %bb.aa, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cl = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type18contains_reference(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  br i1 %i.cl, label %bb.aa, label %bb.v

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !noalias !15014
  call void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function19params_without_self(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.c, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15014
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !15014, !nonnull !4, !noundef !4 ; 3 uses
  %i.co = load i64, ptr %i.q, align 8, !range !17, !noalias !15014, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !15014, !noundef !4 ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 164703072086692426
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %i.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15014
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !15013, !noalias !15017, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  store ptr %i.cn, ptr %i.r, align 8, !noalias !15014
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !15014
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.co, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !15014
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.cs, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !15014
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.cu, ptr %i.cv, align 8, !noalias !15014
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.ar, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !15014
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.ae, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !15014
  call void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB1W_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtB1b_3VecNtNtB2u_4expr4ExprEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B4u_IB4s_IB3Y_B3X_EEINtNtNtB4_6traits7collect12FromIteratorIB4s_B3X_EE9from_iterBQ_E0B5x_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.r), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15014
  %i.cw = load i64, ptr %i.s, align 8, !range !7, !noalias !15014, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.cw, -1
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15014
  call fastcc void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae), !noalias !15014
  invoke void @_RINvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB8_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBU_10filter_map9FilterMapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2V_NtB2V_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4K_4Type14type_arguments0EIBD_IBQ_IB28_IB2u_NtNtB2X_2ty2TyEENCB4D_s_0EINtNtNtBW_7sources5empty5EmptyB52_EEENtNtNtBW_6traits8iterator8Iterator7collectINtNtCsbSS6DM8SDEO_5alloc3vec3VecB52_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o)
          to label %bb.ad unwind label %bb.ac, !noalias !15014

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15014
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15014
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.ar, %bb.ag, %bb.ac
  %.sroa.013.0.i.i.i.i = phi i8 [ %.sroa.013.1.i.i.i.i, %bb.ac ], [ %.sroa.013.230.i.i.i.i, %bb.ar ], [ %.sroa.013.4.i.i.i.i, %bb.ag ]
  %.pn19.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.ac ], [ %.pn31.i.i.i.i, %bb.ar ], [ %i.du, %bb.ag ] ; 2 uses
  %i.cx = trunc nuw i8 %.sroa.013.0.i.i.i.i to i1
  br i1 %i.cx, label %bb.as, label %common.resume.i.i.i.i

bb.ac:                                            ; preds = %bb.ao, %bb.y
  %.sroa.013.1.i.i.i.i = phi i8 [ %.sroa.013.4.i.i.i.i, %bb.ao ], [ 1, %bb.y ]
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15014
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noalias !15014, !noundef !4 ; 3 uses
  %i.db = icmp ult i64 %i.da, 384307168202282326
  call void @llvm.assume(i1 %i.db)
  %.not32.i.i.i.i = icmp eq i64 %i.da, 0          ; 3 uses
  br i1 %.not32.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15014
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !15014, !nonnull !4, !noundef !4 ; 3 uses
  %i.de = load i64, ptr %i.t, align 8, !range !17, !noalias !15014, !noundef !4
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.da
  store ptr %i.dd, ptr %i.k, align 8, !noalias !15014
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.de, ptr %i.dg, align 8, !noalias !15014
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dd, ptr %i.dh, align 8, !noalias !15014
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.df, ptr %i.di, align 8, !noalias !15014
  invoke void @_RINvNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product23multi_cartesian_productINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.ah unwind label %.thread.i.i.i.i, !noalias !15014

bb.af:                                            ; preds = %bb.ad
  %i.dj = invoke fastcc noundef ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit()
          to label %bb.ak unwind label %.thread.i.i.i.i ; 8 uses

bb.ag:                                            ; preds = %bb.al
  br i1 %.not32.i.i.i.i, label %bb.ab, label %bb.ar

.thread.i.i.i.i:                                  ; preds = %bb.af, %bb.ah, %bb.ae
  %.sroa.013.3.i.i.i.i = phi i8 [ 1, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.ae ]
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !15014
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.ad, ptr %i.dl, align 8, !noalias !15014
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.p, ptr %i.dm, align 8, !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15014
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtB4_9into_iter8IntoIterBU_EENCNCINvNtBY_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0s_0EE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.m)
          to label %bb.ai unwind label %.thread.i.i.i.i, !noalias !15014

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15014
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre33.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !15014
  %.phi.trans.insert34.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre35.i.i.i.i = load i64, ptr %.phi.trans.insert34.i.i.i.i, align 8, !noalias !15014
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.dn = phi i64 [ 1, %bb.ak ], [ %.pre35.i.i.i.i, %bb.ai ]
  %i.do = phi ptr [ %i.dj, %bb.ak ], [ %.pre33.i.i.i.i, %bb.ai ] ; 2 uses
  %3 = phi ptr [ %.pre.i.i.i.i, %bb.ak ], [ %i.ci, %bb.ai ]
  %.sroa.013.4.i.i.i.i = phi i8 [ 1, %bb.ak ], [ 0, %bb.ai ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15014
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dq, ptr noundef nonnull align 8 dereferenceable(12) %i.dp, i64 12, i1 false), !noalias !15014
  store ptr %3, ptr %i.j, align 8, !noalias !15014
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.do, i64 %i.dn
  invoke void @_RINvMs_NtCs8Xq8PKFYOms_3hir11term_searchNtB5_11LookupTable6insertINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtNtB1a_5slice4iter4IterNtNtB5_4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dr)
          to label %bb.am unwind label %bb.al, !noalias !15014

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !15014
  %.sroa.67.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.67.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !noalias !15014
  store i64 -9223372036854775803, ptr %i.dj, align 8, !noalias !15014
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.i.i.i.i, i64 24, i1 false), !noalias !15014
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 0, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !noalias !15014
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !15014
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store i64 0, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i.i.i)
  store i64 1, ptr %i.n, align 8, !noalias !15014
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.dj, ptr %i.ds, align 8, !noalias !15014
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %i.dt, align 8, !noalias !15014
  %.pre.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !15014
  br label %bb.aj

bb.al:                                            ; preds = %bb.aj
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #45
          to label %bb.ag unwind label %bb.aq, !noalias !15014

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15014
  %.sroa.411.24.copyload.i.i.i = load i64, ptr %i.n, align 8, !noalias !15014 ; 2 uses
  %.sroa.6.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.24..sroa_idx.i.i.i, i64 16, i1 false), !noalias !15018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !15018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15014
  br i1 %.not32.i.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15014
  %i.dv = trunc nuw i8 %.sroa.013.4.i.i.i.i to i1
  br i1 %i.dv, label %bb.ap, label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p)
          to label %bb.an unwind label %bb.ac, !noalias !15014

bb.ap:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t), !noalias !15014
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.aq:                                            ; preds = %bb.as, %bb.ar, %bb.al
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !15014
  unreachable

bb.ar:                                            ; preds = %.thread.i.i.i.i, %bb.ag
  %.pn31.i.i.i.i = phi { ptr, i32 } [ %i.dk, %.thread.i.i.i.i ], [ %i.du, %bb.ag ]
  %.sroa.013.230.i.i.i.i = phi i8 [ %.sroa.013.3.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.013.4.i.i.i.i, %bb.ag ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #45
          to label %bb.ab unwind label %bb.aq, !noalias !15014

bb.as:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #45
          to label %common.resume.i.i.i.i unwind label %bb.aq, !noalias !15014

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i: ; preds = %bb.aa, %bb.t, %bb.s, %bb.r, %bb.q, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit26.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit24.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15014
  br label %bb.aw

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.ap, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15014
  %.not.i.i.i = icmp eq i64 %.sroa.411.24.copyload.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, i64 24, i1 false), !noalias !15020
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i.i.i, i64 16, i1 false), !noalias !15020
  %i.dx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !15021)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15019
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.411.24.copyload.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !15022
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs6_0INtB7_5FnMutTTNtBX_4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBV_4expr4ExprEEEE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !15023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15019
  %i.dy = load i64, ptr %i.b, align 8, !range !7, !noalias !15019, !noundef !4
  %.not.i1.i.i.i = icmp eq i64 %i.dy, -1
  br i1 %.not.i1.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !15024
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1j_11term_search4expr4ExprEEB1G_QNCINvNtB2h_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs6_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  store i64 -1, ptr %0, align 8, !alias.scope !15025, !noalias !15024
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1j_11term_search4expr4ExprEEB1G_QNCINvNtB2h_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs6_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1j_11term_search4expr4ExprEEB1G_QNCINvNtB2h_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs6_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15019
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_8FunctionETB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEEuINtNtNtBa_3ops12control_flow11ControlFlowB2a_ENCINvNtB2L_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB25_B2a_QNCB43_s6_0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i

bb.aw:                                            ; preds = %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !15026, !noalias !15027
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_8FunctionETB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEEuINtNtNtBa_3ops12control_flow11ControlFlowB2a_ENCINvNtB2L_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB25_B2a_QNCB43_s6_0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_8FunctionETB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEEuINtNtNtBa_3ops12control_flow11ControlFlowB2a_ENCINvNtB2L_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB25_B2a_QNCB43_s6_0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.aw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1j_11term_search4expr4ExprEEB1G_QNCINvNtB2h_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs6_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_9AssocItemETB1f_B1E_NtB1h_8FunctionEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEENCINvNtB3M_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0NCINvNtB6_6filter15filter_try_foldB26_uB2w_NCB4j_s4_0NCIB2_B26_TB1E_B3b_EuB2w_NCB4j_s5_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB6B_B3b_QNCB4j_s6_0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !15028, !noalias !15029
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_9AssocItemETB1f_B1E_NtB1h_8FunctionEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEENCINvNtB3M_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0NCINvNtB6_6filter15filter_try_foldB26_uB2w_NCB4j_s4_0NCIB2_B26_TB1E_B3b_EuB2w_NCB4j_s5_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB6B_B3b_QNCB4j_s6_0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_9AssocItemETB1f_B1E_NtB1h_8FunctionEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEENCINvNtB3M_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0NCINvNtB6_6filter15filter_try_foldB26_uB2w_NCB4j_s4_0NCIB2_B26_TB1E_B3b_EuB2w_NCB4j_s5_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB6B_B3b_QNCB4j_s6_0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTNtCs8Xq8PKFYOms_3hir4ImplNtB1h_4TypeNtB1h_8FunctionETB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB1h_11term_search4expr4ExprEEuINtNtNtBa_3ops12control_flow11ControlFlowB2a_ENCINvNtB2L_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB25_B2a_QNCB43_s6_0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4ImpluINtNtB9_12control_flow11ControlFlowNtNtNtB1G_11term_search4expr4ExprENCINvNtB2H_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0NCINvNtBV_3map12map_try_foldB1E_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB1G_9AssocItemEuB24_NCB3d_s1_0NCINvNvMsg_NtBV_7flattenINtB67_13FlattenCompatppE13iter_try_fold7flattenB4T_uB24_NCINvNvXsi_B67_B6k_NtNtNtBX_6traits8iterator8Iterator8try_fold7flattenINtNtB4W_9into_iter8IntoIterB5q_EuB24_NCIBR_B5q_uB24_NCB3d_s2_0NCINvNtBV_10filter_map19filter_map_try_foldB5q_NtB1G_5ConstuB24_NvMs10_B1G_B5q_8as_constNCINvNvB7y_8find_map5checkBa9_B2D_QNCB3d_s3_0E0E0E0E0E0E0E0INtB7_5FnMutTuB1E_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15049)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !15049, !noalias !15050, !nonnull !4, !align !5, !noundef !4
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !15051, !nonnull !4, !align !5, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl9is_unsafe(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef nonnull %.val.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15052
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !15053, !noalias !15054
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4ImpluINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0NCINvNtB6_3map12map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB17_9AssocItemEuB1v_NCB2K_s1_0NCINvNvMsg_NtB6_7flattenINtB5E_13FlattenCompatppE13iter_try_fold7flattenB4q_uB1v_NCINvNvXsi_B5E_B5R_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB4t_9into_iter8IntoIterB4X_EuB1v_NCIB2_B4X_uB1v_NCB2K_s2_0NCINvNtB6_10filter_map19filter_map_try_foldB4X_NtB17_5ConstuB1v_NvMs10_B17_B4X_8as_constNCINvNvB75_8find_map5checkB9G_B2a_QNCB2K_s3_0E0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15056
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !15057, !noalias !15058, !nonnull !4, !align !5, !noundef !4
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !15056, !nonnull !4, !align !5, !noundef !4
  call void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl5items(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15059
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !15056 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15056, !nonnull !4, !noundef !4 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15056 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !15057, !noalias !15058, !nonnull !4, !align !5, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val2.i.i = load ptr, ptr %i.h, align 8, !alias.scope !15057, !noalias !15058, !nonnull !4, !align !5, !noundef !4 ; 11 uses
  %i.i = icmp ult i64 %.sroa.5.0.copyload.i.i, 768614336404564651
  call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15060)
  %i.k = load ptr, ptr %.val2.i.i, align 8, !alias.scope !15061, !noalias !15062, !noundef !4
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCs8Xq8PKFYOms_3hir4ImplINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB11_9AssocItemEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB11_11term_search4expr4ExprENCINvNtB2W_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0NCINvNvMsg_NtB6_7flattenINtB4N_13FlattenCompatppE13iter_try_fold7flattenB1o_uB2d_NCINvNvXsi_B4N_B50_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1r_9into_iter8IntoIterB1V_EuB2d_NCINvNtB6_6filter15filter_try_foldB1V_uB2d_NCB3s_s2_0NCINvNtB6_10filter_map19filter_map_try_foldB1V_NtB11_5ConstuB2d_NvMs10_B11_B1V_8as_constNCINvNvB6e_8find_map5checkB9h_B2S_QNCB3s_s3_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val2.i.i)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCs8Xq8PKFYOms_3hir4ImplINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB11_9AssocItemEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB11_11term_search4expr4ExprENCINvNtB2W_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0NCINvNvMsg_NtB6_7flattenINtB4N_13FlattenCompatppE13iter_try_fold7flattenB1o_uB2d_NCINvNvXsi_B4N_B50_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1r_9into_iter8IntoIterB1V_EuB2d_NCINvNtB6_6filter15filter_try_foldB1V_uB2d_NCB3s_s2_0NCINvNtB6_10filter_map19filter_map_try_foldB1V_NtB11_5ConstuB2d_NvMs10_B11_B1V_8as_constNCINvNvB6e_8find_map5checkB9h_B2S_QNCB3s_s3_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.e, !noalias !15062

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4.0.copyload.i.i, ptr %.val2.i.i, align 8, !alias.scope !15063, !noalias !15064
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !alias.scope !15063, !noalias !15064
  %.sroa.6.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..8.val.sroa_idx.i.i.i, align 8, !alias.scope !15063, !noalias !15064
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  store ptr %i.j, ptr %.sroa.7.0..8.val.sroa_idx.i.i.i, align 8, !alias.scope !15063, !noalias !15064
  resume { ptr, i32 } %i.m

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCs8Xq8PKFYOms_3hir4ImplINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB11_9AssocItemEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB11_11term_search4expr4ExprENCINvNtB2W_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0NCINvNvMsg_NtB6_7flattenINtB4N_13FlattenCompatppE13iter_try_fold7flattenB1o_uB2d_NCINvNvXsi_B4N_B50_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1r_9into_iter8IntoIterB1V_EuB2d_NCINvNtB6_6filter15filter_try_foldB1V_uB2d_NCB3s_s2_0NCINvNtB6_10filter_map19filter_map_try_foldB1V_NtB11_5ConstuB2d_NvMs10_B11_B1V_8as_constNCINvNvB6e_8find_map5checkB9h_B2S_QNCB3s_s3_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.d, %bb.c
  store ptr %.sroa.4.0.copyload.i.i, ptr %.val2.i.i, align 8, !alias.scope !15063, !noalias !15064
  %.sroa.5.0..8.val.sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx2.i.i.i, align 8, !alias.scope !15063, !noalias !15064
  %.sroa.6.0..8.val.sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..8.val.sroa_idx4.i.i.i, align 8, !alias.scope !15063, !noalias !15064
  %.sroa.7.0..8.val.sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  store ptr %i.j, ptr %.sroa.7.0..8.val.sroa_idx6.i.i.i, align 8, !alias.scope !15063, !noalias !15064
  call void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1y_8adapters6filter15filter_try_foldBX_uINtNtNtB1A_3ops12control_flow11ControlFlowNtNtNtBZ_11term_search4expr4ExprENCINvNtB46_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB2F_10filter_map19filter_map_try_foldBX_NtBZ_5ConstuB3m_NvMs10_BZ_BX_8as_constNCINvNvB1s_8find_map5checkB6w_B42_QNCB4B_s3_0E0E0E0B3m_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val2.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i), !noalias !15065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15056
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4ImpluINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0NCINvNtB6_3map12map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB17_9AssocItemEuB1v_NCB2K_s1_0NCINvNvMsg_NtB6_7flattenINtB5E_13FlattenCompatppE13iter_try_fold7flattenB4q_uB1v_NCINvNvXsi_B5E_B5R_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB4t_9into_iter8IntoIterB4X_EuB1v_NCIB2_B4X_uB1v_NCB2K_s2_0NCINvNtB6_10filter_map19filter_map_try_foldB4X_NtB17_5ConstuB1v_NvMs10_B17_B4X_8as_constNCINvNvB75_8find_map5checkB9G_B2a_QNCB2K_s3_0E0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4ImpluINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0NCINvNtB6_3map12map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB17_9AssocItemEuB1v_NCB2K_s1_0NCINvNvMsg_NtB6_7flattenINtB5E_13FlattenCompatppE13iter_try_fold7flattenB4q_uB1v_NCINvNvXsi_B5E_B5R_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB4t_9into_iter8IntoIterB4X_EuB1v_NCIB2_B4X_uB1v_NCB2K_s2_0NCINvNtB6_10filter_map19filter_map_try_foldB4X_NtB17_5ConstuB1v_NvMs10_B17_B4X_8as_constNCINvNvB75_8find_map5checkB9G_B2a_QNCB2K_s3_0E0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCs8Xq8PKFYOms_3hir4ImplINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB11_9AssocItemEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB11_11term_search4expr4ExprENCINvNtB2W_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0NCINvNvMsg_NtB6_7flattenINtB4N_13FlattenCompatppE13iter_try_fold7flattenB1o_uB2d_NCINvNvXsi_B4N_B50_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1r_9into_iter8IntoIterB1V_EuB2d_NCINvNtB6_6filter15filter_try_foldB1V_uB2d_NCB3s_s2_0NCINvNtB6_10filter_map19filter_map_try_foldB1V_NtB11_5ConstuB2d_NvMs10_B11_B1V_8as_constNCINvNvB6e_8find_map5checkB9h_B2S_QNCB3s_s3_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtB9_12control_flow11ControlFlowNtNtNtB1G_11term_search4expr4ExprENCINvNtB2M_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtBV_10filter_map19filter_map_try_foldB1E_NtB1G_5ConstuB29_NvMs10_B1G_B1E_8as_constNCINvNvNtNtNtBX_6traits8iterator8Iterator8find_map5checkB5d_B2I_QNCB3i_s3_0E0E0E0INtB7_5FnMutTuB1E_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15086)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15085, !noalias !15087, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15088)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !15088, !noalias !15089, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !range !13, !alias.scope !15088, !noalias !15089, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !15088, !noalias !15089, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15090
  call void @_RNvXs11_Cs8Xq8PKFYOms_3hirNtB6_9AssocItemNtB6_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6), !noalias !15091
end_hunk_2
