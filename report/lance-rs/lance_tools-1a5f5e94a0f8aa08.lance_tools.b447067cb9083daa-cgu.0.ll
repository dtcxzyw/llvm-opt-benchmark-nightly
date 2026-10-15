Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-1a5f5e94a0f8aa08.lance_tools.b447067cb9083daa-cgu.0?download=true
inline.NumInlined: 683
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsftBYP88YJaE_11lance_tools4util14path_to_parent:bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #23
          to label %.noexc.i unwind label %bb.b, !noalias !644

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.l, ptr %i.q, align 8, !noalias !644
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !644
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !644
  store i64 4, ptr %i.f, align 8, !noalias !645
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !645
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !644
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !650
  invoke void @_RNvXs4_NtNtCs3PfUT229lOd_12object_store4path5partsNtB5_9PathPartsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !644

.noexc7.i:                                        ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !range !11, !noalias !650, !noundef !4 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.s, -2
  br i1 %.not15.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc7.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8.i, %.lr.ph.i.i.i
  %i.t = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.z, %.noexc8.i ]
  %i.u = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.ab, %.noexc8.i ] ; 5 uses
  %i.v = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ %i.ac, %.noexc8.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !650 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !650
  %i.w = icmp samesign ult i64 %i.u, 384307168202282326
  call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.f, align 8, !range !6, !alias.scope !651, !noalias !652, !noundef !4
  %i.y = icmp eq i64 %i.u, %i.x
  br i1 %i.y, label %bb.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i_crit_edge.i, %bb.f
  %i.z = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i_crit_edge.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.u ; 3 uses
  store i64 %i.v, ptr %i.aa, align 8, !noalias !653
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !653
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !653
  %i.ab = add nuw nsw i64 %i.u, 1                 ; 2 uses
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !651, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !650
  invoke void @_RNvXs4_NtNtCs3PfUT229lOd_12object_store4path5partsNtB5_9PathPartsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !644

.noexc8.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i
  %i.ac = load i64, ptr %i.c, align 8, !range !11, !noalias !650, !noundef !4 ; 2 uses
  %.not.i.i6.i = icmp eq i64 %i.ac, -2
  br i1 %.not.i.i6.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit, label %bb.f

bb.g:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 0
  br i1 %i.ae, label %bb.h, label %.body.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !653
  br label %.body.i

bb.i:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.u, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i_crit_edge.i unwind label %bb.g, !noalias !644

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i_crit_edge.i: ; preds = %bb.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !651, !noalias !652
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.f) #24, !noalias !644
  br label %common.resume

common.resume:                                    ; preds = %.body28.thread, %.body28, %bb.ai, %bb.b, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %eh.lpad-body.i, %.body.i ], [ %i.o, %bb.b ], [ %.pn.ph, %bb.ai ], [ %i.cm, %.body28.thread ], [ %i.cm, %.body28 ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit: ; preds = %.noexc8.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !646
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.af = icmp ult i64 %.pre, 384307168202282326
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %.pre, 0
  br i1 %i.ag, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit.thread, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCsftBYP88YJaE_11lance_tools, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @14, ptr noundef nonnull %i.g)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsftBYP88YJaE_11lance_tools.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %.sroa.06.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !655, !noalias !656 ; 3 uses
  %.sroa.4.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i18, align 8, !alias.scope !655, !noalias !656 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !655, !noalias !656
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !657
  %i.ai = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #22, !noalias !657 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsftBYP88YJaE_11lance_tools.exit.i, !prof !3

bb.l:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsftBYP88YJaE_11lance_tools.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc.i19 unwind label %bb.m, !noalias !658

.noexc.i19:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.al, label %bb.ai, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !659
  br label %bb.ai

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsftBYP88YJaE_11lance_tools.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsftBYP88YJaE_11lance_tools.exit
  store i64 %.sroa.06.0.copyload.i, ptr %i.ai, align 8, !noalias !658
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !658
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !658
  store i8 0, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @10, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @16, ptr %.sroa.6.0..sroa_idx31, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %.val2.i = load i64, ptr %i.j, align 8, !range !6, !alias.scope !660, !noundef !4 ; 2 uses
  %i.am = icmp eq i64 %.val2.i, 0
  br i1 %i.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools.exit, label %bb.o

