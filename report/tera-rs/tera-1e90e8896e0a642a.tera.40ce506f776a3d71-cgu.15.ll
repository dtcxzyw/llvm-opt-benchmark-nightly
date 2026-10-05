Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.15?download=true
inline.NumInlined: 752
inline.NumDeleted: 395
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State12store_global:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14348 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d, !dbg !14365, !prof !4698

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !dbg !14366
    #dbg_value(i64 %i.i, !14318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14349)
    #dbg_value(i64 %i.k, !14318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14349)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
          to label %bb.h unwind label %bb.i, !dbg !14367

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !dbg !14368, !nonnull !1418, !noundef !1418 ; 2 uses
    #dbg_value(i64 %i.i, !14317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14350)
    #dbg_value(ptr %i.l, !14317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14350)
    #dbg_value(ptr poison, !14323, !DIExpression(), !14351)
  %i.m = icmp ule i64 %2, %i.i, !dbg !14369
    #dbg_value(i1 true, !14352, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14355)
  tail call void @llvm.assume(i1 %i.m), !dbg !14370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14371
    #dbg_value(i64 %i.i, !14356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14359)
    #dbg_value(i64 %i.i, !14300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14360)
    #dbg_value(ptr %i.l, !14356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14359)
    #dbg_value(ptr %i.l, !14300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14360)
    #dbg_value(i64 0, !14356, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14359)
    #dbg_value(i64 0, !14300, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14360)
  %.not = icmp eq i64 %2, 0, !dbg !14372
  br i1 %.not, label %bb.e, label %bb.f, !dbg !14372

bb.e:                                             ; preds = %bb.f, %bb.d
    #dbg_value(i64 %2, !14300, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14360)
    #dbg_value(i64 %2, !14356, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14359)
  store i64 %i.i, ptr %i.c, align 8, !dbg !14373
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14373
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14373
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14373
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !14374
  call void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueE6insertB1w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !14375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14376
    #dbg_value(ptr %i.d, !3474, !DIExpression(), !14254)
  %i.n = load i8, ptr %i.d, align 8, !dbg !14377, !range !3480, !alias.scope !14361, !noundef !1418
  %i.o = icmp eq i8 %i.n, -1, !dbg !14377
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB11_.exit, label %bb.g, !dbg !14377

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !14337, !DIExpression(), !14341)
    #dbg_value(ptr %1, !14343, !DIExpression(), !14347)
    #dbg_value(ptr %i.l, !14338, !DIExpression(), !14341)
    #dbg_value(ptr %i.l, !14344, !DIExpression(), !14347)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %1, i64 %2, i1 false), !dbg !14378
    #dbg_value(i64 %2, !14356, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14359)
    #dbg_value(i64 %2, !14300, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14360)
  br label %bb.e, !dbg !14379

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr %i.d, !3203, !DIExpression(), !14258)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !14380
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB11_.exit, !dbg !14380

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB11_.exit: ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14381
  ret void, !dbg !14382

bb.h:                                             ; preds = %bb.c
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit: ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm, !dbg !14383

