Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.00?download=true
inline.NumInlined: 406
inline.NumDeleted: 140
begin_hunk_0_@_RNvXs1K_NtCsexYYUdYSQU6_5alloc6stringlNtB6_12SpecToString14spec_to_string:bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !20317
    #dbg_value(i64 %i.i, !3028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20145)
    #dbg_value(i64 %i.k, !3028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20145)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !dbg !20318
  unreachable, !dbg !20318

.noexc38:                                         ; preds = %bb.a
    #dbg_value(i64 11, !3014, !DIExpression(), !20147)
    #dbg_value(i64 11, !3040, !DIExpression(), !20149)
    #dbg_value(i64 1, !3026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20147)
    #dbg_value(i64 1, !3047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20149)
    #dbg_value(i64 1, !3026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20147)
    #dbg_value(i64 1, !3047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20149)
    #dbg_value(i64 0, !3046, !DIExpression(), !20149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20319
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !20319
  %i.l = load i64, ptr %i.a, align 8, !dbg !20319, !range !3049, !noundef !1793
  %i.m = trunc nuw i64 %i.l to i1, !dbg !20320
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20321
  %i.o = load i64, ptr %i.n, align 8, !dbg !20321, !range !3050, !noundef !1793 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20321 ; 2 uses
  br i1 %i.m, label %.noexc39, label %bb.d, !dbg !20320, !prof !3051

.noexc39:                                         ; preds = %.noexc38
  %i.q = load i64, ptr %i.p, align 8, !dbg !20322
    #dbg_value(i64 %i.o, !3028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20150)
    #dbg_value(i64 %i.q, !3028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20150)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #18, !dbg !20323
  unreachable, !dbg !20323

bb.b:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.j, align 8, !dbg !20324, !nonnull !1793, !noundef !1793
    #dbg_value(i64 %i.i, !3027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20151)
    #dbg_value(ptr %i.r, !3027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20151)
    #dbg_value(ptr poison, !3045, !DIExpression(), !20152)
  %i.s = icmp ugt i64 %i.i, 9, !dbg !20325
    #dbg_value(i1 true, !3054, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20154)
  tail call void @llvm.assume(i1 %i.s), !dbg !20326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20327
  store i64 %i.i, ptr %i.c, align 8, !dbg !20328
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20328
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !20328
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !20328
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !20328
    #dbg_value(ptr %i.c, !20250, !DIExpression(), !20254)
    #dbg_value(i32 %.0.val, !20256, !DIExpression(), !20262)
    #dbg_value(i32 %.0.val, !20263, !DIExpression(), !20268)
    #dbg_value(i32 %.0.val, !20269, !DIExpression(), !20272)
  br label %bb.c, !dbg !20329

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0 = phi i32 [ %i.x, %bb.e ], [ %.0.val, %bb.b ], !dbg !20268
  %i.t = invoke { ptr, i64 } @_RNvMsa_NtNtNtCskKLDkoKarTP_4core3fmt3num3impm4__fmt(i32 noundef %.sroa.012.0, ptr noalias nofree noundef nonnull %i.d, i64 noundef 10)
          to label %bb.f unwind label %bb.j, !dbg !20330 ; 2 uses

bb.d:                                             ; preds = %.noexc38
  %i.u = load ptr, ptr %i.p, align 8, !dbg !20331, !nonnull !1793, !noundef !1793
    #dbg_value(i64 %i.o, !3027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20159)
    #dbg_value(ptr %i.u, !3027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20159)
    #dbg_value(ptr poison, !3045, !DIExpression(), !20160)
  %i.v = icmp ugt i64 %i.o, 10, !dbg !20332
    #dbg_value(i1 true, !3054, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20162)
  tail call void @llvm.assume(i1 %i.v), !dbg !20333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20334
  store i64 %i.o, ptr %i.c, align 8, !dbg !20335
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20335 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !20335
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !20335 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !20335
    #dbg_value(ptr %i.c, !7147, !DIExpression(), !20164)
    #dbg_value(ptr %i.c, !7155, !DIExpression(), !20166)
    #dbg_value(i32 45, !7151, !DIExpression(), !20164)
    #dbg_value(i64 0, !7152, !DIExpression(), !20167)
    #dbg_value(i64 1, !7153, !DIExpression(), !20168)
    #dbg_value(i64 1, !7159, !DIExpression(), !20166)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.j, !dbg !20336

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.c, !7161, !DIExpression(), !20170)
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !20337, !alias.scope !20273, !nonnull !1793, !noundef !1793
    #dbg_value(i32 45, !6616, !DIExpression(), !20177)
    #dbg_value(ptr %i.w, !6619, !DIExpression(), !20177)
    #dbg_value(i64 1, !6620, !DIExpression(), !20178)
  store i8 45, ptr %i.w, align 1, !dbg !20338
    #dbg_value(ptr %i.c, !7163, !DIExpression(), !20180)
    #dbg_value(i64 1, !7164, !DIExpression(), !20181)
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !20339, !alias.scope !20273
    #dbg_value(ptr %i.c, !20250, !DIExpression(), !20254)
    #dbg_value(i32 %.0.val, !20256, !DIExpression(), !20262)
    #dbg_value(i32 %.0.val, !20263, !DIExpression(), !20268)
    #dbg_value(i32 %.0.val, !20269, !DIExpression(), !20272)
  %i.x = sub i32 0, %.0.val, !dbg !20340
  br label %bb.c, !dbg !20329

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0, !dbg !20341 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1, !dbg !20341 ; 4 uses
    #dbg_value(ptr %i.y, !20251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20277)
    #dbg_value(i64 %i.z, !20251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20277)
    #dbg_value(ptr %i.c, !20278, !DIExpression(), !20282)
    #dbg_value(ptr %i.c, !20283, !DIExpression(), !20288)
    #dbg_value(ptr %i.y, !20279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20282)
    #dbg_value(ptr %i.y, !20289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20292)
    #dbg_value(ptr %i.y, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20299)
    #dbg_value(i64 %i.z, !20279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20282)
    #dbg_value(i64 %i.z, !20289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20292)
    #dbg_value(i64 %i.z, !20293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20299)
    #dbg_value(i64 %i.z, !20294, !DIExpression(), !20300)
    #dbg_value(ptr %i.y, !20295, !DIExpression(), !20301)
    #dbg_value(ptr %i.y, !20302, !DIExpression(), !20308)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ], !dbg !20342
    #dbg_value(ptr %i.y, !20284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20288)
    #dbg_value(!DIArgList(ptr %i.y, i64 %i.z), !20284, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20288)
    #dbg_value(ptr %i.y, !20285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20309)
    #dbg_value(i64 %i.z, !20285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20309)
    #dbg_value(ptr %i.c, !3199, !DIExpression(), !20193)
    #dbg_value(ptr %i.c, !3205, !DIExpression(), !20195)
    #dbg_value(ptr %i.c, !3211, !DIExpression(), !20197)
    #dbg_value(ptr %i.c, !3217, !DIExpression(), !20199)
    #dbg_value(ptr %i.y, !3203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20193)
    #dbg_value(ptr %i.y, !3207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20195)
    #dbg_value(i64 %i.z, !3203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20193)
    #dbg_value(i64 %i.z, !3207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20195)
    #dbg_value(i64 %i.z, !3208, !DIExpression(), !20200)
    #dbg_value(i64 %i.z, !3223, !DIExpression(), !20202)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc42 unwind label %bb.j, !dbg !20343

.noexc42:                                         ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !20344 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !20344, !alias.scope !20310, !noundef !1793 ; 3 uses
    #dbg_value(i64 %i.ab, !3209, !DIExpression(), !20205)
    #dbg_value(i64 %i.ab, !3229, !DIExpression(), !20207)
  %i.ac = icmp sgt i64 %i.ab, -1, !dbg !20345
  call void @llvm.assume(i1 %i.ac), !dbg !20346
  %.not.i = icmp eq i64 %i.z, 0, !dbg !20347
  br i1 %.not.i, label %bb.h, label %bb.g, !dbg !20347

bb.g:                                             ; preds = %.noexc42
    #dbg_value(ptr %i.y, !3226, !DIExpression(), !20202)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20348
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !20348, !alias.scope !20310, !nonnull !1793, !noundef !1793
    #dbg_value(ptr %i.ae, !3232, !DIExpression(), !20207)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab, !dbg !20349
    #dbg_value(ptr %i.af, !3227, !DIExpression(), !20202)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !dbg !20350
  %.pre.i = load i64, ptr %i.aa, align 8, !dbg !20351, !alias.scope !20310
  br label %bb.h, !dbg !20352

