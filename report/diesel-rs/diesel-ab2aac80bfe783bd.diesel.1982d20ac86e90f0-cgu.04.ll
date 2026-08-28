Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.04?download=true
inline.NumInlined: 1806
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_6sqlite10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend6SqliteB1A_E33cached_statement_non_generic_implBY_B3h_NCINvB45_28cached_statement_non_genericBY_B3h_E0E0ECs2bNgeUs5Jlc_6diesel:bb.a
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx, i64 16, i1 false)
  store i64 %i.c, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.413.0..sroa_idx, align 8
  %i.f = load i64, ptr %i.b, align 8, !range !24, !alias.scope !1499, !noundef !4
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_6sqlite7backend6SqliteNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2q_NtNtBL_6result5ErrorERNtNtB2u_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3B_B4m_E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.body.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.h, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.k) #30
          to label %common.resume.i.i.i.i unwind label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.g, %.body.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_6sqlite7backend6SqliteNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2q_NtNtBL_6result5ErrorERNtNtB2u_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3B_B4m_E0E0ECs2bNgeUs5Jlc_6diesel.exit

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_6sqlite7backend6SqliteNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2q_NtNtBL_6result5ErrorERNtNtB2u_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3B_B4m_E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel6sqlite7backend10SqliteTypeEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1508, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1508, !nonnull !4, !align !36, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.t, align 8, !noalias !1508
  %i.u = call noundef nonnull ptr @_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBW_6sqlite7backend6SqliteENtNtNtB27_10connection4stmt9StatementEE14insert_no_growCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !noalias !1508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1508
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_6sqlite7backend6SqliteNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2q_NtNtBL_6result5ErrorERNtNtB2u_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3B_B4m_E0E0ECs2bNgeUs5Jlc_6diesel.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCs40k4W9msRzi_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE4intoENtB6_8Iterator4folduNCINvNvB3L_8for_each4callB2W_NCINvMsj_NtB1R_3vecINtB4H_3VecB2W_E14extend_trustedBQ_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !1521, !noalias !1522 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1521, !noalias !1522 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1521, !noalias !1522
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %i.b = load i64, ptr %0, align 8, !alias.scope !1529, !noalias !1530, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1529, !noalias !1530, !noundef !4 ; 3 uses
  %i.e = icmp ule i64 %i.b, %i.d
  tail call void @llvm.assume(i1 %i.e)
  %.not6.i.i.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCs40k4W9msRzi_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsj_NtB1R_3vecINtB54_3VecB2W_E14extend_trustedBQ_E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %0, align 8, !alias.scope !1529, !noalias !1530
  %.not.i.i.i.i = icmp eq i64 %i.d, 1
  %i.g = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1533, !noalias !1534, !nonnull !4, !align !36, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1537
  br i1 %.not.i.i.i.i, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.preheader4.i.i.i

.lr.ph.i.preheader4.i.i.i:                        ; preds = %.lr.ph.i.preheader.i.i.i
  invoke void @_RNvXs2_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtCs40k4W9msRzi_5alloc6string6StringE4fromCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.lr.ph.i.peel.next.i.i.i unwind label %.split.loopexit.split-lp.i.i.i, !noalias !1541

.lr.ph.i.peel.next.i.i.i:                         ; preds = %.lr.ph.i.preheader4.i.i.i
  unreachable

.lr.ph.i.us.i.i.i:                                ; preds = %.lr.ph.i.preheader.i.i.i
  invoke void @_RNvXs2_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtCs40k4W9msRzi_5alloc6string6StringE4fromCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %_RINvXs_NtNtCscI6d9CVNmLh_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCs40k4W9msRzi_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5R_B5O_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsj_NtB3D_3vecINtB8a_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6r_EE0E0E0E0B5O_E0B5O_ECs2bNgeUs5Jlc_6diesel.exit.loopexit.split.us.i.i.i unwind label %.split.us.i.i.i, !noalias !1541

