Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.10?download=true
inline.NumInlined: 294
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel:bb.a
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  br i1 %2, label %bb.g, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #25
  br label %bb.h

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEE13new_uninit_inCsjRvGck33osM_6diesel() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 728, i64 noundef range(i64 1, -9223372036854775807) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !291

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEE13new_uninit_inCsjRvGck33osM_6diesel() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 632, i64 noundef range(i64 1, -9223372036854775807) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !291

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyE13new_uninit_inBM_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !291

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB4_9Statement4bind(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr %.0.val, i8 noundef range(i8 0, 7) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = load i32, ptr %2, align 8, !range !143, !noundef !15
  switch i32 %i.g, label %default.unreachable18 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
  ]

default.unreachable18:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %1, 1
  br i1 %i.h, label %bb.j, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %1, 1
  br i1 %i.i, label %bb.p, label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i8 %1, 0
  br i1 %i.j, label %bb.u, label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.k = icmp eq i8 %1, 0
  br i1 %i.k, label %bb.y, label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.l = and i8 %1, 6
  %switch = icmp eq i8 %i.l, 4
  br i1 %switch, label %bb.ac, label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i8 %1, 6
  br i1 %i.m, label %bb.ad, label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.n = and i8 %1, 6
  %switch183 = icmp eq i8 %i.n, 2
  br i1 %switch183, label %bb.ae, label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.o = tail call noundef i32 @sqlite3_bind_null(ptr noundef nonnull %.0.val, i32 noundef %3) #25
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !15 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 2147483647
  br i1 %i.r, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %1, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsg_NtNtCsjRvGck33osM_6diesel6sqlite7backendNtB5_10SqliteTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.495.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.s, align 8
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs7_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collectorNtB5_23InternalSqliteBindValueNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4173.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @39, ptr noundef nonnull %i.c)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit unwind label %bb.af

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !15, !noundef !15
  %i.v = trunc nuw nsw i64 %i.q to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.w = tail call noundef i32 @sqlite3_bind_text(ptr noundef nonnull %.0.val, i32 noundef %3, ptr noundef nonnull %i.u, i32 noundef %i.v, ptr noundef null) #25
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.x = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #25 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.n, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #26
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.m
  store i8 2, ptr %i.x, align 1
  %i.z = ptrtoint ptr %i.x to i64
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.4147.0..sroa_idx, align 8
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.6149.0..sroa_idx, align 8
  br label %bb.am

bb.o:                                             ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.z, %bb.v, %bb.q, %bb.l, %bb.i
  %.sroa.080.0 = phi ptr [ null, %bb.l ], [ %i.ad, %bb.q ], [ null, %bb.v ], [ %i.ay, %bb.z ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.i ] ; 4 uses
  %.sroa.883.0 = phi i64 [ undef, %bb.l ], [ %i.af, %bb.q ], [ undef, %bb.v ], [ %i.ba, %bb.z ], [ undef, %bb.ac ], [ undef, %bb.ad ], [ undef, %bb.ae ], [ undef, %bb.i ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.w, %bb.l ], [ %i.ai, %bb.q ], [ %i.at, %bb.v ], [ %i.bd, %bb.z ], [ %i.bi, %bb.ac ], [ %i.bl, %bb.ad ], [ %i.bm, %bb.ae ], [ %i.o, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = tail call noundef ptr @sqlite3_db_handle(ptr noundef nonnull %.0.val) #25
  %i.ab = icmp eq i32 %.sroa.0.0, 0
  br i1 %i.ab, label %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread, label %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit

_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit: ; preds = %bb.o
  call fastcc void @_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt10last_error(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noundef %i.aa)
  %.pr = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread, label %bb.an

bb.p:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !15 ; 5 uses
  %i.ag = icmp ugt i64 %i.af, 2147483647
  br i1 %i.ag, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = trunc nuw nsw i64 %i.af to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ai = tail call noundef i32 @sqlite3_bind_text(ptr noundef nonnull %.0.val, i32 noundef %3, ptr noundef nonnull %i.ad, i32 noundef %i.ah, ptr noundef null) #25
  br label %bb.o

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.aj = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #25 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit199, !prof !8

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #26
          to label %.noexc unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit

.noexc:                                           ; preds = %bb.s
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit: ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.af, i64 noundef 1) #25
  br label %bb.t

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit199: ; preds = %bb.r
  store i8 2, ptr %i.aj, align 1
  %i.am = ptrtoint ptr %i.aj to i64
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %.sroa.4166.0..sroa_idx, align 8
  %.sroa.6168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.6168.0..sroa_idx, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.af, i64 noundef 1) #25
  br label %bb.am

