Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.05?download=true
inline.NumInlined: 1022
inline.NumDeleted: 483
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extension:bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1294
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1295, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1294, !nonnull !4
  br label %bb.e

bb.e:                                             ; preds = %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i, %bb.d
  %.idx.i = phi i64 [ 0, %bb.d ], [ %.add.i, %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i ] ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr @78, i64 %.idx.i ; 2 uses
  %.add.i = add nuw nsw i64 %.idx.i, 16           ; 2 uses
  %i.q = getelementptr i8, ptr %.ptr.i, i64 8
  %.val3.i.i = load i64, ptr %i.q, align 8, !noalias !1295, !noundef !4
  %i.r = icmp eq i64 %.val3.i.i, %i.n
  br i1 %i.r, label %.split.i.i, label %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i

.split.i.i:                                       ; preds = %bb.e
  %.val2.i.i = load ptr, ptr %.ptr.i, align 8, !noalias !1295, !nonnull !4, !noundef !4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull %i.p, i64 %i.n), !noalias !1296
  %i.s = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.s, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i, label %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i

_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i: ; preds = %.split.i.i, %bb.e
  %.not7.i.i = icmp eq i64 %.add.i, 1040
  br i1 %.not7.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i, label %bb.e

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i: ; preds = %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i, %.split.i.i
  %.lcssa.ph.i.i = phi i1 [ true, %.split.i.i ], [ false, %_RNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00B7_.exit.backedge.i.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_0B5_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_0B5_.exit: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_00EB1K_.exit.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1294
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.a, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_0B5_.exit
  %.sroa.0.0 = phi i1 [ %.lcssa.ph.i.i, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extensions_0B5_.exit ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 13) i64 @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = tail call { i64, ptr } @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions21available_parallelism() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef range(i64 1, 13) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.e, i64 12)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count0EB1R_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.h = and i64 %i.e, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.e, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !1299
  store i8 3, ptr %i.a, align 8, !alias.scope !1299
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count0EB1R_.exit

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core6walker19walker_thread_count0EB1R_.exit: ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.010.i = phi i64 [ 4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.g, %bb.b ]
  ret i64 %.sroa.0.010.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker20display_ignore_error(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = load i64, ptr %1, align 8, !range !16, !noundef !4
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = tail call { ptr, i64 } @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path12strip_prefixRBw_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.v, 1
  %spec.select = select i1 %i.x, i64 %i.u, i64 %i.y
  %spec.select30 = select i1 %i.x, ptr %i.s, ptr %i.w
  store ptr %spec.select30, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1306
  store i64 0, ptr %i.e, align 8, !noalias !1306
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1306
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1306
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.aa, align 8, !noalias !1306
  store ptr %i.e, ptr %i.d, align 8, !noalias !1306
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @133, ptr %i.ab, align 8, !noalias !1306
  %i.ac = invoke noundef zeroext i1 @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !1307

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #29
          to label %common.resume unwind label %bb.f, !noalias !1307

bb.d:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.e, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #27
          to label %.noexc.i unwind label %bb.c, !noalias !1307

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1307
  unreachable

common.resume:                                    ; preds = %.body, %bb.ai, %bb.ae, %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.ae ], [ %i.ad, %bb.c ], [ %i.an, %bb.h ], [ %.pn, %bb.ai ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 4 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 8)
          to label %bb.m unwind label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1309
  store i64 0, ptr %i.c, align 8, !noalias !1309
  %.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i34, align 8, !noalias !1309
  %.sroa.5.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i35, align 8, !noalias !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1309
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.ak, align 8, !noalias !1309
  store ptr %i.c, ptr %i.b, align 8, !noalias !1309
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @133, ptr %i.al, align 8, !noalias !1309
  %i.am = invoke noundef zeroext i1 @_RNvXs1_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !1310

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %common.resume unwind label %bb.k, !noalias !1310

bb.i:                                             ; preds = %bb.g
  br i1 %i.am, label %bb.j, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtCs30WoLBgco1_6ignore5ErrorNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit, !prof !6

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #27
          to label %.noexc.i36 unwind label %bb.h, !noalias !1310

.noexc.i36:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !1310
  unreachable

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtCs30WoLBgco1_6ignore5ErrorNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1309
  br label %bb.ag

.body:                                            ; preds = %bb.aa, %bb.l, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.z ], [ %i.ap, %bb.l ], [ %i.bg, %bb.aa ] ; 2 uses
  %.sroa.08.0 = phi i8 [ %.sroa.08.2, %bb.z ], [ %.sroa.08.1, %bb.l ], [ %.sroa.08.2, %bb.aa ]
  %4 = trunc nuw i8 %.sroa.08.0 to i1
  br i1 %4, label %bb.ai, label %common.resume

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.o, %bb.u, %bb.r, %bb.n, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.08.1 = phi i8 [ %.sroa.08.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ 1, %bb.o ], [ 1, %bb.u ], [ 1, %bb.r ], [ 1, %bb.n ], [ 1, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit ]
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCs5Xr050g3D4S_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4)
          to label %bb.p unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.ar = add i64 %i.ai, -8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.as, ptr %i.j, align 8, !captures !1312
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ar, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsbzNSmZPCnTx_10tgrep_core, ptr %.sroa.412.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @102, ptr noundef nonnull %i.h)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.l

