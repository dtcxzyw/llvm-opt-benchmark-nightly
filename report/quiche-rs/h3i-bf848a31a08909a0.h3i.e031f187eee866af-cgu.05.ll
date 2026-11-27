Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.05?download=true
inline.NumInlined: 374
inline.NumDeleted: 177
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(ptr %.val, !18003, !DIExpression(), !17978)
    #dbg_value(ptr %.val, !18000, !DIExpression(), !17979)
    #dbg_value(ptr %.val1, !17999, !DIExpression(), !17979)
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !18010
  %i.c = ptrtoint ptr %.val to i64, !dbg !18010
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !18010
  %i.e = lshr exact i64 %i.d, 3, !dbg !18010      ; 2 uses
    #dbg_value(i64 %i.e, !17994, !DIExpression(), !17980)
  store i64 %i.e, ptr %0, align 8, !dbg !18011, !alias.scope !18008
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18011
  store i64 1, ptr %i.f, align 8, !dbg !18011, !alias.scope !18008
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18011
  store i64 %i.e, ptr %i.g, align 8, !dbg !18011, !alias.scope !18008
  ret void, !dbg !18012
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_17CloseTriggerFrameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18021 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %0, !18062, !DIExpression(), !18080)
    #dbg_value(ptr %1, !18063, !DIExpression(), !18080)
    #dbg_value(ptr %1, !18081, !DIExpression(), !18087)
    #dbg_declare(ptr %i.e, !18064, !DIExpression(), !18088)
    #dbg_declare(ptr poison, !18089, !DIExpression(), !18093)
    #dbg_value(ptr @63, !18094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18097)
    #dbg_value(i64 7, !18094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18097)
    #dbg_value(ptr @63, !18098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18102)
    #dbg_value(i64 7, !18098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18102)
    #dbg_value(ptr @63, !18099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18103)
    #dbg_value(i64 7, !18099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18103)
    #dbg_value(ptr @63, !18104, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18107)
    #dbg_value(i64 7, !18104, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18107)
    #dbg_value(ptr @63, !18108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18111)
    #dbg_value(i64 7, !18108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18111)
    #dbg_value(i64 0, !18112, !DIExpression(), !18125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18190
  %i.f = load i64, ptr %0, align 8, !dbg !18191, !range !4745, !noundef !1246
  %i.g = icmp eq i64 %i.f, -1, !dbg !18191
  br i1 %i.g, label %bb.b, label %.split, !dbg !18192

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr @63, !18126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18150)
    #dbg_value(ptr @63, !18128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18151)
    #dbg_value(ptr @63, !18130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18152)
    #dbg_value(ptr @63, !18133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18153)
    #dbg_value(i64 7, !18126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18150)
    #dbg_value(i64 7, !18128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18151)
    #dbg_value(i64 7, !18130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18152)
    #dbg_value(i64 7, !18133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18153)
    #dbg_value(i64 7, !18135, !DIExpression(), !18154)
    #dbg_value(i64 7, !18138, !DIExpression(), !18155)
    #dbg_value(i64 7, !18141, !DIExpression(), !18156)
    #dbg_value(i64 7, !18157, !DIExpression(), !18162)
    #dbg_value(i64 7, !18163, !DIExpression(), !18168)
    #dbg_value(i64 7, !18144, !DIExpression(), !18169)
    #dbg_value(i64 7, !18114, !DIExpression(), !18125)
    #dbg_value(i64 1, !18146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18169)
    #dbg_value(i64 1, !18115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18125)
    #dbg_value(i64 1, !18146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18169)
    #dbg_value(i64 1, !18115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18193
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !18193
  %i.h = load i64, ptr %i.a, align 8, !dbg !18193, !range !2806, !noundef !1246
  %i.i = trunc nuw i64 %i.h to i1, !dbg !18194
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18169
  %i.k = load i64, ptr %i.j, align 8, !dbg !18169, !range !2883, !noundef !1246 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18169 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e, !dbg !18194, !prof !2793

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18195
    #dbg_value(ptr %0, !18065, !DIExpression(), !18170)
  store ptr %0, ptr %i.d, align 8, !dbg !18195
    #dbg_value(ptr %i.d, !18067, !DIExpression(), !18171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18196
  store ptr %i.d, ptr %i.c, align 8, !dbg !18196
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18196
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameNtB6_5Debug3fmtBA_, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !18196
    #dbg_value(ptr @54, !18172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18176)
    #dbg_value(ptr %i.c, !18172, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18176)
    #dbg_value(ptr null, !2902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18046)
    #dbg_value(i64 undef, !2902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18046)
    #dbg_value(ptr poison, !2923, !DIExpression(), !18046)
    #dbg_value(ptr poison, !2928, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18048)
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @54, ptr noundef nonnull %i.c), !dbg !18197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18199
  br label %bb.c, !dbg !18199