bb.t:                                             ; preds = %.body, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit204, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit
  %.pn = phi { ptr, i32 } [ %i.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit204 ], [ %eh.lpad-body, %.body ], [ %i.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit ]
  resume { ptr, i32 } %.pn

bb.u:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !15 ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 2147483647
  br i1 %i.ap, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !15, !noundef !15
  %i.as = trunc nuw nsw i64 %i.ao to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.at = tail call noundef i32 @sqlite3_bind_blob(ptr noundef nonnull %.0.val, i32 noundef %3, ptr noundef nonnull %i.ar, i32 noundef %i.as, ptr noundef null) #25
  br label %bb.o

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.au = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #25 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.x, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit200, !prof !8

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #26
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit200: ; preds = %bb.w
  store i8 2, ptr %i.au, align 1
  %i.aw = ptrtoint ptr %i.au to i64
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %.sroa.4110.0..sroa_idx, align 8
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.6112.0..sroa_idx, align 8
  br label %bb.am

bb.y:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !15 ; 5 uses
  %i.bb = icmp ugt i64 %i.ba, 2147483647
  br i1 %i.bb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = trunc nuw nsw i64 %i.ba to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bd = tail call noundef i32 @sqlite3_bind_blob(ptr noundef nonnull %.0.val, i32 noundef %3, ptr noundef nonnull %i.ay, i32 noundef %i.bc, ptr noundef null) #25
  br label %bb.o

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.be = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #25 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit206, !prof !8

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #26
          to label %.noexc201 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit204

.noexc201:                                        ; preds = %bb.ab
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit204: ; preds = %bb.ab
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba, i64 noundef 1) #25
  br label %bb.t

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit206: ; preds = %bb.aa
  store i8 2, ptr %i.be, align 1
  %i.bh = ptrtoint ptr %i.be to i64
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %.sroa.4128.0..sroa_idx, align 8
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.6130.0..sroa_idx, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba, i64 noundef 1) #25
  br label %bb.am

bb.ac:                                            ; preds = %bb.f
  %.sroa.087.0.in = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.087.0 = load i32, ptr %.sroa.087.0.in, align 4, !noundef !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bi = tail call noundef i32 @sqlite3_bind_int(ptr noundef nonnull %.0.val, i32 noundef %3, i32 noundef %.sroa.087.0) #25
  br label %bb.o

bb.ad:                                            ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bl = tail call noundef i32 @sqlite3_bind_int64(ptr noundef nonnull %.0.val, i32 noundef %3, i64 noundef %i.bk) #25
  br label %bb.o

bb.ae:                                            ; preds = %bb.h
  %.sroa.086.0.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.086.0 = load double, ptr %.sroa.086.0.in, align 8, !noundef !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bm = tail call noundef i32 @sqlite3_bind_double(ptr noundef nonnull %.0.val, i32 noundef %3, double noundef %.sroa.086.0) #25
  br label %bb.o