bb.o:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsftBYP88YJaE_11lance_tools.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.an, align 8, !alias.scope !660, !nonnull !4, !noundef !4
  %i.ao = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !660
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.o, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsftBYP88YJaE_11lance_tools.exit.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.p:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aq = add nsw i64 %.pre, -1                   ; 5 uses
  store i64 %i.aq, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.j, align 8, !range !6, !noundef !4 ; 3 uses
  %i.as = icmp samesign ult i64 %i.aq, %i.ar
  call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.aq ; 3 uses
  %.sroa.053.0.copyload = load i64, ptr %i.av, align 8 ; 4 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8 ; 5 uses
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.555.0.copyload = load i64, ptr %.sroa.555.0..sroa_idx, align 8 ; 8 uses
  %.not.i21 = icmp slt i64 %.sroa.555.0.copyload, 0
  br i1 %.not.i21, label %bb.u, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp eq i64 %.sroa.555.0.copyload, 0    ; 2 uses
  br i1 %i.aw, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.q
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !661
  %i.ax = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.555.0.copyload, i64 noundef range(i64 1, 9) 1) #22, !noalias !661 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.u, label %bb.w

bb.r:                                             ; preds = %bb.u
  unreachable

bb.s:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i = add i64 %.sroa.053.0.copyload, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.454.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.454.0.copyload, i64 noundef %.sroa.053.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %bb.ai

bb.u:                                             ; preds = %bb.p, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i
  %.sroa.457.0.ph = phi i64 [ 1, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.p ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.457.0.ph, i64 %.sroa.555.0.copyload) #23
          to label %bb.r unwind label %bb.s

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70: ; preds = %bb.q, %bb.w
  %i.ba = phi ptr [ %i.ax, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.q ] ; 2 uses
  %.0.val.off.i.i22 = add i64 %.sroa.053.0.copyload, -1
  %switch.i.i23 = icmp ult i64 %.0.val.off.i.i22, -2
  br i1 %switch.i.i23, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24

bb.v:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.454.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.454.0.copyload, i64 noundef %.sroa.053.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24

bb.w:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %.sroa.454.0.copyload, i64 %.sroa.555.0.copyload, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70

.body28:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit14.i.i, %bb.ah
  br i1 %i.aw, label %common.resume, label %.body28.thread