bb.c:                                             ; preds = %bb.e, %.split
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !18200
    #dbg_value(ptr %i.m, !18071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18177)
    #dbg_value(ptr %i.e, !18071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18201
  store ptr %i.m, ptr %i.b, align 8, !dbg !18201
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18201
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18201
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18201
  store ptr %i.e, ptr %i.n, align 8, !dbg !18201
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18201
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !18201
    #dbg_value(ptr @64, !18082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18087)
    #dbg_value(ptr %i.b, !18082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18087)
  %i.o = load ptr, ptr %1, align 8, !dbg !18202, !nonnull !1246, !noundef !1246
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18202
  %i.q = load ptr, ptr %i.p, align 8, !dbg !18202, !nonnull !1246, !align !3932, !noundef !1246
  %i.r = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @64, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %bb.f, !dbg !18203

bb.d:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.l, align 8, !dbg !18204
    #dbg_value(i64 %i.k, !18148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18178)
    #dbg_value(i64 %i.s, !18148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18178)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.s) #25, !dbg !18205
  unreachable, !dbg !18205

bb.e:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 8, !dbg !18206, !nonnull !1246, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.k, !18147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18179)
    #dbg_value(ptr %i.t, !18147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18179)
    #dbg_value(ptr poison, !18113, !DIExpression(), !18180)
  %i.u = icmp samesign ugt i64 %i.k, 6, !dbg !18207
    #dbg_value(i1 true, !18181, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18184)
  tail call void @llvm.assume(i1 %i.u), !dbg !18208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18209
    #dbg_value(i64 %i.k, !18185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18188)
    #dbg_value(i64 %i.k, !18136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18189)
    #dbg_value(ptr %i.t, !18185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18188)
    #dbg_value(ptr %i.t, !18136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18189)
    #dbg_value(i64 0, !18185, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18188)
    #dbg_value(i64 0, !18136, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18189)
    #dbg_value(ptr @63, !18158, !DIExpression(), !18162)
    #dbg_value(ptr @63, !18164, !DIExpression(), !18168)
    #dbg_value(ptr %i.t, !18159, !DIExpression(), !18162)
    #dbg_value(ptr %i.t, !18165, !DIExpression(), !18168)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @63, i64 7, i1 false), !dbg !18210
    #dbg_value(i64 7, !18185, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18188)
    #dbg_value(i64 7, !18136, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18189)
  store i64 %i.k, ptr %i.e, align 8, !dbg !18211
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !18211
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !18211
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !18211
  store i64 7, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !18211
  br label %bb.c, !dbg !18212

bb.f:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #23
          to label %common.resume unwind label %bb.j, !dbg !18213

bb.g:                                             ; preds = %bb.c
    #dbg_value(ptr %i.e, !3026, !DIExpression(), !18052)
    #dbg_value(ptr %i.e, !3014, !DIExpression(), !18054)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit unwind label %bb.h, !dbg !18214

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !3019, !DIExpression(), !18056)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.i, !dbg !18215

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !18214
  unreachable, !dbg !18214

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.v, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !18080

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.g
    #dbg_value(ptr %i.e, !3019, !DIExpression(), !18058)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !18216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18213
  ret i1 %i.r, !dbg !18217

bb.j:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !18218
  unreachable, !dbg !18218
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_17CloseTriggerFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #0 !dbg !18220 {
bb.a:
    #dbg_value(ptr %0, !18310, !DIExpression(), !18315)
    #dbg_value(ptr %1, !18311, !DIExpression(), !18315)
  %i.a = load i64, ptr %0, align 8, !dbg !18341, !range !4745, !noundef !1246 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1, !dbg !18341
  %i.c = load i64, ptr %1, align 8, !range !4745  ; 3 uses
  %i.d = icmp eq i64 %i.c, -1
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !dbg !18342
  br i1 %or.cond, label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.b, !dbg !18342

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !18312, !DIExpression(), !18316)
    #dbg_value(ptr %1, !18313, !DIExpression(), !18316)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !18343
  %i.f = load i64, ptr %i.e, align 8, !dbg !18343, !noundef !1246
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !18344
  %i.h = load i64, ptr %i.g, align 8, !dbg !18344, !noundef !1246
  %i.i = icmp eq i64 %i.f, %i.h, !dbg !18343
  br i1 %i.i, label %bb.c, label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18343

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !18317, !DIExpression(), !18326)
    #dbg_value(ptr poison, !18320, !DIExpression(), !18327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18328), !dbg !18345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18329), !dbg !18345
    #dbg_value(ptr %0, !4850, !DIExpression(), !18226)
    #dbg_value(ptr %1, !4854, !DIExpression(), !18226)
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 11), !dbg !18346 ; 2 uses
    #dbg_value(i64 %i.j, !4855, !DIExpression(), !18227)
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 11), !dbg !18347
    #dbg_value(i64 %i.k, !4856, !DIExpression(), !18228)
  %i.l = icmp eq i64 %i.j, %i.k, !dbg !18348
  br i1 %i.l, label %bb.d, label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18348