bb.af:                                            ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ah, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.bn, %bb.af ], [ %i.bq, %bb.ah ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
  br label %bb.t

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !358
  %i.bo = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !358 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ag, label %bb.aj, !prof !8

bb.ag:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26
          to label %.noexc207 unwind label %bb.ah

.noexc207:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #27
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.aj:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @4, ptr %.sroa.590.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.bs = load i32, ptr %i.e, align 8, !range !143, !alias.scope !361, !noundef !15
  switch i32 %i.bs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit [
    i32 1, label %bb.ak
    i32 3, label %bb.al
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i: ; preds = %bb.al, %bb.ak
  %.val1.sink.i = phi i64 [ %.val3.i, %bb.ak ], [ %.val1.i, %bb.al ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i = load ptr, ptr %i.bt, align 8, !alias.scope !361, !nonnull !15, !noundef !15
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.sink.i, i64 noundef 1) #25, !noalias !361
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val3.i = load i64, ptr %i.bu, align 8, !alias.scope !361, !noundef !15 ; 2 uses
  %i.bv = icmp eq i64 %.val3.i, 0
  br i1 %i.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i

bb.al:                                            ; preds = %bb.aj
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i = load i64, ptr %i.bw, align 8, !alias.scope !361, !noundef !15 ; 2 uses
  %i.bx = icmp eq i64 %.val1.i, 0
  br i1 %i.bx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit: ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.am:                                            ; preds = %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit210, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit199, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit200, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit206, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit
  ret void

bb.an:                                            ; preds = %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit
  %.not180 = icmp eq ptr %.sroa.080.0, null
  %i.by = icmp eq i64 %.sroa.883.0, 0
  %or.cond = or i1 %.not180, %i.by
  br i1 %or.cond, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit210, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i209

_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread: ; preds = %bb.o, %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.080.0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.883.0, ptr %i.ca, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.am

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i209: ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.080.0) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.080.0, i64 noundef %.sroa.883.0, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit210

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit210: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i209, %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.am
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB4_9Statement7prepare(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 2) %4, i64 %5, ptr noalias noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  %i.e = icmp ugt i64 %3, 2147483647
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NvMs_NtNtCs40k4W9msRzi_5alloc3ffi5c_strNtBa_7CString3newReNtB5_11SpecNewImpl13spec_new_impl(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.g = load i64, ptr %i.b, align 8, !range !89, !noundef !15 ; 2 uses
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.h = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #25 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #26
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i8 2, ptr %i.h, align 1
  %i.j = ptrtoint ptr %i.h to i64
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.665.0..sroa_idx, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.472.0.copyload = load ptr, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x i64>, ptr %.sroa.573.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %0, align 8
  store ptr %.sroa.472.0.copyload, ptr %.sroa.480.0..sroa_idx, align 8
  store <2 x i64> %i.k, ptr %.sroa.581.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %3 to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = trunc nuw nsw i64 %4 to i32
  %. = xor i32 %i.q, 1
  %i.r = call noundef i32 @sqlite3_prepare_v3(ptr noundef nonnull %i.f, ptr noundef nonnull %i.n, i32 noundef %i.l, i32 noundef %., ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #25
  store i8 0, ptr %i.n, align 1
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i: ; preds = %bb.f
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.p, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit: ; preds = %bb.f, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread, label %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit

_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit
  call fastcc void @_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt10last_error(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.f)
  %.pr = load i64, ptr %i.a, align 8
  %.not98 = icmp eq i64 %.pr, -1
  br i1 %.not98, label %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit, %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = load ptr, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.495.0..sroa_idx, align 8
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @41, ptr %.sroa.596.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt16ensure_sqlite_ok.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.w, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, %bb.h, %bb.g, %bb.e, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt10last_error(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.c = tail call noundef ptr @sqlite3_errmsg(ptr noundef %1) #25, !noalias !364 ; 2 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25, !noalias !364
  %i.e = add i64 %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
  call void @_RNvMsD_NtNtCs40k4W9msRzi_5alloc3ffi5c_strNtNtNtCscI6d9CVNmLh_4core3ffi5c_str4CStr15to_string_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e), !noalias !364
  %i.f = load i64, ptr %i.a, align 8, !range !89, !noalias !364, !noundef !15
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt18last_error_message.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !364, !nonnull !15, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !364, !noundef !15 ; 7 uses
  %.not.i.i = icmp slt i64 %i.j, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d, !prof !200

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel.exit.thread8.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !367
  %i.l = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !367 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.e ], [ 0, %bb.c ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #26, !noalias !364
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel.exit.thread8.i: ; preds = %bb.g, %bb.d
  %i.n = phi ptr [ %i.l, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.d ]
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !364
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !364
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.j, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !364
  br label %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt18last_error_message.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.h, i64 %i.j, i1 false), !noalias !364
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel.exit.thread8.i

_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt18last_error_message.exit: ; preds = %bb.b, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !364
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !370
  %i.o = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !370 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %bb.l, !prof !8

bb.h:                                             ; preds = %_RNvNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt18last_error_message.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1r_4SendEL_ENtB6_5Debug3fmtCsjRvGck33osM_6diesel:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !408, !noalias !411, !nonnull !15, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !408, !noalias !411, !nonnull !15, !align !134, !noundef !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !15, !noalias !413, !nonnull !15
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !408, !inline_history !414
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjRvGck33osM_6diesel6result24DatabaseErrorInformationNtNtB8_6marker4SyncNtB24_4SendEL_ENtB6_5Debug3fmtB1a_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !134, !noundef !15 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !15, !align !134, !noundef !15
  %i.c = tail call noundef zeroext i1 @_RNvXNtCsjRvGck33osM_6diesel6resultDNtB2_24DatabaseErrorInformationNtNtCscI6d9CVNmLh_4core6marker4SyncNtB14_4SendEL_NtNtB16_3fmt5Debug3fmt(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorENtB6_5Debug3fmtB19_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !134, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !415, !noalias !418, !nonnull !15, !noundef !15
  %i.c = tail call noundef zeroext i1 @_RNvXsk_NtCsjRvGck33osM_6diesel6resultNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !415, !inline_history !420
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyENtB6_5Debug3fmtB1b_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !15, !align !134, !noundef !15
  %.val = load ptr, ptr %i.b, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !421
  store ptr %.val, ptr %i.a, align 8, !noalias !421
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxShENtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !134, !noundef !15 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15
  %i.c = tail call noundef zeroext i1 @_RNvXsr_NtCscI6d9CVNmLh_4core3fmtShNtB5_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxeENtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !134, !noundef !15 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15
  %i.c = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorENtB6_7Display3fmtB19_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !134, !noundef !15
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.b = tail call noundef zeroext i1 @_RNvXs4_NtCsjRvGck33osM_6diesel6resultNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg5types10primitivesPeINtNtBb_11deserialize7FromSqlNtNtBb_9sql_types4TextNtNtB9_7backend2PgE8from_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !15
  call void @_RNvNtNtCscI6d9CVNmLh_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %i.a, align 8, !range !144, !noundef !15
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !427
  %i.h = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !427 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #26, !noalias !427
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  store ptr %.sroa.07.0.copyload, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.48.0.copyload, ptr %.sroa.4.0..sroa_idx9, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @56, ptr %i.k, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0.copyload, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.48.0.copyload, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  %storemerge = phi i64 [ 0, %bb.d ], [ 1, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg5types5moneyNtB5_7PgMoneyNtNtNtCscI6d9CVNmLh_4core3ops5arith3Sub3sub(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !291

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_14BoundStatementNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = load i64, ptr %0, align 8, !range !144, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = trunc nuw i64 %i.h to i1
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !15, !align !134
  %.sroa.0.0 = select i1 %i.j, ptr %i.k, ptr %i.i ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !15, !noundef !15
  %i.l = tail call noundef i32 @sqlite3_reset(ptr noundef nonnull %.sroa.0.0.val) #25 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.p = load i64, ptr %i.m, align 8, !range !87, !noundef !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !15 ; 3 uses
  store i64 0, ptr %i.m, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  store i64 0, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, 384307168202282326
  tail call void @llvm.assume(i1 %i.s)
  %.idx = mul nuw nsw i64 %i.r, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.o, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx, align 8
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB13_3ptr8non_null7NonNullShEEEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.body21:                                          ; preds = %bb.o, %bb.b
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.v, %bb.b ], [ %i.bg, %bb.o ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB13_3ptr8non_null7NonNullShEEEENtNtNtB13_3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsjRvGck33osM_6diesel.exit unwind label %bb.l

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit
  %i.w = phi ptr [ %i.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit ], [ %i.o, %bb.a ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !430, !noalias !433
  %.sroa.5.8.copyload = load i32, ptr %i.w, align 8, !noalias !430
  %.sroa.724.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.724.8.copyload = load ptr, ptr %.sroa.724.8..sroa_idx, align 8, !noalias !430 ; 2 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8, !noalias !430 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 7, ptr %i.e, align 8
  %.sroa.06.0.val = load ptr, ptr %.sroa.0.0, align 8
  invoke fastcc void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB4_9Statement4bind(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr %.sroa.06.0.val, i8 noundef 1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.e, i32 noundef %.sroa.5.8.copyload)
          to label %bb.m unwind label %bb.b

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB13_3ptr8non_null7NonNullShEEEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit, %bb.a
  call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB13_3ptr8non_null7NonNullShEEEENtNtNtB13_3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noundef !15 ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB13_3ptr8non_null7NonNullShEEEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !15, !align !134, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.z, ptr %i.d, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i8, ptr %i.ad, align 8, !range !435, !noundef !15
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1g_6sqlite7backend6SqliteEEL_EEB1g_.exit, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB13_3ptr8non_null7NonNullShEEEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !15, !noundef !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !15, !align !134, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @62, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.am, align 8
  store i32 4, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !15, !nonnull !15
  invoke void %i.ao(ptr noundef nonnull %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.j unwind label %bb.k

bb.f:                                             ; preds = %bb.j, %bb.c
  %i.ap = phi ptr [ %.pre39, %bb.j ], [ %i.ab, %bb.c ] ; 5 uses
  %i.aq = phi ptr [ %.pre, %bb.j ], [ %i.z, %bb.c ] ; 3 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !invariant.load !15 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.ar(ptr noundef nonnull %i.aq)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !87, !invariant.load !15 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1g_6sqlite7backend6SqliteEEL_EEB1g_.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !88, !invariant.load !15
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1g_6sqlite7backend6SqliteEEL_EEB1g_.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !87, !invariant.load !15 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsjRvGck33osM_6diesel.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !88, !invariant.load !15
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsjRvGck33osM_6diesel.exit

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load ptr, ptr %i.d, align 8
  %.pre39 = load ptr, ptr %i.ac, align 8
  br label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1g_6sqlite7backend6SqliteEEL_EEB1g_.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.h
  store ptr null, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsjRvGck33osM_6diesel.exit: ; preds = %bb.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %.body21, %bb.k
  %.pn = phi { ptr, i32 } [ %eh.lpad-body22, %.body21 ], [ %i.bd, %bb.k ], [ %i.ax, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.ax, %bb.i ]
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %.val16 = load ptr, ptr %i.d, align 8
  %.val17 = load ptr, ptr %i.ac, align 8, !nonnull !15, !align !134, !noundef !15
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1g_6sqlite7backend6SqliteEEL_EEB1g_(ptr %.val16, ptr nonnull %.val17) #27
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlINtNtB4_6option6OptionINtNtB2_8non_null7NonNullShEEEEECsjRvGck33osM_6diesel.exit unwind label %bb.l

bb.l:                                             ; preds = %.body21, %bb.k
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.bf = load i64, ptr %i.f, align 8, !range !14, !alias.scope !436, !noundef !15
  %.not.i20 = icmp eq i64 %i.bf, -1
  br i1 %.not.i20, label %bb.r, label %bb.n, !prof !180

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 165, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #26
          to label %bb.p unwind label %bb.o, !noalias !436

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #27
          to label %.body21 unwind label %bb.q, !noalias !436

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !436
  unreachable

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not13 = icmp eq ptr %.sroa.724.8.copyload, null
  %i.bi = icmp eq i64 %.sroa.8.8.copyload, 0
  %or.cond = select i1 %.not13, i1 true, i1 %i.bi
  br i1 %or.cond, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i23

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i23: ; preds = %bb.r
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.724.8.copyload, i64 noundef %.sroa.8.8.copyload, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i23, %bb.r
  %i.bj = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !439, !noalias !433, !nonnull !15, !noundef !15
  %i.bk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !439, !noalias !433, !nonnull !15, !noundef !15 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bj
  br i1 %i.bl, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB13_3ptr8non_null7NonNullShEEEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg5types10primitivesReINtNtBb_11deserialize10FromSqlRefNtNtBb_9sql_types4TextNtNtB9_7backend2PgE8from_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !15
  call void @_RNvNtNtCscI6d9CVNmLh_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %i.a, align 8, !range !144, !noundef !15
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !441
  %i.h = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !441 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #26, !noalias !441
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  store ptr %.sroa.07.0.copyload, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.48.0.copyload, ptr %.sroa.4.0..sroa_idx9, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @56, ptr %i.k, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0.copyload, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.48.0.copyload, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  %storemerge = phi i64 [ 0, %bb.d ], [ 1, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg5types5moneyNtB5_7PgMoneyNtNtNtCscI6d9CVNmLh_4core3ops5arith9SubAssign10sub_assign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !15
  %i.b = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.a, i64 %1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !291

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i1 } %i.b, 0
  store i64 %i.d, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCsjRvGck33osM_6diesel9migrationNtB5_16MigrationVersionNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !15, !noundef !15
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !15
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsjRvGck33osM_6diesel10connection15instrumentationINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB5_15InstrumentationEL_EB1x_19on_connection_event(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !15, !align !134, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !15, !nonnull !15
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCsjRvGck33osM_6diesel2pg5types10primitiveseINtNtBb_9serialize5ToSqlNtNtB7_9sql_types6CitextNtNtB9_7backend2PgE6to_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_2pg7backend2PgENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.c = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #25 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsjRvGck33osM_6diesel.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #26
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsjRvGck33osM_6diesel.exit: ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @53, ptr %i.g, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsjRvGck33osM_6diesel.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCscI6d9CVNmLh_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsG_NtCsjRvGck33osM_6diesel6resultNtB5_10EmptyQueryNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsK_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtCscI6d9CVNmLh_4core5error5Error5causeCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = tail call { ptr, ptr } @_RNvXs6_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5cause(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsK_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtCscI6d9CVNmLh_4core5error5Error6sourceCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
end_hunk_1