bb.h:                                             ; preds = %bb.g, %.noexc42
  %i.ag = phi i64 [ %.pre.i, %bb.g ], [ %i.ab, %.noexc42 ], !dbg !20351
  %i.ah = add i64 %i.ag, %i.z, !dbg !20351
  store i64 %i.ah, ptr %i.aa, align 8, !dbg !20351, !alias.scope !20310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !20353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20355
  ret void, !dbg !20356

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm.split-lp, !dbg !20357

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %bb.i unwind label %bb.k, !dbg !20354

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !20357
  unreachable, !dbg !20357
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1m_NtCsexYYUdYSQU6_5alloc6stringNtB6_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !20358 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !20363, !DIExpression(), !20366)
    #dbg_value(ptr %1, !20364, !DIExpression(), !20366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20367
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !20367
  store ptr %i.b, ptr %i.a, align 8, !dbg !20367
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @148, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @149), !dbg !20368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20369
  ret i1 %i.c, !dbg !20370
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn13send_requests(ptr noalias nofree noundef align 8 dereferenceable(712) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20413 {
.peel.begin:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !20590, !DIExpression(), !20597)
    #dbg_value(ptr poison, !20600, !DIExpression(), !20603)
    #dbg_value(ptr poison, !20598, !DIExpression(), !20604)
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [40 x i8], align 8                ; 12 uses
  %i.k = alloca [16 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr poison, !20605, !DIExpression(), !20425)
    #dbg_value(ptr poison, !20622, !DIExpression(), !20628)
    #dbg_value(ptr poison, !20618, !DIExpression(), !20629)
    #dbg_value(ptr %0, !20509, !DIExpression(), !20630)
    #dbg_value(ptr %1, !20510, !DIExpression(), !20630)
    #dbg_value(ptr %1, !20631, !DIExpression(), !20638)
    #dbg_value(ptr %2, !20511, !DIExpression(), !20630)
    #dbg_declare(ptr %i.n, !20521, !DIExpression(), !20639)
    #dbg_declare(ptr %i.h, !20536, !DIExpression(), !20640)
    #dbg_declare(ptr %i.f, !20541, !DIExpression(), !20641)
    #dbg_declare(ptr %i.c, !20552, !DIExpression(), !20642)
    #dbg_value(i64 1, !20643, !DIExpression(), !20647)
    #dbg_value(ptr poison, !20648, !DIExpression(), !20653)
    #dbg_value(i8 -1, !20654, !DIExpression(), !20671)
    #dbg_value(i8 -1, !20672, !DIExpression(), !20677)
    #dbg_value(ptr poison, !20648, !DIExpression(), !20679)
    #dbg_value(i8 -1, !20654, !DIExpression(), !20682)
    #dbg_value(i8 -1, !20672, !DIExpression(), !20687)
    #dbg_value(ptr poison, !20648, !DIExpression(), !20689)
    #dbg_value(i8 -1, !20654, !DIExpression(), !20692)
    #dbg_value(i8 -1, !20672, !DIExpression(), !20697)
    #dbg_value(ptr poison, !20648, !DIExpression(), !20699)
    #dbg_value(i8 -1, !20654, !DIExpression(), !20702)
    #dbg_value(i8 -1, !20672, !DIExpression(), !20707)
    #dbg_value(i8 0, !20708, !DIExpression(), !20714)
    #dbg_value(i8 0, !20708, !DIExpression(), !20719)
    #dbg_value(i8 0, !20708, !DIExpression(), !20724)
    #dbg_value(i8 0, !20708, !DIExpression(), !20729)
    #dbg_value(i64 0, !20730, !DIExpression(), !20738)
    #dbg_value(i8 1, !20635, !DIExpression(), !20638)
    #dbg_value(ptr poison, !20648, !DIExpression(), !20740)
    #dbg_value(i8 -1, !20654, !DIExpression(), !20743)
    #dbg_value(i8 -1, !20672, !DIExpression(), !20748)
    #dbg_value(i8 0, !20708, !DIExpression(), !20753)
    #dbg_value(ptr poison, !20648, !DIExpression(), !20755)
    #dbg_value(i8 -1, !20654, !DIExpression(), !20758)
    #dbg_value(i8 -1, !20672, !DIExpression(), !20763)
    #dbg_value(i8 0, !20708, !DIExpression(), !20768)
    #dbg_value(i64 0, !20512, !DIExpression(), !20769)
    #dbg_value(ptr %0, !20770, !DIExpression(DW_OP_plus_uconst, 520, DW_OP_stack_value), !20773)
    #dbg_value(ptr %0, !20774, !DIExpression(DW_OP_plus_uconst, 520, DW_OP_stack_value), !20777)
    #dbg_value(ptr %0, !20778, !DIExpression(DW_OP_plus_uconst, 520, DW_OP_stack_value), !20781)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !21046
  %i.s = load ptr, ptr %i.r, align 8, !dbg !21046, !nonnull !1793, !noundef !1793 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536, !dbg !21047
  %i.u = load i64, ptr %i.t, align 8, !dbg !21047, !noundef !1793 ; 3 uses
    #dbg_value(i64 %i.u, !20785, !DIExpression(), !20792)
    #dbg_value(i64 %i.u, !20795, !DIExpression(), !20799)
    #dbg_value(ptr %i.s, !20793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20800)
    #dbg_value(ptr %i.s, !20786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20801)
    #dbg_value(i64 %i.u, !20793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20800)
    #dbg_value(i64 %i.u, !20786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20801)
    #dbg_value(ptr %i.s, !20787, !DIExpression(), !20802)
    #dbg_value(ptr %i.s, !20796, !DIExpression(), !20799)
  %.idx = mul nuw nsw i64 %i.u, 232, !dbg !21048
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx, !dbg !21048 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 680, !dbg !21049 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !21049, !noundef !1793 ; 3 uses
    #dbg_value(ptr %i.s, !20513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20803)
    #dbg_value(ptr %i.v, !20513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20803)
    #dbg_value(i64 %i.x, !20513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20803)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
    #dbg_value(ptr %i.s, !20513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20803)
    #dbg_value(i64 %i.x, !20513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20803)
    #dbg_value(ptr undef, !20618, !DIExpression(), !20629)
  %.not.peel = icmp eq i64 %i.x, 0, !dbg !21050
    #dbg_value(i1 %.not.peel, !20804, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20807)
  br i1 %.not.peel, label %bb.b, label %bb.a, !dbg !21051, !prof !5730

bb.a:                                             ; preds = %.peel.begin
    #dbg_value(i64 0, !20513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20803)
    #dbg_value(ptr undef, !20605, !DIExpression(), !20425)
    #dbg_value(i64 %i.x, !20608, !DIExpression(), !20425)
  %.not.i.not.peel = icmp ult i64 %i.x, %i.u, !dbg !21052
  %i.af = getelementptr inbounds nuw [232 x i8], ptr %i.s, i64 %i.x, !dbg !21052
    #dbg_value(ptr poison, !20513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20803)
  br i1 %.not.i.not.peel, label %bb.c, label %.loopexit173, !dbg !21053

bb.b:                                             ; preds = %.peel.begin
    #dbg_value(ptr undef, !20622, !DIExpression(), !20628)
    #dbg_value(ptr %i.s, !20623, !DIExpression(), !20808)
    #dbg_value(ptr %i.s, !20644, !DIExpression(), !20647)
    #dbg_value(ptr %i.v, !20624, !DIExpression(), !20809)
    #dbg_value(ptr poison, !20810, !DIExpression(), !20814)
    #dbg_value(ptr poison, !20811, !DIExpression(), !20815)
  %i.ag = icmp eq i64 %i.u, 0, !dbg !21054
  br i1 %i.ag, label %.loopexit173, label %bb.c, !dbg !20813

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.03.0.peel = phi ptr [ %i.af, %bb.a ], [ %i.s, %bb.b ], !dbg !21055 ; 12 uses
    #dbg_value(ptr %.sroa.03.0.peel, !20513, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20803)
    #dbg_value(i64 0, !20513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20803)
    #dbg_value(ptr %.sroa.03.0.peel, !20514, !DIExpression(), !20817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !21056
    #dbg_value(ptr %.sroa.03.0.peel, !20818, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !20821)
    #dbg_value(ptr %.sroa.03.0.peel, !20822, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !20825)
    #dbg_value(ptr %.sroa.03.0.peel, !20826, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !20829)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 104, !dbg !21057
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 112, !dbg !21057
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !21057, !nonnull !1793, !noundef !1793
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 120, !dbg !21058
  %i.al = load i64, ptr %i.ak, align 8, !dbg !21058, !noundef !1793
    #dbg_value(ptr %0, !20836, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !20842)
    #dbg_value(ptr %0, !20843, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !20847)
  %i.am = load i64, ptr %i.y, align 8, !dbg !21059, !range !3252, !noundef !1793
  %.not158.peel = icmp eq i64 %i.am, -1, !dbg !21059
  call void @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection12send_requestNtB6_6HeaderNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aj, i64 noundef %i.al, i1 noundef zeroext %.not158.peel), !dbg !21060
  %i.an = load i64, ptr %i.q, align 8, !dbg !21056, !range !7219, !noundef !1793 ; 2 uses
  %.not159.peel = icmp eq i64 %i.an, -1, !dbg !21056
  br i1 %.not159.peel, label %bb.d, label %.loopexit206, !dbg !21061

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.z, align 8, !dbg !21062, !noundef !1793 ; 3 uses
    #dbg_value(i64 %i.ao, !20515, !DIExpression(), !20848)
    #dbg_value(i64 %i.ao, !20735, !DIExpression(), !20738)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !21063
    #dbg_value(i64 4, !20529, !DIExpression(), !20849)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20850)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20853)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20709, !DIExpression(), !20729)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20474)
    #dbg_value(i8 0, !6359, !DIExpression(), !20474)
  %i.ap = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21064 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 6, !dbg !21065
  tail call void @llvm.assume(i1 %i.aq), !dbg !21065
    #dbg_value(ptr poison, !20650, !DIExpression(), !20854)
    #dbg_value(i8 poison, !20664, !DIExpression(), !20857)
    #dbg_value(i8 poison, !20673, !DIExpression(), !20862)
    #dbg_value(i8 poison, !20660, !DIExpression(), !20863)
  %i.ar = icmp samesign ugt i64 %i.ap, 3, !dbg !21066
  br i1 %i.ar, label %bb.e, label %bb.f, !dbg !20698

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.ah, !20531, !DIExpression(), !20864)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !21067
  store ptr %i.ah, ptr %i.k, align 8, !dbg !21067
  store ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.424.0..sroa_idx, align 8, !dbg !21067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !20698
  store ptr @67, ptr %i.j, align 8, !dbg !20698
  store i64 19, ptr %i.aa, align 8, !dbg !20698
  store ptr @67, ptr %i.ab, align 8, !dbg !20698
  store i64 19, ptr %i.ac, align 8, !dbg !20698
  store ptr @156, ptr %i.ad, align 8, !dbg !20698
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @153, ptr noundef nonnull %i.k, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j), !dbg !20698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !20698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !20698
  br label %bb.f, !dbg !20698

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 225, !dbg !21068
  %i.at = load i8, ptr %i.as, align 1, !dbg !21068, !range !7220, !noundef !1793
  %.not160.peel = icmp eq i8 %i.at, 2, !dbg !21068
  br i1 %.not160.peel, label %bb.h, label %bb.g, !dbg !21069

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 224, !dbg !21068
    #dbg_value(ptr %i.au, !20534, !DIExpression(), !20865)
  %i.av = call { i64, i64 } @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection32send_priority_update_for_requestNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.au), !dbg !21070 ; 0 uses
  br label %bb.h, !dbg !21071

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 1, ptr %.sroa.03.0.peel, align 8, !dbg !21072
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 8, !dbg !21072
  store i64 %i.ao, ptr %i.aw, align 8, !dbg !21072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21073
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 16, !dbg !21074
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 208, !dbg !21075
  %i.az = load i64, ptr %i.ay, align 8, !dbg !21075, !noundef !1793
  call fastcc void @_RNvNtCsiGRwBGCeC5s_11quiche_apps6common20make_resource_writer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i64 noundef %i.az), !dbg !21073
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 176, !dbg !21076 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba)
          to label %.peel.next unwind label %.loopexit.split-lp, !dbg !21076

.peel.next:                                       ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !21076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21077
    #dbg_value(ptr %0, !20734, !DIExpression(DW_OP_plus_uconst, 616, DW_OP_stack_value), !20867)
  %i.bb = call { i64, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %i.ao, i64 noundef 0), !dbg !21078 ; 0 uses
    #dbg_value(i64 1, !20512, !DIExpression(), !20769)
  %.sroa.0.0171249 = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 232, !dbg !21055 ; 2 uses
  %i.bc = icmp eq ptr %.sroa.0.0171249, %i.v, !dbg !21054
  br i1 %i.bc, label %.loopexit173, label %.lr.ph253, !dbg !20813

end_hunk_0
begin_hunk_1_@_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn13send_requests:.peel.begin
bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 457, !dbg !21068
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !21068, !range !7220, !noundef !1793
  %.not160 = icmp eq i8 %i.bw, 2, !dbg !21068
  br i1 %.not160, label %bb.m, label %bb.l, !dbg !21069

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 456, !dbg !21068
    #dbg_value(ptr %i.bx, !20534, !DIExpression(), !20865)
  %i.by = call { i64, i64 } @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection32send_priority_update_for_requestNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.bx), !dbg !21070 ; 0 uses
  br label %bb.m, !dbg !21071

bb.m:                                             ; preds = %bb.l, %bb.k
  store i64 1, ptr %.sroa.0.0171252, align 8, !dbg !21072
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 240, !dbg !21072
  store i64 %i.br, ptr %i.bz, align 8, !dbg !21072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21073
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 248, !dbg !21074
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 440, !dbg !21075
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !21075, !noundef !1793
  call fastcc void @_RNvNtCsiGRwBGCeC5s_11quiche_apps6common20make_resource_writer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i64 noundef %i.cc), !dbg !21073
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 408, !dbg !21076 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cd)
          to label %bb.o unwind label %.loopexit207, !dbg !21076

.loopexit207:                                     ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit207
  %.lcssa204 = phi ptr [ %i.cd, %.loopexit207 ], [ %i.ba, %.loopexit.split-lp ], !dbg !21076
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit207 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.lcssa204, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !21076
  resume { ptr, i32 } %lpad.phi, !dbg !21082

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !21076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21077
    #dbg_value(ptr %0, !20734, !DIExpression(DW_OP_plus_uconst, 616, DW_OP_stack_value), !20867)
  %i.ce = call { i64, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %i.br, i64 noundef 0), !dbg !21078 ; 0 uses
  %i.cf = add i64 %.sroa.0.0251, 1, !dbg !21083   ; 2 uses
    #dbg_value(i64 %i.cf, !20512, !DIExpression(), !20769)
  %.sroa.0.0171 = getelementptr inbounds nuw i8, ptr %.sroa.0.0171252, i64 232, !dbg !21055 ; 2 uses
    #dbg_value(ptr %.sroa.0.0171, !20513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20803)
    #dbg_value(i64 0, !20513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20803)
    #dbg_value(ptr undef, !20618, !DIExpression(), !20629)
    #dbg_value(i1 true, !20804, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20807)
    #dbg_value(ptr undef, !20622, !DIExpression(), !20628)
    #dbg_value(ptr %.sroa.0.0171, !20623, !DIExpression(), !20808)
    #dbg_value(ptr %.sroa.0.0171, !20644, !DIExpression(), !20647)
    #dbg_value(ptr %i.v, !20624, !DIExpression(), !20809)
    #dbg_value(ptr poison, !20810, !DIExpression(), !20814)
    #dbg_value(ptr poison, !20811, !DIExpression(), !20815)
  %i.cg = icmp eq ptr %.sroa.0.0171, %i.v, !dbg !21054
  br i1 %i.cg, label %.loopexit173, label %.lr.ph253, !dbg !20813, !llvm.loop !20475

bb.p:                                             ; preds = %bb.q, %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !21084
  %i.ch = load i64, ptr %i.z, align 8, !dbg !21084
  store i64 %.lcssa202, ptr %i.n, align 8, !dbg !21084
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !21084
  store i64 %i.ch, ptr %i.ci, align 8, !dbg !21084
    #dbg_value(i64 1, !20523, !DIExpression(), !20868)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20869)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20872)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20709, !DIExpression(), !20724)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20477)
    #dbg_value(i8 0, !6359, !DIExpression(), !20477)
  %i.cj = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21085 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 6, !dbg !21086
  call void @llvm.assume(i1 %i.ck), !dbg !21086
    #dbg_value(ptr poison, !20650, !DIExpression(), !20873)
    #dbg_value(i8 poison, !20663, !DIExpression(), !20876)
    #dbg_value(i8 poison, !20673, !DIExpression(), !20881)
    #dbg_value(i8 poison, !20660, !DIExpression(), !20882)
  %.not161 = icmp eq i64 %i.cj, 0, !dbg !21087
  br i1 %.not161, label %bb.x, label %bb.w, !dbg !20652

bb.q:                                             ; preds = %.loopexit206
  %i.cl = icmp eq i64 %.lcssa202, 11, !dbg !21061
  br i1 %i.cl, label %bb.s, label %bb.p, !dbg !21061

bb.r:                                             ; preds = %.loopexit206
    #dbg_value(i64 4, !20520, !DIExpression(), !20883)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20884)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20887)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20709, !DIExpression(), !20719)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20479)
    #dbg_value(i8 0, !6359, !DIExpression(), !20479)
  %i.cm = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21088 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 6, !dbg !21089
  call void @llvm.assume(i1 %i.cn), !dbg !21089
    #dbg_value(ptr poison, !20650, !DIExpression(), !20888)
    #dbg_value(i8 poison, !20662, !DIExpression(), !20891)
    #dbg_value(i8 poison, !20673, !DIExpression(), !20896)
    #dbg_value(i8 poison, !20660, !DIExpression(), !20897)
  %i.co = icmp samesign ugt i64 %i.cm, 3, !dbg !21090
  br i1 %i.co, label %bb.v, label %bb.u, !dbg !20678