bb.d:                                             ; preds = %bb.c
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.k
  ], !dbg !18348

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i64 %i.c, 12, !dbg !18348
  tail call void @llvm.assume(i1 %i.m), !dbg !18348
    #dbg_value(ptr %0, !4857, !DIExpression(), !18229)
    #dbg_value(ptr %1, !4858, !DIExpression(), !18229)
    #dbg_value(ptr poison, !4864, !DIExpression(), !18231)
    #dbg_value(ptr poison, !4865, !DIExpression(), !18232)
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs3f36owOmepS_6quiche2h35frameNtB5_5FrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) #28, !dbg !18349
  br label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18350

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18233)
    #dbg_value(ptr %1, !4860, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18233)
    #dbg_value(ptr poison, !4867, !DIExpression(), !18235)
    #dbg_value(ptr poison, !4870, !DIExpression(), !18236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18330), !dbg !18351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18331), !dbg !18351
    #dbg_value(ptr %0, !4875, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18241)
    #dbg_value(ptr %1, !4879, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18241)
    #dbg_value(ptr %0, !4881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18243)
    #dbg_value(ptr %0, !4884, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18245)
    #dbg_value(ptr %0, !4887, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18247)
    #dbg_value(ptr %0, !4889, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18249)
    #dbg_value(ptr %0, !4891, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18251)
    #dbg_value(ptr %1, !4882, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18252)
    #dbg_value(ptr %1, !4884, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18254)
    #dbg_value(ptr %1, !4887, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18256)
    #dbg_value(ptr %1, !4889, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18258)
    #dbg_value(ptr %1, !4891, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18260)
    #dbg_value(ptr poison, !4896, !DIExpression(), !18263)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18352
  %i.p = load i64, ptr %i.o, align 8, !dbg !18352, !alias.scope !18332, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.p, !4903, !DIExpression(), !18264)
    #dbg_value(i64 %i.p, !4898, !DIExpression(), !18263)
    #dbg_value(i64 %i.p, !4899, !DIExpression(), !18265)
    #dbg_value(ptr poison, !4901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18266)
    #dbg_value(i64 %i.p, !4901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18266)
    #dbg_value(ptr poison, !4897, !DIExpression(), !18263)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18353
  %i.r = load i64, ptr %i.q, align 8, !dbg !18353, !alias.scope !18333, !noundef !1246
    #dbg_value(ptr poison, !4902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18266)
    #dbg_value(i64 %i.r, !4902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18266)
  %i.s = icmp eq i64 %i.p, %i.r, !dbg !18354
  br i1 %i.s, label %bb.g, label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18354

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18355
  %i.u = load ptr, ptr %i.t, align 8, !dbg !18355, !alias.scope !18333, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.u, !4897, !DIExpression(), !18263)
    #dbg_value(ptr %i.u, !4902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18266)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18356
  %i.w = load ptr, ptr %i.v, align 8, !dbg !18356, !alias.scope !18332, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.w, !4896, !DIExpression(), !18263)
    #dbg_value(ptr %i.w, !4901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18266)
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.w, ptr nonnull %i.u, i64 %i.p), !dbg !18357, !noalias !18337
  %i.x = icmp eq i32 %bcmp.i.i, 0, !dbg !18357
  br i1 %i.x, label %bb.h, label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18358

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %0, !4905, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18274)
    #dbg_value(ptr %0, !4912, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18276)
    #dbg_value(ptr %0, !4919, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18278)
    #dbg_value(ptr %0, !4922, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18280)
    #dbg_value(ptr %0, !4925, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18282)
    #dbg_value(ptr %1, !4908, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18283)
    #dbg_value(ptr %1, !4912, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18285)
    #dbg_value(ptr %1, !4919, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18287)
    #dbg_value(ptr %1, !4922, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18289)
    #dbg_value(ptr %1, !4925, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18291)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !18359
  %i.z = load i64, ptr %i.y, align 8, !dbg !18359, !alias.scope !18332, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.z, !4931, !DIExpression(), !18293)
    #dbg_value(ptr poison, !4934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18294)
    #dbg_value(i64 %i.z, !4934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18294)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !18360
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !18360, !alias.scope !18333, !noundef !1246
    #dbg_value(ptr poison, !4935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18294)
    #dbg_value(i64 %i.ab, !4935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18294)
  %i.ac = icmp eq i64 %i.z, %i.ab, !dbg !18361
  br i1 %i.ac, label %bb.i, label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18361

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !18362
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !18362, !alias.scope !18333, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.ae, !4935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18294)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !18363
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !18363, !alias.scope !18332, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.ag, !4934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18294)
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3f36owOmepS_6quiche2h36HeaderINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjfnSKV9Rz3v_3h3i(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ae, i64 noundef %i.z), !dbg !18364, !noalias !18337
  br i1 %i.ah, label %bb.j, label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18365

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !18366
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !18366
  %i.ak = tail call noundef zeroext i1 @_RNvXs2_CsgRvSe0VkEl5_8multimapINtB5_8MultiMapINtNtCsexYYUdYSQU6_5alloc3vec3VechEBH_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj), !dbg !18366
  br label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18366