_RINvXs_NtNtCscI6d9CVNmLh_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCs40k4W9msRzi_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5R_B5O_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsj_NtB3D_3vecINtB8a_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6r_EE0E0E0E0B5O_E0B5O_ECs2bNgeUs5Jlc_6diesel.exit.loopexit.split.us.i.i.i: ; preds = %.lr.ph.i.us.i.i.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1542
  %i.j = add i64 %.sroa.4.0.copyload.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1537
  br label %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCs40k4W9msRzi_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsj_NtB1R_3vecINtB54_3VecB2W_E14extend_trustedBQ_E0E0ECs2bNgeUs5Jlc_6diesel.exit

.split.us.i.i.i:                                  ; preds = %.lr.ph.i.us.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.split.i.i.i

.split.loopexit.split-lp.i.i.i:                   ; preds = %.lr.ph.i.preheader4.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.loopexit.split-lp.i.i.i, %.split.us.i.i.i
  %.us-phi2.i.i.i = phi { ptr, i32 } [ %i.k, %.split.us.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.split.loopexit.split-lp.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !1541
  resume { ptr, i32 } %.us-phi2.i.i.i

_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCs40k4W9msRzi_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsj_NtB1R_3vecINtB54_3VecB2W_E14extend_trustedBQ_E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a, %_RINvXs_NtNtCscI6d9CVNmLh_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCs40k4W9msRzi_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5R_B5O_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsj_NtB3D_3vecINtB8a_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6r_EE0E0E0E0B5O_E0B5O_ECs2bNgeUs5Jlc_6diesel.exit.loopexit.split.us.i.i.i
  %.val3.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.a ], [ %i.j, %_RINvXs_NtNtCscI6d9CVNmLh_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCs40k4W9msRzi_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5R_B5O_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsj_NtB3D_3vecINtB8a_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6r_EE0E0E0E0B5O_E0B5O_ECs2bNgeUs5Jlc_6diesel.exit.loopexit.split.us.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val3.i.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !1541
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3e_23migrations_in_directory0ENCNvXs_B3e_NtB3e_19FileBasedMigrationsINtNtCsjRvGck33osM_6diesel9migration15MigrationSourceNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendE10migrations0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBb8_4SendEL_EEEB8c_8try_folduNCINvNvB8c_12try_for_each4callIBae_DINtB5O_9MigrationB6C_EEL_EINtNtNtBc_3ops12control_flow11ControlFlowBco_ENcNtBcU_5Break0E0BcU_E0IBcV_BcU_EEB6K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.4.i.sroa.7.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [176 x i8], align 8               ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 14 uses
  %i.o = alloca [176 x i8], align 8               ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 18 uses
  %.sroa.18.i.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.53.i.i.i.i = alloca i64, align 8         ; 6 uses
  %.sroa.8.i.i.i.i = alloca i64, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1561
  call void @_RNvXsz_NtCsgczF5crJ4sT_3std2fsNtB5_7ReadDirNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !1568
  %i.r = load i64, ptr %i.q, align 8, !range !517, !noalias !1569, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3a_23migrations_in_directory0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultNtB3a_16SqlFileMigrationNtNtB3c_6errors14MigrationErrorEIB6a_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB7v_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBaF_4SendEL_EEuINtNtNtBc_3ops12control_flow11ControlFlowIBbe_B7u_EENCNvXs_B3a_NtB3a_19FileBasedMigrationsINtB87_15MigrationSourceB8O_E10migrations0NCINvXB8_INtB8_12GenericShuntIBO_BN_Bc3_EIB6a_NtNtBc_7convert10InfallibleBae_EEB55_8try_folduNCINvNvB55_12try_for_each4callB7u_BbS_NcNtBbS_5Break0E0BbS_E0E0Bbd_EB8W_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.5.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  %.sroa.65.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  %.sroa.950.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.971.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.sroa.10.i.i.sroa.7.0..sroa.446.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.cr, %.lr.ph.i.i.i.i
  %.sroa.06.0.copyload.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !1569 ; 2 uses
  %.sroa.57.0.copyload.i.i.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !1569 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i.sroa.5.i.i.i.i.i)
  %i.ag = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i, null
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i) ]
  br label %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1574
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %i.p, align 8, !noalias !1579
  store ptr %.sroa.57.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !1579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.0..sroa_idx6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !1569
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1583
  invoke void @_RNvMsA_NtCsgczF5crJ4sT_3std2fsNtB5_8DirEntry8metadata(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
          to label %bb.e unwind label %.loopexit.i.i.i.i, !noalias !1585

.body105.i.i.i.i.i.i.i:                           ; preds = %bb.bl, %bb.ay, %bb.af, %.body112.i.i.i.i.i.i.i, %bb.v, %.body.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn96.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body113.i.i.i.i.i.i.i, %.body112.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.ch, %bb.ay ], [ %i.ba, %bb.v ], [ %i.bo, %bb.af ], [ %i.cx, %bb.bl ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std2fs8DirEntryECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p) #30
          to label %common.resume.i.i.i.i.i unwind label %bb.bf, !noalias !1585