bb.i:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %3, !3203, !DIExpression(), !14260)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit unwind label %bb.j, !dbg !14384

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !14383
  unreachable, !dbg !14383
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State16escape_if_needed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14389 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !14462, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14472)
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 6 uses
    #dbg_declare(ptr %.sroa.6.sroa.0, !14477, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !14399)
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
    #dbg_value(ptr %1, !14455, !DIExpression(), !14486)
    #dbg_value(ptr %2, !14456, !DIExpression(), !14486)
    #dbg_value(ptr %2, !14487, !DIExpression(), !14490)
    #dbg_value(ptr %2, !14491, !DIExpression(), !14494)
    #dbg_value(ptr %2, !14474, !DIExpression(), !14495)
    #dbg_declare(ptr %i.f, !14457, !DIExpression(), !14496)
    #dbg_declare(ptr %i.e, !14460, !DIExpression(), !14497)
    #dbg_value(ptr poison, !14466, !DIExpression(), !14498)
  %i.g = load i8, ptr %2, align 8, !dbg !14550, !range !2967, !noundef !1418 ; 4 uses
  %i.h = icmp ne i8 %i.g, 10, !dbg !14550
  tail call void @llvm.assume(i1 %i.h), !dbg !14550
  %i.i = add nsw i8 %i.g, -2, !dbg !14550
  %i.j = icmp samesign ugt i8 %i.g, 1, !dbg !14550
  %narrow = select i1 %i.j, i8 %i.i, i8 8, !dbg !14550 ; 2 uses
  %i.k = icmp eq i8 %narrow, 0, !dbg !14551
  br i1 %i.k, label %bb.b, label %bb.d, !dbg !14551

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageReEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 34), !dbg !14552
  br label %bb.c, !dbg !14553

bb.c:                                             ; preds = %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i, %bb.b
  ret void, !dbg !14554

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14555
  store i64 0, ptr %i.f, align 8, !dbg !14556
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14556
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !dbg !14556
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14556
  store i64 0, ptr %i.m, align 8, !dbg !14556
  %i.n = invoke noundef ptr @_RINvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB6_5Value6formatINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.ad, !dbg !14557 ; 2 uses

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.n, !14504, !DIExpression(), !14509)
  %.not = icmp eq ptr %i.n, null, !dbg !14558
  br i1 %.not, label %bb.g, label %bb.f, !dbg !14559

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.n, !14458, !DIExpression(), !14510)
    #dbg_value(ptr %i.n, !14511, !DIExpression(), !14516)
    #dbg_value(ptr %i.n, !14512, !DIExpression(), !14517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14560
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noundef nonnull %i.n)
          to label %bb.aa unwind label %bb.ad, !dbg !14560

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14561
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !14562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !14563
  call void @llvm.experimental.noalias.scope.decl(metadata !14518), !dbg !14562
  call void @llvm.experimental.noalias.scope.decl(metadata !14519), !dbg !14562
    #dbg_declare(ptr %i.d, !5010, !DIExpression(), !14412)
    #dbg_declare(ptr poison, !5014, !DIExpression(), !14413)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14564, !noalias !14520
    #dbg_value(ptr %i.d, !5016, !DIExpression(), !14415)
    #dbg_value(ptr %i.d, !5020, !DIExpression(), !14417)
    #dbg_value(ptr %i.d, !5023, !DIExpression(), !14419)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14565 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !14565, !alias.scope !14519, !noalias !14518, !nonnull !1418, !noundef !1418
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !14566
  %i.r = load i64, ptr %i.q, align 8, !dbg !14566, !alias.scope !14519, !noalias !14518, !noundef !1418 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %bb.i unwind label %bb.h, !dbg !14564, !noalias !14520

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.j, !dbg !14567, !noalias !14518

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !dbg !14564, !range !4804, !noalias !14520, !noundef !1418
  %i.u = trunc nuw i64 %i.t to i1, !dbg !14568
  br i1 %i.u, label %bb.k, label %.thread44, !dbg !14568