bb.k:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !4861, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18301)
    #dbg_value(ptr %0, !4941, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18304)
    #dbg_value(ptr %1, !4862, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18301)
    #dbg_value(ptr %1, !4942, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18304)
    #dbg_value(ptr poison, !4944, !DIExpression(), !18305)
    #dbg_value(ptr poison, !4945, !DIExpression(), !18306)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18367
  %i.am = load i64, ptr %i.al, align 8, !dbg !18367, !alias.scope !18328, !noundef !1246
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18367
  %i.ao = load i64, ptr %i.an, align 8, !dbg !18367, !alias.scope !18329, !noundef !1246
  %i.ap = icmp eq i64 %i.am, %i.ao, !dbg !18367
  br i1 %i.ap, label %bb.l, label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18367

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18367
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !18367, !alias.scope !18328, !noundef !1246
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18367
  %i.at = load i64, ptr %i.as, align 8, !dbg !18367, !alias.scope !18329, !noundef !1246
  %i.au = icmp eq i64 %i.ar, %i.at, !dbg !18367
  br label %_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !18367

_RNvXsg_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.n, %bb.e ], [ false, %bb.k ], [ %i.au, %bb.l ], [ false, %bb.c ], [ %i.ak, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.g ], !dbg !18315
  ret i1 %.sroa.0.0, !dbg !18368
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 60680079189834052) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18370 {
bb.a:
    #dbg_value(ptr poison, !18503, !DIExpression(), !18387)
    #dbg_value(ptr poison, !18531, !DIExpression(), !18388)
    #dbg_value(ptr %0, !18499, !DIExpression(), !18537)
    #dbg_value(ptr %1, !18500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18537)
    #dbg_value(ptr %1, !18538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18543)
    #dbg_value(ptr %1, !18544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18551)
    #dbg_value(i64 %2, !18500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18537)
    #dbg_value(i64 %2, !18538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18543)
    #dbg_value(i64 %2, !18544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18551)
    #dbg_value(i64 %2, !18546, !DIExpression(), !18552)
    #dbg_value(i64 %2, !18553, !DIExpression(), !18560)
    #dbg_value(ptr %1, !18547, !DIExpression(), !18561)
    #dbg_value(ptr %1, !18557, !DIExpression(), !18560)
  %.idx = mul nuw nsw i64 %2, 152, !dbg !18590
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !18590 ; 3 uses
    #dbg_value(ptr %0, !18532, !DIExpression(), !18388)
    #dbg_value(ptr undef, !18531, !DIExpression(), !18388)
    #dbg_value(ptr undef, !18503, !DIExpression(), !18387)
    #dbg_value(i64 1, !18562, !DIExpression(), !18397)
    #dbg_value(ptr %1, !18522, !DIExpression(), !18398)
    #dbg_value(ptr %1, !18566, !DIExpression(), !18397)
    #dbg_value(ptr %i.a, !18523, !DIExpression(), !18399)
    #dbg_value(ptr poison, !18569, !DIExpression(), !18402)
    #dbg_value(ptr poison, !18572, !DIExpression(), !18403)
  %.not.i = icmp eq i64 %2, 0, !dbg !18591
  br i1 %.not.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2j_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph.i, !dbg !18592

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !range !3445, !alias.scope !18574, !noalias !18575, !noundef !1246 ; 2 uses
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 11)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18576
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18576 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !18576 ; 2 uses
  %.cast.i = inttoptr i64 %i.g to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !18576 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !18576, !nonnull !1246
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = icmp samesign ult i64 %i.b, 12
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %.lr.ph.i.split.us
    i64 1, label %.lr.ph.i.split.us8
    i64 2, label %.lr.ph.i.split.us13
  ]

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.backedge.i.us
  %i.p = phi ptr [ %i.q, %.backedge.i.us ], [ %1, %.lr.ph.i ] ; 3 uses
    #dbg_value(ptr %i.p, !18522, !DIExpression(), !18398)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152, !dbg !18593 ; 2 uses
    #dbg_value(ptr %i.p, !18533, !DIExpression(), !18410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18575), !dbg !18594
    #dbg_value(ptr poison, !18577, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18413)
    #dbg_value(ptr %i.p, !18581, !DIExpression(), !18413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18583), !dbg !18595
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18584), !dbg !18595
    #dbg_value(ptr %i.p, !4850, !DIExpression(), !18416)
    #dbg_value(ptr %0, !4854, !DIExpression(), !18416)
  %i.r = load i64, ptr %i.p, align 8, !dbg !18596, !range !3445, !alias.scope !18585, !noalias !18586, !noundef !1246
    #dbg_value(i64 poison, !4855, !DIExpression(), !18418)
    #dbg_value(i64 %i.c, !4856, !DIExpression(), !18419)
  %i.s = icmp samesign ult i64 %i.r, 12, !dbg !18597
  br i1 %i.s, label %.split.i.us, label %.backedge.i.us, !dbg !18597