.loopexit.i.i.i.i:                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs2bNgeUs5Jlc_6diesel.exit.i128.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i115.i.i.i.i.i.i.i, %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i, %bb.h, %bb.d
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body105.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body105.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load i64, ptr %i.o, align 8, !range !360, !noalias !1583, !noundef !4
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1583, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1583
  br label %bb.bg

bb.g:                                             ; preds = %bb.e
  %.sroa.950.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.950.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1583
  %i.al = and i32 %.sroa.950.0.copyload.i.i.i.i.i.i.i, 61440
  %i.am = icmp eq i32 %i.al, 32768
  br i1 %i.am, label %bb.ba, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1583
  invoke void @_RNvMsA_NtCsgczF5crJ4sT_3std2fsNtB5_8DirEntry9file_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
          to label %bb.i unwind label %.loopexit.i.i.i.i, !noalias !1585

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.u, align 8, !noalias !1583, !nonnull !4, !noundef !4
  %i.ao = load i64, ptr %i.v, align 8, !noalias !1583, !noundef !4
  invoke void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ao)
          to label %bb.l unwind label %bb.j, !noalias !1585

.body.i.i.i.i.i.i.i:                              ; preds = %bb.t, %bb.p, %bb.k, %bb.j
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.aw, %bb.p ], [ %i.ap, %bb.j ], [ %i.ay, %bb.t ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.m) #30
          to label %.body105.i.i.i.i.i.i.i unwind label %bb.bf, !noalias !1585

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i99.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.n) #30
          to label %.body.i.i.i.i.i.i.i unwind label %bb.bf, !noalias !1585

bb.l:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.w, align 8, !noalias !1583, !nonnull !4
  %i.as = load i64, ptr %i.x, align 8, !noalias !1583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1583
  store i32 46, ptr %i.i, align 4, !noalias !1583
  %i.at = invoke noundef zeroext i1 @_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
          to label %bb.m unwind label %bb.k, !noalias !1585

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1583
  %i.au = load i64, ptr %i.n, align 8, !range !24, !noalias !1583, !noundef !4
  %i.av = icmp eq i64 %i.au, -1                   ; 2 uses
  br i1 %i.at, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.av, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !1585

bb.p:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.q, !noalias !1585

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1585
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i unwind label %bb.j, !noalias !1585

bb.r:                                             ; preds = %bb.m
  br i1 %i.av, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit103.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i99.i.i.i.i.i.i.i unwind label %bb.t, !noalias !1585

bb.t:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.u, !noalias !1585

