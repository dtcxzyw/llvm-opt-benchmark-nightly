Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.00?download=true
inline.NumInlined: 201
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel5mysql5types10primitiveslINtNtBc_11deserialize7FromSqlNtNtBc_9sql_types7IntegerNtNtBa_7backend5MysqlE8from_sql0Bc_:bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #20
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorE3newBI_.exit: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection4copyNtB2_12CopyFromSink6finish(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 !guid !105 {
bb.a:
  tail call void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection16finish_copy_from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i32 1, 0) i32 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_type(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !109 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = icmp ugt i64 %1, 2147483647
  %i.c = shl nuw nsw i64 %1, 32
  %.sroa.04.0.insert.insert = select i1 %i.b, i64 513, i64 %i.c ; 2 uses
  %i.d = trunc i64 %.sroa.04.0.insert.insert to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  store i8 2, ptr %i.a, align 1, !noalias !110
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit: ; preds = %bb.a
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.04.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.e = tail call noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult11column_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 noundef %.sroa.6.0.extract.trunc.i) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit
  ret i32 %i.e

bb.d:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 2147483648) i64 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult12column_count(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !115 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116
  store i8 3, ptr %i.a, align 1, !noalias !116
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 86, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21, !noalias !117
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit: ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult13rows_affected(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !122 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult13rows_affected(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @_RNvMs3_NtNtCscI6d9CVNmLh_4core3ffi5c_strNtB5_4CStr6to_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d)
  %i.e = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !123
  %i.h = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 16, i64 noundef range(i64 1, 9) 8) #23, !noalias !123 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #21, !noalias !123
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @6 to i64), ptr %.sroa.535.0..sroa_idx, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  switch i64 %i.l, label %thread-pre-split.i [
    i64 0, label %bb.k
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.j, align 1, !alias.scope !124, !noundef !5 ; 2 uses
  switch i8 %i.m, label %bb.f [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.d
  %.pr.i = load i8, ptr %i.j, align 1, !alias.scope !124
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i, %bb.e
  %i.n = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.m, %bb.e ]
  %cond.i = icmp eq i8 %i.n, 43                   ; 2 uses
  %i.o = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.l, %i.o          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.p = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.p, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.f
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCscI6d9CVNmLh_4core3numj16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.i
  %.not52.i = icmp eq i64 %i.r, 0
  br i1 %.not52.i, label %_RNvMsv_NtCscI6d9CVNmLh_4core3numj16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.f, %.preheader56.i
  %.sroa.0.1.i80 = phi ptr [ %i.q, %.preheader56.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %.sroa.15.1.i79 = phi i64 [ %i.r, %.preheader56.i ], [ %.sroa.15.0.i, %bb.f ]
  %.sroa.042.0.i78 = phi i64 [ %i.ac, %.preheader56.i ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i80, i64 1
  %i.r = add nsw i64 %.sroa.15.1.i79, -1          ; 2 uses
  %i.s = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i78, i64 10) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 0         ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.s, 1
  %i.v = load i8, ptr %.sroa.0.1.i80, align 1, !alias.scope !124, !noundef !5 ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.i, label %.loopexit

bb.h:                                             ; preds = %.preheader56.i.preheader
  %i.z = add i8 %i.v, -48
  %i.aa = icmp ult i8 %i.z, 10
  %spec.select = select i1 %i.aa, i8 2, i8 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = add i64 %i.t, %i.ab                     ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %i.t
  br i1 %i.ad, label %.loopexit, label %.preheader56.i, !prof !7

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %.sroa.0.269.i = phi ptr [ %i.ak, %bb.j ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.aj, %bb.j ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.am, %bb.j ], [ 0, %.preheader.i ]
  %i.ae = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !124, !noundef !5
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.i
  %i.ai = mul i64 %.sroa.042.267.i, 10
  %i.aj = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = add i64 %i.ai, %i.al                    ; 2 uses
  %.not53.i = icmp eq i64 %i.aj, 0
  br i1 %.not53.i, label %_RNvMsv_NtCscI6d9CVNmLh_4core3numj16from_ascii_radix.exit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.m

.loopexit:                                        ; preds = %bb.i, %bb.g, %.lr.ph.i, %bb.h, %bb.e, %bb.e
  %.sroa.4.0.ph = phi i8 [ 1, %.lr.ph.i ], [ %spec.select, %bb.h ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.g ], [ 2, %bb.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.ao = call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 1, i64 noundef range(i64 1, 9) 1) #23 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit43, !prof !7

bb.l:                                             ; preds = %.loopexit
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #21
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit43: ; preds = %.loopexit
  store i8 %.sroa.4.0.ph, ptr %i.ao, align 1
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @4, ptr %.sroa.539.0..sroa_idx, align 8
  br label %bb.m

_RNvMsv_NtCscI6d9CVNmLh_4core3numj16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.j, %.preheader.i
  %.sroa.1144.0 = phi i64 [ %i.am, %bb.j ], [ 0, %.preheader.i ], [ %i.ac, %.preheader56.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1144.0, ptr %i.aq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit43, %_RNvMsv_NtCscI6d9CVNmLh_4core3numj16from_ascii_radix.exit, %bb.k, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult3get(ptr noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !131 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = icmp ugt i64 %1, 2147483647
  %i.d = shl nuw nsw i64 %1, 32
  %.sroa.06.0.insert.insert.i = select i1 %i.c, i64 513, i64 %i.d ; 2 uses
  %i.e = trunc i64 %.sroa.06.0.insert.insert.i to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !132
  store i8 2, ptr %i.b, align 1, !noalias !132
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i: ; preds = %bb.a
  %i.f = icmp ugt i64 %2, 2147483647
  %i.g = shl nuw nsw i64 %2, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.f, i64 513, i64 %i.g ; 2 uses
  %i.h = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.h, label %bb.c, label %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult7is_null.exit, !prof !7

bb.c:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  store i8 2, ptr %i.a, align 1, !noalias !133
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21
  unreachable

_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult7is_null.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.06.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %.sroa.6.0.extract.shift.i14.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i15.i = trunc nuw i64 %.sroa.6.0.extract.shift.i14.i to i32
  %i.i = tail call noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult7is_null(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 noundef %.sroa.6.0.extract.trunc.i.i, i32 noundef %.sroa.6.0.extract.trunc.i15.i)
  %i.j = icmp ne i32 %i.i, 0
  %i.k = or i64 %2, %1
  %i.l = icmp ugt i64 %i.k, 2147483647
  %or.cond15 = or i1 %i.l, %i.j
  br i1 %or.cond15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult7is_null.exit
  %i.m = trunc nuw nsw i64 %1 to i32
  %i.n = trunc nuw nsw i64 %2 to i32
  %i.o = tail call { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult9get_bytes(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 noundef %i.m, i32 noundef %i.n) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult7is_null.exit, %bb.d
  %.sroa.5.0 = phi i64 [ %i.q, %bb.d ], [ undef, %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult7is_null.exit ]
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult7is_null.exit ]
  %i.r = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.s = insertvalue { ptr, i64 } %i.r, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !140 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = invoke noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult13result_status(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  switch i32 %i.g, label %.preheader [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 9, label %bb.e
  ]

.preheader:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1c_6result5ErrorE6map_orbNCNvMB16_B14_3new0EB1c_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection15get_next_result(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 23, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = invoke noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult12column_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.n, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #21
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.m, 22
  call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.p, ptr noundef nonnull align 1 dereferenceable(23) @19, i64 23, i1 false)
  store i64 %i.m, ptr %i.e, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 23, ptr %.sroa.628.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !141
  %i.r = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 24, i64 noundef range(i64 1, 9) 8) #23, !noalias !141 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.l, !prof !7

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc unwind label %bb.j, !noalias !141

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #20
          to label %.thread78 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.v, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @20, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.614.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXs4_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResultNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.an, %bb.l
  ret void

bb.n:                                             ; preds = %bb.g
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.w = invoke noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult9row_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  store ptr %i.x, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = zext i32 %i.i to i64
  %4 = zext i32 %i.w to i64
  %5 = shl nuw i64 %4, 32
  %6 = or disjoint i64 %5, %3
  store i64 %6, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.q:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.y = load i64, ptr %i.d, align 8, !range !4, !alias.scope !142, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.aa = load ptr, ptr %i.a, align 8, !alias.scope !143, !noalias !142, !noundef !5
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultEEB15_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1c_6result5ErrorE6map_orbNCNvMB16_B14_3new0EB1c_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !142

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit.i, %bb.r, %bb.a, %bb.d, %bb.e, %bb.g, %bb.o, %bb.s
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.thread78

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit.i: ; preds = %bb.q
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1c_6result5ErrorE6map_orbNCNvMB16_B14_3new0EB1c_.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1c_6result5ErrorE6map_orbNCNvMB16_B14_3new0EB1c_.exit: ; preds = %bb.r
  %.not82 = icmp eq ptr %i.aa, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !142
  br i1 %.not82, label %bb.s, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1c_6result5ErrorE6map_orbNCNvMB16_B14_3new0EB1c_.exit.thread

bb.s:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1c_6result5ErrorE6map_orbNCNvMB16_B14_3new0EB1c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = invoke { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult16get_result_field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i32 noundef 67)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1c_6result5ErrorE6map_orbNCNvMB16_B14_3new0EB1c_.exit.thread: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1r_6result5ErrorEEB1r_.exit.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtNtCsjRvGck33osM_6diesel2pg10connection6result8PgResultENtNtB1c_6result5ErrorE6map_orbNCNvMB16_B14_3new0EB1c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.t:                                             ; preds = %bb.s
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 25 uses
  %.not = icmp ne ptr %i.ac, null
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  %cond = icmp eq i64 %i.ad, 5
  %or.cond = select i1 %.not, i1 %cond, i1 false
  br i1 %or.cond, label %bb.u, label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.ae = load i32, ptr %i.ac, align 1
  %i.af = xor i32 %i.ae, 808792882
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ai, 53
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = load i32, ptr %i.ac, align 1
  %i.ap = xor i32 %i.ao, 808792882
  %i.aq = getelementptr i8, ptr %i.ac, i64 4
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = xor i32 %i.as, 51
  %i.au = or i32 %i.ap, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load i32, ptr %i.ac, align 1
  %i.az = xor i32 %i.ay, 808464436
  %i.ba = getelementptr i8, ptr %i.ac, i64 4
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = xor i32 %i.bc, 49
  %i.be = or i32 %i.az, %i.bd
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = load i32, ptr %i.ac, align 1
  %i.bj = xor i32 %i.bi, 808465714
  %i.bk = getelementptr i8, ptr %i.ac, i64 4
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = xor i32 %i.bm, 54
  %i.bo = or i32 %i.bj, %i.bn
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = load i32, ptr %i.ac, align 1
  %i.bt = xor i32 %i.bs, 808792882
  %i.bu = getelementptr i8, ptr %i.ac, i64 4
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = xor i32 %i.bw, 50
  %i.by = or i32 %i.bt, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load i32, ptr %i.ac, align 1
  %i.cd = xor i32 %i.cc, 825570098
  %i.ce = getelementptr i8, ptr %i.ac, i64 4
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = xor i32 %i.cg, 52
  %i.ci = or i32 %i.cd, %i.ch
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %i.ac, align 1
  %i.cn = xor i32 %i.cm, 808465202
  %i.co = getelementptr i8, ptr %i.ac, i64 4
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = xor i32 %i.cq, 49
  %i.cs = or i32 %i.cn, %i.cr
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = load i32, ptr %i.ac, align 1
  %i.cx = xor i32 %i.cw, 810562354
  %i.cy = getelementptr i8, ptr %i.ac, i64 4
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = xor i32 %i.da, 49
  %i.dc = or i32 %i.cx, %i.db
  %i.dd = icmp ne i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load i32, ptr %i.ac, align 1
  %i.dh = xor i32 %i.dg, 808466480
  %i.di = getelementptr i8, ptr %i.ac, i64 4
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = xor i32 %i.dk, 48
  %i.dm = or i32 %i.dh, %i.dl
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.dq = load i32, ptr %i.ac, align 1
  %i.dr = xor i32 %i.dq, 808466480
  %i.ds = getelementptr i8, ptr %i.ac, i64 4
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i32
  %i.dv = xor i32 %i.du, 54
  %i.dw = or i32 %i.dr, %i.dv
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ad, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = load i32, ptr %i.ac, align 1
  %i.eb = xor i32 %i.ea, 808466480
  %i.ec = getelementptr i8, ptr %i.ac, i64 4
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i32
  %i.ef = xor i32 %i.ee, 49
  %i.eg = or i32 %i.eb, %i.ef
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ad, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ek = load i32, ptr %i.ac, align 1
  %i.el = xor i32 %i.ek, 808466480
  %i.em = getelementptr i8, ptr %i.ac, i64 4
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = xor i32 %i.eo, 52
  %i.eq = or i32 %i.el, %i.ep
end_hunk_0