bb.s:                                             ; preds = %bb.q
    #dbg_value(i64 4, !20518, !DIExpression(), !20898)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20899)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20902)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20709, !DIExpression(), !20714)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20481)
    #dbg_value(i8 0, !6359, !DIExpression(), !20481)
  %i.cp = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21091 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 6, !dbg !21092
  call void @llvm.assume(i1 %i.cq), !dbg !21092
    #dbg_value(ptr poison, !20650, !DIExpression(), !20903)
    #dbg_value(i8 poison, !20661, !DIExpression(), !20906)
    #dbg_value(i8 poison, !20673, !DIExpression(), !20911)
    #dbg_value(i8 poison, !20660, !DIExpression(), !20912)
  %i.cr = icmp samesign ugt i64 %i.cp, 3, !dbg !21093
  br i1 %i.cr, label %bb.t, label %bb.u, !dbg !20688

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !20688
  store ptr @67, ptr %i.p, align 8, !dbg !20688
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !20688
  store i64 19, ptr %i.cs, align 8, !dbg !20688
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !20688
  store ptr @67, ptr %i.ct, align 8, !dbg !20688
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !20688
  store i64 19, ptr %i.cu, align 8, !dbg !20688
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !20688
  store ptr @157, ptr %i.cv, align 8, !dbg !20688
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @108, ptr noundef nonnull inttoptr (i64 83 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p), !dbg !20688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !20688
  br label %bb.u, !dbg !20688

bb.u:                                             ; preds = %bb.v, %bb.r, %bb.t, %bb.s, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !21063
  br label %.loopexit173, !dbg !21094

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !20678
  store ptr @67, ptr %i.o, align 8, !dbg !20678
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !20678
  store i64 19, ptr %i.cw, align 8, !dbg !20678
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !20678
  store ptr @67, ptr %i.cx, align 8, !dbg !20678
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !20678
  store i64 19, ptr %i.cy, align 8, !dbg !20678
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !20678
  store ptr @159, ptr %i.cz, align 8, !dbg !20678
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @158, ptr noundef nonnull inttoptr (i64 67 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o), !dbg !20678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !20678
  br label %bb.u, !dbg !20678

bb.w:                                             ; preds = %bb.p
    #dbg_value(ptr %i.n, !20525, !DIExpression(), !20914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !21095
  store ptr %i.n, ptr %i.m, align 8, !dbg !21095
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !21095
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx, align 8, !dbg !21095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !20652
  store ptr @67, ptr %i.l, align 8, !dbg !20652
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !20652
  store i64 19, ptr %i.da, align 8, !dbg !20652
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !20652
  store ptr @67, ptr %i.db, align 8, !dbg !20652
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !20652
  store i64 19, ptr %i.dc, align 8, !dbg !20652
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !20652
  store ptr @160, ptr %i.dd, align 8, !dbg !20652
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @105, ptr noundef nonnull %i.m, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l), !dbg !20652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !20652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !20652
  br label %bb.x, !dbg !20652

bb.x:                                             ; preds = %bb.p, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !21096
  br label %bb.u, !dbg !21097

bb.y:                                             ; preds = %.loopexit173
    #dbg_value(ptr %0, !20535, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !20916)
    #dbg_value(ptr %0, !20917, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !20920)
    #dbg_value(ptr %0, !20921, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !20925)
    #dbg_value(ptr %0, !20926, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !20929)
    #dbg_value(ptr %0, !20930, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !20934)
    #dbg_value(ptr %0, !20935, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !20939)
    #dbg_value(ptr %0, !20940, !DIExpression(DW_OP_plus_uconst, 616, DW_OP_stack_value), !20946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !21098
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE8iter_mutCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae), !dbg !21099
    #dbg_value(ptr %i.h, !20948, !DIExpression(), !20962)
  %i.de = call { ptr, ptr } @_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7IterMutyjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h), !dbg !21100 ; 2 uses
  %i.df = extractvalue { ptr, ptr } %i.de, 0, !dbg !21100 ; 2 uses
  %.not163185 = icmp eq ptr %i.df, null, !dbg !20640
  br i1 %.not163185, label %._crit_edge, label %.lr.ph, !dbg !20640

.lr.ph:                                           ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.aa, !dbg !20640

bb.z:                                             ; preds = %._crit_edge, %.loopexit173
    #dbg_value(ptr %0, !20963, !DIExpression(DW_OP_plus_uconst, 568, DW_OP_stack_value), !20967)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 568, !dbg !21101
  %i.do = load i64, ptr %i.dn, align 8, !dbg !21101, !range !3252, !noundef !1793
  %.not164 = icmp eq i64 %i.do, -1, !dbg !21101
  br i1 %.not164, label %bb.ak, label %bb.aj, !dbg !21102

bb.aa:                                            ; preds = %.lr.ph, %.backedge
  %.pn = phi { ptr, ptr } [ %i.de, %.lr.ph ], [ %i.ee, %.backedge ]
  %i.dp = phi ptr [ %i.df, %.lr.ph ], [ %i.ef, %.backedge ]
  %i.dq = extractvalue { ptr, ptr } %.pn, 1, !dbg !21100 ; 4 uses
    #dbg_value(ptr %i.dp, !20537, !DIExpression(), !20968)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
    #dbg_value(ptr %i.dq, !20538, !DIExpression(), !20968)
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !21103, !noundef !1793 ; 5 uses
  %i.ds = load i64, ptr %i.dg, align 8, !dbg !21104, !noundef !1793 ; 6 uses
  %i.dt = icmp sgt i64 %i.ds, -1, !dbg !21105
  call void @llvm.assume(i1 %i.dt), !dbg !21106
  %i.du = icmp eq i64 %i.dr, %i.ds, !dbg !21103
  br i1 %i.du, label %.backedge, label %bb.ab, !dbg !21103

._crit_edge:                                      ; preds = %.backedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21107
  br label %bb.z, !dbg !21108

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !21109
    #dbg_value(ptr %0, !20632, !DIExpression(), !20638)
    #dbg_value(i64 poison, !20633, !DIExpression(), !20638)
    #dbg_value(i64 %i.dr, !20922, !DIExpression(), !20969)
    #dbg_value(i64 %i.dr, !20970, !DIExpression(), !20974)
    #dbg_value(i64 %i.dr, !20975, !DIExpression(), !20980)
    #dbg_value(i64 %i.dr, !20981, !DIExpression(), !20986)
    #dbg_value(ptr poison, !20971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20974)
    #dbg_value(ptr poison, !20976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20980)
    #dbg_value(ptr poison, !20982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
    #dbg_value(i64 %i.ds, !20971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20974)
    #dbg_value(i64 %i.ds, !20976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20980)
    #dbg_value(i64 %i.ds, !20982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20986)
  %i.dv = icmp ugt i64 %i.dr, %i.ds, !dbg !21110
  br i1 %i.dv, label %bb.ad, label %bb.ac, !dbg !21110, !prof !3051

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load ptr, ptr %i.dh, align 8, !dbg !21111, !nonnull !1793, !noundef !1793
    #dbg_value(ptr %i.dw, !20971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20974)
    #dbg_value(ptr %i.dw, !20976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20980)
    #dbg_value(ptr %i.dw, !20982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20986)
  %i.dx = load i64, ptr %i.dp, align 8, !dbg !21112, !noundef !1793
    #dbg_value(i64 %i.dx, !20633, !DIExpression(), !20638)
  %i.dy = sub nuw nsw i64 %i.ds, %i.dr, !dbg !21113
    #dbg_value(i64 %i.dy, !20977, !DIExpression(), !20993)
    #dbg_value(i64 %i.dy, !20983, !DIExpression(), !20986)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dr, !dbg !21114
    #dbg_value(ptr %i.dz, !20634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20638)
    #dbg_value(i64 %i.dy, !20634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20638)
  call void @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection12do_send_bodyNtNtB8_7buffers17DefaultBufFactoryRShjNCINvB2_9send_bodyB11_E0ECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.dx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.dy, i1 noundef zeroext true), !dbg !21115
  %i.ea = load i64, ptr %i.g, align 8, !dbg !21109, !range !7219, !noundef !1793 ; 4 uses
  %.not167 = icmp eq i64 %i.ea, -1, !dbg !21109
  br i1 %.not167, label %bb.ae, label %4, !dbg !21116

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.dr, i64 noundef %i.ds, i64 noundef %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #23, !dbg !21117
  unreachable, !dbg !21117

4:                                                ; preds = %bb.ac
  %5 = icmp ne i64 %i.ea, 34, !dbg !21109
  call void @llvm.assume(i1 %5), !dbg !21109
  %6 = icmp eq i64 %i.ea, 23, !dbg !21116
  br i1 %6, label %bb.af, label %bb.ag, !dbg !21116

bb.ae:                                            ; preds = %bb.ac
  %i.eb = load i64, ptr %i.di, align 8, !dbg !21118, !noundef !1793
    #dbg_value(i64 %i.eb, !20539, !DIExpression(), !20994)
  br label %bb.af, !dbg !21119

bb.af:                                            ; preds = %4, %bb.ae
  %.sroa.08.0 = phi i64 [ %i.eb, %bb.ae ], [ 0, %4 ], !dbg !20968
    #dbg_value(i64 %.sroa.08.0, !20539, !DIExpression(), !20994)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21120
  %i.ec = load i64, ptr %i.dq, align 8, !dbg !21121, !noundef !1793
  %i.ed = add i64 %i.ec, %.sroa.08.0, !dbg !21121
  store i64 %i.ed, ptr %i.dq, align 8, !dbg !21121
  br label %.backedge, !dbg !21122

.backedge:                                        ; preds = %bb.ai, %bb.aa, %bb.af
    #dbg_value(ptr %i.h, !20948, !DIExpression(), !20962)
  %i.ee = call { ptr, ptr } @_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7IterMutyjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h), !dbg !21100 ; 2 uses
  %i.ef = extractvalue { ptr, ptr } %i.ee, 0, !dbg !21100 ; 2 uses
  %.not163 = icmp eq ptr %i.ef, null, !dbg !20640
  br i1 %.not163, label %._crit_edge, label %bb.aa, !dbg !20640

bb.ag:                                            ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !21123
  %7 = load i64, ptr %i.di, align 8, !dbg !21123
  store i64 %i.ea, ptr %i.f, align 8, !dbg !21123
  store i64 %7, ptr %3, align 8, !dbg !21123
    #dbg_value(i64 1, !20543, !DIExpression(), !20995)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20996)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20999)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20709, !DIExpression(), !20753)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20503)
    #dbg_value(i8 0, !6359, !DIExpression(), !20503)
  %i.eg = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21124 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 6, !dbg !21125
  call void @llvm.assume(i1 %i.eh), !dbg !21125
    #dbg_value(ptr poison, !20650, !DIExpression(), !21000)
    #dbg_value(i8 poison, !20666, !DIExpression(), !21003)
    #dbg_value(i8 poison, !20673, !DIExpression(), !21008)
    #dbg_value(i8 poison, !20660, !DIExpression(), !21009)
  %.not168 = icmp eq i64 %i.eg, 0, !dbg !21126
  br i1 %.not168, label %bb.ai, label %bb.ah, !dbg !20739

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(ptr %i.f, !20545, !DIExpression(), !21010)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21127
  store ptr %i.f, ptr %i.e, align 8, !dbg !21127
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !21127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20739
  store ptr @67, ptr %i.d, align 8, !dbg !20739
  store i64 19, ptr %i.dj, align 8, !dbg !20739
  store ptr @67, ptr %i.dk, align 8, !dbg !20739
  store i64 19, ptr %i.dl, align 8, !dbg !20739
  store ptr @161, ptr %i.dm, align 8, !dbg !20739
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @154, ptr noundef nonnull %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d), !dbg !20739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20739
  br label %bb.ai, !dbg !20739

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21120
  br label %.backedge, !dbg !21129

bb.aj:                                            ; preds = %bb.z
    #dbg_value(ptr %i.dn, !20548, !DIExpression(), !21012)
    #dbg_value(i64 0, !20549, !DIExpression(), !21013)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !21130 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !21130, !noundef !1793 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !21131
  %i.el = load i64, ptr %i.ek, align 8, !dbg !21131, !noundef !1793 ; 2 uses
    #dbg_value(i64 %i.ej, !20550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21014)
    #dbg_value(i64 %i.el, !20550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21014)
    #dbg_value(ptr undef, !20598, !DIExpression(), !20604)
    #dbg_value(ptr undef, !20600, !DIExpression(), !20603)
    #dbg_value(ptr undef, !20590, !DIExpression(), !20597)
    #dbg_value(ptr undef, !20591, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21015)
  %i.em = icmp ult i64 %i.ej, %i.el, !dbg !21132
  br i1 %i.em, label %.lr.ph189, label %.loopexit, !dbg !20596

.lr.ph189:                                        ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.eq = sub nuw i64 %i.el, %i.ej, !dbg !20596   ; 2 uses
  br label %bb.al, !dbg !20596

bb.ak:                                            ; preds = %bb.z, %.loopexit
  ret void, !dbg !21133

bb.al:                                            ; preds = %.lr.ph189, %bb.an
  %.sroa.010.0186 = phi i64 [ 0, %.lr.ph189 ], [ %i.fc, %bb.an ] ; 2 uses
    #dbg_value(i64 %.sroa.010.0186, !20549, !DIExpression(), !21013)
    #dbg_value(i64 poison, !20550, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21014)
  %i.er = load i64, ptr %i.en, align 8, !dbg !21134, !noundef !1793
    #dbg_value(ptr %i.dn, !21016, !DIExpression(), !21019)
  %i.es = load ptr, ptr %i.eo, align 8, !dbg !21135, !nonnull !1793, !noundef !1793
  %i.et = load i64, ptr %i.ep, align 8, !dbg !21136, !noundef !1793
  %i.eu = call fastcc { i64, i64 } @_RNvNtCsiGRwBGCeC5s_11quiche_apps6common13send_h3_dgram(ptr noalias nofree noundef align 16 dereferenceable(15552) %1, i64 noundef %i.er, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef %i.et), !dbg !21137 ; 2 uses
  %i.ev = extractvalue { i64, i64 } %i.eu, 0, !dbg !21137 ; 2 uses
  %.not165 = icmp eq i64 %i.ev, -1, !dbg !21137
  br i1 %.not165, label %bb.an, label %bb.am, !dbg !21138