bb.u:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1585
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i99.i.i.i.i.i.i.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit103.i.i.i.i.i.i.i unwind label %bb.j, !noalias !1585

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i, %bb.n
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i unwind label %bb.v, !noalias !1585

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body105.i.i.i.i.i.i.i unwind label %bb.w, !noalias !1585

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1585
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1585

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1583
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3e_23migrations_in_directory0ENCNvXs_B3e_NtB3e_19FileBasedMigrationsINtNtCsjRvGck33osM_6diesel9migration15MigrationSourceNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendE10migrations0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBb8_4SendEL_EEEB8c_8try_folduNCINvNvB8c_12try_for_each4callIBae_DINtB5O_9MigrationB6C_EEL_EINtNtNtBc_3ops12control_flow11ControlFlowBco_ENcNtBcU_5Break0E0BcU_E0IBcV_BcU_EEB6K_:bb.a
          to label %.body.i.i.i2.i.i.i.i.i unwind label %bb.bz, !noalias !1683

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i unwind label %bb.bt, !noalias !1683

bb.bt:                                            ; preds = %bb.bs
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i2.i.i.i.i.i unwind label %bb.bu, !noalias !1683

bb.bu:                                            ; preds = %bb.bt
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1683
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i unwind label %bb.bp, !noalias !1683

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %i.di = load ptr, ptr %i.c, align 8, !alias.scope !1697, !noalias !1675, !nonnull !4, !noundef !4
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !1698
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !1683

bb.bw:                                            ; preds = %bb.bv
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1699, !noalias !1675, !nonnull !4, !noundef !4 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1699, !noalias !1675 ; 2 uses
  store i8 0, ptr %.val2.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1683
  %i.dm = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dm, label %common.resume.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #33, !noalias !1683
  br label %common.resume.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1699, !noalias !1675, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1699, !noalias !1675 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1683
  %i.dn = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #33, !noalias !1683
  br label %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.br, %.body.i.i.i2.i.i.i.i.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1683
  unreachable

_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i: ; preds = %bb.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.pr.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !1700 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1675
  %.sroa.4.0..sroa_idx.i2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.4.i.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i2.i.i.i.i.i.i, align 8, !noalias !1700
  %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.i.sroa.6.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !1700
  %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i2.sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !1700
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1703
  %i.dp = icmp eq i64 %.sroa.0.0.copyload.pr.i.i.i.i.i.i.i, -1
  br i1 %i.dp, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i
  %.sroa.4.i.sroa.6.0.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.ph.ph.i.i.i.i.i, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.4.i.sroa.6.0.copyload.i.i.i.i.i.i, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.i.sroa.0.0.i.i.i.i.i.i = phi i64 [ 2, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.4.i.sroa.0.0.copyload.i.i.i.i.i.i, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1705
  store i64 %.sroa.4.i.sroa.0.0.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !1709
  %.sroa.4.i.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.i.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.4.i.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1709
  %.sroa.4.i.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.i.i.i.i.i.i, i64 16, i1 false), !noalias !1709
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !1710
  %i.dq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 32, i64 noundef range(i64 1, 9) 8) #33, !noalias !1710 ; 6 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.cb, label %bb.ci, !prof !1447

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #31
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !1713

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskLp0vI1JK7v_17diesel_migrations6errors14MigrationErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #30
          to label %common.resume.i.i.i.i.i unwind label %bb.cd, !noalias !1713

bb.cd:                                            ; preds = %bb.cc
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1713
  unreachable

bb.ce:                                            ; preds = %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !1700
  store i64 %.sroa.0.0.copyload.pr.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !1705
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i2.i.i.i.i.i.i, i64 32, i1 false), !noalias !1700
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !1714
  %i.du = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 80, i64 noundef range(i64 1, 9) 8) #33, !noalias !1714 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.cf, label %bb.cp, !prof !1447

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #31
          to label %.noexc5.i.i.i.i.i.i.i.i.i unwind label %bb.cg, !noalias !1713

.noexc5.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations16SqlFileMigrationECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #30
          to label %common.resume.i.i.i.i.i unwind label %bb.ch, !noalias !1713

