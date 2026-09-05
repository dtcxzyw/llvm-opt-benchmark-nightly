Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.02?download=true
inline.NumInlined: 817
inline.NumDeleted: 508
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE5entryB1w_:bb.a
  %.sroa.0.01.i.i57 = phi ptr [ %i.l, %bb.d ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i56 = phi i64 [ %i.m, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.0.01.i.i57, i64 8
  %.val7.i.i = load ptr, ptr %i.o, align 8, !noalias !1064, !nonnull !7, !noundef !7
  %i.p = getelementptr i8, ptr %.sroa.0.01.i.i57, i64 16
  %.val8.i.i = load i64, ptr %i.p, align 8, !noalias !1064, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11, i64 range(i64 0, -9223372036854775808) %.val8.i.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val7.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !1065, !noalias !1064 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub nsw i64 %.val11, %.val8.i.i
  %spec.select.i.i.i.i.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  switch i8 %i.u, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1i_14LeafOrInternalE11search_treeB1y_EB1X_.exit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.sroa.8.0.i.i56, %.lr.ph ] ; 3 uses
  %i.v = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.v, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2568
  %i.x = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.4.0.i.ph.i
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1064, !nonnull !7, !noundef !7
  %i.aa = add i64 %.sroa.3.0.i, -1
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.j

_RINvMs_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1i_14LeafOrInternalE11search_treeB1y_EB1X_.exit: ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.ab, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.i.i56, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvMs_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1i_14LeafOrInternalE11search_treeB1y_EB1X_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs2bNgeUs5Jlc_6diesel.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.h
  resume { ptr, i32 } %i.ac

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RINvMs_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1i_14LeafOrInternalE11search_treeB1y_EB1X_.exit
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit
  ret void

bb.k:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.4.0.i.ph.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE6insertB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(208) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [208 x i8], align 8               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE5entryB1w_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !range !14, !noundef !7
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 208, i1 false)
  call void @_RNvMs5_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE6insertB1K_(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(208) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE12insert_entryB1I_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(208) %i.b)
  %i.j = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE8into_mutB1K_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.g:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef align 8 dereferenceable(208) %3) #22
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB7_7set_val9SetValZSTE6insertB1e_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1075, !noalias !1077, !noundef !7 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1075, !noalias !1077, !noundef !7 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !1076, !noalias !1078, !nonnull !7 ; 2 uses
  %i.o = load i64, ptr %i.h, align 8, !alias.scope !1076, !noalias !1078 ; 4 uses
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !1076, !noalias !1078, !nonnull !7 ; 2 uses
  %i.q = load i64, ptr %i.j, align 8, !alias.scope !1076, !noalias !1078 ; 4 uses
  %i.r = load i64, ptr %i.k, align 8, !range !14, !alias.scope !1076, !noalias !1078
  %.fr.i = freeze i64 %i.r
  %.not.i.i.i.i.i = icmp eq i64 %.fr.i, -1
  %i.s = load ptr, ptr %i.l, align 8, !alias.scope !1076, !noalias !1078, !nonnull !7
  %i.t = load i64, ptr %i.m, align 8, !alias.scope !1076, !noalias !1078 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.us.us.i, label %.split.i