.loopexit:                                        ; preds = %bb.an, %bb.aj, %bb.ap
  %.sroa.010.0175 = phi i64 [ %.sroa.010.0186, %bb.ap ], [ 0, %bb.aj ], [ %i.eq, %bb.an ]
  %i.ew = load i64, ptr %i.ei, align 8, !dbg !21139, !noundef !1793
  %i.ex = add i64 %i.ew, %.sroa.010.0175, !dbg !21139
  store i64 %i.ex, ptr %i.ei, align 8, !dbg !21139
  br label %bb.ak, !dbg !21140

bb.am:                                            ; preds = %bb.al
  %i.ey = extractvalue { i64, i64 } %i.eu, 1, !dbg !21137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21141
  store i64 %i.ev, ptr %i.c, align 8, !dbg !21141
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !21141
  store i64 %i.ey, ptr %i.ez, align 8, !dbg !21141
    #dbg_value(i64 1, !20554, !DIExpression(), !21029)
    #dbg_value(ptr poison, !20649, !DIExpression(), !21030)
    #dbg_value(ptr poison, !20649, !DIExpression(), !21033)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20709, !DIExpression(), !20768)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20506)
    #dbg_value(i8 0, !6359, !DIExpression(), !20506)
  %i.fa = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21142 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 6, !dbg !21143
  call void @llvm.assume(i1 %i.fb), !dbg !21143
    #dbg_value(ptr poison, !20650, !DIExpression(), !21034)
    #dbg_value(i8 poison, !20668, !DIExpression(), !21037)
    #dbg_value(i8 poison, !20673, !DIExpression(), !21042)
    #dbg_value(i8 poison, !20660, !DIExpression(), !21043)
  %.not166 = icmp eq i64 %i.fa, 0, !dbg !21144
  br i1 %.not166, label %bb.ap, label %bb.ao, !dbg !20754

bb.an:                                            ; preds = %bb.al
    #dbg_value(i64 poison, !20550, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21014)
  %i.fc = add i64 %.sroa.010.0186, 1, !dbg !21145 ; 2 uses
    #dbg_value(i64 %i.fc, !20549, !DIExpression(), !21013)
    #dbg_value(ptr undef, !20598, !DIExpression(), !20604)
    #dbg_value(ptr undef, !20600, !DIExpression(), !20603)
    #dbg_value(ptr undef, !20590, !DIExpression(), !20597)
    #dbg_value(ptr undef, !20591, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21015)
  %exitcond.not = icmp eq i64 %i.fc, %i.eq, !dbg !21132
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !dbg !20596

bb.ao:                                            ; preds = %bb.am
    #dbg_value(ptr %i.c, !20556, !DIExpression(), !21044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21146
  store ptr %i.c, ptr %i.b, align 8, !dbg !21146
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21146
  store ptr @_RNvXs5_NtCs3f36owOmepS_6quiche5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx, align 8, !dbg !21146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20754
  store ptr @67, ptr %i.a, align 8, !dbg !20754
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20754
  store i64 19, ptr %i.fd, align 8, !dbg !20754
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20754
  store ptr @67, ptr %i.fe, align 8, !dbg !20754
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !20754
  store i64 19, ptr %i.ff, align 8, !dbg !20754
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !20754
  store ptr @163, ptr %i.fg, align 8, !dbg !20754
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @155, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a), !dbg !20754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20754
  br label %bb.ap, !dbg !20754

bb.ap:                                            ; preds = %bb.am, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21147
  br label %.loopexit, !dbg !21148
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn15handle_requests(ptr noalias nofree noundef align 8 dereferenceable(712) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull %8, i64 noundef range(i64 0, -9223372036854775808) %9) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21214 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21340)
  %i.i = alloca [20 x i8], align 1                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21351)
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21361)
  %i.o = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21371)
  %i.p = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21381)
  %i.q = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21391)
  %i.r = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21401)
  %i.s = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21411)
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21421)
  %i.v = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21431)
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21441)
  %i.y = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21451)
  %i.z = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21461)
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21471)
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21481)
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21491)
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21501)
  %i.af = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21511)
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23448, !DIExpression(), !21519)
  %i.ah = alloca [72 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn15handle_requests:bb.a
  br label %bb.kq, !dbg !25944

bb.kq:                                            ; preds = %bb.kt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit, %bb.kk
    #dbg_value(ptr %i.dw, !24845, !DIExpression(), !24851)
    #dbg_value(ptr %i.dw, !24852, !DIExpression(), !24855)
  %i.ade = load i64, ptr %i.je, align 8, !dbg !25945, !noundef !1793 ; 3 uses
  %i.adf = icmp sgt i64 %i.ade, -1, !dbg !25946
  call void @llvm.assume(i1 %i.adf), !dbg !25947
  %i.adg = icmp eq i64 %i.ade, 0, !dbg !25948
  br i1 %i.adg, label %bb.kw, label %bb.kv, !dbg !25949

bb.kr:                                            ; preds = %bb.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !dbg !25950
  %i.adh = load <2 x i64>, ptr %i.ix, align 8, !dbg !25950
  store <2 x i64> %i.adh, ptr %i.dt, align 16, !dbg !25950
    #dbg_value(i64 1, !23354, !DIExpression(), !24856)
    #dbg_value(ptr poison, !23863, !DIExpression(), !24857)
    #dbg_value(ptr poison, !23863, !DIExpression(), !24860)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !23941, !DIExpression(), !23961)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !23137)
    #dbg_value(i8 0, !6359, !DIExpression(), !23137)
  %i.adi = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !25951 ; 2 uses
  %i.adj = icmp ult i64 %i.adi, 6, !dbg !25952
  call void @llvm.assume(i1 %i.adj), !dbg !25952
    #dbg_value(ptr poison, !23864, !DIExpression(), !24861)
    #dbg_value(i8 poison, !23878, !DIExpression(), !24864)
    #dbg_value(i8 poison, !23895, !DIExpression(), !24869)
    #dbg_value(i8 poison, !23875, !DIExpression(), !24870)
  %.not313 = icmp eq i64 %i.adi, 0, !dbg !25953
  br i1 %.not313, label %bb.kt, label %bb.ks, !dbg !23947

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !dbg !25954
    #dbg_value(ptr %1, !24136, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !24873)
    #dbg_value(ptr %1, !24140, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !24876)
  %i.adk = load ptr, ptr %i.ej, align 8, !dbg !25955, !nonnull !1793, !noundef !1793
  %i.adl = load i64, ptr %i.ek, align 16, !dbg !25956, !noundef !1793
  store ptr %i.adk, ptr %i.ds, align 8, !dbg !25957
  store i64 %i.adl, ptr %i.iy, align 8, !dbg !25957
    #dbg_value(ptr %i.ds, !23356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24888)
    #dbg_value(ptr %i.dt, !23356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !dbg !25958
  store ptr %i.ds, ptr %i.dr, align 8, !dbg !25958
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.444.0..sroa_idx, align 8, !dbg !25958
  store ptr %i.dt, ptr %i.iz, align 8, !dbg !25958
  store ptr @_RNvXs_NtCs3f36owOmepS_6quiche2h3NtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8, !dbg !25958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !dbg !23947
  store ptr @67, ptr %i.dq, align 8, !dbg !23947
  store i64 19, ptr %i.ja, align 8, !dbg !23947
  store ptr @67, ptr %i.jb, align 8, !dbg !23947
  store i64 19, ptr %i.jc, align 8, !dbg !23947
  store ptr @174, ptr %i.jd, align 8, !dbg !23947
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @165, ptr noundef nonnull %i.dr, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dq)
          to label %bb.ku unwind label %.loopexit476, !dbg !23947

bb.kt:                                            ; preds = %bb.kr, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !dbg !25959
  br label %bb.kq, !dbg !25959

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !dbg !23947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !dbg !23947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !dbg !23947
  br label %bb.kt, !dbg !23947

bb.kv:                                            ; preds = %bb.kq
    #dbg_value(ptr %i.dy, !23832, !DIExpression(), !24889)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !dbg !25960
    #dbg_value(ptr %i.dw, !24149, !DIExpression(), !24891)
    #dbg_value(ptr %i.dw, !24151, !DIExpression(), !24894)
  %i.adm = load ptr, ptr %i.jf, align 8, !dbg !25961, !nonnull !1793, !noundef !1793
  invoke void @_RNvMs6_NtCs3f36owOmepS_6quiche2h3NtB5_6Header3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.dp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adm, i64 noundef %i.ade)
          to label %bb.kx unwind label %.loopexit476, !dbg !25960

bb.kw:                                            ; preds = %bb.lb, %bb.kq
  %i.adn = phi i64 [ %.pre1891.a, %bb.lb ], [ 0, %bb.kq ], !dbg !25962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !dbg !25963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !25964
    #dbg_value(ptr %i.dw, !24149, !DIExpression(), !24902)
    #dbg_value(ptr %i.dw, !24151, !DIExpression(), !24905)
  %i.ado = load ptr, ptr %i.jf, align 8, !dbg !25965, !nonnull !1793, !noundef !1793
  invoke void @_RNvXsc_NtCs3f36owOmepS_6quiche2h3NtB5_8PriorityINtNtCskKLDkoKarTP_4core7convert7TryFromRShE8try_from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.dn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ado, i64 noundef %i.adn)
          to label %bb.lc unwind label %.loopexit476, !dbg !25964

bb.kx:                                            ; preds = %bb.kv
    #dbg_value(ptr %i.dy, !6142, !DIExpression(), !23139)
    #dbg_value(ptr %i.dy, !6150, !DIExpression(), !23141)
    #dbg_declare(ptr %i.dp, !6146, !DIExpression(), !23142)
    #dbg_value(i64 48, !6155, !DIExpression(), !23145)
  %i.adp = load i64, ptr %i.jg, align 8, !dbg !25966, !alias.scope !24912, !noundef !1793 ; 3 uses
    #dbg_value(i64 %i.adp, !6147, !DIExpression(), !23148)
    #dbg_value(i64 %i.adp, !6167, !DIExpression(), !23150)
    #dbg_value(ptr %i.dy, !6165, !DIExpression(), !23151)
  %i.adq = load i64, ptr %i.dy, align 8, !dbg !25967, !range !6172, !alias.scope !24912, !noundef !1793
  %i.adr = icmp eq i64 %i.adp, %i.adq, !dbg !25968
  br i1 %i.adr, label %bb.ky, label %bb.lb, !dbg !25968

bb.ky:                                            ; preds = %bb.kx
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.lb unwind label %bb.kz, !dbg !25969, !noalias !24913

bb.kz:                                            ; preds = %bb.ky
  %i.ads = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche2h36HeaderECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dp) #19
          to label %.body347 unwind label %bb.la, !dbg !25970

bb.la:                                            ; preds = %bb.kz
  %i.adt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !25971
  unreachable, !dbg !25971

bb.lb:                                            ; preds = %bb.ky, %bb.kx
  %i.adu = load ptr, ptr %i.jh, align 8, !dbg !25972, !alias.scope !24912, !nonnull !1793, !noundef !1793
    #dbg_value(ptr %i.adu, !6170, !DIExpression(), !23150)
  %i.adv = getelementptr inbounds nuw [48 x i8], ptr %i.adu, i64 %i.adp, !dbg !25973
    #dbg_value(ptr %i.adv, !6148, !DIExpression(), !23156)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.adv, ptr noundef nonnull align 8 dereferenceable(48) %i.dp, i64 48, i1 false), !dbg !25974
  %i.adw = add i64 %i.adp, 1, !dbg !25975
  store i64 %i.adw, ptr %i.jg, align 8, !dbg !25975, !alias.scope !24912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !dbg !25976
  %.pre1891.a = load i64, ptr %i.je, align 8, !dbg !25962
  br label %bb.kw, !dbg !25977

bb.lc:                                            ; preds = %bb.kw
    #dbg_declare(ptr %i.dn, !24914, !DIExpression(), !23164)
  %i.adx = load i64, ptr %i.dn, align 8, !dbg !25978, !range !7219, !alias.scope !24930, !noundef !1793
  %.not.i349 = icmp eq i64 %i.adx, -1, !dbg !25978 ; 2 uses
  %i.ady = load i8, ptr %i.ji, align 8, !dbg !25979, !alias.scope !24930
  %i.adz = load i8, ptr %i.jj, align 1, !dbg !25979, !range !5741, !alias.scope !24930
  %.sroa.3.0.i = select i1 %.not.i349, i8 %i.adz, i8 0, !dbg !25979
  %.sroa.0.0.i = select i1 %.not.i349, i8 %i.ady, i8 3, !dbg !25979
  store i8 %.sroa.0.0.i, ptr %i.do, align 1, !dbg !25964
  store i8 %.sroa.3.0.i, ptr %i.jk, align 1, !dbg !25964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !dbg !25980
    #dbg_value(i64 3, !23361, !DIExpression(), !24931)
    #dbg_value(ptr poison, !23863, !DIExpression(), !24932)
    #dbg_value(ptr poison, !23863, !DIExpression(), !24935)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !23941, !DIExpression(), !23976)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !23168)
    #dbg_value(i8 0, !6359, !DIExpression(), !23168)
  %i.aea = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !25981 ; 2 uses
  %i.aeb = icmp ult i64 %i.aea, 6, !dbg !25982
  call void @llvm.assume(i1 %i.aeb), !dbg !25982
    #dbg_value(ptr poison, !23864, !DIExpression(), !24936)
    #dbg_value(i8 poison, !23880, !DIExpression(), !24939)
    #dbg_value(i8 poison, !23895, !DIExpression(), !24944)
    #dbg_value(i8 poison, !23875, !DIExpression(), !24945)
  %i.aec = icmp samesign ugt i64 %i.aea, 2, !dbg !25983
  br i1 %i.aec, label %bb.ld, label %bb.le, !dbg !23962

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !dbg !25984
    #dbg_value(ptr %1, !24136, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !24948)
    #dbg_value(ptr %1, !24140, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !24951)
  %i.aed = load ptr, ptr %i.ej, align 8, !dbg !25985, !nonnull !1793, !noundef !1793
  %i.aee = load i64, ptr %i.ek, align 16, !dbg !25986, !noundef !1793
  store ptr %i.aed, ptr %i.dm, align 8, !dbg !25987
  store i64 %i.aee, ptr %i.jl, align 8, !dbg !25987
    #dbg_value(ptr %i.dm, !23363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24963)
    #dbg_value(ptr %i.ee, !23363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24963)
    #dbg_value(ptr %i.do, !23363, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !25988
  store ptr %i.dm, ptr %i.dl, align 8, !dbg !25988
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.452.0..sroa_idx, align 8, !dbg !25988
  store ptr %i.ee, ptr %i.jm, align 8, !dbg !25988
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8, !dbg !25988
  store ptr %i.do, ptr %i.jn, align 8, !dbg !25988
  store ptr @_RNvXsJ_NtCs3f36owOmepS_6quiche2h3NtB5_8PriorityNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !25988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !dbg !23962
  store ptr @67, ptr %i.dk, align 8, !dbg !23962
  store i64 19, ptr %i.jo, align 8, !dbg !23962
  store ptr @67, ptr %i.jp, align 8, !dbg !23962
  store i64 19, ptr %i.jq, align 8, !dbg !23962
  store ptr @176, ptr %i.jr, align 8, !dbg !23962
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @166, ptr noundef nonnull %i.dl, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dk)
          to label %bb.lf unwind label %.loopexit476, !dbg !23962