bb.ch:                                            ; preds = %bb.cg
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1713
  unreachable

bb.ci:                                            ; preds = %bb.ca
  store i64 %.sroa.4.i.sroa.0.0.i.i.i.i.i.i, ptr %i.dq, align 8, !noalias !1717
  %.sroa.4.i.sroa.6.0..sroa_idx11.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %.sroa.4.i.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.4.i.sroa.6.0..sroa_idx11.i.i.i.i.i.i, align 8, !noalias !1717
  %.sroa.4.i.sroa.7.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.0..sroa_idx13.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.i.i.i.i.i.i, i64 16, i1 false), !noalias !1717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1703
  %.val.i.i.i.i5.i.i.i.i.i = load ptr, ptr %3, align 8, !noalias !1718, !noundef !4 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val7.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !noalias !1718 ; 6 uses
  %i.dz = icmp eq ptr %.val.i.i.i.i5.i.i.i.i.i, null
  br i1 %i.dz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i.i.i.i.i.i.i) ]
  %i.ea = load ptr, ptr %.val7.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !4, !noalias !1722 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void %i.ea(ptr noundef nonnull %.val.i.i.i.i5.i.i.i.i.i)
          to label %bb.cl unwind label %bb.cn, !noalias !1722

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.eb = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !range !37, !invariant.load !4, !noalias !1722 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ee = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !38, !invariant.load !4, !noalias !1722
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i5.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ec, i64 noundef range(i64 1, 536870913) %i.ef) #33, !noalias !1722
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.ck
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !37, !invariant.load !4, !noalias !1722 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.body.i.i.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ek = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !range !38, !invariant.load !4, !noalias !1722
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i5.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ei, i64 noundef range(i64 1, 536870913) %i.el) #33, !noalias !1722
  br label %.body.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1703
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %4 = ptrtoint ptr %i.du to i64
  store i64 %4, ptr %.sroa.53.i.i.i.i, align 8, !alias.scope !1724, !noalias !1725
  br label %bb.cq

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.co, %bb.cn
  store ptr %i.dq, ptr %3, align 8, !noalias !1718
  store ptr @31, ptr %i.dy, align 8, !noalias !1718
  br label %common.resume.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl, %bb.ci
  store ptr %i.dq, ptr %3, align 8, !noalias !1718
  store ptr @31, ptr %i.dy, align 8, !noalias !1718
  br label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i, %bb.cp
  %.sink5.i.i.i.i.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.8.i.i.i.i, %bb.cp ], [ %.sroa.53.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i ]
  %.sink.i.sink.i.i.i.i.i.i.i.i.i = phi ptr [ @29, %bb.cp ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %.sink.i.sink.i.i.i.i.i.i.i.i.i, ptr %.sink5.i.i.i.i.i.sroa.phi.i.i.i.i, align 8, !alias.scope !1724, !noalias !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1664
  %.sroa.53.i.i.i.i.0..sroa.53.i.i.i.i.0..sroa.53.i.i.i.i.0..sroa.53.i.i.i.0..sroa.53.i.i.i.0..sroa.53.i.i.0..sroa.53.i.i.0..sroa.53.i.0..sroa.53.i.0..sroa.53.0..sroa.53.0..sroa.53.8..i.i.i.i = load i64, ptr %.sroa.53.i.i.i.i, align 8, !alias.scope !1726, !noalias !1729, !noundef !4
  %5 = inttoptr i64 %.sroa.53.i.i.i.i.0..sroa.53.i.i.i.i.0..sroa.53.i.i.i.i.0..sroa.53.i.i.i.0..sroa.53.i.i.i.0..sroa.53.i.i.0..sroa.53.i.i.0..sroa.53.i.0..sroa.53.i.0..sroa.53.0..sroa.53.0..sroa.53.8..i.i.i.i to ptr
  %.sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i.i.i.i = load i64, ptr %.sroa.8.i.i.i.i, align 8, !alias.scope !1726, !noalias !1729
  %6 = inttoptr i64 %.sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.em, align 8, !alias.scope !1731, !noalias !1734
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %6, ptr %i.en, align 8, !alias.scope !1731, !noalias !1734
  br label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3a_23migrations_in_directory0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultNtB3a_16SqlFileMigrationNtNtB3c_6errors14MigrationErrorEIB6a_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB7v_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBaF_4SendEL_EEuINtNtNtBc_3ops12control_flow11ControlFlowIBbe_B7u_EENCNvXs_B3a_NtB3a_19FileBasedMigrationsINtB87_15MigrationSourceB8O_E10migrations0NCINvXB8_INtB8_12GenericShuntIBO_BN_Bc3_EIB6a_NtNtBc_7convert10InfallibleBae_EEB55_8try_folduNCINvNvB55_12try_for_each4callB7u_BbS_NcNtBbS_5Break0E0BbS_E0E0Bbd_EB8W_.exit

bb.cr:                                            ; preds = %bb.bn, %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @_RNvXsz_NtCsgczF5crJ4sT_3std2fsNtB5_7ReadDirNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !1568
  %i.eo = load i64, ptr %i.q, align 8, !range !517, !noalias !1569, !noundef !4
  %i.ep = trunc nuw i64 %i.eo to i1
  br i1 %i.ep, label %bb.b, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3a_23migrations_in_directory0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultNtB3a_16SqlFileMigrationNtNtB3c_6errors14MigrationErrorEIB6a_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB7v_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBaF_4SendEL_EEuINtNtNtBc_3ops12control_flow11ControlFlowIBbe_B7u_EENCNvXs_B3a_NtB3a_19FileBasedMigrationsINtB87_15MigrationSourceB8O_E10migrations0NCINvXB8_INtB8_12GenericShuntIBO_BN_Bc3_EIB6a_NtNtBc_7convert10InfallibleBae_EEB55_8try_folduNCINvNvB55_12try_for_each4callB7u_BbS_NcNtBbS_5Break0E0BbS_E0E0Bbd_EB8W_.exit

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3a_23migrations_in_directory0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultNtB3a_16SqlFileMigrationNtNtB3c_6errors14MigrationErrorEIB6a_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB7v_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBaF_4SendEL_EEuINtNtNtBc_3ops12control_flow11ControlFlowIBbe_B7u_EENCNvXs_B3a_NtB3a_19FileBasedMigrationsINtB87_15MigrationSourceB8O_E10migrations0NCINvXB8_INtB8_12GenericShuntIBO_BN_Bc3_EIB6a_NtNtBc_7convert10InfallibleBae_EEB55_8try_folduNCINvNvB55_12try_for_each4callB7u_BbS_NcNtBbS_5Break0E0BbS_E0E0Bbd_EB8W_.exit: ; preds = %bb.cr, %bb.a, %bb.cq
  %storemerge.i.i.i.i = phi i64 [ 1, %bb.cq ], [ 0, %bb.a ], [ 0, %bb.cr ]
  store i64 %storemerge.i.i.i.i, ptr %0, align 8, !alias.scope !1735, !noalias !1734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1561
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5RangejRNtNtB1a_6string6StringENCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2r_6Config10set_filters0_0ENCB2o_s1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCskxSKy3V5Mgr_5regex5error5ErrorEEB3A_8try_folduNCINvNvB3A_12try_for_each4callINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtB5F_5regex6string5RegexEINtNtNtBc_3ops12control_flow11ControlFlowB6V_ENcNtB7Z_5Break0E0B7Z_E0IB80_B7Z_EEB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1742
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = tail call { ptr, ptr } @_RNvXsX_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_5RangejRNtNtBb_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !1745 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5RangejRNtNtB16_6string6StringENCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2n_6Config10set_filters0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldReINtNtBc_6result6ResultINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexENtNtB5t_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB6u_B4N_EENCB2k_s1_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7j_EIB4s_NtNtBc_7convert10InfallibleB67_EEB3l_8try_folduNCINvNvB3l_12try_for_each4callB4N_B78_NcNtB78_5Break0E0B78_E0E0B6t_EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val5.i.i = load ptr, ptr %i.f, align 8, !noalias !1745, !nonnull !4, !align !36, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1746
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1748, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1748, !noundef !4
  call void @_RNvMs3_NtNtCskxSKy3V5Mgr_5regex5regex6stringNtB5_5Regex3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k), !noalias !1748
  %i.l = load ptr, ptr %i.a, align 8, !noalias !1751, !noundef !4 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %3, align 8, !range !1752, !alias.scope !1753, !noalias !1756, !noundef !4
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.n, -3
  br i1 %switch.i.i.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !1763

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body.i.i.i.i.i unwind label %bb.f, !noalias !1763

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1763
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.h, !noalias !1763