bb.p:                                             ; preds = %bb.n
  br i1 %i.aq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.au = add i64 %i.ai, -4                       ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.au, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.t unwind label %bb.l

bb.s:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit, %bb.w, %bb.q
  %.sroa.08.2 = phi i8 [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit ], [ 1, %bb.w ], [ 0, %bb.q ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.aw, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtCs30WoLBgco1_6ignore5ErrorENtB6_7Display3fmtCsbzNSmZPCnTx_10tgrep_core, ptr %.sroa.424.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @103, ptr noundef nonnull %i.g)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit37 unwind label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.ax = load i64, ptr %i.f, align 8, !range !8, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !19, !noundef !4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.u, label %bb.v, !prof !6

bb.u:                                             ; preds = %bb.t
  %i.bc = load i64, ptr %i.bb, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ba, i64 %i.bc) #33
          to label %bb.y unwind label %bb.l

bb.v:                                             ; preds = %bb.t
  %i.bd = load ptr, ptr %i.bb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = icmp ule i64 %i.au, %i.ba
  call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.v
  store i64 %i.ba, ptr %i.k, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bd, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.s

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 1 %i.av, i64 %i.au, i1 false)
  br label %bb.w

bb.y:                                             ; preds = %bb.u
  unreachable

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s

bb.z:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #29
          to label %.body unwind label %bb.ah

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit37: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit37
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit37
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %5 = trunc nuw i8 %.sroa.08.2 to i1
  br i1 %5, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit40, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ag

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit40 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit40: ; preds = %bb.ad
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %bb.ac

bb.ag:                                            ; preds = %bb.ac, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtCs30WoLBgco1_6ignore5ErrorNtB5_12SpecToString14spec_to_stringCsbzNSmZPCnTx_10tgrep_core.exit
  ret void

bb.ah:                                            ; preds = %bb.ai, %bb.z
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ai:                                            ; preds = %.body
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #29
          to label %common.resume unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef ptr @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker21git_ignorecase_filter(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [344 x i8], align 8               ; 8 uses
  %i.b = alloca [328 x i8], align 8               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %2, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = xor i1 %3, true
  %i.e = xor i1 %4, true
  %i.f = xor i1 %5, true
  call void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB5_21CaseInsensitiveIgnore3new(ptr noalias nofree noundef nonnull sret([328 x i8]) align 8 captures(address) dereferenceable(328) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i1 noundef zeroext %i.d, i1 noundef zeroext %i.e, i1 noundef zeroext %i.f)
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.04.0.copyload, 2
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %i.c, i64 320, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.04.0.copyload, ptr %i.h, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1315
  %i.i = call noundef align 8 dereferenceable_or_null(344) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 345) 344, i64 noundef 8) #31, !noalias !1315 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEE3newB14_.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 344) #33
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.a) #29
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEE3newB14_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.a, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEE3newB14_.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEE3newB14_.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker24walk_dir_with_ignorecase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0179 = alloca [80 x i8], align 8         ; 6 uses
  %.sroa.0175 = alloca [80 x i8], align 8         ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [144 x i8], align 8               ; 8 uses
  %i.v = alloca [128 x i8], align 8               ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [112 x i8], align 8              ; 17 uses
  %i.ai = alloca [128 x i8], align 8              ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [56 x i8], align 8               ; 10 uses
  %i.al = alloca [56 x i8], align 8               ; 10 uses
  %i.am = alloca [104 x i8], align 8              ; 6 uses
  %i.an = alloca [168 x i8], align 8              ; 8 uses
  %i.ao = alloca [288 x i8], align 8              ; 22 uses
  %i.ap = alloca [104 x i8], align 8              ; 9 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.512 = alloca [120 x i8], align 8         ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 14 uses
  %i.au = alloca [1 x i8], align 1                ; 4 uses
  %i.av = alloca [1 x i8], align 1                ; 4 uses
  %i.aw = alloca [16 x i8], align 16              ; 4 uses
  %i.ax = alloca [1 x i8], align 1                ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 8 uses
  %i.ba = alloca [8 x i8], align 8                ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 5 uses
  %i.bc = alloca [8 x i8], align 8                ; 5 uses
  %i.bd = alloca [8 x i8], align 8                ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [32 x i8], align 8               ; 10 uses
  %i.bg = alloca [32 x i8], align 8               ; 10 uses
  %i.bh = alloca [32 x i8], align 8               ; 10 uses
  %i.bi = alloca [32 x i8], align 8               ; 10 uses
  %i.bj = alloca [8 x i8], align 8                ; 3 uses
  store ptr %4, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i32 0, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  store i8 0, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 0, ptr %i.bl, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 0, ptr %.sroa.555.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i32 0, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  store i8 0, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 0, ptr %i.bn, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i32 0, ptr %i.bg, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store i8 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 0, ptr %i.bp, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 0, ptr %.sroa.563.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i32 0, ptr %i.bf, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store i8 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 0, ptr %i.br, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 0, ptr %.sroa.566.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i32 0, ptr %i.be, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store i8 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr null, ptr %i.bt, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 0, ptr %.sroa.575.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bu = atomicrmw add ptr %4, i64 1 monotonic, align 8
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %4, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 0, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
end_hunk_0