bb.le:                                            ; preds = %bb.lc, %bb.lf
    #dbg_value(ptr %i.dy, !24155, !DIExpression(), !24965)
    #dbg_value(ptr %i.dy, !24159, !DIExpression(), !24968)
    #dbg_value(ptr %i.dy, !24163, !DIExpression(), !24971)
  %i.aef = load ptr, ptr %i.jh, align 8, !dbg !25989, !nonnull !1793, !noundef !1793
  %i.aeg = load i64, ptr %i.jg, align 8, !dbg !25990, !noundef !1793
  %i.aeh = load i64, ptr %i.ee, align 8, !dbg !25991, !noundef !1793
    #dbg_value(i64 %i.aeh, !23797, !DIExpression(), !23803)
    #dbg_value(i64 %i.aeh, !23797, !DIExpression(), !23801)
    #dbg_value(i64 %i.aeh, !24114, !DIExpression(), !24120)
    #dbg_value(i64 %i.aeh, !23338, !DIExpression(), !24113)
  %i.aei = invoke { i64, i64 } @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection27send_response_with_priorityNtB6_6HeaderNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.aeh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aef, i64 noundef %i.aeg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.do, i1 noundef zeroext false)
          to label %bb.lg unwind label %.loopexit476, !dbg !25992 ; 2 uses

bb.lf:                                            ; preds = %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !23962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !dbg !23962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !dbg !23962
  br label %bb.le, !dbg !23962

bb.lg:                                            ; preds = %bb.le
  %i.aej = extractvalue { i64, i64 } %i.aei, 0, !dbg !25991 ; 4 uses
  %.not314 = icmp eq i64 %i.aej, -1, !dbg !25991
  br i1 %.not314, label %bb.lh, label %10, !dbg !25993

10:                                               ; preds = %bb.lg
  %11 = icmp ne i64 %i.aej, 34, !dbg !25991
  call void @llvm.assume(i1 %11), !dbg !25991
  %12 = icmp eq i64 %i.aej, 35, !dbg !25993
  br i1 %12, label %bb.lt, label %bb.mc, !dbg !25993

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !dbg !25994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !dbg !25995
  store i64 -1, ptr %i.jw, align 8, !dbg !25996
  store i8 2, ptr %i.jx, align 1, !dbg !25996
  store i64 0, ptr %i.jy, align 8, !dbg !25996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !dbg !25997
  %i.aek = load i64, ptr %i.ee, align 8, !dbg !25998, !noundef !1793
    #dbg_value(i64 %i.aek, !23797, !DIExpression(), !23803)
    #dbg_value(i64 %i.aek, !23797, !DIExpression(), !23801)
    #dbg_value(i64 %i.aek, !24114, !DIExpression(), !24120)
    #dbg_value(i64 %i.aek, !23338, !DIExpression(), !24113)
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBS_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dc, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.aek, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.dd)
          to label %bb.li unwind label %.loopexit476, !dbg !25999

bb.li:                                            ; preds = %bb.lh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.dc)
          to label %bb.lj unwind label %.loopexit476, !dbg !26000

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !26000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !26001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !26002
    #dbg_value(ptr %i.dw, !3272, !DIExpression(), !23170)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.ll unwind label %bb.lk, !dbg !26003

bb.lk:                                            ; preds = %bb.lj
  %i.ael = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23172)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.thread unwind label %bb.lm, !dbg !26004

bb.ll:                                            ; preds = %bb.lj
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23174)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit354 unwind label %.loopexit.split-lp482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26005

bb.lm:                                            ; preds = %bb.lk
  %i.aem = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26003
  unreachable, !dbg !26003

bb.ln:                                            ; preds = %.body347
  br i1 %.sroa.027.0, label %.body352.thread403, label %bb.mm, !dbg !25937

.body352.thread408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.my, %bb.h, %bb.l, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCs3f36owOmepS_6quiche5error5ErrorE6unwrapCsiGRwBGCeC5s_11quiche_apps.exit334, %bb.io, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiGRwBGCeC5s_11quiche_apps.exit.i, %bb.lp, %bb.lx, %bb.p, %bb.q, %bb.mo
  %lpad.loopexit.split-lp2692 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body352:                                         ; preds = %bb.mg
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread403, !dbg !25937

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit354: ; preds = %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !25937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !dbg !25937
    #dbg_value(ptr %i.dy, !3317, !DIExpression(), !23176)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.lp unwind label %bb.lo, !dbg !26006

bb.lo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit354
  %i.aen = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dy, !3322, !DIExpression(), !23178)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body unwind label %bb.lq, !dbg !26007

bb.lp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit354
    #dbg_value(ptr %i.dy, !3322, !DIExpression(), !23180)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit unwind label %.body352.thread408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26008

bb.lq:                                            ; preds = %bb.lo
  %i.aeo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26006
  unreachable, !dbg !26006

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !25937
    #dbg_value(ptr %i.ed, !3317, !DIExpression(), !23182)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit359 unwind label %bb.lr, !dbg !26009

bb.lr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit
  %i.aep = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23184)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %common.resume unwind label %bb.ls, !dbg !26010

bb.ls:                                            ; preds = %bb.lr
  %i.aeq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26009
  unreachable, !dbg !26009

common.resume:                                    ; preds = %bb.od, %.body, %bb.ob, %bb.nn, %bb.mq, %bb.ma, %bb.lr
  %common.resume.op = phi { ptr, i32 } [ %i.ahh, %bb.nn ], [ %i.aep, %bb.lr ], [ %i.aey, %bb.ma ], [ %i.afs, %bb.mq ], [ %.pn321, %.body ], [ %i.ais, %bb.ob ], [ %i.ait, %bb.od ]
  resume { ptr, i32 } %common.resume.op, !dbg !23777

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit359: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23186)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed), !dbg !26011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !25336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !25336
  br label %.backedge, !dbg !25336

.backedge:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit359, %bb.nc, %bb.ne, %bb.ni, %bb.b, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !26012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !dbg !25320
  call void @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection4pollNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ef, ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1), !dbg !25321
  %i.aer = load i64, ptr %i.eg, align 8, !dbg !25320, !range !7251, !noundef !1793 ; 2 uses
  %i.aes = icmp eq i64 %i.aer, -1, !dbg !25320
  br i1 %i.aes, label %._crit_edge, label %bb.b, !dbg !25322

bb.lt:                                            ; preds = %10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !26013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !dbg !26014
  %i.aet = load i8, ptr %i.do, align 1, !dbg !26015, !noundef !1793
  %i.aeu = load i8, ptr %i.jk, align 1, !dbg !26015, !range !5741, !noundef !1793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !dbg !26016
  store i8 %i.aet, ptr %i.jt, align 8, !dbg !26017
  store i8 %i.aeu, ptr %i.ju, align 1, !dbg !26017
  store i64 0, ptr %i.jv, align 8, !dbg !26017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !26018
  %i.aev = load i64, ptr %i.ee, align 8, !dbg !26019, !noundef !1793
    #dbg_value(i64 %i.aev, !23797, !DIExpression(), !23803)
    #dbg_value(i64 %i.aev, !23797, !DIExpression(), !23801)
    #dbg_value(i64 %i.aev, !24114, !DIExpression(), !24120)
    #dbg_value(i64 %i.aev, !23338, !DIExpression(), !24113)
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBS_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.di, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.aev, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.dj)
          to label %bb.lu unwind label %.loopexit476, !dbg !26020

bb.lu:                                            ; preds = %bb.lt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.di)
          to label %bb.lv unwind label %.loopexit476, !dbg !26021

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !26021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !26022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !26002
    #dbg_value(ptr %i.dw, !3272, !DIExpression(), !23188)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.lx unwind label %bb.lw, !dbg !26023

bb.lw:                                            ; preds = %bb.lv
  %i.aew = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23190)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.body unwind label %bb.ly, !dbg !26024

bb.lx:                                            ; preds = %bb.lv
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23192)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit366 unwind label %.body352.thread408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26025

bb.ly:                                            ; preds = %bb.lw
  %i.aex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26023
  unreachable, !dbg !26023

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit366: ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !25937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !dbg !25937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !25937
  br label %bb.lz, !dbg !26026

bb.lz:                                            ; preds = %bb.mz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit366
    #dbg_value(ptr %i.ed, !3317, !DIExpression(), !23194)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit368 unwind label %bb.ma, !dbg !26027

bb.ma:                                            ; preds = %bb.lz
  %i.aey = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23196)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %common.resume unwind label %bb.mb, !dbg !26028

bb.mb:                                            ; preds = %bb.ma
  %i.aez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26027
  unreachable, !dbg !26027

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit368: ; preds = %bb.lz
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23198)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed), !dbg !26029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !25336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !25336
  br label %.backedge, !dbg !25323

bb.mc:                                            ; preds = %10
  %i.afa = extractvalue { i64, i64 } %i.aei, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !dbg !26030
  store i64 %i.aej, ptr %i.dh, align 8, !dbg !26030
  %i.afb = getelementptr inbounds nuw i8, ptr %i.dh, i64 8, !dbg !26030
  store i64 %i.afa, ptr %i.afb, align 8, !dbg !26030
    #dbg_value(i64 1, !23370, !DIExpression(), !24979)
    #dbg_value(ptr poison, !23863, !DIExpression(), !24980)
    #dbg_value(ptr poison, !23863, !DIExpression(), !24983)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !23941, !DIExpression(), !23991)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !23200)
    #dbg_value(i8 0, !6359, !DIExpression(), !23200)
  %i.afc = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26031 ; 2 uses
  %i.afd = icmp ult i64 %i.afc, 6, !dbg !26032
  call void @llvm.assume(i1 %i.afd), !dbg !26032
    #dbg_value(ptr poison, !23864, !DIExpression(), !24984)
    #dbg_value(i8 poison, !23882, !DIExpression(), !24987)
    #dbg_value(i8 poison, !23895, !DIExpression(), !24992)
    #dbg_value(i8 poison, !23875, !DIExpression(), !24993)
  %.not315 = icmp eq i64 %i.afc, 0, !dbg !26033
  br i1 %.not315, label %bb.me, label %bb.md, !dbg !23977

bb.md:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !26034
    #dbg_value(ptr %1, !24136, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !24996)
    #dbg_value(ptr %1, !24140, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !24999)
  %i.afe = load ptr, ptr %i.ej, align 8, !dbg !26035, !nonnull !1793, !noundef !1793
  %i.aff = load i64, ptr %i.ek, align 16, !dbg !26036, !noundef !1793
  store ptr %i.afe, ptr %i.dg, align 8, !dbg !26037
  %i.afg = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !26037
  store i64 %i.aff, ptr %i.afg, align 8, !dbg !26037
    #dbg_value(ptr %i.dg, !23372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25011)
    #dbg_value(ptr %i.dh, !23372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !26038
  store ptr %i.dg, ptr %i.df, align 8, !dbg !26038
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !26038
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.464.0..sroa_idx, align 8, !dbg !26038
  %i.afh = getelementptr inbounds nuw i8, ptr %i.df, i64 16, !dbg !26038
  store ptr %i.dh, ptr %i.afh, align 8, !dbg !26038
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 24, !dbg !26038
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.468.0..sroa_idx, align 8, !dbg !26038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !23977
  store ptr @67, ptr %i.de, align 8, !dbg !23977
  %i.afi = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !23977
  store i64 19, ptr %i.afi, align 8, !dbg !23977
  %i.afj = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !23977
  store ptr @67, ptr %i.afj, align 8, !dbg !23977
  %i.afk = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !23977
  store i64 19, ptr %i.afk, align 8, !dbg !23977
  %i.afl = getelementptr inbounds nuw i8, ptr %i.de, i64 32, !dbg !23977
  store ptr @177, ptr %i.afl, align 8, !dbg !23977
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @115, ptr noundef nonnull %i.df, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.de)
          to label %bb.mi unwind label %.loopexit.split-lp477, !dbg !23977