.split.us.us.i:                                   ; preds = %bb.b, %2
  %.sroa.3.0.i.us.i = phi i64 [ %7, %2 ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.0.0.i.us.i = phi ptr [ %6, %2 ], [ %i.d, %bb.b ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us.i, i64 98
  %i.w = load i16, ptr %i.v, align 2, !noalias !1079, !noundef !7 ; 2 uses
  %i.x = zext i16 %i.w to i64                     ; 3 uses
  %.idx82 = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx82
  %i.z = icmp eq i16 %i.w, 0
  br i1 %i.z, label %.split38.us.us.i, label %.lr.ph79

2:                                                ; preds = %.split38.us.us.i
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us.i, i64 104
  %4 = icmp samesign ult i64 %.sroa.4.0.i.ph.i.us.us.i, 12
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.4.0.i.ph.i.us.us.i
  %6 = load ptr, ptr %5, align 8, !noalias !1079, !nonnull !7, !noundef !7
  %7 = add i64 %.sroa.3.0.i.us.i, -1
  br label %.split.us.us.i

bb.c:                                             ; preds = %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i
  %i.aa = icmp eq ptr %i.ab, %i.y
  br i1 %i.aa, label %.split38.us.us.i, label %.lr.ph79

.lr.ph79:                                         ; preds = %.split.us.us.i, %bb.c
  %.sroa.0.03.i.i.us.us.i78 = phi ptr [ %i.ab, %bb.c ], [ %i.u, %.split.us.us.i ] ; 2 uses
  %.sroa.8.0.i.i.us.us.i77 = phi i64 [ %i.ac, %bb.c ], [ 0, %.split.us.us.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.us.us.i78, i64 8 ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.8.0.i.i.us.us.i77, 1
  %.val6.i.i.us.us.i = load ptr, ptr %.sroa.0.03.i.i.us.us.i78, align 8, !noalias !1079, !nonnull !7, !align !8, !noundef !7 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6.i.i.us.us.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1080, !noalias !1081, !nonnull !7, !noundef !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val6.i.i.us.us.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !1080, !noalias !1081, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.us.us.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ag)
  %i.ah = tail call i32 @memcmp(ptr nonnull %i.n, ptr nonnull %i.ae, i64 %spec.store.select.i.i.i.i.us.us.i), !noalias !1082 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %i.o, %i.ag
  %spec.select.i.i.i.i.us.us.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.us.us.i, i64 0)
  %i.am = icmp eq i64 %spec.select.i.i.i.i.us.us.i, 0
  br i1 %i.am, label %bb.d, label %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i

bb.d:                                             ; preds = %.lr.ph79
  %i.an = getelementptr inbounds nuw i8, ptr %.val6.i.i.us.us.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1080, !noalias !1081, !nonnull !7, !noundef !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val6.i.i.us.us.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1080, !noalias !1081, !noundef !7 ; 2 uses
  %spec.store.select1.i.i.i.i.us.us.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.aq)
  %i.ar = tail call i32 @memcmp(ptr nonnull %i.p, ptr nonnull %i.ao, i64 %spec.store.select1.i.i.i.i.us.us.i), !noalias !1082 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = sub i64 %i.q, %i.aq
  %spec.select32.i.i.i.i.us.us.i = select i1 %i.at, i64 %i.au, i64 %i.as ; 2 uses
  %i.av = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select32.i.i.i.i.us.us.i, i64 0)
  %i.aw = icmp eq i64 %spec.select32.i.i.i.i.us.us.i, 0
  br i1 %i.aw, label %bb.e, label %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.val6.i.i.us.us.i, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !range !14, !alias.scope !1080, !noalias !1081, !noundef !7
  %.not30.i.i.i.i.us.us.i = icmp ne i64 %i.ay, -1
  %..i.i.i.i.us.us.i = sext i1 %.not30.i.i.i.i.us.us.i to i8
  br label %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i

_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i: ; preds = %bb.e, %bb.d, %.lr.ph79
  %.sroa.0.0.i.i.i.i.us.us.i = phi i8 [ %i.al, %.lr.ph79 ], [ %i.av, %bb.d ], [ %..i.i.i.i.us.us.i, %bb.e ]
  switch i8 %.sroa.0.0.i.i.i.i.us.us.i, label %.split40.us.i [
    i8 -1, label %.split38.us.us.i
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

.split38.us.us.i:                                 ; preds = %bb.c, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i, %.split.us.us.i
  %.sroa.4.0.i.ph.i.us.us.i = phi i64 [ %i.x, %.split.us.us.i ], [ %i.x, %bb.c ], [ %.sroa.8.0.i.i.us.us.i77, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i ] ; 3 uses
  %i.az = icmp eq i64 %.sroa.3.0.i.us.i, 0
  br i1 %i.az, label %.split46.us.i, label %2

.split.i:                                         ; preds = %bb.b, %bb.j
  %.sroa.3.0.i.i = phi i64 [ %i.ct, %bb.j ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %i.cs, %bb.j ], [ %i.d, %bb.b ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 98
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !1079, !noundef !7 ; 2 uses
  %i.bd = zext i16 %i.bc to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.bd, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx
  %i.bf = icmp eq i16 %i.bc, 0
  br i1 %i.bf, label %.split38.i, label %.lr.ph

bb.f:                                             ; preds = %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i
  %i.bg = icmp eq ptr %i.bh, %i.be
  br i1 %i.bg, label %.split38.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split.i, %bb.f
  %.sroa.0.03.i.i.i75 = phi ptr [ %i.bh, %bb.f ], [ %i.ba, %.split.i ] ; 2 uses
  %.sroa.8.0.i.i.i74 = phi i64 [ %i.bi, %bb.f ], [ 0, %.split.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i75, i64 8 ; 2 uses
  %i.bi = add nuw nsw i64 %.sroa.8.0.i.i.i74, 1
  %.val6.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i75, align 8, !noalias !1079, !nonnull !7, !align !8, !noundef !7 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1080, !noalias !1081, !nonnull !7, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1080, !noalias !1081, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.bm)
  %i.bn = tail call i32 @memcmp(ptr nonnull %i.n, ptr nonnull %i.bk, i64 %spec.store.select.i.i.i.i.i), !noalias !1082 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub i64 %i.o, %i.bm
  %spec.select.i.i.i.i.i = select i1 %i.bp, i64 %i.bq, i64 %i.bo ; 2 uses
  %i.br = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  %i.bs = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.g, label %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.bt = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !1080, !noalias !1081, !nonnull !7, !noundef !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1080, !noalias !1081, !noundef !7 ; 2 uses
  %spec.store.select1.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.bw)
  %i.bx = tail call i32 @memcmp(ptr nonnull %i.p, ptr nonnull %i.bu, i64 %spec.store.select1.i.i.i.i.i), !noalias !1082 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp eq i32 %i.bx, 0
  %i.ca = sub i64 %i.q, %i.bw
  %spec.select32.i.i.i.i.i = select i1 %i.bz, i64 %i.ca, i64 %i.by ; 2 uses
  %i.cb = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select32.i.i.i.i.i, i64 0)
  %i.cc = icmp eq i64 %spec.select32.i.i.i.i.i, 0
  br i1 %i.cc, label %bb.h, label %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 48
  %i.ce = load i64, ptr %i.cd, align 8, !range !14, !alias.scope !1080, !noalias !1081, !noundef !7
  %.not31.i.i.i.i.i = icmp eq i64 %i.ce, -1
  br i1 %.not31.i.i.i.i.i, label %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !1080, !noalias !1081, !nonnull !7, !noundef !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !1080, !noalias !1081, !noundef !7 ; 2 uses
  %spec.store.select2.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.ci)
  %i.cj = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.cg, i64 %spec.store.select2.i.i.i.i.i), !noalias !1082 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp eq i32 %i.cj, 0
  %i.cm = sub i64 %i.t, %i.ci
  %spec.select33.i.i.i.i.i = select i1 %i.cl, i64 %i.cm, i64 %i.ck
  %i.cn = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select33.i.i.i.i.i, i64 0)
  br label %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i