.split.i.us:                                      ; preds = %.lr.ph.i.split.us
  tail call void @llvm.assume(i1 %i.o), !dbg !18597
    #dbg_value(ptr %i.p, !4857, !DIExpression(), !18420)
    #dbg_value(ptr %0, !4858, !DIExpression(), !18420)
    #dbg_value(ptr poison, !4864, !DIExpression(), !18422)
    #dbg_value(ptr poison, !4865, !DIExpression(), !18423)
  %i.t = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs3f36owOmepS_6quiche2h35frameNtB5_5FrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0) #28, !dbg !18598, !noalias !18586
  br i1 %i.t, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2j_13SliceContains14slice_contains0EBU_.exit, label %.backedge.i.us, !dbg !18594

.backedge.i.us:                                   ; preds = %.split.i.us, %.lr.ph.i.split.us
    #dbg_value(ptr %i.q, !18522, !DIExpression(), !18398)
    #dbg_value(ptr %i.q, !18566, !DIExpression(), !18397)
    #dbg_value(ptr %i.a, !18523, !DIExpression(), !18399)
    #dbg_value(ptr poison, !18569, !DIExpression(), !18402)
    #dbg_value(ptr poison, !18572, !DIExpression(), !18403)
  %.not14.i.us = icmp eq ptr %i.q, %i.a, !dbg !18591
  br i1 %.not14.i.us, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2j_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph.i.split.us, !dbg !18592

.lr.ph.i.split.us8:                               ; preds = %.lr.ph.i, %.backedge.i.us9
  %i.u = phi ptr [ %i.v, %.backedge.i.us9 ], [ %1, %.lr.ph.i ] ; 7 uses
    #dbg_value(ptr %i.u, !18522, !DIExpression(), !18398)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152, !dbg !18593 ; 2 uses
    #dbg_value(ptr %i.u, !18533, !DIExpression(), !18410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18575), !dbg !18594
    #dbg_value(ptr poison, !18577, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18413)
    #dbg_value(ptr %i.u, !18581, !DIExpression(), !18413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18583), !dbg !18595
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18584), !dbg !18595
    #dbg_value(ptr %i.u, !4850, !DIExpression(), !18416)
    #dbg_value(ptr %0, !4854, !DIExpression(), !18416)
  %i.w = load i64, ptr %i.u, align 8, !dbg !18596, !range !3445, !alias.scope !18585, !noalias !18586, !noundef !1246
    #dbg_value(i64 poison, !4855, !DIExpression(), !18418)
    #dbg_value(i64 %i.c, !4856, !DIExpression(), !18419)
  %i.x = icmp eq i64 %i.w, 12, !dbg !18597
  br i1 %i.x, label %bb.b, label %.backedge.i.us9, !dbg !18597

bb.b:                                             ; preds = %.lr.ph.i.split.us8
    #dbg_value(ptr %i.u, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18424)
    #dbg_value(ptr %0, !4860, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18424)
    #dbg_value(ptr poison, !4867, !DIExpression(), !18426)
    #dbg_value(ptr poison, !4870, !DIExpression(), !18427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18587), !dbg !18599
    #dbg_value(ptr %i.u, !4875, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18431)
    #dbg_value(ptr %0, !4879, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18431)
    #dbg_value(ptr %i.u, !4881, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18433)
    #dbg_value(ptr %i.u, !4884, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18435)
    #dbg_value(ptr %i.u, !4887, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18437)
    #dbg_value(ptr %i.u, !4889, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18439)
    #dbg_value(ptr %i.u, !4891, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18441)
    #dbg_value(ptr %0, !4882, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18442)
    #dbg_value(ptr %0, !4884, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18444)
    #dbg_value(ptr %0, !4887, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18446)
    #dbg_value(ptr %0, !4889, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18448)
    #dbg_value(ptr %0, !4891, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18450)
    #dbg_value(ptr poison, !4896, !DIExpression(), !18453)
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !18600
  %i.z = load i64, ptr %i.y, align 8, !dbg !18600, !alias.scope !18588, !noalias !18586, !noundef !1246
    #dbg_value(i64 %i.z, !4903, !DIExpression(), !18454)
    #dbg_value(i64 %i.z, !4898, !DIExpression(), !18453)
    #dbg_value(i64 %i.z, !4899, !DIExpression(), !18455)
    #dbg_value(ptr poison, !4901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18456)
    #dbg_value(i64 %i.z, !4901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18456)
    #dbg_value(ptr poison, !4897, !DIExpression(), !18453)
    #dbg_value(ptr poison, !4902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18456)
    #dbg_value(i64 %i.i, !4902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18456)
  %i.aa = icmp eq i64 %i.z, %i.i, !dbg !18601
  br i1 %i.aa, label %bb.c, label %.backedge.i.us9, !dbg !18601

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %.cast.i, !4897, !DIExpression(), !18453)
    #dbg_value(ptr %.cast.i, !4902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18456)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !18602
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !18602, !alias.scope !18588, !noalias !18586, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.ac, !4896, !DIExpression(), !18453)
    #dbg_value(ptr %i.ac, !4901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18456)
  %bcmp.i.i.i.i.us = tail call i32 @bcmp(ptr nonnull %i.ac, ptr nonnull %.cast.i, i64 %i.i), !dbg !18603, !noalias !18589
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.us, 0, !dbg !18603
  br i1 %i.ad, label %bb.d, label %.backedge.i.us9, !dbg !18604

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.u, !4905, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18462)
    #dbg_value(ptr %i.u, !4912, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18464)
    #dbg_value(ptr %i.u, !4919, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18466)
    #dbg_value(ptr %i.u, !4922, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18468)
    #dbg_value(ptr %i.u, !4925, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18470)
    #dbg_value(ptr %0, !4908, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18471)
    #dbg_value(ptr %0, !4912, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18473)
    #dbg_value(ptr %0, !4919, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18475)
    #dbg_value(ptr %0, !4922, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18477)
    #dbg_value(ptr %0, !4925, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18479)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !18605
  %i.af = load i64, ptr %i.ae, align 8, !dbg !18605, !alias.scope !18588, !noalias !18586, !noundef !1246
    #dbg_value(i64 %i.af, !4931, !DIExpression(), !18481)
    #dbg_value(ptr poison, !4934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18482)
    #dbg_value(i64 %i.af, !4934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18482)
    #dbg_value(ptr poison, !4935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18482)
    #dbg_value(i64 %i.k, !4935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18482)
  %i.ag = icmp eq i64 %i.af, %i.k, !dbg !18606
  br i1 %i.ag, label %bb.e, label %.backedge.i.us9, !dbg !18606

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.m, !4935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18482)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 40, !dbg !18607
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !18607, !alias.scope !18588, !noalias !18586, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.ai, !4934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18482)
  %i.aj = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3f36owOmepS_6quiche2h36HeaderINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjfnSKV9Rz3v_3h3i(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.m, i64 noundef %i.k), !dbg !18608, !noalias !18589
  br i1 %i.aj, label %.split9.i.us, label %.backedge.i.us9, !dbg !18609