bb.me:                                            ; preds = %bb.mc, %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !26039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !26002
    #dbg_value(ptr %i.dw, !3272, !DIExpression(), !23202)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.mg unwind label %bb.mf, !dbg !26040

bb.mf:                                            ; preds = %bb.me
  %i.afm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23204)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.body352.thread403 unwind label %bb.mh, !dbg !26041

bb.mg:                                            ; preds = %bb.me
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23206)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit375 unwind label %.body352, !dbg !26042

bb.mh:                                            ; preds = %bb.mf
  %i.afn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26040
  unreachable, !dbg !26040

bb.mi:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !23977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !23977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !23977
  br label %bb.me, !dbg !23977

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit375: ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !25937
    #dbg_value(ptr %i.dx, !3272, !DIExpression(), !23208)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.mk unwind label %bb.mj, !dbg !26043

bb.mj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit375
  %i.afo = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dx, !3277, !DIExpression(), !23210)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %.thread unwind label %bb.ml, !dbg !26044

bb.mk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit375
    #dbg_value(ptr %i.dx, !3277, !DIExpression(), !23212)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit380 unwind label %.loopexit.split-lp482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26045

bb.ml:                                            ; preds = %bb.mj
  %i.afp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26043
  unreachable, !dbg !26043

bb.mm:                                            ; preds = %.body352.thread403, %bb.ln
  %.sroa.028.4 = phi i1 [ %.sroa.028.2398, %.body352.thread403 ], [ %.sroa.028.0, %bb.ln ], !dbg !24113
  %.pn317.pn = phi { ptr, i32 } [ %.pn317399, %.body352.thread403 ], [ %.pn, %bb.ln ] ; 2 uses
  br i1 %.sroa.028.4, label %.thread, label %.body, !dbg !25937

.loopexit.split-lp482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ll, %bb.mk
  %lpad.loopexit.split-lp2718 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit380: ; preds = %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !dbg !25937
    #dbg_value(ptr %i.dy, !3317, !DIExpression(), !23214)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.mo unwind label %bb.mn, !dbg !26046

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit380
  %i.afq = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dy, !3322, !DIExpression(), !23216)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body unwind label %bb.mp, !dbg !26047

bb.mo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit380
    #dbg_value(ptr %i.dy, !3322, !DIExpression(), !23218)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit385 unwind label %.body352.thread408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26048

bb.mp:                                            ; preds = %bb.mn
  %i.afr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26046
  unreachable, !dbg !26046

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit385: ; preds = %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !25937
    #dbg_value(ptr %i.ed, !3317, !DIExpression(), !23220)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit387 unwind label %bb.mq, !dbg !26049

bb.mq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit385
  %i.afs = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23222)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %common.resume unwind label %bb.mr, !dbg !26050

bb.mr:                                            ; preds = %bb.mq
  %i.aft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26049
  unreachable, !dbg !26049

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit387: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit385
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23224)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed), !dbg !26051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !25336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !25336
  br label %bb.ms, !dbg !26012

bb.ms:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit387, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !26012
  call void @llvm.experimental.noalias.scope.decl(metadata !25012), !dbg !26052
    #dbg_value(ptr %1, !6509, !DIExpression(), !23228)
    #dbg_value(ptr %1, !6511, !DIExpression(), !23230)
    #dbg_declare(ptr %i.a, !6516, !DIExpression(), !23232)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26053, !noalias !25013
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 15336, !dbg !26054
  %i.afv = load i64, ptr %i.afu, align 8, !dbg !26054, !alias.scope !25012, !noundef !1793
  %i.afw = icmp eq i64 %i.afv, 0, !dbg !26054
  br i1 %i.afw, label %bb.mt, label %bb.mu, !dbg !26054

bb.mt:                                            ; preds = %bb.ms
  %.sroa.4.0..sroa_idx.i388 = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !26055
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i388, i8 0, i64 16, i1 false), !dbg !26055, !noalias !25013
  br label %_RNvNtCsiGRwBGCeC5s_11quiche_apps6common25writable_response_streams.exit, !dbg !26056

bb.mu:                                            ; preds = %bb.ms
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 14920, !dbg !26057
  call void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap8writableCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.afx), !dbg !26058, !noalias !25014
  br label %_RNvNtCsiGRwBGCeC5s_11quiche_apps6common25writable_response_streams.exit, !dbg !26056

_RNvNtCsiGRwBGCeC5s_11quiche_apps6common25writable_response_streams.exit: ; preds = %bb.mt, %bb.mu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !26052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cl, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !dbg !26059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26060, !noalias !25013
  %i.afy = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.afz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.aga = getelementptr inbounds nuw i8, ptr %i.cl, i64 72 ; 2 uses
  br label %bb.nl, !dbg !26061

bb.mv:                                            ; preds = %bb.nn, %bb.ob, %bb.na, %.thread, %.body352.thread403, %.body347, %bb.i, %.body
  %i.agb = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn15handle_requests:bb.a
    #dbg_value(ptr %i.aiq, !25247, !DIExpression(), !25250)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aiq, ptr nonnull align 1 %i.ail, i64 %i.aik, i1 false), !dbg !26142
    #dbg_value(ptr %i.cg, !25252, !DIExpression(), !25267)
  store i64 %i.aik, ptr %i.ahp, align 8, !dbg !26143
  br label %bb.nz, !dbg !26144

bb.ob:                                            ; preds = %bb.nz
  %i.ais = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg) #19
          to label %common.resume unwind label %bb.mv, !dbg !24012

bb.oc:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !24012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !24012
    #dbg_value(ptr %i.cg, !3272, !DIExpression(), !23321)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit392 unwind label %bb.od, !dbg !26145

bb.od:                                            ; preds = %bb.oc
  %i.ait = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.cg, !3277, !DIExpression(), !23323)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %common.resume unwind label %bb.oe, !dbg !26146

bb.oe:                                            ; preds = %bb.od
  %i.aiu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26145
  unreachable, !dbg !26145

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit392: ; preds = %bb.oc
    #dbg_value(ptr %i.cg, !3277, !DIExpression(), !23325)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg), !dbg !26147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !24012
  br label %bb.nt, !dbg !24012

bb.of:                                            ; preds = %._crit_edge1501
    #dbg_value(ptr %i.ahw, !23419, !DIExpression(), !25268)
    #dbg_value(i64 0, !23420, !DIExpression(), !25269)
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !26148 ; 3 uses
  %i.aiw = load i64, ptr %i.aiv, align 8, !dbg !26148, !noundef !1793 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !26149
  %i.aiy = load i64, ptr %i.aix, align 8, !dbg !26149, !noundef !1793 ; 2 uses
    #dbg_value(i64 %i.aiw, !23421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25270)
    #dbg_value(i64 %i.aiy, !23421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25270)
    #dbg_value(ptr undef, !23770, !DIExpression(), !23776)
    #dbg_value(ptr undef, !23772, !DIExpression(), !23775)
    #dbg_value(ptr undef, !23762, !DIExpression(), !23769)
    #dbg_value(ptr undef, !23763, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25271)
  %i.aiz = icmp ult i64 %i.aiw, %i.aiy, !dbg !26150
  br i1 %i.aiz, label %.lr.ph1505, label %.loopexit, !dbg !23768

.lr.ph1505:                                       ; preds = %bb.of
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ajd = sub nuw i64 %i.aiy, %i.aiw, !dbg !23768 ; 2 uses
  br label %bb.og, !dbg !23768

bb.og:                                            ; preds = %.lr.ph1505, %bb.oi
  %.sroa.018.01503 = phi i64 [ 0, %.lr.ph1505 ], [ %i.ajp, %bb.oi ] ; 2 uses
    #dbg_value(i64 %.sroa.018.01503, !23420, !DIExpression(), !25269)
    #dbg_value(i64 poison, !23421, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25270)
  %i.aje = load i64, ptr %i.aja, align 8, !dbg !26151, !noundef !1793
    #dbg_value(ptr %i.ahw, !25272, !DIExpression(), !25275)
  %i.ajf = load ptr, ptr %i.ajb, align 8, !dbg !26152, !nonnull !1793, !noundef !1793
  %i.ajg = load i64, ptr %i.ajc, align 8, !dbg !26153, !noundef !1793
  %i.ajh = call fastcc { i64, i64 } @_RNvNtCsiGRwBGCeC5s_11quiche_apps6common13send_h3_dgram(ptr noalias nofree noundef align 16 dereferenceable(15552) %1, i64 noundef %i.aje, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajf, i64 noundef %i.ajg), !dbg !26154 ; 2 uses
  %i.aji = extractvalue { i64, i64 } %i.ajh, 0, !dbg !26154 ; 2 uses
  %.not328 = icmp eq i64 %i.aji, -1, !dbg !26154
  br i1 %.not328, label %bb.oi, label %bb.oh, !dbg !26155

.loopexit:                                        ; preds = %bb.oi, %bb.of, %bb.ok
  %.sroa.018.0492 = phi i64 [ %.sroa.018.01503, %bb.ok ], [ 0, %bb.of ], [ %i.ajd, %bb.oi ]
  %i.ajj = load i64, ptr %i.aiv, align 8, !dbg !26156, !noundef !1793
  %i.ajk = add i64 %i.ajj, %.sroa.018.0492, !dbg !26156
  store i64 %i.ajk, ptr %i.aiv, align 8, !dbg !26156
  br label %bb.ol, !dbg !26157

bb.oh:                                            ; preds = %bb.og
  %i.ajl = extractvalue { i64, i64 } %i.ajh, 1, !dbg !26154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !26158
  store i64 %i.aji, ptr %i.cd, align 8, !dbg !26158
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8, !dbg !26158
  store i64 %i.ajl, ptr %i.ajm, align 8, !dbg !26158
    #dbg_value(i64 1, !23425, !DIExpression(), !25285)
    #dbg_value(ptr poison, !23863, !DIExpression(), !25286)
    #dbg_value(ptr poison, !23863, !DIExpression(), !25289)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !23941, !DIExpression(), !24063)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !23328)
    #dbg_value(i8 0, !6359, !DIExpression(), !23328)
  %i.ajn = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26159 ; 2 uses
  %i.ajo = icmp ult i64 %i.ajn, 6, !dbg !26160
  call void @llvm.assume(i1 %i.ajo), !dbg !26160
    #dbg_value(ptr poison, !23864, !DIExpression(), !25290)
    #dbg_value(i8 poison, !23890, !DIExpression(), !25293)
    #dbg_value(i8 poison, !23895, !DIExpression(), !25298)
    #dbg_value(i8 poison, !23875, !DIExpression(), !25299)
  %.not329 = icmp eq i64 %i.ajn, 0, !dbg !26161
  br i1 %.not329, label %bb.ok, label %bb.oj, !dbg !24049

bb.oi:                                            ; preds = %bb.og
    #dbg_value(i64 poison, !23421, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25270)
  %i.ajp = add i64 %.sroa.018.01503, 1, !dbg !26162 ; 2 uses
    #dbg_value(i64 %i.ajp, !23420, !DIExpression(), !25269)
    #dbg_value(ptr undef, !23770, !DIExpression(), !23776)
    #dbg_value(ptr undef, !23772, !DIExpression(), !23775)
    #dbg_value(ptr undef, !23762, !DIExpression(), !23769)
    #dbg_value(ptr undef, !23763, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25271)
  %exitcond.not = icmp eq i64 %i.ajp, %i.ajd, !dbg !26150
  br i1 %exitcond.not, label %.loopexit, label %bb.og, !dbg !23768

bb.oj:                                            ; preds = %bb.oh
    #dbg_value(ptr %i.cd, !23427, !DIExpression(), !25300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !dbg !26163
  store ptr %i.cd, ptr %i.cc, align 8, !dbg !26163
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8, !dbg !26163
  store ptr @_RNvXs5_NtCs3f36owOmepS_6quiche5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4119.0..sroa_idx, align 8, !dbg !26163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !dbg !24049
  store ptr @67, ptr %i.cb, align 8, !dbg !24049
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8, !dbg !24049
  store i64 19, ptr %i.ajq, align 8, !dbg !24049
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.cb, i64 16, !dbg !24049
  store ptr @67, ptr %i.ajr, align 8, !dbg !24049
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.cb, i64 24, !dbg !24049
  store i64 19, ptr %i.ajs, align 8, !dbg !24049
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.cb, i64 32, !dbg !24049
  store ptr @184, ptr %i.ajt, align 8, !dbg !24049
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @155, ptr noundef nonnull %i.cc, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cb), !dbg !24049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !24049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !dbg !24049
  br label %bb.ok, !dbg !24049

bb.ok:                                            ; preds = %bb.oh, %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !dbg !26164
  br label %.loopexit, !dbg !26165

bb.ol:                                            ; preds = %.loopexit, %._crit_edge1501, %bb.nj
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.nj ], [ undef, %._crit_edge1501 ], [ undef, %.loopexit ], !dbg !23777
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.nj ], [ -1, %._crit_edge1501 ], [ -1, %.loopexit ], !dbg !23777
  %i.aju = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !26089
  %i.ajv = insertvalue { i64, i64 } %i.aju, i64 %.sroa.4.1, 1, !dbg !26089
  ret { i64, i64 } %i.ajv, !dbg !26089