.thread44:                                        ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !14569, !alias.scope !14520
    #dbg_value(i64 %i.r, !14477, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14521)
    #dbg_value(i64 -1, !14477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14521)
    #dbg_value(i64 poison, !14477, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14521)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14570, !noalias !14520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14571
    #dbg_value(ptr @8, !14482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14423)
    #dbg_value(i64 37, !14482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14423)
    #dbg_declare(ptr %i.a, !14484, !DIExpression(), !14424)
  br label %bb.p, !dbg !14572

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !14573, !noalias !14518
  unreachable, !dbg !14573

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14574 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.w, align 8, !dbg !14574, !noalias !14520
  %i.y = load i64, ptr %i.w, align 8, !dbg !14574, !noalias !14520
  %.sroa.026.0.copyload = load i64, ptr %i.d, align 8, !dbg !14575, !noalias !14518 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !dbg !14575, !noalias !1418
    #dbg_value(i64 %.sroa.026.0.copyload, !14477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14521)
    #dbg_value(i64 poison, !14477, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14521)
    #dbg_value(i64 poison, !14477, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14521)
    #dbg_value(i64 %.sroa.026.0.copyload, !14477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14521)
    #dbg_value(i64 poison, !14477, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14521)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14570, !noalias !14520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14571
  call void @llvm.experimental.noalias.scope.decl(metadata !14522), !dbg !14576
  call void @llvm.experimental.noalias.scope.decl(metadata !14523), !dbg !14576
    #dbg_value(ptr @8, !14482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14423)
    #dbg_value(i64 37, !14482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14423)
    #dbg_declare(ptr %i.a, !14484, !DIExpression(), !14424)
  %.not.i = icmp eq i64 %.sroa.026.0.copyload, -1, !dbg !14577
  br i1 %.not.i, label %bb.p, label %bb.l, !dbg !14572, !prof !14524

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14578, !noalias !14525
  store i64 %.sroa.026.0.copyload, ptr %i.a, align 8, !dbg !14578, !noalias !14522
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !14578, !noalias !14522
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14578
  store <2 x i64> %i.x, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx23.sroa_idx, align 8, !dbg !14578, !noalias !14522
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #30
          to label %bb.n unwind label %bb.m, !dbg !14579, !noalias !14525

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #26
          to label %common.resume unwind label %bb.o, !dbg !14580, !noalias !14525

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !14581, !noalias !14525
  unreachable, !dbg !14581

bb.p:                                             ; preds = %bb.k, %.thread44
  %i.ab = phi i64 [ %i.y, %bb.k ], [ %i.r, %.thread44 ], !dbg !14582 ; 2 uses
    #dbg_value(i64 %i.ab, !14477, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14521)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !14583, !alias.scope !14525
  %.sroa.6.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !14583
  store i64 %i.ab, ptr %.sroa.6.sroa.6.0..sroa_idx49, align 8, !dbg !14583, !alias.scope !14525
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !14584
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !14585
  %i.ad = load i8, ptr %i.ac, align 8, !dbg !14585, !range !3604, !noundef !1418
  %i.ae = trunc nuw i8 %i.ad to i1, !dbg !14585
  br i1 %i.ae, label %bb.r, label %bb.q, !dbg !14585

bb.q:                                             ; preds = %bb.r, %bb.s, %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !14587
  store i8 -1, ptr %0, align 8, !dbg !14586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14588
  br label %bb.z, !dbg !14589

bb.r:                                             ; preds = %bb.p
  switch i8 %narrow, label %bb.q [
    i8 8, label %bb.s
    i8 9, label %bb.t
    i8 10, label %bb.t
    i8 11, label %bb.t
  ], !dbg !14590

bb.s:                                             ; preds = %bb.r
    #dbg_value(ptr %2, !14475, !DIExpression(), !14527)
    #dbg_value(ptr %2, !14528, !DIExpression(), !14536)
  %i.ag = trunc nuw i8 %i.g to i1, !dbg !14591
  %.sroa.04.0.in.v = select i1 %i.ag, i64 1, i64 23, !dbg !14592
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.04.0.in.v, !dbg !14592
  %.sroa.04.0 = load i8, ptr %.sroa.04.0.in, align 1, !dbg !14593, !range !3604, !noundef !1418
    #dbg_value(ptr undef, !14462, !DIExpression(), !14472)
  %i.ah = trunc nuw i8 %.sroa.04.0 to i1, !dbg !14472
  br i1 %i.ah, label %bb.q, label %bb.t, !dbg !14594