.split9.i.us:                                     ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 56, !dbg !18610
  %i.al = tail call noundef zeroext i1 @_RNvXs2_CsgRvSe0VkEl5_8multimapINtB5_8MultiMapINtNtCsexYYUdYSQU6_5alloc3vec3VechEBH_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n), !dbg !18610, !noalias !18586
  br i1 %i.al, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2j_13SliceContains14slice_contains0EBU_.exit, label %.backedge.i.us9, !dbg !18594

.backedge.i.us9:                                  ; preds = %.split9.i.us, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i.split.us8
    #dbg_value(ptr %i.v, !18522, !DIExpression(), !18398)
    #dbg_value(ptr %i.v, !18566, !DIExpression(), !18397)
    #dbg_value(ptr %i.a, !18523, !DIExpression(), !18399)
    #dbg_value(ptr poison, !18569, !DIExpression(), !18402)
    #dbg_value(ptr poison, !18572, !DIExpression(), !18403)
  %.not14.i.us10 = icmp eq ptr %i.v, %i.a, !dbg !18591
  br i1 %.not14.i.us10, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2j_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph.i.split.us8, !dbg !18592

.lr.ph.i.split.us13:                              ; preds = %.lr.ph.i, %.backedge.i.us14
  %i.am = phi ptr [ %i.an, %.backedge.i.us14 ], [ %1, %.lr.ph.i ] ; 4 uses
    #dbg_value(ptr %i.am, !18522, !DIExpression(), !18398)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 152, !dbg !18593 ; 2 uses
    #dbg_value(ptr %i.am, !18533, !DIExpression(), !18410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18575), !dbg !18594
    #dbg_value(ptr poison, !18577, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18413)
    #dbg_value(ptr %i.am, !18581, !DIExpression(), !18413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18583), !dbg !18595
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18584), !dbg !18595
    #dbg_value(ptr %i.am, !4850, !DIExpression(), !18416)
    #dbg_value(ptr %0, !4854, !DIExpression(), !18416)
  %i.ao = load i64, ptr %i.am, align 8, !dbg !18596, !range !3445, !alias.scope !18585, !noalias !18586, !noundef !1246
    #dbg_value(i64 poison, !4855, !DIExpression(), !18418)
    #dbg_value(i64 %i.c, !4856, !DIExpression(), !18419)
  %i.ap = icmp eq i64 %i.ao, 13, !dbg !18597
  br i1 %i.ap, label %bb.f, label %.backedge.i.us14, !dbg !18597

bb.f:                                             ; preds = %.lr.ph.i.split.us13
    #dbg_value(ptr %i.am, !4861, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18486)
    #dbg_value(ptr %i.am, !4941, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18489)
    #dbg_value(ptr %0, !4862, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18486)
    #dbg_value(ptr %0, !4942, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18489)
    #dbg_value(ptr poison, !4944, !DIExpression(), !18490)
    #dbg_value(ptr poison, !4945, !DIExpression(), !18491)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !18611
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !18611, !alias.scope !18585, !noalias !18586, !noundef !1246
  %i.as = icmp eq i64 %i.ar, %i.e, !dbg !18611
  br i1 %i.as, label %.split8.i.us, label %.backedge.i.us14, !dbg !18611