bb.om:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !26166
    #dbg_value(ptr %1, !24136, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25304)
    #dbg_value(ptr %1, !24140, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25307)
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 14680, !dbg !26167
  %i.ajx = load ptr, ptr %i.ajw, align 8, !dbg !26167, !nonnull !1793, !noundef !1793
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 14688, !dbg !26168
  %i.ajz = load i64, ptr %i.ajy, align 16, !dbg !26168, !noundef !1793
  store ptr %i.ajx, ptr %i.co, align 8, !dbg !26169
  %i.aka = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !26169
  store i64 %i.ajz, ptr %i.aka, align 8, !dbg !26169
    #dbg_value(ptr %i.co, !23405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25319)
    #dbg_value(ptr %i.cp, !23405, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !26170
  store ptr %i.co, ptr %i.cn, align 8, !dbg !26170
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8, !dbg !26170
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.496.0..sroa_idx, align 8, !dbg !26170
  %i.akb = getelementptr inbounds nuw i8, ptr %i.cn, i64 16, !dbg !26170
  store ptr %i.cp, ptr %i.akb, align 8, !dbg !26170
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24, !dbg !26170
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4100.0..sroa_idx, align 8, !dbg !26170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !23866
  store ptr @67, ptr %i.cm, align 8, !dbg !23866
  %i.akc = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !23866
  store i64 19, ptr %i.akc, align 8, !dbg !23866
  %i.akd = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !23866
  store ptr @67, ptr %i.akd, align 8, !dbg !23866
  %i.ake = getelementptr inbounds nuw i8, ptr %i.cm, i64 24, !dbg !23866
  store i64 19, ptr %i.ake, align 8, !dbg !23866
  %i.akf = getelementptr inbounds nuw i8, ptr %i.cm, i64 32, !dbg !23866
  store ptr @185, ptr %i.akf, align 8, !dbg !23866
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @170, ptr noundef nonnull %i.cn, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cm), !dbg !23866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !23866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !23866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !23866
  %.pre1892.a = load i64, ptr %i.cp, align 8, !dbg !26171, !range !7252
  %.pre1893 = load i64, ptr %i.agu, align 8, !dbg !26171
  br label %bb.on, !dbg !23866

bb.on:                                            ; preds = %bb.nk, %bb.om
  %i.akg = phi i64 [ %i.agt, %bb.nk ], [ %.pre1893, %bb.om ], !dbg !26171
  %i.akh = phi i64 [ %i.ka, %bb.nk ], [ %.pre1892.a, %bb.om ], !dbg !26171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !26172
  br label %bb.nj, !dbg !25323
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn15handle_writable(ptr noalias nofree noundef align 8 dereferenceable(712) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26190 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
    #dbg_value(i64 %3, !26252, !DIExpression(), !26281)
    #dbg_value(i64 %3, !26282, !DIExpression(), !26289)
  store i64 %3, ptr %i.p, align 8
    #dbg_value(ptr %0, !26249, !DIExpression(), !26281)
    #dbg_value(ptr %1, !26250, !DIExpression(), !26281)
    #dbg_value(ptr %1, !26290, !DIExpression(), !26293)
    #dbg_value(ptr %1, !26290, !DIExpression(), !26295)
    #dbg_value(ptr %1, !26284, !DIExpression(), !26289)
    #dbg_value(ptr %1, !26290, !DIExpression(), !26297)
    #dbg_value(ptr %2, !26251, !DIExpression(), !26281)
    #dbg_value(ptr %2, !26298, !DIExpression(), !26302)
    #dbg_value(ptr %2, !26303, !DIExpression(), !26307)
    #dbg_value(ptr %2, !26308, !DIExpression(), !26312)
    #dbg_value(ptr %2, !26308, !DIExpression(), !26314)
    #dbg_declare(ptr %i.o, !26253, !DIExpression(), !26315)
    #dbg_declare(ptr %i.k, !26263, !DIExpression(), !26316)
    #dbg_declare(ptr %i.f, !26273, !DIExpression(), !26317)
    #dbg_value(ptr poison, !26318, !DIExpression(), !26323)
    #dbg_value(i8 -1, !26324, !DIExpression(), !26335)
    #dbg_value(i8 -1, !26336, !DIExpression(), !26341)
    #dbg_value(i8 0, !26342, !DIExpression(), !26348)
    #dbg_value(ptr poison, !26318, !DIExpression(), !26350)
    #dbg_value(i8 -1, !26324, !DIExpression(), !26353)
    #dbg_value(i8 -1, !26336, !DIExpression(), !26358)
    #dbg_value(i8 0, !26342, !DIExpression(), !26363)
    #dbg_value(i8 1, !26286, !DIExpression(), !26289)
    #dbg_value(ptr poison, !26318, !DIExpression(), !26365)
    #dbg_value(i8 -1, !26324, !DIExpression(), !26368)
    #dbg_value(i8 -1, !26336, !DIExpression(), !26373)
    #dbg_value(i8 0, !26342, !DIExpression(), !26378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !26555
  call fastcc void @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection15stream_capacityCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, i64 noundef %3) #24, !dbg !26556
    #dbg_value(i64 4, !26255, !DIExpression(), !26379)
    #dbg_value(ptr poison, !26319, !DIExpression(), !26380)
    #dbg_value(ptr poison, !26319, !DIExpression(), !26383)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !26343, !DIExpression(), !26348)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !26209)
    #dbg_value(i8 0, !6359, !DIExpression(), !26209)
  %i.q = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26557 ; 2 uses
  %i.r = icmp ult i64 %i.q, 6, !dbg !26558
  tail call void @llvm.assume(i1 %i.r), !dbg !26558
    #dbg_value(ptr poison, !26320, !DIExpression(), !26384)
    #dbg_value(i8 poison, !26328, !DIExpression(), !26387)
    #dbg_value(i8 poison, !26337, !DIExpression(), !26392)
    #dbg_value(i8 poison, !26327, !DIExpression(), !26393)
  %i.s = icmp samesign ugt i64 %i.q, 3, !dbg !26559
  br i1 %i.s, label %bb.b, label %bb.c, !dbg !26322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !26560
    #dbg_value(ptr %1, !26394, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26397)
    #dbg_value(ptr %1, !26398, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26401)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 14680, !dbg !26561
  %i.u = load ptr, ptr %i.t, align 8, !dbg !26561, !nonnull !1793, !noundef !1793
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 14688, !dbg !26562
  %i.w = load i64, ptr %i.v, align 16, !dbg !26562, !noundef !1793
  store ptr %i.u, ptr %i.n, align 8, !dbg !26563
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !26563
  store i64 %i.w, ptr %i.x, align 8, !dbg !26563
    #dbg_value(ptr %i.n, !26257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26412)
    #dbg_value(ptr %i.p, !26257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26412)
    #dbg_value(ptr %i.o, !26257, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26412)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !26564
  store ptr %i.n, ptr %i.m, align 8, !dbg !26564
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !26564
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !26564
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !26564
  store ptr %i.p, ptr %i.y, align 8, !dbg !26564
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !26564
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !26564
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !26564
  store ptr %i.o, ptr %i.z, align 8, !dbg !26564
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !26564
  store ptr @_RNvXst_NtCskKLDkoKarTP_4core6resultINtB5_6ResultjNtNtCs3f36owOmepS_6quiche5error5ErrorENtNtB7_3fmt5Debug3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !26564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !26322
  store ptr @67, ptr %i.l, align 8, !dbg !26322
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !26322
  store i64 19, ptr %i.aa, align 8, !dbg !26322
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !26322
  store ptr @67, ptr %i.ab, align 8, !dbg !26322
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !26322
  store i64 19, ptr %i.ac, align 8, !dbg !26322
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !26322
  store ptr @186, ptr %i.ad, align 8, !dbg !26322
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @127, ptr noundef nonnull %i.m, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l), !dbg !26322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !26322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !26322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !26322
  br label %bb.c, !dbg !26322

bb.c:                                             ; preds = %bb.a, %bb.b
    #dbg_value(ptr %i.p, !26299, !DIExpression(), !26302)
    #dbg_value(ptr %i.p, !26252, !DIExpression(DW_OP_deref), !26281)
    #dbg_value(ptr %i.p, !26282, !DIExpression(DW_OP_deref), !26289)
  %i.ae = call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyyEBT_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !26565
  br i1 %i.ae, label %bb.d, label %bb.w, !dbg !26566

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.p, !26304, !DIExpression(), !26307)
    #dbg_value(ptr %i.p, !26252, !DIExpression(DW_OP_deref), !26281)
    #dbg_value(ptr %i.p, !26282, !DIExpression(DW_OP_deref), !26289)
  %i.af = call noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE7get_mutyEBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !26567 ; 10 uses
    #dbg_value(ptr %i.af, !26413, !DIExpression(), !26417)
  %.not = icmp eq ptr %i.af, null, !dbg !26568
  br i1 %.not, label %bb.f, label %bb.e, !dbg !26569, !prof !3051

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.af, !26260, !DIExpression(), !26418)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !26570 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !26571
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !26572, !range !3252, !noundef !1793
  %.not101 = icmp eq i64 %i.ai, -1, !dbg !26572
  br i1 %.not101, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit, label %bb.g, !dbg !26573

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #23, !dbg !26574
  unreachable, !dbg !26574

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 57, !dbg !26572
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !26572, !range !7220, !noundef !1793
  %.not102 = icmp eq i8 %i.ak, 2, !dbg !26572
  br i1 %.not102, label %.thread, label %bb.k, !dbg !26573

bb.h:                                             ; preds = %bb.k
  %.pr.pre = load i64, ptr %i.ag, align 8, !dbg !26575, !alias.scope !26419
  %i.al = icmp eq i64 %.pr.pre, -1, !dbg !26575
    #dbg_value(ptr %i.ag, !3310, !DIExpression(), !26223)
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit, label %.thread, !dbg !26575

.thread:                                          ; preds = %bb.g, %bb.h
    #dbg_value(ptr %i.ag, !3317, !DIExpression(), !26225)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit.i unwind label %bb.i, !dbg !26576

bb.i:                                             ; preds = %.thread
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ag, !3322, !DIExpression(), !26227)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body unwind label %bb.j, !dbg !26577

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26576
  unreachable, !dbg !26576

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %.thread
    #dbg_value(ptr %i.ag, !3322, !DIExpression(), !26229)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.p, !dbg !26578

bb.k:                                             ; preds = %bb.g
    #dbg_value(ptr %i.ag, !26261, !DIExpression(), !26420)
    #dbg_value(ptr %i.ag, !26421, !DIExpression(), !26424)
    #dbg_value(ptr %i.ag, !26425, !DIExpression(), !26428)
    #dbg_value(ptr %i.ag, !26429, !DIExpression(), !26433)
    #dbg_value(ptr %i.ah, !26262, !DIExpression(), !26434)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !26579
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !26579, !nonnull !1793, !noundef !1793
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !26580
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !26580, !noundef !1793
  %i.as = load i64, ptr %i.p, align 8, !dbg !26581, !noundef !1793
    #dbg_value(i64 %i.as, !26282, !DIExpression(), !26289)
    #dbg_value(i64 %i.as, !26252, !DIExpression(), !26281)
  %i.at = call { i64, i64 } @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection27send_response_with_priorityNtB6_6HeaderNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.ah, i1 noundef zeroext false), !dbg !26582 ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0, !dbg !26582 ; 4 uses
  %i.av = extractvalue { i64, i64 } %i.at, 1, !dbg !26582
  %.not103 = icmp eq i64 %i.au, -1, !dbg !26581
  br i1 %.not103, label %bb.h, label %bb.l, !dbg !26583

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp ne i64 %i.au, 34, !dbg !26581
  call void @llvm.assume(i1 %i.aw), !dbg !26581
  %i.ax = icmp eq i64 %i.au, 35, !dbg !26583
  br i1 %i.ax, label %bb.w, label %bb.m, !dbg !26583

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !26584
  store i64 %i.au, ptr %i.k, align 8, !dbg !26584
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26584
  store i64 %i.av, ptr %i.ay, align 8, !dbg !26584
    #dbg_value(i64 1, !26265, !DIExpression(), !26441)
    #dbg_value(ptr poison, !26319, !DIExpression(), !26442)
    #dbg_value(ptr poison, !26319, !DIExpression(), !26445)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !26343, !DIExpression(), !26363)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !26237)
    #dbg_value(i8 0, !6359, !DIExpression(), !26237)
  %i.az = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26585 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 6, !dbg !26586
  call void @llvm.assume(i1 %i.ba), !dbg !26586
    #dbg_value(ptr poison, !26320, !DIExpression(), !26446)
    #dbg_value(i8 poison, !26330, !DIExpression(), !26449)
    #dbg_value(i8 poison, !26337, !DIExpression(), !26454)
    #dbg_value(i8 poison, !26327, !DIExpression(), !26455)
  %.not106 = icmp eq i64 %i.az, 0, !dbg !26587
  br i1 %.not106, label %bb.o, label %bb.n, !dbg !26349

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !26588
    #dbg_value(ptr %1, !26394, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26458)
    #dbg_value(ptr %1, !26398, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26461)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 14680, !dbg !26589
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !26589, !nonnull !1793, !noundef !1793
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 14688, !dbg !26590
  %i.be = load i64, ptr %i.bd, align 16, !dbg !26590, !noundef !1793
  store ptr %i.bc, ptr %i.j, align 8, !dbg !26591
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !26591
  store i64 %i.be, ptr %i.bf, align 8, !dbg !26591
    #dbg_value(ptr %i.j, !26267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26473)
    #dbg_value(ptr %i.k, !26267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !26592
  store ptr %i.j, ptr %i.i, align 8, !dbg !26592
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !26592
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !26592
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !26592
  store ptr %i.k, ptr %i.bg, align 8, !dbg !26592
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !26592
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !26592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !26349
  store ptr @67, ptr %i.h, align 8, !dbg !26349
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !26349
  store i64 19, ptr %i.bh, align 8, !dbg !26349
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !26349
  store ptr @67, ptr %i.bi, align 8, !dbg !26349
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !26349
  store i64 19, ptr %i.bj, align 8, !dbg !26349
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !26349
  store ptr @188, ptr %i.bk, align 8, !dbg !26349
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @115, ptr noundef nonnull %i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h), !dbg !26349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !26349
  br label %bb.o, !dbg !26349

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !26593
  br label %bb.w, !dbg !26594

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !26595