bb.t:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.s
    #dbg_value(ptr %i.e, !14537, !DIExpression(), !14540)
    #dbg_value(ptr %i.e, !14541, !DIExpression(), !14544)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14595
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !14595, !nonnull !1418, !noundef !1418
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State6escape(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ab)
          to label %bb.v unwind label %bb.u, !dbg !14596

bb.u:                                             ; preds = %bb.t
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %common.resume unwind label %bb.y, !dbg !14588

bb.v:                                             ; preds = %bb.t
    #dbg_value(ptr %i.e, !2715, !DIExpression(), !14439)
    #dbg_value(ptr %i.e, !2720, !DIExpression(), !14441)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.w, !dbg !14597

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !2725, !DIExpression(), !14443)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.x, !dbg !14598

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !14597
  unreachable, !dbg !14597

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.v
    #dbg_value(ptr %i.e, !2725, !DIExpression(), !14445)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !14599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14600
  br label %bb.c, !dbg !14554

bb.y:                                             ; preds = %bb.ad, %bb.u
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !14601
  unreachable, !dbg !14601

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14600
  br label %bb.c, !dbg !14553

bb.aa:                                            ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !14602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14603
    #dbg_value(ptr %i.f, !2720, !DIExpression(), !14447)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.ab, !dbg !14604

bb.ab:                                            ; preds = %bb.aa
  %i.ao = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !2725, !DIExpression(), !14449)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.ac, !dbg !14605

bb.ac:                                            ; preds = %bb.ab
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !14604
  unreachable, !dbg !14604

common.resume:                                    ; preds = %bb.ad, %bb.h, %bb.m, %bb.u, %bb.w, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.ab ], [ %i.z, %bb.m ], [ %lpad.thr_comm, %bb.ad ], [ %i.al, %bb.w ], [ %i.ak, %bb.u ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !14486

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.aa
    #dbg_value(ptr %i.f, !2725, !DIExpression(), !14451)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !14606
  br label %bb.z, !dbg !14600

bb.ad:                                            ; preds = %bb.f, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #26
          to label %common.resume unwind label %bb.y, !dbg !14600
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State18get_implicit_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14609 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !14618, !DIExpression(), !14623)
    #dbg_value(ptr %2, !14619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14623)
    #dbg_value(i64 %3, !14619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14623)
    #dbg_declare(ptr %i.a, !14620, !DIExpression(), !14624)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14635
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State9get_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !14636
    #dbg_value(ptr %i.a, !14625, !DIExpression(), !14628)
    #dbg_value(ptr %i.a, !14629, !DIExpression(), !14632)
  %i.b = load i8, ptr %i.a, align 8, !dbg !14637, !range !2967, !noundef !1418 ; 2 uses
  %i.c = icmp ne i8 %i.b, 10, !dbg !14637
  tail call void @llvm.assume(i1 %i.c), !dbg !14637
  %i.d = icmp eq i8 %i.b, 2, !dbg !14638
  br i1 %i.d, label %bb.b, label %bb.i, !dbg !14638

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200, !dbg !14639
  %i.f = load ptr, ptr %i.e, align 8, !dbg !14639, !align !3438, !noundef !1418 ; 2 uses
  %.not = icmp eq ptr %i.f, null, !dbg !14639
  br i1 %.not, label %bb.d, label %bb.c, !dbg !14640

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.f, !14621, !DIExpression(), !14633)
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State18get_implicit_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.e unwind label %bb.f, !dbg !14641

bb.d:                                             ; preds = %bb.b
  store i8 2, ptr %0, align 8, !dbg !14642
  br label %bb.e, !dbg !14643

bb.e:                                             ; preds = %bb.c, %bb.d
    #dbg_value(ptr %i.a, !3203, !DIExpression(), !14614)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !14644
  br label %bb.g, !dbg !14645

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State19available_variables:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs5yXxDE1DkoT_4tera.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi, !dbg !15563