.split8.i.us:                                     ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !18611
  %i.au = load i64, ptr %i.at, align 8, !dbg !18611, !alias.scope !18585, !noalias !18586, !noundef !1246
  %i.av = icmp eq i64 %i.au, %i.g, !dbg !18611
  br i1 %i.av, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2j_13SliceContains14slice_contains0EBU_.exit, label %.backedge.i.us14, !dbg !18594

.backedge.i.us14:                                 ; preds = %.split8.i.us, %bb.f, %.lr.ph.i.split.us13
    #dbg_value(ptr %i.an, !18522, !DIExpression(), !18398)
    #dbg_value(ptr %i.an, !18566, !DIExpression(), !18397)
    #dbg_value(ptr %i.a, !18523, !DIExpression(), !18399)
    #dbg_value(ptr poison, !18569, !DIExpression(), !18402)
    #dbg_value(ptr poison, !18572, !DIExpression(), !18403)
  %.not14.i.us15 = icmp eq ptr %i.an, %i.a, !dbg !18591
  br i1 %.not14.i.us15, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2j_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph.i.split.us13, !dbg !18592

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2j_13SliceContains14slice_contains0EBU_.exit: ; preds = %.backedge.i.us14, %.split8.i.us, %.split9.i.us, %.backedge.i.us9, %.backedge.i.us, %.split.i.us, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ true, %.split.i.us ], [ true, %.split9.i.us ], [ false, %.backedge.i.us ], [ false, %.backedge.i.us9 ], [ false, %.backedge.i.us14 ], [ true, %.split8.i.us ], !dbg !18591
  ret i1 %.lcssa.i, !dbg !18612
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !18613 {
bb.a:
    #dbg_value(ptr %0, !18622, !DIExpression(), !18625)
    #dbg_value(ptr %0, !18626, !DIExpression(), !18629)
    #dbg_value(ptr %0, !18630, !DIExpression(), !18633)
    #dbg_value(ptr %1, !18623, !DIExpression(), !18625)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18639
  %i.b = load ptr, ptr %i.a, align 8, !dbg !18639, !nonnull !1246, !noundef !1246
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18640
  %i.d = load i64, ptr %i.c, align 8, !dbg !18640, !noundef !1246
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !18641
  ret i1 %i.e, !dbg !18642
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !18643 {
bb.a:
    #dbg_value(ptr %0, !18652, !DIExpression(), !18655)
    #dbg_value(ptr %0, !18656, !DIExpression(), !18659)
    #dbg_value(ptr %0, !18660, !DIExpression(), !18663)
    #dbg_value(ptr %1, !18653, !DIExpression(), !18655)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18669
  %i.b = load ptr, ptr %i.a, align 8, !dbg !18669, !nonnull !1246, !noundef !1246
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18670
  %i.d = load i64, ptr %i.c, align 8, !dbg !18670, !noundef !1246
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !18671
  ret i1 %i.e, !dbg !18672
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6prompt12SelectPromptReEINtNtB9_6prompt6PromptINtNtNtBb_2ui7backend7BackendNtNtNtBb_8terminal9crossterm18CrosstermKeyReaderNtB21_17CrosstermTerminalEE6promptCsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240) %1, ptr noalias nofree noundef align 8 dereferenceable(888) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18751 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !19359, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !19365)
    #dbg_declare(ptr poison, !19367, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !19381)
    #dbg_declare(ptr poison, !19367, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !19384)
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !19367, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !19388)
    #dbg_declare(ptr poison, !19389, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !19419)
    #dbg_declare(ptr %1, !19239, !DIExpression(), !19420)
    #dbg_value(ptr %2, !19240, !DIExpression(), !19421)
    #dbg_declare(ptr %i.r, !19244, !DIExpression(), !19422)
    #dbg_declare(ptr %i.q, !19389, !DIExpression(), !19424)
    #dbg_declare(ptr poison, !19247, !DIExpression(), !19425)
    #dbg_declare(ptr poison, !19367, !DIExpression(), !19428)
    #dbg_declare(ptr %i.p, !19429, !DIExpression(), !19457)
    #dbg_declare(ptr %i.o, !19271, !DIExpression(), !19458)
    #dbg_declare(ptr poison, !19416, !DIExpression(), !19459)
    #dbg_declare(ptr poison, !19371, !DIExpression(), !19460)
    #dbg_value(ptr %1, !19461, !DIExpression(), !18786)
  invoke fastcc void @_RNvMNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB2_12SelectPromptReE10run_scorerCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1)
          to label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE5setupCsjfnSKV9Rz3v_3h3i.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19980, !noalias !19465

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.p, %bb.i, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.do, %bb.bk ], [ %i.au, %bb.i ], [ %i.be, %bb.v ], [ %i.bc, %bb.p ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6prompt12SelectPromptReEECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(240) %1) #23
          to label %bb.cr unwind label %bb.cb, !dbg !19981