.body:                                            ; preds = %bb.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.p ], [ %i.am, %bb.i ]
  store i64 -1, ptr %i.ag, align 8, !dbg !26595
  resume { ptr, i32 } %eh.lpad-body, !dbg !26596

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.e, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit.i
  store i64 -1, ptr %i.ag, align 8, !dbg !26595
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 57, !dbg !26597
  store i8 2, ptr %i.bm, align 1, !dbg !26597
    #dbg_value(ptr %i.af, !26475, !DIExpression(), !26479)
    #dbg_value(ptr %i.af, !26480, !DIExpression(), !26483)
    #dbg_value(ptr %i.af, !26407, !DIExpression(), !26486)
    #dbg_value(ptr %i.af, !26409, !DIExpression(), !26489)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !26598 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !26598, !noundef !1793 ; 4 uses
    #dbg_value(i64 %i.bo, !26476, !DIExpression(), !26490)
    #dbg_value(i64 %i.bo, !26491, !DIExpression(), !26495)
    #dbg_value(i64 %i.bo, !26496, !DIExpression(), !26501)
    #dbg_value(i64 %i.bo, !26502, !DIExpression(), !26507)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !26599 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !26599, !noundef !1793 ; 4 uses
    #dbg_value(ptr poison, !26492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26495)
    #dbg_value(ptr poison, !26497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26501)
    #dbg_value(ptr poison, !26503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26507)
    #dbg_value(i64 %i.bq, !26492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26495)
    #dbg_value(i64 %i.bq, !26497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26501)
    #dbg_value(i64 %i.bq, !26503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26507)
  %i.br = icmp ugt i64 %i.bo, %i.bq, !dbg !26600
  br i1 %i.br, label %bb.r, label %bb.q, !dbg !26600, !prof !3051

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !26601
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !26601, !nonnull !1793, !noundef !1793
    #dbg_value(ptr %i.bt, !26492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26495)
    #dbg_value(ptr %i.bt, !26497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26501)
    #dbg_value(ptr %i.bt, !26503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26507)
  %i.bu = sub nuw i64 %i.bq, %i.bo, !dbg !26602
    #dbg_value(i64 %i.bu, !26498, !DIExpression(), !26514)
    #dbg_value(i64 %i.bu, !26504, !DIExpression(), !26507)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bo, !dbg !26603
    #dbg_value(ptr %i.bv, !26270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26515)
    #dbg_value(ptr %i.bv, !26285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26289)
    #dbg_value(i64 %i.bu, !26270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26515)
    #dbg_value(i64 %i.bu, !26285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !26604
    #dbg_value(ptr %0, !26283, !DIExpression(), !26289)
  %i.bw = load i64, ptr %i.p, align 8, !dbg !26605, !noundef !1793
    #dbg_value(i64 %i.bw, !26282, !DIExpression(), !26289)
    #dbg_value(i64 %i.bw, !26252, !DIExpression(), !26281)
  call void @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection12do_send_bodyNtNtB8_7buffers17DefaultBufFactoryRShjNCINvB2_9send_bodyB11_E0ECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.bw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bu, i1 noundef zeroext true), !dbg !26606
  %i.bx = load i64, ptr %i.g, align 8, !dbg !26604, !range !7219, !noundef !1793 ; 4 uses
  %.not104 = icmp eq i64 %i.bx, -1, !dbg !26604
  br i1 %.not104, label %bb.s, label %4, !dbg !26607

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bo, i64 noundef %i.bq, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #23, !dbg !26608
  unreachable, !dbg !26608

4:                                                ; preds = %bb.q
  %5 = icmp ne i64 %i.bx, 34, !dbg !26604
  call void @llvm.assume(i1 %5), !dbg !26604
  %6 = icmp eq i64 %i.bx, 23, !dbg !26607
  br i1 %6, label %bb.t, label %bb.u, !dbg !26607

bb.s:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26609
  %i.bz = load i64, ptr %i.by, align 8, !dbg !26609, !noundef !1793
    #dbg_value(i64 %i.bz, !26271, !DIExpression(), !26516)
  br label %bb.t, !dbg !26610

bb.t:                                             ; preds = %4, %bb.s
  %.sroa.010.0 = phi i64 [ %i.bz, %bb.s ], [ 0, %4 ], !dbg !26515
    #dbg_value(i64 %.sroa.010.0, !26271, !DIExpression(), !26516)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !26611
  %i.ca = load i64, ptr %i.bn, align 8, !dbg !26612, !noundef !1793
  %i.cb = add i64 %i.ca, %.sroa.010.0, !dbg !26612 ; 2 uses
  store i64 %i.cb, ptr %i.bn, align 8, !dbg !26612
    #dbg_value(ptr %i.af, !26517, !DIExpression(), !26520)
  %i.cc = load i64, ptr %i.bp, align 8, !dbg !26613, !noundef !1793 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, -1, !dbg !26614
  call void @llvm.assume(i1 %i.cd), !dbg !26615
  %i.ce = icmp eq i64 %i.cb, %i.cc, !dbg !26616
  br i1 %i.ce, label %bb.v, label %bb.w, !dbg !26616

bb.u:                                             ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !26617
  %8 = load i64, ptr %7, align 8, !dbg !26617
  store i64 %i.bx, ptr %i.f, align 8, !dbg !26617
  %9 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !26617
  store i64 %8, ptr %9, align 8, !dbg !26617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !26618
    #dbg_value(ptr %i.p, !26309, !DIExpression(), !26312)
    #dbg_value(ptr %i.p, !26252, !DIExpression(DW_OP_deref), !26281)
    #dbg_value(ptr %i.p, !26282, !DIExpression(DW_OP_deref), !26289)
  call void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeyEBT_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !26619
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e), !dbg !26620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !26620
    #dbg_value(i64 1, !26275, !DIExpression(), !26521)
    #dbg_value(ptr poison, !26319, !DIExpression(), !26522)
    #dbg_value(ptr poison, !26319, !DIExpression(), !26525)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !26343, !DIExpression(), !26378)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !26246)
    #dbg_value(i8 0, !6359, !DIExpression(), !26246)
  %i.cf = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26621 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 6, !dbg !26622
  call void @llvm.assume(i1 %i.cg), !dbg !26622
    #dbg_value(ptr poison, !26320, !DIExpression(), !26526)
    #dbg_value(i8 poison, !26332, !DIExpression(), !26529)
    #dbg_value(i8 poison, !26337, !DIExpression(), !26534)
    #dbg_value(i8 poison, !26327, !DIExpression(), !26535)
  %.not105 = icmp eq i64 %i.cf, 0, !dbg !26623
  br i1 %.not105, label %bb.y, label %bb.x, !dbg !26364

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26624
    #dbg_value(ptr %i.p, !26309, !DIExpression(), !26314)
    #dbg_value(ptr %i.p, !26252, !DIExpression(DW_OP_deref), !26281)
    #dbg_value(ptr %i.p, !26282, !DIExpression(DW_OP_deref), !26289)
  call void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeyEBT_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !26625
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a), !dbg !26626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26626
  br label %bb.w, !dbg !26627

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.y, %bb.c, %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !26628
  ret void, !dbg !26629

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26630
    #dbg_value(ptr %1, !26394, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26538)
    #dbg_value(ptr %1, !26398, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26541)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 14680, !dbg !26631
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !26631, !nonnull !1793, !noundef !1793
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14688, !dbg !26632
  %i.ck = load i64, ptr %i.cj, align 16, !dbg !26632, !noundef !1793
  store ptr %i.ci, ptr %i.d, align 8, !dbg !26633
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !26633
  store i64 %i.ck, ptr %i.cl, align 8, !dbg !26633
    #dbg_value(ptr %i.d, !26277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26553)
    #dbg_value(ptr %i.f, !26277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26634
  store ptr %i.d, ptr %i.c, align 8, !dbg !26634
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !26634
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !26634
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !26634
  store ptr %i.f, ptr %i.cm, align 8, !dbg !26634
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !26634
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.437.0..sroa_idx, align 8, !dbg !26634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26364
  store ptr @67, ptr %i.b, align 8, !dbg !26364
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26364
  store i64 19, ptr %i.cn, align 8, !dbg !26364
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !26364
  store ptr @67, ptr %i.co, align 8, !dbg !26364
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !26364
  store i64 19, ptr %i.cp, align 8, !dbg !26364
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !26364
  store ptr @189, ptr %i.cq, align 8, !dbg !26364
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @115, ptr noundef nonnull %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b), !dbg !26364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !26364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26364
  br label %bb.y, !dbg !26364

bb.y:                                             ; preds = %bb.u, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !26635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !26611
  br label %bb.w, !dbg !26636
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn16handle_responses(ptr noalias nofree noundef align 8 dereferenceable(712) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26688 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !27133, !DIExpression(), !27140)
    #dbg_value(ptr poison, !27153, !DIExpression(), !27156)
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !27157, !DIExpression(), !26707)
    #dbg_value(ptr poison, !27167, !DIExpression(), !26708)
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 10 uses
  %i.am = alloca [16 x i8], align 8               ; 9 uses
  %i.an = alloca [8 x i8], align 8                ; 6 uses
  %i.ao = alloca [40 x i8], align 8               ; 9 uses
    #dbg_value(ptr poison, !27173, !DIExpression(), !26718)
    #dbg_value(ptr poison, !27182, !DIExpression(), !26719)
  %i.ap = alloca [40 x i8], align 8               ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !27040, !DIExpression(), !27188)
    #dbg_value(ptr %1, !27041, !DIExpression(), !27188)
    #dbg_value(ptr %1, !27189, !DIExpression(), !27198)
    #dbg_value(ptr %1, !27199, !DIExpression(), !27202)
    #dbg_value(ptr %1, !27199, !DIExpression(), !27204)
    #dbg_value(ptr %2, !27042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27188)
    #dbg_value(ptr %2, !27195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27198)
    #dbg_value(ptr %2, !27205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27209)
    #dbg_value(ptr %2, !27210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27214)
    #dbg_value(ptr %2, !27215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27220)
    #dbg_value(ptr %2, !27221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27227)
    #dbg_value(ptr %2, !27205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27229)
    #dbg_value(ptr %2, !27210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27232)
    #dbg_value(ptr %2, !27215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27235)
    #dbg_value(ptr %2, !27221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27238)
    #dbg_value(ptr %2, !27205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27240)
    #dbg_value(ptr %2, !27210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27243)
    #dbg_value(ptr %2, !27215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27246)
    #dbg_value(ptr %2, !27221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27249)
    #dbg_value(ptr %2, !27250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27253)
    #dbg_value(ptr %2, !27254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27258)
    #dbg_value(ptr %2, !27215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27261)
    #dbg_value(ptr %2, !27221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27264)
    #dbg_value(i64 %3, !27042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27188)
    #dbg_value(i64 %3, !27195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27198)
    #dbg_value(i64 %3, !27205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27209)
    #dbg_value(i64 %3, !27210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27214)
    #dbg_value(i64 %3, !27215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27220)
    #dbg_value(i64 %3, !27221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27227)
    #dbg_value(i64 %3, !27205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27229)
    #dbg_value(i64 %3, !27210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27232)
    #dbg_value(i64 %3, !27215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27235)
    #dbg_value(i64 %3, !27221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27238)
    #dbg_value(i64 %3, !27205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27240)
    #dbg_value(i64 %3, !27210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27243)
    #dbg_value(i64 %3, !27215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27246)
    #dbg_value(i64 %3, !27221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27249)
    #dbg_value(i64 %3, !27250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27253)
    #dbg_value(i64 %3, !27254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27258)
    #dbg_value(i64 %3, !27215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27261)
    #dbg_value(i64 %3, !27221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27264)
    #dbg_value(ptr %4, !27043, !DIExpression(), !27188)
    #dbg_declare(ptr %i.as, !27045, !DIExpression(), !27265)
    #dbg_declare(ptr %i.al, !27206, !DIExpression(), !27266)
    #dbg_declare(ptr %i.al, !27211, !DIExpression(), !27267)
    #dbg_declare(ptr %i.al, !27216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27268)
    #dbg_declare(ptr %i.al, !27206, !DIExpression(), !27269)
    #dbg_declare(ptr %i.al, !27211, !DIExpression(), !27270)
    #dbg_declare(ptr %i.al, !27216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27271)
    #dbg_declare(ptr %i.ab, !27078, !DIExpression(), !27272)
    #dbg_declare(ptr %i.w, !27091, !DIExpression(), !27273)
    #dbg_declare(ptr %i.m, !27110, !DIExpression(), !27274)
    #dbg_declare(ptr %i.i, !27255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27275)
    #dbg_declare(ptr %i.i, !27216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27276)
    #dbg_declare(ptr %i.h, !27118, !DIExpression(), !27277)
    #dbg_declare(ptr %i.f, !27151, !DIExpression(), !27283)
    #dbg_value(ptr poison, !27284, !DIExpression(), !27289)
    #dbg_value(i8 -1, !27290, !DIExpression(), !27313)
    #dbg_value(i8 -1, !27314, !DIExpression(), !27319)
    #dbg_value(ptr poison, !27284, !DIExpression(), !27321)
    #dbg_value(i8 -1, !27290, !DIExpression(), !27324)
    #dbg_value(i8 -1, !27314, !DIExpression(), !27329)
    #dbg_value(ptr poison, !27284, !DIExpression(), !27331)
    #dbg_value(i8 -1, !27290, !DIExpression(), !27334)
    #dbg_value(i8 -1, !27314, !DIExpression(), !27339)
end_hunk_3