.loopexit:                                        ; preds = %bb.aa, %bb.ac, %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph
  %lpad.loopexit274 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.v, %bb.x, %bb.ag
  %lpad.loopexit277 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.al, %bb.t, %bb.r
  %lpad.loopexit279 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.f, %bb.h, %bb.m
  %lpad.loopexit282 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit274, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit277, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit279, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit282, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.m, !15452, !DIExpression(), !14812)
    #dbg_value(ptr %i.m, !15458, !DIExpression(), !14815)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs5yXxDE1DkoT_4tera.exit unwind label %bb.ao, !dbg !15564

bb.ao:                                            ; preds = %.loopexit.split-lp
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !15563
  unreachable, !dbg !15563
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State6escape(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15571 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !15659, !DIExpression(DW_OP_LLVM_fragment, 8, 184), !15667)
    #dbg_declare(ptr poison, !15659, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !15667)
    #dbg_declare(ptr poison, !15668, !DIExpression(DW_OP_LLVM_fragment, 8, 184), !15686)
    #dbg_declare(ptr poison, !15668, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !15686)
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 4 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !15683, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !15687)
  %i.d = alloca [40 x i8], align 8                ; 10 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !15688, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !15702)
    #dbg_declare(ptr %.sroa.7.sroa.0, !15699, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !15703)
  %i.f = alloca [72 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !15654, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !15704)
    #dbg_declare(ptr poison, !15655, !DIExpression(DW_OP_LLVM_fragment, 8, 184), !15705)
    #dbg_declare(ptr poison, !15662, !DIExpression(DW_OP_LLVM_fragment, 8, 184), !15706)
    #dbg_declare(ptr poison, !15662, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !15706)
    #dbg_declare(ptr poison, !15655, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !15705)
  %i.h = alloca [24 x i8], align 8                ; 9 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !15697, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !15707)
  %.sroa.610.sroa.0 = alloca [23 x i8], align 1   ; 5 uses
    #dbg_declare(ptr %.sroa.610.sroa.0, !15682, !DIExpression(DW_OP_LLVM_fragment, 8, 184), !15708)
    #dbg_declare(ptr poison, !15682, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !15708)
  %.sroa.6.sroa.0 = alloca [23 x i8], align 1     ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.k, align 8
    #dbg_value(ptr %1, !15649, !DIExpression(), !15709)
    #dbg_declare(ptr %i.j, !15650, !DIExpression(), !15710)
    #dbg_declare(ptr %i.i, !15651, !DIExpression(), !15711)
    #dbg_declare(ptr poison, !15712, !DIExpression(), !15717)
    #dbg_declare(ptr poison, !15723, !DIExpression(), !15727)
    #dbg_declare(ptr poison, !15728, !DIExpression(), !15735)
    #dbg_value(i64 0, !15736, !DIExpression(), !15742)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15799
    #dbg_value(i64 %3, !15721, !DIExpression(), !15743)
    #dbg_value(i64 %3, !15713, !DIExpression(), !15744)
    #dbg_value(i64 %3, !15724, !DIExpression(), !15745)
    #dbg_value(i64 %3, !15729, !DIExpression(), !15746)
    #dbg_value(i64 %3, !15738, !DIExpression(), !15742)
    #dbg_value(i64 1, !15730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15746)
    #dbg_value(i64 1, !15739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15742)
    #dbg_value(i64 1, !15730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15746)
    #dbg_value(i64 1, !15739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15742)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15800
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !15800
  %i.l = load i64, ptr %i.g, align 8, !dbg !15800, !range !4804, !noundef !1418
  %i.m = trunc nuw i64 %i.l to i1, !dbg !15801
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !15746
  %i.o = load i64, ptr %i.n, align 8, !dbg !15746, !range !4805, !noundef !1418 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !15746 ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !15801, !prof !4698

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.p, align 8, !dbg !15802
    #dbg_value(i64 %i.o, !15732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15747)
    #dbg_value(i64 %i.q, !15732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15747)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #30, !dbg !15803
  unreachable, !dbg !15803

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.p, align 8, !dbg !15804, !nonnull !1418, !noundef !1418
    #dbg_value(i64 %i.o, !15731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15748)
    #dbg_value(ptr %i.r, !15731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15748)
    #dbg_value(ptr poison, !15737, !DIExpression(), !15749)
  %i.s = icmp ule i64 %3, %i.o, !dbg !15805
    #dbg_value(i1 true, !15750, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15753)
  tail call void @llvm.assume(i1 %i.s), !dbg !15806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15807
  store i64 %i.o, ptr %i.i, align 8, !dbg !15808
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !15808
  store ptr %i.r, ptr %i.t, align 8, !dbg !15808
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !15808
  store i64 0, ptr %i.u, align 8, !dbg !15808
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !15758
  %i.w = load ptr, ptr %i.v, align 8, !dbg !15758, !nonnull !1418, !noundef !1418
  %i.x = invoke noundef ptr %i.w(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @11)
          to label %bb.d unwind label %bb.v, !dbg !15758 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.x, !15754, !DIExpression(), !15759)
  %.not = icmp eq ptr %i.x, null, !dbg !15809
  br i1 %.not, label %bb.f, label %bb.e, !dbg !15810

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.x, !15652, !DIExpression(), !15760)
    #dbg_value(ptr %i.x, !15761, !DIExpression(), !15766)
    #dbg_value(ptr %i.x, !15762, !DIExpression(), !15767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15811
  invoke void @_RNvXs3_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.f, ptr noundef nonnull %i.x)
          to label %bb.s unwind label %bb.v, !dbg !15811

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !15685
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610.sroa.0), !dbg !15685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !15812
  call void @llvm.experimental.noalias.scope.decl(metadata !15768), !dbg !15685
    #dbg_declare(ptr %i.h, !5010, !DIExpression(), !15601)
    #dbg_declare(ptr poison, !5014, !DIExpression(), !15602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15813, !noalias !15769
    #dbg_value(ptr %i.h, !5016, !DIExpression(), !15605)
    #dbg_value(ptr %i.h, !5020, !DIExpression(), !15607)
    #dbg_value(ptr %i.h, !5023, !DIExpression(), !15609)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !15814 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !dbg !15814, !alias.scope !15768, !noalias !15770, !nonnull !1418, !noundef !1418
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !15815
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !15815, !alias.scope !15768, !noalias !15770, !noundef !1418 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
          to label %bb.h unwind label %bb.g, !dbg !15813, !noalias !15769

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %common.resume unwind label %bb.i, !dbg !15816, !noalias !15770