_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE5setupCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.a
    #dbg_value(i64 -1, !19389, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19466)
    #dbg_value(i8 0, !19243, !DIExpression(), !19467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !19982
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 13 uses
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit, !dbg !19983

_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit: ; preds = %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE5setupCsjfnSKV9Rz3v_3h3i.exit
  %.sroa.067.0 = phi i8 [ 0, %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE5setupCsjfnSKV9Rz3v_3h3i.exit ], [ %.sroa.067.0.be, %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge ], !dbg !19421 ; 2 uses
    #dbg_value(i8 %.sroa.067.0, !19243, !DIExpression(), !19467)
    #dbg_value(ptr undef, !19359, !DIExpression(), !19365)
  %i.ae = icmp eq i8 %.sroa.067.0, 0, !dbg !19984
  br i1 %i.ae, label %bb.c, label %bb.b, !dbg !19985

bb.b:                                             ; preds = %bb.ac, %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit
  %.sroa.067.1 = phi i8 [ %.sroa.067.0, %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit ], [ 1, %bb.ac ], !dbg !19421
    #dbg_value(i8 %.sroa.067.1, !19243, !DIExpression(), !19467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !19456
  invoke void @_RNvXs5_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB5_7BackendNtNtNtB9_8terminal9crossterm18CrosstermKeyReaderNtBW_17CrosstermTerminalENtNtB7_12input_reader11InputReader8read_keyCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19986

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit
  %i.af = invoke noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend11frame_setupCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19987 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.af, !19468, !DIExpression(), !19510)
  %.not149 = icmp eq ptr %i.af, null, !dbg !19988
  br i1 %.not149, label %bb.f, label %bb.e, !dbg !19989

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.af, !19245, !DIExpression(), !19511)
    #dbg_value(ptr %i.af, !19512, !DIExpression(), !19527)
    #dbg_value(ptr %i.af, !19515, !DIExpression(), !19528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !19990
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %i.af)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19990

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !19423
  call void @llvm.experimental.noalias.scope.decl(metadata !19529), !dbg !19991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
    #dbg_value(ptr %1, !19530, !DIExpression(), !18839)
  store ptr %1, ptr %i.f, align 8, !noalias !19556
    #dbg_value(ptr %2, !19533, !DIExpression(), !18839)
    #dbg_declare(ptr %i.e, !19537, !DIExpression(), !18842)
    #dbg_declare(ptr %i.d, !19557, !DIExpression(), !18848)
    #dbg_declare(ptr %i.d, !19569, !DIExpression(), !18851)
    #dbg_declare(ptr %i.c, !19538, !DIExpression(), !18852)
    #dbg_value(ptr %i.f, !19534, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 152), !18853)
  %i.ag = load ptr, ptr %i.s, align 8, !dbg !19992, !alias.scope !19529, !nonnull !1246, !noundef !1246
  %i.ah = load i64, ptr %i.t, align 8, !dbg !19992, !alias.scope !19529, !noundef !1246
    #dbg_value(ptr %i.f, !19575, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 72), !18861)
  %i.ai = load i64, ptr %i.u, align 8, !dbg !19993, !range !2876, !alias.scope !19529, !noundef !1246
  %.not.i = icmp eq i64 %i.ai, -1, !dbg !19993
  %..i = select i1 %.not.i, ptr null, ptr %i.u, !dbg !19994
  %i.aj = invoke noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB5_7BackendNtNtNtB9_8terminal9crossterm18CrosstermKeyReaderNtBW_17CrosstermTerminalENtB5_13SelectBackend20render_select_promptCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %..i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19995, !noalias !19590 ; 2 uses

.noexc:                                           ; preds = %bb.f
    #dbg_value(ptr %i.aj, !19591, !DIExpression(), !18870)
  %.not36.i = icmp eq ptr %i.aj, null, !dbg !19996
  br i1 %.not36.i, label %bb.h, label %bb.g, !dbg !19997

bb.g:                                             ; preds = %.noexc
    #dbg_value(ptr %i.aj, !19535, !DIExpression(), !18871)
    #dbg_value(ptr %i.aj, !19599, !DIExpression(), !18877)
    #dbg_value(ptr %i.aj, !19602, !DIExpression(), !18878)
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull %i.aj)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !19998

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19999, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20000, !noalias !19556
    #dbg_value(ptr %i.f, !19608, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 48), !18881)
    #dbg_value(ptr %i.f, !19610, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 48), !18884)
    #dbg_value(ptr %i.f, !19612, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 48), !18887)
    #dbg_value(ptr %1, !19530, !DIExpression(), !18839)
  %i.ak = load ptr, ptr %i.v, align 8, !dbg !20001, !alias.scope !19529, !nonnull !1246, !noundef !1246 ; 2 uses
  %i.al = load i64, ptr %i.w, align 8, !dbg !20002, !alias.scope !19529, !noundef !1246
    #dbg_value(i64 %i.al, !19614, !DIExpression(), !18901)
    #dbg_value(i64 %i.al, !19624, !DIExpression(), !18904)
    #dbg_value(ptr %i.ak, !19622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18905)
end_hunk_0