.body28.thread:                                   ; preds = %.body28
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %.sroa.555.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24: ; preds = %bb.v, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @11, i64 24, i1 false), !noalias !662
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %.idx.i.i = mul nuw nsw i64 %i.aq, 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !664
  store ptr %i.au, ptr %i.a, align 8, !noalias !664
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !664
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bb, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !664
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit14.i.i: ; preds = %bb.ag, %bb.af
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.a) #24, !noalias !664
  %.val.i25 = load i64, ptr %i.b, align 8, !noalias !662 ; 2 uses
  %i.bf = icmp eq i64 %.val.i25, 0
  br i1 %i.bf, label %.body28, label %bb.ah

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i
  %i.bg = phi ptr [ inttoptr (i64 1 to ptr), %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i ], [ %i.bx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i ] ; 2 uses
  %i.bh = phi i64 [ 0, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i ], [ %i.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i ] ; 7 uses
  %i.bi = phi ptr [ %i.au, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i ], [ %i.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %.sroa.015.0.copyload16.i.i = load i64, ptr %i.bi, align 8, !noalias !665 ; 5 uses
  %.sroa.7.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx17.i.i, align 8, !noalias !665 ; 5 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx17.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx17.sroa_idx.i.i, align 8, !noalias !665 ; 5 uses
  %.not.i.i = icmp eq i64 %.sroa.015.0.copyload16.i.i, -2
  br i1 %.not.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i, label %bb.y

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24
  %2 = phi ptr [ %i.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24 ], [ %i.bj, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i ] ; 3 uses
  %i.bk = ptrtoint ptr %i.bb to i64
  %i.bl = ptrtoint ptr %2 to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.bo = icmp eq ptr %i.bb, %2
  br i1 %i.bo, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi i64 [ %i.bq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.0.013.i.i.i.i.i ; 2 uses
  %i.bq = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.bp, align 8, !range !10, !alias.scope !666, !noalias !667, !noundef !4 ; 2 uses
  %i.br = icmp sgt i64 %.val8.i.i.i.i.i, 0
  br i1 %i.br, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !666, !noalias !667, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !668
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i.i
  %i.bt = icmp eq i64 %i.bq, %i.bn
  br i1 %i.bt, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.y:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i
  %i.bu = icmp eq i64 %.sroa.7.sroa.5.0.copyload.i.i, 0
  br i1 %i.bu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp eq i64 %i.bh, 0
  %.pre39.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !663, !noalias !669 ; 3 uses
  br i1 %i.bw, label %bb.ae, label %bb.ac

bb.aa:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i, %bb.y
  %i.bx = phi ptr [ %i.cj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i ], [ %i.bg, %bb.y ]
  %i.by = phi i64 [ %i.cl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i ], [ %i.bh, %bb.y ]
  %.0.val.off.i.i.i.i = add i64 %.sroa.015.0.copyload16.i.i, -1
  %switch.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i, -2
  br i1 %switch.i.i.i.i, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %.sroa.015.0.copyload16.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !664
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.bz = icmp eq i64 %.pre39.i.i, %i.bh
  br i1 %i.bz, label %bb.ad, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i, !prof !3

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i unwind label %bb.af, !noalias !669

._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i: ; preds = %bb.ad
  %.pre.pre.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !671, !noalias !669
  %.pre.i27 = load ptr, ptr %i.be, align 8, !alias.scope !672, !noalias !669
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i: ; preds = %._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i, %bb.ac
  %i.ca = phi ptr [ %.pre.i27, %._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i ], [ %i.bg, %bb.ac ]
  %.pre.i.i = phi i64 [ %.pre.pre.i.i, %._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i ], [ %.pre39.i.i, %bb.ac ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bh
  store i8 47, ptr %i.cb, align 1, !noalias !673
  %i.cc = add nuw i64 %i.bh, 1                    ; 2 uses
  store i64 %i.cc, ptr %i.bd, align 8, !alias.scope !672, !noalias !669
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i, %bb.z
  %i.cd = phi i64 [ %.pre.i.i, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i ], [ %.pre39.i.i, %bb.z ]
  %i.ce = phi i64 [ %i.cc, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i ], [ 0, %bb.z ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ugt i64 %.sroa.7.sroa.5.0.copyload.i.i, %i.cf
  br i1 %i.cg, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i, !prof !3

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i: ; preds = %bb.ae
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ce, i64 noundef %.sroa.7.sroa.5.0.copyload.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i.i unwind label %bb.af, !noalias !669

.noexc11.i.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i
  %i.ch = load i64, ptr %i.bd, align 8, !alias.scope !675, !noalias !669, !noundef !4
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i: ; preds = %.noexc11.i.i, %bb.ae
  %.sink51.i.i = phi i64 [ %i.ch, %.noexc11.i.i ], [ %i.ce, %bb.ae ] ; 3 uses
  %i.ci = icmp sgt i64 %.sink51.i.i, -1
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load ptr, ptr %i.be, align 8, !alias.scope !675, !noalias !669, !nonnull !4, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sink51.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %.sroa.7.sroa.0.0.copyload.i.i, i64 %.sroa.7.sroa.5.0.copyload.i.i, i1 false), !noalias !676
  %i.cl = add i64 %.sink51.i.i, %.sroa.7.sroa.5.0.copyload.i.i ; 2 uses
  store i64 %i.cl, ptr %i.bd, align 8, !alias.scope !675, !noalias !669
  br label %bb.aa

bb.af:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i, %bb.ad
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !664
  %.0.val.off.i.i12.i.i = add i64 %.sroa.015.0.copyload16.i.i, -1
  %switch.i.i13.i.i = icmp ult i64 %.0.val.off.i.i12.i.i, -2
  br i1 %switch.i.i13.i.i, label %bb.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit14.i.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %.sroa.015.0.copyload16.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !664
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit14.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i: ; preds = %bb.ab, %bb.aa
  %i.cn = icmp eq ptr %i.bj, %i.bb
  br i1 %i.cn, label %.loopexit, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i

bb.ah:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit14.i.i
  %.val1.i26 = load ptr, ptr %i.be, align 8, !noalias !662, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i26, i64 noundef %.val.i25, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !662
  br label %.body28

.loopexit:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i
  %i.co = mul nuw i64 %i.ar, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !664
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !662
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.555.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ba, ptr %.sroa.551.0..sroa_idx, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.555.0.copyload, ptr %.sroa.652.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools.exit

bb.ai:                                            ; preds = %bb.k, %bb.n, %bb.m, %bb.s, %bb.t
  %.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.ah, %bb.k ], [ %i.ak, %bb.n ], [ %i.az, %bb.s ], [ %i.az, %bb.t ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.j) #24
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsftBYP88YJaE_11lance_tools4metaNtB2_21LanceToolFileMetadataNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.i = load i8, ptr %i.h, align 4, !range !677, !noundef !4
  store i8 %i.i, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs4_NtCsaSXGKSfiU2E_10lance_file7versionNtB5_19ConcreteFileVersionNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !9, !noundef !4 ; 7 uses
  %i.m = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @17, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.m, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.n, ptr %i.e, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.o = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @18, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.o, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.p, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.441.0..sroa_idx, align 8
  %i.q = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @19, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.r, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.457.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @20, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.s, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.b, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @21, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !4, !nonnull !4
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 8)
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.y, ptr %i.a, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsftBYP88YJaE_11lance_tools, ptr %.sroa.4101.0..sroa_idx, align 8
  %i.z = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g, %bb.f
  %.sroa.0.0 = phi i1 [ %i.z, %bb.g ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsftBYP88YJaE_11lance_tools3cliNtB5_14LanceToolsArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14CommandFactory18command_for_update(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 54 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store ptr @24, ptr %i.b, align 8, !alias.scope !681, !noalias !682
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  store i64 11, ptr %i.c, align 8, !alias.scope !681, !noalias !682
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr null, ptr %i.d, align 8, !alias.scope !681, !noalias !682
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store i32 -1, ptr %i.e, align 8, !alias.scope !681, !noalias !682
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 -1, ptr %i.f, align 8, !alias.scope !681, !noalias !682
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i64 -1, ptr %i.g, align 8, !alias.scope !681, !noalias !682
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %i.h, align 8, !alias.scope !681, !noalias !682
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %i.i, align 8, !alias.scope !681, !noalias !682
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store ptr null, ptr %i.j, align 8, !alias.scope !681, !noalias !682
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 -1, ptr %i.k, align 8, !alias.scope !681, !noalias !682
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 -1, ptr %i.l, align 8, !alias.scope !681, !noalias !682
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 -1, ptr %i.m, align 8, !alias.scope !681, !noalias !682
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store i64 -1, ptr %i.n, align 8, !alias.scope !681, !noalias !682
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i64 -1, ptr %i.o, align 8, !alias.scope !681, !noalias !682
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i64 -1, ptr %i.p, align 8, !alias.scope !681, !noalias !682
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.q, align 8, !alias.scope !681, !noalias !682
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !681, !noalias !682
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !681, !noalias !682
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store i64 -1, ptr %i.r, align 8, !alias.scope !681, !noalias !682
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -1, ptr %i.s, align 8, !alias.scope !681, !noalias !682
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -1, ptr %i.t, align 8, !alias.scope !681, !noalias !682
  store i64 0, ptr %i.a, align 8, !alias.scope !681, !noalias !682
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  store i64 -1, ptr %i.u, align 8, !alias.scope !681, !noalias !682
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 700
  store i32 0, ptr %i.v, align 4, !alias.scope !681, !noalias !682
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store i32 0, ptr %i.w, align 8, !alias.scope !681, !noalias !682
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %i.x, align 8, !alias.scope !681, !noalias !682
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !681, !noalias !682
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !681, !noalias !682
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !681, !noalias !682
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !682
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store ptr null, ptr %i.y, align 8, !alias.scope !681, !noalias !682
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.z, align 8, !alias.scope !681, !noalias !682
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.aa, align 8, !alias.scope !681, !noalias !682
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store ptr null, ptr %i.ab, align 8, !alias.scope !681, !noalias !682
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store ptr null, ptr %i.ac, align 8, !alias.scope !681, !noalias !682
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -1, ptr %i.ad, align 8, !alias.scope !681, !noalias !682
end_hunk_0