bb.h:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.c, align 8, !dbg !15813, !range !4804, !noalias !15769, !noundef !1418
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !15817
  br i1 %i.ae, label %bb.j, label %.thread, !dbg !15817

.thread:                                          ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !dbg !15818
    #dbg_value(i64 %i.ab, !15697, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15771)
    #dbg_value(i64 -1, !15697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15771)
    #dbg_value(i64 poison, !15697, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15771)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15819, !noalias !15769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15820
    #dbg_value(ptr %i.j, !15698, !DIExpression(), !15771)
  br label %bb.q, !dbg !15821

bb.i:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !15822, !noalias !15770
  unreachable, !dbg !15822

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15823 ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !dbg !15823, !noalias !15769
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !15823, !noalias !15769
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !dbg !15824, !noalias !15770 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !dbg !15824
    #dbg_value(i64 %.sroa.057.0.copyload, !15697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15771)
    #dbg_value(i64 poison, !15697, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15771)
    #dbg_value(i64 poison, !15697, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15771)
    #dbg_value(i64 %.sroa.057.0.copyload, !15697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15771)
    #dbg_value(i64 poison, !15697, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15771)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15819, !noalias !15769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15820
    #dbg_value(ptr %i.j, !15698, !DIExpression(), !15771)
  %.not46 = icmp eq i64 %.sroa.057.0.copyload, -1, !dbg !15825
  br i1 %.not46, label %bb.q, label %bb.k, !dbg !15821

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 %.sroa.057.0.copyload, !15688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15772)
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !15827
    #dbg_value(i64 poison, !15688, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15772)
    #dbg_value(i64 poison, !15688, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15826
  store i64 %.sroa.057.0.copyload, ptr %i.d, align 8, !dbg !15826
  %.sroa.455.sroa.4.0..sroa.455.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !15826
  store <2 x i64> %i.ah, ptr %.sroa.455.sroa.4.0..sroa.455.0..sroa_idx.sroa_idx, align 8, !dbg !15826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15828
    #dbg_value(ptr poison, !15777, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15618)
    #dbg_declare(ptr %i.d, !15776, !DIExpression(), !15619)
    #dbg_value(ptr %i.j, !15778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15620)
    #dbg_value(ptr %i.d, !15778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15828, !noalias !15785
  store ptr %i.j, ptr %i.a, align 8, !dbg !15828, !noalias !15785
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15828
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !15828, !noalias !15785
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15828
  store ptr %i.d, ptr %i.aj, align 8, !dbg !15828, !noalias !15785
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !15828
  store ptr @_RNvXs0_NtCsgCecv3eZDcN_5alloc6stringNtB5_13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !15828, !noalias !15785
    #dbg_value(ptr @0, !15786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15626)
    #dbg_value(ptr %i.a, !15786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15626)
    #dbg_value(ptr null, !4712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15628)
    #dbg_value(i64 undef, !4712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15628)
    #dbg_value(ptr poison, !4728, !DIExpression(), !15628)
    #dbg_declare(ptr poison, !4729, !DIExpression(), !15629)
    #dbg_value(ptr poison, !4732, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15631)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.l, !dbg !15829, !noalias !15789

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #26
          to label %common.resume unwind label %bb.p, !dbg !15830, !noalias !15789

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15831, !noalias !15785
  invoke void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.m unwind label %bb.l, !dbg !15832