_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.cn, %bb.i ], [ %i.cb, %bb.g ], [ 1, %bb.h ], [ %i.br, %.lr.ph ]
  switch i8 %.sroa.0.0.i.i.i.i.i, label %.split40.us.i [
    i8 -1, label %.split38.i
    i8 0, label %.loopexit
    i8 1, label %bb.f
  ]

.split40.us.i:                                    ; preds = %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i
  unreachable

.split38.i:                                       ; preds = %bb.f, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i, %.split.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bd, %.split.i ], [ %i.bd, %bb.f ], [ %.sroa.8.0.i.i.i74, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i ] ; 3 uses
  %i.co = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.co, label %.split46.us.i, label %bb.j

bb.j:                                             ; preds = %.split38.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 104
  %i.cq = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.sroa.4.0.i.ph.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !1079, !nonnull !7, !noundef !7
  %i.ct = add i64 %.sroa.3.0.i.i, -1
  br label %.split.i

.split46.us.i:                                    ; preds = %.split38.i, %.split38.us.us.i
  %.us-phi47.i = phi i64 [ %.sroa.4.0.i.ph.i.us.us.i, %.split38.us.us.i ], [ %.sroa.4.0.i.ph.i.i, %.split38.i ]
  %.us-phi48.i = phi ptr [ %.sroa.0.0.i.us.i, %.split38.us.us.i ], [ %.sroa.0.0.i.i, %.split38.i ]
  %i.cu = ptrtoint ptr %.us-phi48.i to i64
  br label %bb.k

.loopexit:                                        ; preds = %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i
  %.us-phi41.i = phi i64 [ %.sroa.3.0.i.us.i, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i ], [ %.sroa.3.0.i.i, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i ]
  %.us-phi42.i = phi ptr [ %.sroa.0.0.i.us.i, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i ], [ %.sroa.0.0.i.i, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i ]
  %.us-phi43.i = phi i64 [ %.sroa.8.0.i.i.us.us.i77, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.us.us.i ], [ %.sroa.8.0.i.i.i74, %_RNvXs9_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtB7_3Ord3cmpBJ_.exit.i.i.i ]
  %i.cv = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.us-phi42.i, ptr %i.c, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.us-phi41.i, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.us-phi43.i, ptr %.sroa.14.8..sroa_idx, align 8
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.cv, ptr %.sroa.16.8..sroa_idx, align 8
  call void @_RNvMs5_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB9_7set_val9SetValZSTE6insertB1s_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.k:                                             ; preds = %.split46.us.i, %bb.a
  %.sroa.16.0.ph = phi i64 [ undef, %bb.a ], [ %.us-phi47.i, %.split46.us.i ]
  %.sroa.11.0.ph = phi i64 [ 0, %bb.a ], [ %i.cu, %.split46.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.16.0.ph, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB9_7set_val9SetValZSTE12insert_entryB1q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
  %i.cw = call noundef nonnull ptr @_RNvMs5_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB9_7set_val9SetValZSTE8into_mutB1s_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k
  %i.cx = phi i1 [ true, %.loopexit ], [ false, %bb.k ]
  ret i1 %i.cx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker6ValMutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB19_14LeafOrInternalE19into_key_val_mut_atB1R_(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.b = icmp ult i64 %2, 11
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %2
  %i.d = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %2
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjRINtNtBb_3vec3VecINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 3 uses
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, 1
  store ptr %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 11
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.c, i64 200
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.prol = phi ptr [ %i.m, %.prol.preheader ], [ %i.l, %bb.c ]
  %.sroa.019.0.in.prol = phi i64 [ %.sroa.019.0.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.prol = add i64 %.sroa.019.0.in.prol, -1 ; 2 uses
  %.sroa.017.0.prol = load ptr, ptr %.sroa.017.0.in.prol, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.0.prol, i64 192 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1083

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.prol, %.prol.preheader ]
end_hunk_0