bb.g:                                             ; preds = %bb.b
  %.sroa.416.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.i

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.o, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1764
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

bb.i:                                             ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.416.0..sroa_idx.i.sink.i.i.i.i = phi ptr [ %.sroa.416.0..sroa_idx.i.i.i.i.i, %bb.g ], [ %3, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i ], [ %3, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i.sink.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1765
  store ptr %i.l, ptr %i.c, align 8, !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1746
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1766
  br label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5RangejRNtNtB16_6string6StringENCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2n_6Config10set_filters0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldReINtNtBc_6result6ResultINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexENtNtB5t_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB6u_B4N_EENCB2k_s1_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7j_EIB4s_NtNtBc_7convert10InfallibleB67_EEB3l_8try_folduNCINvNvB3l_12try_for_each4callB4N_B78_NcNtB78_5Break0E0B78_E0E0B6t_EB2p_.exit

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5RangejRNtNtB16_6string6StringENCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2n_6Config10set_filters0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldReINtNtBc_6result6ResultINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexENtNtB5t_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB6u_B4N_EENCB2k_s1_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7j_EIB4s_NtNtBc_7convert10InfallibleB67_EEB3l_8try_folduNCINvNvB3l_12try_for_each4callB4N_B78_NcNtB78_5Break0E0B78_E0E0B6t_EB2p_.exit: ; preds = %bb.a, %bb.i
  %.sink.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.a ]
  store i64 %.sink.i.i, ptr %0, align 8, !alias.scope !1767, !noalias !1766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1742
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIB1e_NtB21_16ColumnDefinitionEENCNCNvXNtB25_12print_schemaNtB3V_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB5k_8find_map5checkTRB1D_RB3o_RNtNtB23_10table_data9TableNameETRB1Z_B6E_B6z_EQNCB3S_s2_0E0INtNtNtBc_3ops12control_flow11ControlFlowB7a_EEB25_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8, !noalias !1773
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !noalias !1773
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1776, !noalias !1781, !noundef !4 ; 2 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !1776, !noalias !1781 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i, %i.h
  br i1 %i.i, label %.lr.ph.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIBS_NtB1F_16ColumnDefinitionEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB31_ETB4C_B4H_RNtNtB1H_10table_data9TableNameEuINtNtNtBc_3ops12control_flow11ControlFlowTRB1D_B4W_B4H_EENCNCNvXNtB1J_12print_schemaNtB6v_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00QNCINvNvB3r_8find_map5checkB4N_B68_QNCB6s_s2_0E0E0B5t_EB1J_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1776, !noalias !1781, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1776, !noalias !1781, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !1776, !noalias !1781
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %.val.i.i.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %.val2.i.i.i, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1773
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1785
  %i.o = load ptr, ptr %i.e, align 8, !alias.scope !1782, !noalias !1789, !nonnull !4, !align !36, !noundef !4
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !1790, !nonnull !4, !align !36, !noundef !4
  store ptr %i.m, ptr %i.a, align 8, !noalias !1785
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1785
  store ptr %.val.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1785
  call void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkTRINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeERNtB2f_16ColumnDefinitionRNtNtB2h_10table_data9TableNameETRB2d_B3V_B3w_EQNCNvXNtB2j_12print_schemaNtB4M_30CustomTypesForTablesForDisplayNtNtBb_3fmt7Display3fmts2_0E0INtB7_5FnMutTuB1P_EE8call_mutB2j_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1785
  %i.p = load ptr, ptr %i.b, align 8, !alias.scope !1792, !noalias !1795, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i, i64 16, i1 false), !noalias !1797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1773
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIBS_NtB1F_16ColumnDefinitionEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB31_ETB4C_B4H_RNtNtB1H_10table_data9TableNameEuINtNtNtBc_3ops12control_flow11ControlFlowTRB1D_B4W_B4H_EENCNCNvXNtB1J_12print_schemaNtB6v_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00QNCINvNvB3r_8find_map5checkB4N_B68_QNCB6s_s2_0E0E0B5t_EB1J_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1773
  %exitcond.not.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIBS_NtB1F_16ColumnDefinitionEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB31_ETB4C_B4H_RNtNtB1H_10table_data9TableNameEuINtNtNtBc_3ops12control_flow11ControlFlowTRB1D_B4W_B4H_EENCNCNvXNtB1J_12print_schemaNtB6v_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00QNCINvNvB3r_8find_map5checkB4N_B68_QNCB6s_s2_0E0E0B5t_EB1J_.exit, label %bb.b

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIBS_NtB1F_16ColumnDefinitionEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB31_ETB4C_B4H_RNtNtB1H_10table_data9TableNameEuINtNtNtBc_3ops12control_flow11ControlFlowTRB1D_B4W_B4H_EENCNCNvXNtB1J_12print_schemaNtB6v_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00QNCINvNvB3r_8find_map5checkB4N_B68_QNCB6s_s2_0E0E0B5t_EB1J_.exit: ; preds = %bb.d, %bb.a, %bb.c
  %storemerge.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ], [ null, %bb.d ]
  store ptr %storemerge.i, ptr %0, align 8, !alias.scope !1768, !noalias !1797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIB1e_NtNtB2A_10table_data9TableDataEENCNvXNtB2C_12print_schemaNtB4x_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB6O_13FlattenCompatppE13iter_try_fold7flattenIBO_IBY_IB1e_B2a_EIB1e_NtB2y_16ColumnDefinitionEENCNCB4u_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowTRB2w_RNtB3Y_9TableNameRB8a_EENCINvNvXsi_B6O_B71_B5V_8try_fold7flattenB7N_uB8P_NCINvNvB5V_8find_map5checkTRB2a_B9R_B9A_EB9u_QNCB4u_s2_0E0E0E0B8P_EB2C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1803, !noalias !1798, !noundef !4 ; 2 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !1803, !noalias !1798 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIBS_NtNtB2e_10table_data9TableDataEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB3z_EINtB4S_3MapIB4_IBS_B1O_EIBS_NtB2c_16ColumnDefinitionEENCNCNvXNtB2g_12print_schemaNtB6q_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00EuINtNtNtBc_3ops12control_flow11ControlFlowTRB2a_RNtB3B_9TableNameRB5T_EENCB6n_s1_0NCINvNvMsg_NtB8_7flattenINtB9k_13FlattenCompatppE13iter_try_fold7flattenB5r_uB7Q_NCINvNvXsi_B9k_B9x_B45_8try_fold7flattenB5r_uB7Q_NCINvNvB45_8find_map5checkTRB1O_B8S_B8B_EB8v_QNCB6n_s2_0E0E0E0E0B7Q_EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1803, !noalias !1798, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1803, !noalias !1798, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph.i
end_hunk_1