bb.m:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i
    #dbg_value(ptr %i.d, !3155, !DIExpression(), !15633)
    #dbg_value(ptr %i.d, !2720, !DIExpression(), !15635)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.n, !dbg !15833, !noalias !15789

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !2725, !DIExpression(), !15637)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %common.resume unwind label %bb.o, !dbg !15834, !noalias !15789

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !15833, !noalias !15789
  unreachable, !dbg !15833

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.m
    #dbg_value(ptr %i.d, !2725, !DIExpression(), !15639)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d), !dbg !15835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15837
  %.sroa.08.0.copyload = load i8, ptr %i.e, align 8, !dbg !15838
    #dbg_value(i8 %.sroa.08.0.copyload, !15682, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15790)
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !15838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.610.sroa.0, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.610.0..sroa_idx, i64 23, i1 false), !dbg !15838
  %.sroa.610.sroa.7.0..sroa.610.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !15838
  %.sroa.610.sroa.7.0.copyload = load i64, ptr %.sroa.610.sroa.7.0..sroa.610.0..sroa_idx.sroa_idx, align 8, !dbg !15838
    #dbg_value(i64 %.sroa.610.sroa.7.0.copyload, !15682, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15790)
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !15838
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.813.0..sroa_idx, i64 40, i1 false), !dbg !15838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15840
    #dbg_value(i8 %.sroa.08.0.copyload, !15668, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15791)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.610.sroa.0, i64 23, i1 false), !dbg !15841
    #dbg_value(i64 %.sroa.610.sroa.7.0.copyload, !15668, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15791)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.0), !dbg !15842
    #dbg_value(i8 %.sroa.08.0.copyload, !15655, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15792)
    #dbg_value(i8 %.sroa.08.0.copyload, !15662, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15793)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !15839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0, i64 23, i1 false), !dbg !15842
    #dbg_value(i64 %.sroa.610.sroa.7.0.copyload, !15662, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15793)
    #dbg_value(i64 %.sroa.610.sroa.7.0.copyload, !15655, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15792)
    #dbg_value(i8 %.sroa.08.0.copyload, !15659, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15794)
    #dbg_value(i64 %.sroa.610.sroa.7.0.copyload, !15659, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15794)
  store i8 %.sroa.08.0.copyload, ptr %0, align 8, !dbg !15839
  %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15839
  store i64 %.sroa.610.sroa.7.0.copyload, ptr %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx, align 8, !dbg !15839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !15843
  br label %bb.r, !dbg !15844

bb.p:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !15845, !noalias !15789
  unreachable, !dbg !15845

bb.q:                                             ; preds = %.thread, %bb.j
  %.sroa.7.sroa.7.0 = phi i64 [ %i.ai, %bb.j ], [ %i.ab, %.thread ], !dbg !15846
    #dbg_value(i64 %.sroa.7.sroa.7.0, !15697, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15771)
    #dbg_value(i64 %.sroa.7.sroa.7.0, !15699, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15796)
    #dbg_value(i64 %.sroa.7.sroa.7.0, !15682, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15790)
    #dbg_value(i8 -1, !15682, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15790)
    #dbg_value(i64 %.sroa.7.sroa.7.0, !15683, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15797)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.0), !dbg !15842
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !15685
    #dbg_value(i64 %.sroa.7.sroa.7.0, !15654, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15798)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !15843
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15847
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !15847
  store i8 -1, ptr %0, align 8, !dbg !15847
  br label %bb.r, !dbg !15848

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECs5yXxDE1DkoT_4tera.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15849
  ret void, !dbg !15848

bb.s:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !15850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15851
    #dbg_value(ptr %i.i, !2720, !DIExpression(), !15641)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.t, !dbg !15852

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !2725, !DIExpression(), !15643)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.u, !dbg !15853

bb.u:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !15852
  unreachable, !dbg !15852

common.resume:                                    ; preds = %bb.v, %bb.g, %bb.n, %bb.l, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %i.ak, %bb.l ], [ %lpad.thr_comm, %bb.v ], [ %i.ac, %bb.g ], [ %i.al, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !15709

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.s
    #dbg_value(ptr %i.i, !2725, !DIExpression(), !15645)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !15854
  br label %bb.r, !dbg !15849

bb.v:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #26
          to label %common.resume unwind label %bb.w, !dbg !15849

bb.w:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !15855
  unreachable, !dbg !15855
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State9get_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15864 {
bb.a:
  %.sroa.7.i94 = alloca [6 x i8], align 2         ; 2 uses
  %.sroa.7.i78 = alloca [6 x i8], align 2         ; 2 uses
  %.sroa.7.i62 = alloca [6 x i8], align 2         ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr %.sroa.7.i62, !16668, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !15870)
    #dbg_value(ptr poison, !16682, !DIExpression(), !15876)
    #dbg_value(ptr poison, !16691, !DIExpression(), !15877)
    #dbg_value(ptr poison, !16689, !DIExpression(), !15878)
  %i.b = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !16694, !DIExpression(), !16701)
    #dbg_value(ptr poison, !16714, !DIExpression(), !16725)
    #dbg_value(ptr poison, !16729, !DIExpression(), !16731)
    #dbg_value(ptr poison, !16710, !DIExpression(), !16732)
    #dbg_value(ptr poison, !16705, !DIExpression(), !16733)
    #dbg_declare(ptr %0, !16656, !DIExpression(), !16734)
    #dbg_value(ptr %1, !16652, !DIExpression(), !16735)
    #dbg_value(ptr %2, !16653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16735)
    #dbg_value(i64 %3, !16653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16735)
    #dbg_declare(ptr %i.b, !16659, !DIExpression(), !16736)
    #dbg_value(i64 1, !16718, !DIExpression(), !16737)
    #dbg_value(i64 1, !16738, !DIExpression(), !16743)
end_hunk_1
