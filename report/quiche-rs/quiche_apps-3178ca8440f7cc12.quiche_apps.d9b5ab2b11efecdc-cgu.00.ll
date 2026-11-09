Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.00?download=true
inline.NumInlined: 406
inline.NumDeleted: 140
begin_hunk_0_@_RNvXs1K_NtCsexYYUdYSQU6_5alloc6stringlNtB6_12SpecToString14spec_to_string:bb.a
    #dbg_value(i64 %i.i, !3028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(i64 %i.k, !3028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20281)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !dbg !20459
  unreachable, !dbg !20459

.noexc38:                                         ; preds = %bb.a
    #dbg_value(i64 11, !3014, !DIExpression(), !20283)
    #dbg_value(i64 11, !3040, !DIExpression(), !20285)
    #dbg_declare(ptr poison, !3025, !DIExpression(), !20286)
    #dbg_value(i64 1, !3026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20283)
    #dbg_value(i64 1, !3047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20285)
    #dbg_value(i64 1, !3026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20283)
    #dbg_value(i64 1, !3047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20285)
    #dbg_value(i64 0, !3046, !DIExpression(), !20285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20460
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !20460
  %i.l = load i64, ptr %i.a, align 8, !dbg !20460, !range !3049, !noundef !1793
  %i.m = trunc nuw i64 %i.l to i1, !dbg !20461
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20462
  %i.o = load i64, ptr %i.n, align 8, !dbg !20462, !range !3050, !noundef !1793 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20462 ; 2 uses
  br i1 %i.m, label %.noexc39, label %bb.d, !dbg !20461, !prof !3051

.noexc39:                                         ; preds = %.noexc38
  %i.q = load i64, ptr %i.p, align 8, !dbg !20463
    #dbg_value(i64 %i.o, !3028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20287)
    #dbg_value(i64 %i.q, !3028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20287)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #18, !dbg !20464
  unreachable, !dbg !20464

bb.b:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.j, align 8, !dbg !20465, !nonnull !1793, !noundef !1793
    #dbg_value(i64 %i.i, !3027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20288)
    #dbg_value(ptr %i.r, !3027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20288)
    #dbg_value(ptr poison, !3045, !DIExpression(), !20289)
  %i.s = icmp ugt i64 %i.i, 9, !dbg !20466
    #dbg_value(i1 true, !3054, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20291)
  tail call void @llvm.assume(i1 %i.s), !dbg !20467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20468
  store i64 %i.i, ptr %i.c, align 8, !dbg !20469
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20469
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !20469
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !20469
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !20469
    #dbg_value(ptr %i.c, !20391, !DIExpression(), !20395)
    #dbg_value(i32 %.0.val, !20397, !DIExpression(), !20403)
    #dbg_value(i32 %.0.val, !20404, !DIExpression(), !20409)
    #dbg_value(i32 %.0.val, !20410, !DIExpression(), !20413)
  br label %bb.c, !dbg !20470

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0 = phi i32 [ %i.x, %bb.e ], [ %.0.val, %bb.b ], !dbg !20409
  %i.t = invoke { ptr, i64 } @_RNvMsa_NtNtNtCskKLDkoKarTP_4core3fmt3num3impm4__fmt(i32 noundef %.sroa.012.0, ptr noalias nofree noundef nonnull %i.d, i64 noundef 10)
          to label %bb.f unwind label %bb.j, !dbg !20471 ; 2 uses

bb.d:                                             ; preds = %.noexc38
  %i.u = load ptr, ptr %i.p, align 8, !dbg !20472, !nonnull !1793, !noundef !1793
    #dbg_value(i64 %i.o, !3027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20296)
    #dbg_value(ptr %i.u, !3027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20296)
    #dbg_value(ptr poison, !3045, !DIExpression(), !20297)
  %i.v = icmp ugt i64 %i.o, 10, !dbg !20473
    #dbg_value(i1 true, !3054, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20299)
  tail call void @llvm.assume(i1 %i.v), !dbg !20474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20475
  store i64 %i.o, ptr %i.c, align 8, !dbg !20476
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20476 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !20476
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !20476 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !20476
    #dbg_value(ptr %i.c, !7147, !DIExpression(), !20301)
    #dbg_value(ptr %i.c, !7155, !DIExpression(), !20303)
    #dbg_value(i32 45, !7151, !DIExpression(), !20301)
    #dbg_value(i64 0, !7152, !DIExpression(), !20304)
    #dbg_value(i64 1, !7153, !DIExpression(), !20305)
    #dbg_value(i64 1, !7159, !DIExpression(), !20303)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.j, !dbg !20477

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.c, !7161, !DIExpression(), !20307)
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !20478, !alias.scope !20414, !nonnull !1793, !noundef !1793
    #dbg_value(i32 45, !6616, !DIExpression(), !20314)
    #dbg_value(ptr %i.w, !6619, !DIExpression(), !20314)
    #dbg_value(i64 1, !6620, !DIExpression(), !20315)
  store i8 45, ptr %i.w, align 1, !dbg !20479
    #dbg_value(ptr %i.c, !7163, !DIExpression(), !20317)
    #dbg_value(i64 1, !7164, !DIExpression(), !20318)
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !20480, !alias.scope !20414
    #dbg_value(ptr %i.c, !20391, !DIExpression(), !20395)
    #dbg_value(i32 %.0.val, !20397, !DIExpression(), !20403)
    #dbg_value(i32 %.0.val, !20404, !DIExpression(), !20409)
    #dbg_value(i32 %.0.val, !20410, !DIExpression(), !20413)
  %i.x = sub i32 0, %.0.val, !dbg !20481
  br label %bb.c, !dbg !20470

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0, !dbg !20482 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1, !dbg !20482 ; 4 uses
    #dbg_value(ptr %i.y, !20392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20418)
    #dbg_value(i64 %i.z, !20392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20418)
    #dbg_value(ptr %i.c, !20419, !DIExpression(), !20423)
    #dbg_value(ptr %i.c, !20424, !DIExpression(), !20429)
    #dbg_value(ptr %i.y, !20420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20423)
    #dbg_value(ptr %i.y, !20430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20433)
    #dbg_value(ptr %i.y, !20434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20440)
    #dbg_value(i64 %i.z, !20420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20423)
    #dbg_value(i64 %i.z, !20430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20433)
    #dbg_value(i64 %i.z, !20434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20440)
    #dbg_value(i64 %i.z, !20435, !DIExpression(), !20441)
    #dbg_value(ptr %i.y, !20436, !DIExpression(), !20442)
    #dbg_value(ptr %i.y, !20443, !DIExpression(), !20449)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ], !dbg !20483
    #dbg_value(ptr %i.y, !20425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(!DIArgList(ptr %i.y, i64 %i.z), !20425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(ptr %i.y, !20426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20450)
    #dbg_value(i64 %i.z, !20426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20450)
    #dbg_value(ptr %i.c, !3199, !DIExpression(), !20330)
    #dbg_value(ptr %i.c, !3205, !DIExpression(), !20332)
    #dbg_value(ptr %i.c, !3211, !DIExpression(), !20334)
    #dbg_value(ptr %i.c, !3217, !DIExpression(), !20336)
    #dbg_value(ptr %i.y, !3203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20330)
    #dbg_value(ptr %i.y, !3207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20332)
    #dbg_value(i64 %i.z, !3203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20330)
    #dbg_value(i64 %i.z, !3207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20332)
    #dbg_value(i64 %i.z, !3208, !DIExpression(), !20337)
    #dbg_value(i64 %i.z, !3223, !DIExpression(), !20339)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc42 unwind label %bb.j, !dbg !20484

.noexc42:                                         ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !20485 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !20485, !alias.scope !20451, !noundef !1793 ; 3 uses
    #dbg_value(i64 %i.ab, !3209, !DIExpression(), !20342)
    #dbg_value(i64 %i.ab, !3229, !DIExpression(), !20344)
  %i.ac = icmp sgt i64 %i.ab, -1, !dbg !20486
  call void @llvm.assume(i1 %i.ac), !dbg !20487
  %.not.i = icmp eq i64 %i.z, 0, !dbg !20488
  br i1 %.not.i, label %bb.h, label %bb.g, !dbg !20488

bb.g:                                             ; preds = %.noexc42
    #dbg_value(ptr %i.y, !3226, !DIExpression(), !20339)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20489
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !20489, !alias.scope !20451, !nonnull !1793, !noundef !1793
    #dbg_value(ptr %i.ae, !3232, !DIExpression(), !20344)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab, !dbg !20490
    #dbg_value(ptr %i.af, !3227, !DIExpression(), !20339)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !dbg !20491
  %.pre.i = load i64, ptr %i.aa, align 8, !dbg !20492, !alias.scope !20451
  br label %bb.h, !dbg !20493

bb.h:                                             ; preds = %bb.g, %.noexc42
  %i.ag = phi i64 [ %.pre.i, %bb.g ], [ %i.ab, %.noexc42 ], !dbg !20492
  %i.ah = add i64 %i.ag, %i.z, !dbg !20492
  store i64 %i.ah, ptr %i.aa, align 8, !dbg !20492, !alias.scope !20451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !20494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20496
  ret void, !dbg !20497

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm.split-lp, !dbg !20498

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %bb.i unwind label %bb.k, !dbg !20495

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !20498
  unreachable, !dbg !20498
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1m_NtCsexYYUdYSQU6_5alloc6stringNtB6_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !20499 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !20504, !DIExpression(), !20507)
    #dbg_value(ptr %1, !20505, !DIExpression(), !20507)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20508
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !20508
  store ptr %i.b, ptr %i.a, align 8, !dbg !20508
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @148, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @149), !dbg !20509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20510
  ret i1 %i.c, !dbg !20511
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn13send_requests(ptr noalias nofree noundef align 8 dereferenceable(712) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20554 {
.peel.begin:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !20731, !DIExpression(), !20738)
    #dbg_value(ptr poison, !20741, !DIExpression(), !20744)
    #dbg_value(ptr poison, !20739, !DIExpression(), !20745)
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 7 uses
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
    #dbg_value(ptr poison, !20746, !DIExpression(), !20566)
    #dbg_value(ptr poison, !20763, !DIExpression(), !20769)
    #dbg_value(ptr poison, !20759, !DIExpression(), !20770)
    #dbg_value(ptr %0, !20650, !DIExpression(), !20771)
    #dbg_value(ptr %1, !20651, !DIExpression(), !20771)
    #dbg_value(ptr %1, !20772, !DIExpression(), !20779)
    #dbg_value(ptr %2, !20652, !DIExpression(), !20771)
    #dbg_declare(ptr %i.n, !20662, !DIExpression(), !20780)
    #dbg_declare(ptr %i.h, !20677, !DIExpression(), !20781)
    #dbg_declare(ptr %i.f, !20682, !DIExpression(), !20782)
    #dbg_declare(ptr %i.c, !20693, !DIExpression(), !20783)
    #dbg_value(i64 1, !20784, !DIExpression(), !20788)
    #dbg_value(ptr poison, !20789, !DIExpression(), !20794)
    #dbg_value(i8 -1, !20795, !DIExpression(), !20812)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20813)
    #dbg_value(i8 -1, !20814, !DIExpression(), !20819)
    #dbg_value(ptr poison, !20789, !DIExpression(), !20821)
    #dbg_value(i8 -1, !20795, !DIExpression(), !20824)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20825)
    #dbg_value(i8 -1, !20814, !DIExpression(), !20830)
    #dbg_value(ptr poison, !20789, !DIExpression(), !20832)
    #dbg_value(i8 -1, !20795, !DIExpression(), !20835)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20836)
    #dbg_value(i8 -1, !20814, !DIExpression(), !20841)
    #dbg_value(ptr poison, !20789, !DIExpression(), !20843)
    #dbg_value(i8 -1, !20795, !DIExpression(), !20846)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20847)
    #dbg_value(i8 -1, !20814, !DIExpression(), !20852)
    #dbg_value(i8 0, !20853, !DIExpression(), !20859)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20864)
    #dbg_value(i8 0, !20853, !DIExpression(), !20869)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20874)
    #dbg_value(i8 0, !20853, !DIExpression(), !20879)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20884)
    #dbg_value(i8 0, !20853, !DIExpression(), !20889)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20894)
    #dbg_value(i64 0, !20895, !DIExpression(), !20903)
    #dbg_value(i8 1, !20776, !DIExpression(), !20779)
    #dbg_value(ptr poison, !20789, !DIExpression(), !20905)
    #dbg_value(i8 -1, !20795, !DIExpression(), !20908)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20909)
    #dbg_value(i8 -1, !20814, !DIExpression(), !20914)
    #dbg_value(i8 0, !20853, !DIExpression(), !20919)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20924)
    #dbg_value(ptr poison, !20789, !DIExpression(), !20926)
    #dbg_value(i8 -1, !20795, !DIExpression(), !20929)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20930)
    #dbg_value(i8 -1, !20814, !DIExpression(), !20935)
    #dbg_value(i8 0, !20853, !DIExpression(), !20940)
    #dbg_declare(ptr poison, !20796, !DIExpression(), !20945)
    #dbg_value(i64 0, !20653, !DIExpression(), !20946)
    #dbg_value(ptr %0, !20947, !DIExpression(DW_OP_plus_uconst, 520, DW_OP_stack_value), !20950)
    #dbg_value(ptr %0, !20951, !DIExpression(DW_OP_plus_uconst, 520, DW_OP_stack_value), !20954)
    #dbg_value(ptr %0, !20955, !DIExpression(DW_OP_plus_uconst, 520, DW_OP_stack_value), !20958)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !21199
  %i.s = load ptr, ptr %i.r, align 8, !dbg !21199, !nonnull !1793, !noundef !1793 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536, !dbg !21200
  %i.u = load i64, ptr %i.t, align 8, !dbg !21200, !noundef !1793 ; 3 uses
    #dbg_value(i64 %i.u, !20962, !DIExpression(), !20969)
    #dbg_value(i64 %i.u, !20972, !DIExpression(), !20976)
    #dbg_value(ptr %i.s, !20970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20977)
    #dbg_value(ptr %i.s, !20963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20978)
    #dbg_value(i64 %i.u, !20970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20977)
    #dbg_value(i64 %i.u, !20963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20978)
    #dbg_value(ptr %i.s, !20964, !DIExpression(), !20979)
    #dbg_value(ptr %i.s, !20973, !DIExpression(), !20976)
  %.idx = mul nuw nsw i64 %i.u, 232, !dbg !21201
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx, !dbg !21201 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 680, !dbg !21202 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !21202, !noundef !1793 ; 3 uses
    #dbg_value(ptr %i.s, !20654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20980)
    #dbg_value(ptr %i.v, !20654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20980)
    #dbg_value(i64 %i.x, !20654, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20980)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
    #dbg_value(ptr %i.s, !20654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20980)
    #dbg_value(i64 %i.x, !20654, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20980)
    #dbg_value(ptr undef, !20759, !DIExpression(), !20770)
  %.not.peel = icmp eq i64 %i.x, 0, !dbg !21203
    #dbg_value(i1 %.not.peel, !20981, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20984)
  br i1 %.not.peel, label %bb.b, label %bb.a, !dbg !21204, !prof !5730

bb.a:                                             ; preds = %.peel.begin
    #dbg_value(i64 0, !20654, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20980)
    #dbg_value(ptr undef, !20746, !DIExpression(), !20566)
    #dbg_value(i64 %i.x, !20749, !DIExpression(), !20566)
  %.not.i.not.peel = icmp ult i64 %i.x, %i.u, !dbg !21205
  %i.af = getelementptr inbounds nuw [232 x i8], ptr %i.s, i64 %i.x, !dbg !21205
    #dbg_value(ptr poison, !20654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20980)
  br i1 %.not.i.not.peel, label %bb.c, label %.loopexit173, !dbg !21206

bb.b:                                             ; preds = %.peel.begin
    #dbg_value(ptr undef, !20763, !DIExpression(), !20769)
    #dbg_value(ptr %i.s, !20764, !DIExpression(), !20985)
    #dbg_value(ptr %i.s, !20785, !DIExpression(), !20788)
    #dbg_value(ptr %i.v, !20765, !DIExpression(), !20986)
    #dbg_value(ptr poison, !20987, !DIExpression(), !20991)
    #dbg_value(ptr poison, !20988, !DIExpression(), !20992)
  %i.ag = icmp eq i64 %i.u, 0, !dbg !21207
  br i1 %i.ag, label %.loopexit173, label %bb.c, !dbg !20990

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.03.0.peel = phi ptr [ %i.af, %bb.a ], [ %i.s, %bb.b ], !dbg !21208 ; 12 uses
    #dbg_value(ptr %.sroa.03.0.peel, !20654, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20980)
    #dbg_value(i64 0, !20654, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20980)
    #dbg_value(ptr %.sroa.03.0.peel, !20655, !DIExpression(), !20994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !21209
    #dbg_value(ptr %.sroa.03.0.peel, !20995, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !20998)
    #dbg_value(ptr %.sroa.03.0.peel, !20999, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !21002)
    #dbg_value(ptr %.sroa.03.0.peel, !21003, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !21006)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 104, !dbg !21210
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 112, !dbg !21210
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !21210, !nonnull !1793, !noundef !1793
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 120, !dbg !21211
  %i.al = load i64, ptr %i.ak, align 8, !dbg !21211, !noundef !1793
    #dbg_value(ptr %0, !21013, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !21019)
    #dbg_value(ptr %0, !21020, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !21024)
  %i.am = load i64, ptr %i.y, align 8, !dbg !21212, !range !3252, !noundef !1793
  %.not158.peel = icmp eq i64 %i.am, -1, !dbg !21212
  call void @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection12send_requestNtB6_6HeaderNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aj, i64 noundef %i.al, i1 noundef zeroext %.not158.peel), !dbg !21213
  %i.an = load i64, ptr %i.q, align 8, !dbg !21209, !range !7219, !noundef !1793 ; 2 uses
  %.not159.peel = icmp eq i64 %i.an, -1, !dbg !21209
  br i1 %.not159.peel, label %bb.d, label %.loopexit206, !dbg !21214

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.z, align 8, !dbg !21215, !noundef !1793 ; 3 uses
    #dbg_value(i64 %i.ao, !20656, !DIExpression(), !21025)
    #dbg_value(i64 %i.ao, !20900, !DIExpression(), !20903)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !21216
    #dbg_value(i64 4, !20670, !DIExpression(), !21026)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21027)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21028)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20854, !DIExpression(), !20889)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20615)
    #dbg_value(i8 0, !6359, !DIExpression(), !20615)
  %i.ap = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21217 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 6, !dbg !21218
  tail call void @llvm.assume(i1 %i.aq), !dbg !21218
    #dbg_value(ptr poison, !20791, !DIExpression(), !21029)
    #dbg_value(i8 poison, !20805, !DIExpression(), !21030)
    #dbg_value(i8 poison, !20815, !DIExpression(), !21035)
    #dbg_value(i8 poison, !20801, !DIExpression(), !21036)
  %i.ar = icmp samesign ugt i64 %i.ap, 3, !dbg !21219
  br i1 %i.ar, label %bb.e, label %bb.f, !dbg !20842

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.ah, !20672, !DIExpression(), !21037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !21220
  store ptr %i.ah, ptr %i.k, align 8, !dbg !21220
  store ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.424.0..sroa_idx, align 8, !dbg !21220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !20842
  store ptr @67, ptr %i.j, align 8, !dbg !20842
  store i64 19, ptr %i.aa, align 8, !dbg !20842
  store ptr @67, ptr %i.ab, align 8, !dbg !20842
  store i64 19, ptr %i.ac, align 8, !dbg !20842
  store ptr @156, ptr %i.ad, align 8, !dbg !20842
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @153, ptr noundef nonnull %i.k, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j), !dbg !20842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !20842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !20842
  br label %bb.f, !dbg !20842

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 225, !dbg !21221
  %i.at = load i8, ptr %i.as, align 1, !dbg !21221, !range !7220, !noundef !1793
  %.not160.peel = icmp eq i8 %i.at, 2, !dbg !21221
  br i1 %.not160.peel, label %bb.h, label %bb.g, !dbg !21222

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 224, !dbg !21221
    #dbg_value(ptr %i.au, !20675, !DIExpression(), !21038)
  %i.av = call { i64, i64 } @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection32send_priority_update_for_requestNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.au), !dbg !21223 ; 0 uses
  br label %bb.h, !dbg !21224

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 1, ptr %.sroa.03.0.peel, align 8, !dbg !21225
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 8, !dbg !21225
  store i64 %i.ao, ptr %i.aw, align 8, !dbg !21225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21226
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 16, !dbg !21227
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 208, !dbg !21228
  %i.az = load i64, ptr %i.ay, align 8, !dbg !21228, !noundef !1793
  call fastcc void @_RNvNtCsiGRwBGCeC5s_11quiche_apps6common20make_resource_writer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i64 noundef %i.az), !dbg !21226
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel, i64 176, !dbg !21229 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba)
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn13send_requests:.peel.begin
bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 457, !dbg !21221
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !21221, !range !7220, !noundef !1793
  %.not160 = icmp eq i8 %i.bw, 2, !dbg !21221
  br i1 %.not160, label %bb.m, label %bb.l, !dbg !21222

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 456, !dbg !21221
    #dbg_value(ptr %i.bx, !20675, !DIExpression(), !21038)
  %i.by = call { i64, i64 } @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection32send_priority_update_for_requestNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.bx), !dbg !21223 ; 0 uses
  br label %bb.m, !dbg !21224

bb.m:                                             ; preds = %bb.l, %bb.k
  store i64 1, ptr %.sroa.0.0171252, align 8, !dbg !21225
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 240, !dbg !21225
  store i64 %i.br, ptr %i.bz, align 8, !dbg !21225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21226
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 248, !dbg !21227
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 440, !dbg !21228
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !21228, !noundef !1793
  call fastcc void @_RNvNtCsiGRwBGCeC5s_11quiche_apps6common20make_resource_writer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i64 noundef %i.cc), !dbg !21226
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.peel.pn250, i64 408, !dbg !21229 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cd)
          to label %bb.o unwind label %.loopexit207, !dbg !21229

.loopexit207:                                     ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit207
  %.lcssa204 = phi ptr [ %i.cd, %.loopexit207 ], [ %i.ba, %.loopexit.split-lp ], !dbg !21229
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit207 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.lcssa204, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !21229
  resume { ptr, i32 } %lpad.phi, !dbg !21235

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !21229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21230
    #dbg_value(ptr %0, !20899, !DIExpression(DW_OP_plus_uconst, 616, DW_OP_stack_value), !21040)
  %i.ce = call { i64, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %i.br, i64 noundef 0), !dbg !21231 ; 0 uses
  %i.cf = add i64 %.sroa.0.0251, 1, !dbg !21236   ; 2 uses
    #dbg_value(i64 %i.cf, !20653, !DIExpression(), !20946)
  %.sroa.0.0171 = getelementptr inbounds nuw i8, ptr %.sroa.0.0171252, i64 232, !dbg !21208 ; 2 uses
    #dbg_value(ptr %.sroa.0.0171, !20654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20980)
    #dbg_value(i64 0, !20654, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20980)
    #dbg_value(ptr undef, !20759, !DIExpression(), !20770)
    #dbg_value(i1 true, !20981, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20984)
    #dbg_value(ptr undef, !20763, !DIExpression(), !20769)
    #dbg_value(ptr %.sroa.0.0171, !20764, !DIExpression(), !20985)
    #dbg_value(ptr %.sroa.0.0171, !20785, !DIExpression(), !20788)
    #dbg_value(ptr %i.v, !20765, !DIExpression(), !20986)
    #dbg_value(ptr poison, !20987, !DIExpression(), !20991)
    #dbg_value(ptr poison, !20988, !DIExpression(), !20992)
  %i.cg = icmp eq ptr %.sroa.0.0171, %i.v, !dbg !21207
  br i1 %i.cg, label %.loopexit173, label %.lr.ph253, !dbg !20990, !llvm.loop !20616

bb.p:                                             ; preds = %bb.q, %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !21237
  %i.ch = load i64, ptr %i.z, align 8, !dbg !21237
  store i64 %.lcssa202, ptr %i.n, align 8, !dbg !21237
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !21237
  store i64 %i.ch, ptr %i.ci, align 8, !dbg !21237
    #dbg_value(i64 1, !20664, !DIExpression(), !21041)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21042)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21043)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20854, !DIExpression(), !20879)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20618)
    #dbg_value(i8 0, !6359, !DIExpression(), !20618)
  %i.cj = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21238 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 6, !dbg !21239
  call void @llvm.assume(i1 %i.ck), !dbg !21239
    #dbg_value(ptr poison, !20791, !DIExpression(), !21044)
    #dbg_value(i8 poison, !20804, !DIExpression(), !21045)
    #dbg_value(i8 poison, !20815, !DIExpression(), !21050)
    #dbg_value(i8 poison, !20801, !DIExpression(), !21051)
  %.not161 = icmp eq i64 %i.cj, 0, !dbg !21240
  br i1 %.not161, label %bb.x, label %bb.w, !dbg !20793

bb.q:                                             ; preds = %.loopexit206
  %i.cl = icmp eq i64 %.lcssa202, 11, !dbg !21214
  br i1 %i.cl, label %bb.s, label %bb.p, !dbg !21214

bb.r:                                             ; preds = %.loopexit206
    #dbg_value(i64 4, !20661, !DIExpression(), !21052)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21053)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21054)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20854, !DIExpression(), !20869)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20620)
    #dbg_value(i8 0, !6359, !DIExpression(), !20620)
  %i.cm = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21241 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 6, !dbg !21242
  call void @llvm.assume(i1 %i.cn), !dbg !21242
    #dbg_value(ptr poison, !20791, !DIExpression(), !21055)
    #dbg_value(i8 poison, !20803, !DIExpression(), !21056)
    #dbg_value(i8 poison, !20815, !DIExpression(), !21061)
    #dbg_value(i8 poison, !20801, !DIExpression(), !21062)
  %i.co = icmp samesign ugt i64 %i.cm, 3, !dbg !21243
  br i1 %i.co, label %bb.v, label %bb.u, !dbg !20820

bb.s:                                             ; preds = %bb.q
    #dbg_value(i64 4, !20659, !DIExpression(), !21063)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21064)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21065)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20854, !DIExpression(), !20859)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20622)
    #dbg_value(i8 0, !6359, !DIExpression(), !20622)
  %i.cp = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21244 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 6, !dbg !21245
  call void @llvm.assume(i1 %i.cq), !dbg !21245
    #dbg_value(ptr poison, !20791, !DIExpression(), !21066)
    #dbg_value(i8 poison, !20802, !DIExpression(), !21067)
    #dbg_value(i8 poison, !20815, !DIExpression(), !21072)
    #dbg_value(i8 poison, !20801, !DIExpression(), !21073)
  %i.cr = icmp samesign ugt i64 %i.cp, 3, !dbg !21246
  br i1 %i.cr, label %bb.t, label %bb.u, !dbg !20831

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !20831
  store ptr @67, ptr %i.p, align 8, !dbg !20831
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !20831
  store i64 19, ptr %i.cs, align 8, !dbg !20831
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !20831
  store ptr @67, ptr %i.ct, align 8, !dbg !20831
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !20831
  store i64 19, ptr %i.cu, align 8, !dbg !20831
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !20831
  store ptr @157, ptr %i.cv, align 8, !dbg !20831
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @108, ptr noundef nonnull inttoptr (i64 83 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p), !dbg !20831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !20831
  br label %bb.u, !dbg !20831

bb.u:                                             ; preds = %bb.v, %bb.r, %bb.t, %bb.s, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !21216
  br label %.loopexit173, !dbg !21247

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !20820
  store ptr @67, ptr %i.o, align 8, !dbg !20820
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !20820
  store i64 19, ptr %i.cw, align 8, !dbg !20820
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !20820
  store ptr @67, ptr %i.cx, align 8, !dbg !20820
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !20820
  store i64 19, ptr %i.cy, align 8, !dbg !20820
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !20820
  store ptr @159, ptr %i.cz, align 8, !dbg !20820
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @158, ptr noundef nonnull inttoptr (i64 67 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o), !dbg !20820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !20820
  br label %bb.u, !dbg !20820

bb.w:                                             ; preds = %bb.p
    #dbg_value(ptr %i.n, !20666, !DIExpression(), !21075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !21248
  store ptr %i.n, ptr %i.m, align 8, !dbg !21248
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !21248
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx, align 8, !dbg !21248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !20793
  store ptr @67, ptr %i.l, align 8, !dbg !20793
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !20793
  store i64 19, ptr %i.da, align 8, !dbg !20793
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !20793
  store ptr @67, ptr %i.db, align 8, !dbg !20793
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !20793
  store i64 19, ptr %i.dc, align 8, !dbg !20793
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !20793
  store ptr @160, ptr %i.dd, align 8, !dbg !20793
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @105, ptr noundef nonnull %i.m, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l), !dbg !20793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !20793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !20793
  br label %bb.x, !dbg !20793

bb.x:                                             ; preds = %bb.p, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !21249
  br label %bb.u, !dbg !21250

bb.y:                                             ; preds = %.loopexit173
    #dbg_value(ptr %0, !20676, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !21077)
    #dbg_value(ptr %0, !21078, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !21081)
    #dbg_value(ptr %0, !21082, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !21086)
    #dbg_value(ptr %0, !21087, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !21090)
    #dbg_value(ptr %0, !21091, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !21095)
    #dbg_value(ptr %0, !21096, !DIExpression(DW_OP_plus_uconst, 544, DW_OP_stack_value), !21100)
    #dbg_value(ptr %0, !21101, !DIExpression(DW_OP_plus_uconst, 616, DW_OP_stack_value), !21107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !21251
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE8iter_mutCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae), !dbg !21252
    #dbg_value(ptr %i.h, !21109, !DIExpression(), !21123)
  %i.de = call { ptr, ptr } @_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7IterMutyjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h), !dbg !21253 ; 2 uses
  %i.df = extractvalue { ptr, ptr } %i.de, 0, !dbg !21253 ; 2 uses
  %.not163185 = icmp eq ptr %i.df, null, !dbg !20781
  br i1 %.not163185, label %._crit_edge, label %.lr.ph, !dbg !20781

.lr.ph:                                           ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.aa, !dbg !20781

bb.z:                                             ; preds = %._crit_edge, %.loopexit173
    #dbg_value(ptr %0, !21124, !DIExpression(DW_OP_plus_uconst, 568, DW_OP_stack_value), !21128)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 568, !dbg !21254
  %i.do = load i64, ptr %i.dn, align 8, !dbg !21254, !range !3252, !noundef !1793
  %.not164 = icmp eq i64 %i.do, -1, !dbg !21254
  br i1 %.not164, label %bb.ak, label %bb.aj, !dbg !21255

bb.aa:                                            ; preds = %.lr.ph, %.backedge
  %.pn = phi { ptr, ptr } [ %i.de, %.lr.ph ], [ %i.ee, %.backedge ]
  %i.dp = phi ptr [ %i.df, %.lr.ph ], [ %i.ef, %.backedge ]
  %i.dq = extractvalue { ptr, ptr } %.pn, 1, !dbg !21253 ; 4 uses
    #dbg_value(ptr %i.dp, !20678, !DIExpression(), !21129)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
    #dbg_value(ptr %i.dq, !20679, !DIExpression(), !21129)
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !21256, !noundef !1793 ; 5 uses
  %i.ds = load i64, ptr %i.dg, align 8, !dbg !21257, !noundef !1793 ; 6 uses
  %i.dt = icmp sgt i64 %i.ds, -1, !dbg !21258
  call void @llvm.assume(i1 %i.dt), !dbg !21259
  %i.du = icmp eq i64 %i.dr, %i.ds, !dbg !21256
  br i1 %i.du, label %.backedge, label %bb.ab, !dbg !21256

._crit_edge:                                      ; preds = %.backedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21260
  br label %bb.z, !dbg !21261

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !21262
    #dbg_value(ptr %0, !20773, !DIExpression(), !20779)
    #dbg_value(i64 poison, !20774, !DIExpression(), !20779)
    #dbg_value(i64 %i.dr, !21083, !DIExpression(), !21130)
    #dbg_value(i64 %i.dr, !21131, !DIExpression(), !21135)
    #dbg_value(i64 %i.dr, !21136, !DIExpression(), !21141)
    #dbg_value(i64 %i.dr, !21142, !DIExpression(), !21147)
    #dbg_value(ptr poison, !21132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21135)
    #dbg_value(ptr poison, !21137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21141)
    #dbg_value(ptr poison, !21143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21147)
    #dbg_value(i64 %i.ds, !21132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21135)
    #dbg_value(i64 %i.ds, !21137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21141)
    #dbg_value(i64 %i.ds, !21143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21147)
  %i.dv = icmp ugt i64 %i.dr, %i.ds, !dbg !21263
  br i1 %i.dv, label %bb.ad, label %bb.ac, !dbg !21263, !prof !3051

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load ptr, ptr %i.dh, align 8, !dbg !21264, !nonnull !1793, !noundef !1793
    #dbg_value(ptr %i.dw, !21132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21135)
    #dbg_value(ptr %i.dw, !21137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21141)
    #dbg_value(ptr %i.dw, !21143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21147)
  %i.dx = load i64, ptr %i.dp, align 8, !dbg !21265, !noundef !1793
    #dbg_value(i64 %i.dx, !20774, !DIExpression(), !20779)
  %i.dy = sub nuw nsw i64 %i.ds, %i.dr, !dbg !21266
    #dbg_value(i64 %i.dy, !21138, !DIExpression(), !21154)
    #dbg_value(i64 %i.dy, !21144, !DIExpression(), !21147)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dr, !dbg !21267
    #dbg_value(ptr %i.dz, !20775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20779)
    #dbg_value(i64 %i.dy, !20775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20779)
  call void @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection12do_send_bodyNtNtB8_7buffers17DefaultBufFactoryRShjNCINvB2_9send_bodyB11_E0ECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.dx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.dy, i1 noundef zeroext true), !dbg !21268
  %i.ea = load i64, ptr %i.g, align 16, !dbg !21262, !range !7219, !noundef !1793 ; 2 uses
  switch i64 %i.ea, label %bb.ag [
    i64 -1, label %bb.ae
    i64 23, label %bb.af
  ], !dbg !21269

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.dr, i64 noundef %i.ds, i64 noundef %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #23, !dbg !21270
  unreachable, !dbg !21270

bb.ae:                                            ; preds = %bb.ac
  %i.eb = load i64, ptr %i.di, align 8, !dbg !21271, !noundef !1793
    #dbg_value(i64 %i.eb, !20680, !DIExpression(), !21155)
  br label %bb.af, !dbg !21272

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.sroa.08.0 = phi i64 [ %i.eb, %bb.ae ], [ 0, %bb.ac ], !dbg !21129
    #dbg_value(i64 %.sroa.08.0, !20680, !DIExpression(), !21155)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21273
  %i.ec = load i64, ptr %i.dq, align 8, !dbg !21274, !noundef !1793
  %i.ed = add i64 %i.ec, %.sroa.08.0, !dbg !21274
  store i64 %i.ed, ptr %i.dq, align 8, !dbg !21274
  br label %.backedge, !dbg !21275

.backedge:                                        ; preds = %bb.ai, %bb.aa, %bb.af
    #dbg_value(ptr %i.h, !21109, !DIExpression(), !21123)
  %i.ee = call { ptr, ptr } @_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7IterMutyjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h), !dbg !21253 ; 2 uses
  %i.ef = extractvalue { ptr, ptr } %i.ee, 0, !dbg !21253 ; 2 uses
  %.not163 = icmp eq ptr %i.ef, null, !dbg !20781
  br i1 %.not163, label %._crit_edge, label %bb.aa, !dbg !20781

bb.ag:                                            ; preds = %bb.ac
  %3 = icmp ne i64 %i.ea, 34, !dbg !21262
  call void @llvm.assume(i1 %3), !dbg !21262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !21276
  %4 = load <2 x i64>, ptr %i.g, align 16, !dbg !21276
  store <2 x i64> %4, ptr %i.f, align 16, !dbg !21276
    #dbg_value(i64 1, !20684, !DIExpression(), !21156)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21157)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21158)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20854, !DIExpression(), !20919)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20644)
    #dbg_value(i8 0, !6359, !DIExpression(), !20644)
  %i.eg = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21277 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 6, !dbg !21278
  call void @llvm.assume(i1 %i.eh), !dbg !21278
    #dbg_value(ptr poison, !20791, !DIExpression(), !21159)
    #dbg_value(i8 poison, !20807, !DIExpression(), !21160)
    #dbg_value(i8 poison, !20815, !DIExpression(), !21165)
    #dbg_value(i8 poison, !20801, !DIExpression(), !21166)
  %.not168 = icmp eq i64 %i.eg, 0, !dbg !21279
  br i1 %.not168, label %bb.ai, label %bb.ah, !dbg !20904

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(ptr %i.f, !20686, !DIExpression(), !21167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21280
  store ptr %i.f, ptr %i.e, align 8, !dbg !21280
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !21280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20904
  store ptr @67, ptr %i.d, align 8, !dbg !20904
  store i64 19, ptr %i.dj, align 8, !dbg !20904
  store ptr @67, ptr %i.dk, align 8, !dbg !20904
  store i64 19, ptr %i.dl, align 8, !dbg !20904
  store ptr @161, ptr %i.dm, align 8, !dbg !20904
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @154, ptr noundef nonnull %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d), !dbg !20904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20904
  br label %bb.ai, !dbg !20904

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21273
  br label %.backedge, !dbg !21282

bb.aj:                                            ; preds = %bb.z
    #dbg_value(ptr %i.dn, !20689, !DIExpression(), !21169)
    #dbg_value(i64 0, !20690, !DIExpression(), !21170)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !21283 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !21283, !noundef !1793 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !21284
  %i.el = load i64, ptr %i.ek, align 8, !dbg !21284, !noundef !1793 ; 2 uses
    #dbg_value(i64 %i.ej, !20691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21171)
    #dbg_value(i64 %i.el, !20691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21171)
    #dbg_value(ptr undef, !20739, !DIExpression(), !20745)
    #dbg_value(ptr undef, !20741, !DIExpression(), !20744)
    #dbg_value(ptr undef, !20731, !DIExpression(), !20738)
    #dbg_value(ptr undef, !20732, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21172)
  %i.em = icmp ult i64 %i.ej, %i.el, !dbg !21285
  br i1 %i.em, label %.lr.ph189, label %.loopexit, !dbg !20737

.lr.ph189:                                        ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.eq = sub nuw i64 %i.el, %i.ej, !dbg !20737   ; 2 uses
  br label %bb.al, !dbg !20737

bb.ak:                                            ; preds = %bb.z, %.loopexit
  ret void, !dbg !21286

bb.al:                                            ; preds = %.lr.ph189, %bb.an
  %.sroa.010.0186 = phi i64 [ 0, %.lr.ph189 ], [ %i.fc, %bb.an ] ; 2 uses
    #dbg_value(i64 %.sroa.010.0186, !20690, !DIExpression(), !21170)
    #dbg_value(i64 poison, !20691, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21171)
  %i.er = load i64, ptr %i.en, align 8, !dbg !21287, !noundef !1793
    #dbg_value(ptr %i.dn, !21173, !DIExpression(), !21176)
  %i.es = load ptr, ptr %i.eo, align 8, !dbg !21288, !nonnull !1793, !noundef !1793
  %i.et = load i64, ptr %i.ep, align 8, !dbg !21289, !noundef !1793
  %i.eu = call fastcc { i64, i64 } @_RNvNtCsiGRwBGCeC5s_11quiche_apps6common13send_h3_dgram(ptr noalias nofree noundef align 16 dereferenceable(15552) %1, i64 noundef %i.er, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef %i.et), !dbg !21290 ; 2 uses
  %i.ev = extractvalue { i64, i64 } %i.eu, 0, !dbg !21290 ; 2 uses
  %.not165 = icmp eq i64 %i.ev, -1, !dbg !21290
  br i1 %.not165, label %bb.an, label %bb.am, !dbg !21291

.loopexit:                                        ; preds = %bb.an, %bb.aj, %bb.ap
  %.sroa.010.0175 = phi i64 [ %.sroa.010.0186, %bb.ap ], [ 0, %bb.aj ], [ %i.eq, %bb.an ]
  %i.ew = load i64, ptr %i.ei, align 8, !dbg !21292, !noundef !1793
  %i.ex = add i64 %i.ew, %.sroa.010.0175, !dbg !21292
  store i64 %i.ex, ptr %i.ei, align 8, !dbg !21292
  br label %bb.ak, !dbg !21293

bb.am:                                            ; preds = %bb.al
  %i.ey = extractvalue { i64, i64 } %i.eu, 1, !dbg !21290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21294
  store i64 %i.ev, ptr %i.c, align 8, !dbg !21294
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !21294
  store i64 %i.ey, ptr %i.ez, align 8, !dbg !21294
    #dbg_value(i64 1, !20695, !DIExpression(), !21186)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21187)
    #dbg_value(ptr poison, !20790, !DIExpression(), !21188)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !20854, !DIExpression(), !20940)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !20647)
    #dbg_value(i8 0, !6359, !DIExpression(), !20647)
  %i.fa = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !21295 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 6, !dbg !21296
  call void @llvm.assume(i1 %i.fb), !dbg !21296
    #dbg_value(ptr poison, !20791, !DIExpression(), !21189)
    #dbg_value(i8 poison, !20809, !DIExpression(), !21190)
    #dbg_value(i8 poison, !20815, !DIExpression(), !21195)
    #dbg_value(i8 poison, !20801, !DIExpression(), !21196)
  %.not166 = icmp eq i64 %i.fa, 0, !dbg !21297
  br i1 %.not166, label %bb.ap, label %bb.ao, !dbg !20925

bb.an:                                            ; preds = %bb.al
    #dbg_value(i64 poison, !20691, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21171)
  %i.fc = add i64 %.sroa.010.0186, 1, !dbg !21298 ; 2 uses
    #dbg_value(i64 %i.fc, !20690, !DIExpression(), !21170)
    #dbg_value(ptr undef, !20739, !DIExpression(), !20745)
    #dbg_value(ptr undef, !20741, !DIExpression(), !20744)
    #dbg_value(ptr undef, !20731, !DIExpression(), !20738)
    #dbg_value(ptr undef, !20732, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !21172)
  %exitcond.not = icmp eq i64 %i.fc, %i.eq, !dbg !21285
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !dbg !20737

bb.ao:                                            ; preds = %bb.am
    #dbg_value(ptr %i.c, !20697, !DIExpression(), !21197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21299
  store ptr %i.c, ptr %i.b, align 8, !dbg !21299
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21299
  store ptr @_RNvXs5_NtCs3f36owOmepS_6quiche5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx, align 8, !dbg !21299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20925
  store ptr @67, ptr %i.a, align 8, !dbg !20925
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20925
  store i64 19, ptr %i.fd, align 8, !dbg !20925
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20925
  store ptr @67, ptr %i.fe, align 8, !dbg !20925
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !20925
  store i64 19, ptr %i.ff, align 8, !dbg !20925
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !20925
  store ptr @163, ptr %i.fg, align 8, !dbg !20925
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @155, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a), !dbg !20925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20925
  br label %bb.ap, !dbg !20925

bb.ap:                                            ; preds = %bb.am, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21300
  br label %.loopexit, !dbg !21301
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn15handle_requests(ptr noalias nofree noundef align 8 dereferenceable(712) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull %8, i64 noundef range(i64 0, -9223372036854775808) %9) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21367 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21493)
  %i.i = alloca [20 x i8], align 1                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21504)
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21514)
  %i.o = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21524)
  %i.p = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21534)
  %i.q = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21544)
  %i.r = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21554)
  %i.s = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21564)
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21574)
  %i.v = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21584)
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21594)
  %i.y = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21604)
  %i.z = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21614)
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21624)
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21634)
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21644)
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21654)
  %i.af = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21664)
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !23732, !DIExpression(), !21672)
  %i.ah = alloca [72 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn15handle_requests:bb.a
  br label %bb.kq, !dbg !26253

bb.kq:                                            ; preds = %bb.kt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit, %bb.kk
    #dbg_value(ptr %i.dw, !25178, !DIExpression(), !25184)
    #dbg_value(ptr %i.dw, !25185, !DIExpression(), !25188)
  %i.ade = load i64, ptr %i.je, align 8, !dbg !26254, !noundef !1793 ; 3 uses
  %i.adf = icmp sgt i64 %i.ade, -1, !dbg !26255
  call void @llvm.assume(i1 %i.adf), !dbg !26256
  %i.adg = icmp eq i64 %i.ade, 0, !dbg !26257
  br i1 %i.adg, label %bb.kw, label %bb.kv, !dbg !26258

bb.kr:                                            ; preds = %bb.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !dbg !26259
  %i.adh = load <2 x i64>, ptr %i.ix, align 8, !dbg !26259
  store <2 x i64> %i.adh, ptr %i.dt, align 16, !dbg !26259
    #dbg_value(i64 1, !23638, !DIExpression(), !25189)
    #dbg_value(ptr poison, !24147, !DIExpression(), !25190)
    #dbg_value(ptr poison, !24147, !DIExpression(), !25191)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !24230, !DIExpression(), !24256)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !23417)
    #dbg_value(i8 0, !6359, !DIExpression(), !23417)
  %i.adi = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26260 ; 2 uses
  %i.adj = icmp ult i64 %i.adi, 6, !dbg !26261
  call void @llvm.assume(i1 %i.adj), !dbg !26261
    #dbg_value(ptr poison, !24148, !DIExpression(), !25192)
    #dbg_value(i8 poison, !24162, !DIExpression(), !25193)
    #dbg_value(i8 poison, !24180, !DIExpression(), !25198)
    #dbg_value(i8 poison, !24159, !DIExpression(), !25199)
  %.not313 = icmp eq i64 %i.adi, 0, !dbg !26262
  br i1 %.not313, label %bb.kt, label %bb.ks, !dbg !24241

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !dbg !26263
    #dbg_value(ptr %1, !24469, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25202)
    #dbg_value(ptr %1, !24473, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25205)
  %i.adk = load ptr, ptr %i.ej, align 8, !dbg !26264, !nonnull !1793, !noundef !1793
  %i.adl = load i64, ptr %i.ek, align 16, !dbg !26265, !noundef !1793
  store ptr %i.adk, ptr %i.ds, align 8, !dbg !26266
  store i64 %i.adl, ptr %i.iy, align 8, !dbg !26266
    #dbg_value(ptr %i.ds, !23640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25217)
    #dbg_value(ptr %i.dt, !23640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !dbg !26267
  store ptr %i.ds, ptr %i.dr, align 8, !dbg !26267
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.444.0..sroa_idx, align 8, !dbg !26267
  store ptr %i.dt, ptr %i.iz, align 8, !dbg !26267
  store ptr @_RNvXs_NtCs3f36owOmepS_6quiche2h3NtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8, !dbg !26267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !dbg !24241
  store ptr @67, ptr %i.dq, align 8, !dbg !24241
  store i64 19, ptr %i.ja, align 8, !dbg !24241
  store ptr @67, ptr %i.jb, align 8, !dbg !24241
  store i64 19, ptr %i.jc, align 8, !dbg !24241
  store ptr @174, ptr %i.jd, align 8, !dbg !24241
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @165, ptr noundef nonnull %i.dr, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dq)
          to label %bb.ku unwind label %.loopexit476, !dbg !24241

bb.kt:                                            ; preds = %bb.kr, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !dbg !26268
  br label %bb.kq, !dbg !26268

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !dbg !24241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !dbg !24241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !dbg !24241
  br label %bb.kt, !dbg !24241

bb.kv:                                            ; preds = %bb.kq
    #dbg_value(ptr %i.dy, !24116, !DIExpression(), !25218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !dbg !26269
    #dbg_value(ptr %i.dw, !24482, !DIExpression(), !25220)
    #dbg_value(ptr %i.dw, !24484, !DIExpression(), !25223)
  %i.adm = load ptr, ptr %i.jf, align 8, !dbg !26270, !nonnull !1793, !noundef !1793
  invoke void @_RNvMs6_NtCs3f36owOmepS_6quiche2h3NtB5_6Header3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.dp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adm, i64 noundef %i.ade)
          to label %bb.kx unwind label %.loopexit476, !dbg !26269

bb.kw:                                            ; preds = %bb.lb, %bb.kq
  %i.adn = phi i64 [ %.pre1891.a, %bb.lb ], [ 0, %bb.kq ], !dbg !26271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !dbg !26272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !26273
    #dbg_value(ptr %i.dw, !24482, !DIExpression(), !25231)
    #dbg_value(ptr %i.dw, !24484, !DIExpression(), !25234)
  %i.ado = load ptr, ptr %i.jf, align 8, !dbg !26274, !nonnull !1793, !noundef !1793
  invoke void @_RNvXsc_NtCs3f36owOmepS_6quiche2h3NtB5_8PriorityINtNtCskKLDkoKarTP_4core7convert7TryFromRShE8try_from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.dn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ado, i64 noundef %i.adn)
          to label %bb.lc unwind label %.loopexit476, !dbg !26273

bb.kx:                                            ; preds = %bb.kv
    #dbg_value(ptr %i.dy, !6142, !DIExpression(), !23419)
    #dbg_value(ptr %i.dy, !6150, !DIExpression(), !23421)
    #dbg_declare(ptr %i.dp, !6146, !DIExpression(), !23422)
    #dbg_value(i64 48, !6155, !DIExpression(), !23425)
  %i.adp = load i64, ptr %i.jg, align 8, !dbg !26275, !alias.scope !25241, !noundef !1793 ; 3 uses
    #dbg_value(i64 %i.adp, !6147, !DIExpression(), !23428)
    #dbg_value(i64 %i.adp, !6167, !DIExpression(), !23430)
    #dbg_value(ptr %i.dy, !6165, !DIExpression(), !23431)
  %i.adq = load i64, ptr %i.dy, align 8, !dbg !26276, !range !6172, !alias.scope !25241, !noundef !1793
  %i.adr = icmp eq i64 %i.adp, %i.adq, !dbg !26277
  br i1 %i.adr, label %bb.ky, label %bb.lb, !dbg !26277

bb.ky:                                            ; preds = %bb.kx
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.lb unwind label %bb.kz, !dbg !26278, !noalias !25242

bb.kz:                                            ; preds = %bb.ky
  %i.ads = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche2h36HeaderECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dp) #19
          to label %.body347 unwind label %bb.la, !dbg !26279

bb.la:                                            ; preds = %bb.kz
  %i.adt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26280
  unreachable, !dbg !26280

bb.lb:                                            ; preds = %bb.ky, %bb.kx
  %i.adu = load ptr, ptr %i.jh, align 8, !dbg !26281, !alias.scope !25241, !nonnull !1793, !noundef !1793
    #dbg_value(ptr %i.adu, !6170, !DIExpression(), !23430)
  %i.adv = getelementptr inbounds nuw [48 x i8], ptr %i.adu, i64 %i.adp, !dbg !26282
    #dbg_value(ptr %i.adv, !6148, !DIExpression(), !23436)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.adv, ptr noundef nonnull align 8 dereferenceable(48) %i.dp, i64 48, i1 false), !dbg !26283
  %i.adw = add i64 %i.adp, 1, !dbg !26284
  store i64 %i.adw, ptr %i.jg, align 8, !dbg !26284, !alias.scope !25241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !dbg !26285
  %.pre1891.a = load i64, ptr %i.je, align 8, !dbg !26271
  br label %bb.kw, !dbg !26286

bb.lc:                                            ; preds = %bb.kw
    #dbg_declare(ptr %i.dn, !25243, !DIExpression(), !23444)
  %i.adx = load i64, ptr %i.dn, align 8, !dbg !26287, !range !7219, !alias.scope !25259, !noundef !1793
  %.not.i349 = icmp eq i64 %i.adx, -1, !dbg !26287 ; 2 uses
  %i.ady = load i8, ptr %i.ji, align 8, !dbg !26288, !alias.scope !25259
  %i.adz = load i8, ptr %i.jj, align 1, !dbg !26288, !range !5741, !alias.scope !25259
  %.sroa.3.0.i = select i1 %.not.i349, i8 %i.adz, i8 0, !dbg !26288
  %.sroa.0.0.i = select i1 %.not.i349, i8 %i.ady, i8 3, !dbg !26288
  store i8 %.sroa.0.0.i, ptr %i.do, align 1, !dbg !26273
  store i8 %.sroa.3.0.i, ptr %i.jk, align 1, !dbg !26273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !dbg !26289
    #dbg_value(i64 3, !23645, !DIExpression(), !25260)
    #dbg_value(ptr poison, !24147, !DIExpression(), !25261)
    #dbg_value(ptr poison, !24147, !DIExpression(), !25262)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !24230, !DIExpression(), !24277)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !23448)
    #dbg_value(i8 0, !6359, !DIExpression(), !23448)
  %i.aea = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26290 ; 2 uses
  %i.aeb = icmp ult i64 %i.aea, 6, !dbg !26291
  call void @llvm.assume(i1 %i.aeb), !dbg !26291
    #dbg_value(ptr poison, !24148, !DIExpression(), !25263)
    #dbg_value(i8 poison, !24164, !DIExpression(), !25264)
    #dbg_value(i8 poison, !24180, !DIExpression(), !25269)
    #dbg_value(i8 poison, !24159, !DIExpression(), !25270)
  %i.aec = icmp samesign ugt i64 %i.aea, 2, !dbg !26292
  br i1 %i.aec, label %bb.ld, label %bb.le, !dbg !24262

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !dbg !26293
    #dbg_value(ptr %1, !24469, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25273)
    #dbg_value(ptr %1, !24473, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25276)
  %i.aed = load ptr, ptr %i.ej, align 8, !dbg !26294, !nonnull !1793, !noundef !1793
  %i.aee = load i64, ptr %i.ek, align 16, !dbg !26295, !noundef !1793
  store ptr %i.aed, ptr %i.dm, align 8, !dbg !26296
  store i64 %i.aee, ptr %i.jl, align 8, !dbg !26296
    #dbg_value(ptr %i.dm, !23647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25288)
    #dbg_value(ptr %i.ee, !23647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25288)
    #dbg_value(ptr %i.do, !23647, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !26297
  store ptr %i.dm, ptr %i.dl, align 8, !dbg !26297
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.452.0..sroa_idx, align 8, !dbg !26297
  store ptr %i.ee, ptr %i.jm, align 8, !dbg !26297
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8, !dbg !26297
  store ptr %i.do, ptr %i.jn, align 8, !dbg !26297
  store ptr @_RNvXsJ_NtCs3f36owOmepS_6quiche2h3NtB5_8PriorityNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !26297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !dbg !24262
  store ptr @67, ptr %i.dk, align 8, !dbg !24262
  store i64 19, ptr %i.jo, align 8, !dbg !24262
  store ptr @67, ptr %i.jp, align 8, !dbg !24262
  store i64 19, ptr %i.jq, align 8, !dbg !24262
  store ptr @176, ptr %i.jr, align 8, !dbg !24262
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @166, ptr noundef nonnull %i.dl, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dk)
          to label %bb.lf unwind label %.loopexit476, !dbg !24262

bb.le:                                            ; preds = %bb.lc, %bb.lf
    #dbg_value(ptr %i.dy, !24488, !DIExpression(), !25290)
    #dbg_value(ptr %i.dy, !24492, !DIExpression(), !25293)
    #dbg_value(ptr %i.dy, !24496, !DIExpression(), !25296)
  %i.aef = load ptr, ptr %i.jh, align 8, !dbg !26298, !nonnull !1793, !noundef !1793
  %i.aeg = load i64, ptr %i.jg, align 8, !dbg !26299, !noundef !1793
  %i.aeh = load i64, ptr %i.ee, align 8, !dbg !26300, !noundef !1793
    #dbg_value(i64 %i.aeh, !24081, !DIExpression(), !24087)
    #dbg_value(i64 %i.aeh, !24081, !DIExpression(), !24085)
    #dbg_value(i64 %i.aeh, !24451, !DIExpression(), !24457)
    #dbg_value(i64 %i.aeh, !23622, !DIExpression(), !24450)
  %i.aei = invoke { i64, i64 } @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection27send_response_with_priorityNtB6_6HeaderNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.aeh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aef, i64 noundef %i.aeg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.do, i1 noundef zeroext false)
          to label %bb.lg unwind label %.loopexit476, !dbg !26301 ; 2 uses

bb.lf:                                            ; preds = %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !24262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !dbg !24262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !dbg !24262
  br label %bb.le, !dbg !24262

bb.lg:                                            ; preds = %bb.le
  %i.aej = extractvalue { i64, i64 } %i.aei, 0, !dbg !26300 ; 3 uses
  switch i64 %i.aej, label %bb.mc [
    i64 -1, label %bb.lh
    i64 35, label %bb.lt
  ], !dbg !26302

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !dbg !26303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !dbg !26304
  store i64 -1, ptr %i.jw, align 8, !dbg !26305
  store i8 2, ptr %i.jx, align 1, !dbg !26305
  store i64 0, ptr %i.jy, align 8, !dbg !26305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !dbg !26306
  %i.aek = load i64, ptr %i.ee, align 8, !dbg !26307, !noundef !1793
    #dbg_value(i64 %i.aek, !24081, !DIExpression(), !24087)
    #dbg_value(i64 %i.aek, !24081, !DIExpression(), !24085)
    #dbg_value(i64 %i.aek, !24451, !DIExpression(), !24457)
    #dbg_value(i64 %i.aek, !23622, !DIExpression(), !24450)
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBS_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.dc, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.aek, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.dd)
          to label %bb.li unwind label %.loopexit476, !dbg !26308

bb.li:                                            ; preds = %bb.lh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.dc)
          to label %bb.lj unwind label %.loopexit476, !dbg !26309

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !26309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !26310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !26311
    #dbg_value(ptr %i.dw, !3272, !DIExpression(), !23450)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.ll unwind label %bb.lk, !dbg !26312

bb.lk:                                            ; preds = %bb.lj
  %i.ael = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23452)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.thread unwind label %bb.lm, !dbg !26313

bb.ll:                                            ; preds = %bb.lj
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23454)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit354 unwind label %.loopexit.split-lp482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26314

bb.lm:                                            ; preds = %bb.lk
  %i.aem = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26312
  unreachable, !dbg !26312

bb.ln:                                            ; preds = %.body347
  br i1 %.sroa.027.0, label %.body352.thread403, label %bb.mm, !dbg !26246

.body352.thread408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.my, %bb.h, %bb.l, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCs3f36owOmepS_6quiche5error5ErrorE6unwrapCsiGRwBGCeC5s_11quiche_apps.exit334, %bb.io, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiGRwBGCeC5s_11quiche_apps.exit.i, %bb.lp, %bb.lx, %bb.p, %bb.q, %bb.mo
  %lpad.loopexit.split-lp2692 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body352:                                         ; preds = %bb.mg
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread403, !dbg !26246

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit354: ; preds = %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !26246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !dbg !26246
    #dbg_value(ptr %i.dy, !3317, !DIExpression(), !23456)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.lp unwind label %bb.lo, !dbg !26315

bb.lo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit354
  %i.aen = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dy, !3322, !DIExpression(), !23458)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body unwind label %bb.lq, !dbg !26316

bb.lp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit354
    #dbg_value(ptr %i.dy, !3322, !DIExpression(), !23460)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit unwind label %.body352.thread408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26317

bb.lq:                                            ; preds = %bb.lo
  %i.aeo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26315
  unreachable, !dbg !26315

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !26246
    #dbg_value(ptr %i.ed, !3317, !DIExpression(), !23462)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit359 unwind label %bb.lr, !dbg !26318

bb.lr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit
  %i.aep = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23464)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %common.resume unwind label %bb.ls, !dbg !26319

bb.ls:                                            ; preds = %bb.lr
  %i.aeq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26318
  unreachable, !dbg !26318

common.resume:                                    ; preds = %bb.od, %.body, %bb.ob, %bb.nn, %bb.mq, %bb.ma, %bb.lr
  %common.resume.op = phi { ptr, i32 } [ %i.ahh, %bb.nn ], [ %i.aep, %bb.lr ], [ %i.aey, %bb.ma ], [ %i.afs, %bb.mq ], [ %.pn321, %.body ], [ %i.ais, %bb.ob ], [ %i.ait, %bb.od ]
  resume { ptr, i32 } %common.resume.op, !dbg !24061

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit359: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23466)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed), !dbg !26320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !25645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !25645
  br label %.backedge, !dbg !25645

.backedge:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit359, %bb.nc, %bb.ne, %bb.ni, %bb.b, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !26321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !dbg !25629
  call void @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection4pollNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ef, ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1), !dbg !25630
  %i.aer = load i64, ptr %i.eg, align 8, !dbg !25629, !range !7251, !noundef !1793 ; 2 uses
  %i.aes = icmp eq i64 %i.aer, -1, !dbg !25629
  br i1 %i.aes, label %._crit_edge, label %bb.b, !dbg !25631

bb.lt:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !26322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !dbg !26323
  %i.aet = load i8, ptr %i.do, align 1, !dbg !26324, !noundef !1793
  %i.aeu = load i8, ptr %i.jk, align 1, !dbg !26324, !range !5741, !noundef !1793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !dbg !26325
  store i8 %i.aet, ptr %i.jt, align 8, !dbg !26326
  store i8 %i.aeu, ptr %i.ju, align 1, !dbg !26326
  store i64 0, ptr %i.jv, align 8, !dbg !26326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !26327
  %i.aev = load i64, ptr %i.ee, align 8, !dbg !26328, !noundef !1793
    #dbg_value(i64 %i.aev, !24081, !DIExpression(), !24087)
    #dbg_value(i64 %i.aev, !24081, !DIExpression(), !24085)
    #dbg_value(i64 %i.aev, !24451, !DIExpression(), !24457)
    #dbg_value(i64 %i.aev, !23622, !DIExpression(), !24450)
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBS_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.di, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.aev, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.dj)
          to label %bb.lu unwind label %.loopexit476, !dbg !26329

bb.lu:                                            ; preds = %bb.lt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.di)
          to label %bb.lv unwind label %.loopexit476, !dbg !26330

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !26330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !26331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !26311
    #dbg_value(ptr %i.dw, !3272, !DIExpression(), !23468)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.lx unwind label %bb.lw, !dbg !26332

bb.lw:                                            ; preds = %bb.lv
  %i.aew = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23470)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.body unwind label %bb.ly, !dbg !26333

bb.lx:                                            ; preds = %bb.lv
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23472)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit366 unwind label %.body352.thread408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26334

bb.ly:                                            ; preds = %bb.lw
  %i.aex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26332
  unreachable, !dbg !26332

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit366: ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !26246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !dbg !26246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !26246
  br label %bb.lz, !dbg !26335

bb.lz:                                            ; preds = %bb.mz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit366
    #dbg_value(ptr %i.ed, !3317, !DIExpression(), !23474)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit368 unwind label %bb.ma, !dbg !26336

bb.ma:                                            ; preds = %bb.lz
  %i.aey = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23476)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %common.resume unwind label %bb.mb, !dbg !26337

bb.mb:                                            ; preds = %bb.ma
  %i.aez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26336
  unreachable, !dbg !26336

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit368: ; preds = %bb.lz
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23478)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed), !dbg !26338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !25645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !25645
  br label %.backedge, !dbg !25632

bb.mc:                                            ; preds = %bb.lg
  %i.afa = extractvalue { i64, i64 } %i.aei, 1, !dbg !26300
  %10 = icmp ne i64 %i.aej, 34, !dbg !26300
  call void @llvm.assume(i1 %10), !dbg !26300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !dbg !26339
  store i64 %i.aej, ptr %i.dh, align 8, !dbg !26339
  %i.afb = getelementptr inbounds nuw i8, ptr %i.dh, i64 8, !dbg !26339
  store i64 %i.afa, ptr %i.afb, align 8, !dbg !26339
    #dbg_value(i64 1, !23654, !DIExpression(), !25304)
    #dbg_value(ptr poison, !24147, !DIExpression(), !25305)
    #dbg_value(ptr poison, !24147, !DIExpression(), !25306)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !24230, !DIExpression(), !24298)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !23480)
    #dbg_value(i8 0, !6359, !DIExpression(), !23480)
  %i.afc = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26340 ; 2 uses
  %i.afd = icmp ult i64 %i.afc, 6, !dbg !26341
  call void @llvm.assume(i1 %i.afd), !dbg !26341
    #dbg_value(ptr poison, !24148, !DIExpression(), !25307)
    #dbg_value(i8 poison, !24166, !DIExpression(), !25308)
    #dbg_value(i8 poison, !24180, !DIExpression(), !25313)
    #dbg_value(i8 poison, !24159, !DIExpression(), !25314)
  %.not315 = icmp eq i64 %i.afc, 0, !dbg !26342
  br i1 %.not315, label %bb.me, label %bb.md, !dbg !24283

bb.md:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !26343
    #dbg_value(ptr %1, !24469, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25317)
    #dbg_value(ptr %1, !24473, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25320)
  %i.afe = load ptr, ptr %i.ej, align 8, !dbg !26344, !nonnull !1793, !noundef !1793
  %i.aff = load i64, ptr %i.ek, align 16, !dbg !26345, !noundef !1793
  store ptr %i.afe, ptr %i.dg, align 8, !dbg !26346
  %i.afg = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !26346
  store i64 %i.aff, ptr %i.afg, align 8, !dbg !26346
    #dbg_value(ptr %i.dg, !23656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25332)
    #dbg_value(ptr %i.dh, !23656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25332)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !26347
  store ptr %i.dg, ptr %i.df, align 8, !dbg !26347
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !26347
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.464.0..sroa_idx, align 8, !dbg !26347
  %i.afh = getelementptr inbounds nuw i8, ptr %i.df, i64 16, !dbg !26347
  store ptr %i.dh, ptr %i.afh, align 8, !dbg !26347
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 24, !dbg !26347
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.468.0..sroa_idx, align 8, !dbg !26347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !24283
  store ptr @67, ptr %i.de, align 8, !dbg !24283
  %i.afi = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !24283
  store i64 19, ptr %i.afi, align 8, !dbg !24283
  %i.afj = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !24283
  store ptr @67, ptr %i.afj, align 8, !dbg !24283
  %i.afk = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !24283
  store i64 19, ptr %i.afk, align 8, !dbg !24283
  %i.afl = getelementptr inbounds nuw i8, ptr %i.de, i64 32, !dbg !24283
  store ptr @177, ptr %i.afl, align 8, !dbg !24283
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @115, ptr noundef nonnull %i.df, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.de)
          to label %bb.mi unwind label %.loopexit.split-lp477, !dbg !24283

bb.me:                                            ; preds = %bb.mc, %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !26348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !26311
    #dbg_value(ptr %i.dw, !3272, !DIExpression(), !23482)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.mg unwind label %bb.mf, !dbg !26349

bb.mf:                                            ; preds = %bb.me
  %i.afm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23484)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.body352.thread403 unwind label %bb.mh, !dbg !26350

bb.mg:                                            ; preds = %bb.me
    #dbg_value(ptr %i.dw, !3277, !DIExpression(), !23486)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit375 unwind label %.body352, !dbg !26351

bb.mh:                                            ; preds = %bb.mf
  %i.afn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26349
  unreachable, !dbg !26349

bb.mi:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !24283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !24283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !24283
  br label %bb.me, !dbg !24283

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit375: ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !26246
    #dbg_value(ptr %i.dx, !3272, !DIExpression(), !23488)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.mk unwind label %bb.mj, !dbg !26352

bb.mj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit375
  %i.afo = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dx, !3277, !DIExpression(), !23490)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %.thread unwind label %bb.ml, !dbg !26353

bb.mk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit375
    #dbg_value(ptr %i.dx, !3277, !DIExpression(), !23492)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit380 unwind label %.loopexit.split-lp482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26354

bb.ml:                                            ; preds = %bb.mj
  %i.afp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26352
  unreachable, !dbg !26352

bb.mm:                                            ; preds = %.body352.thread403, %bb.ln
  %.sroa.028.4 = phi i1 [ %.sroa.028.2398, %.body352.thread403 ], [ %.sroa.028.0, %bb.ln ], !dbg !24450
  %.pn317.pn = phi { ptr, i32 } [ %.pn317399, %.body352.thread403 ], [ %.pn, %bb.ln ] ; 2 uses
  br i1 %.sroa.028.4, label %.thread, label %.body, !dbg !26246

.loopexit.split-lp482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ll, %bb.mk
  %lpad.loopexit.split-lp2718 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit380: ; preds = %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !dbg !26246
    #dbg_value(ptr %i.dy, !3317, !DIExpression(), !23494)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.mo unwind label %bb.mn, !dbg !26355

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit380
  %i.afq = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dy, !3322, !DIExpression(), !23496)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body unwind label %bb.mp, !dbg !26356

bb.mo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit380
    #dbg_value(ptr %i.dy, !3322, !DIExpression(), !23498)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit385 unwind label %.body352.thread408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26357

bb.mp:                                            ; preds = %bb.mn
  %i.afr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26355
  unreachable, !dbg !26355

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit385: ; preds = %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !26246
    #dbg_value(ptr %i.ed, !3317, !DIExpression(), !23500)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit387 unwind label %bb.mq, !dbg !26358

bb.mq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit385
  %i.afs = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23502)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %common.resume unwind label %bb.mr, !dbg !26359

bb.mr:                                            ; preds = %bb.mq
  %i.aft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26358
  unreachable, !dbg !26358

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit387: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit385
    #dbg_value(ptr %i.ed, !3322, !DIExpression(), !23504)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed), !dbg !26360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !25645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !25645
  br label %bb.ms, !dbg !26321

bb.ms:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit387, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !26321
  call void @llvm.experimental.noalias.scope.decl(metadata !25333), !dbg !26361
    #dbg_value(ptr %1, !6509, !DIExpression(), !23508)
    #dbg_value(ptr %1, !6511, !DIExpression(), !23510)
    #dbg_declare(ptr %i.a, !6516, !DIExpression(), !23512)
    #dbg_declare(ptr poison, !6519, !DIExpression(), !23513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26362, !noalias !25334
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 15336, !dbg !26363
  %i.afv = load i64, ptr %i.afu, align 8, !dbg !26363, !alias.scope !25333, !noundef !1793
  %i.afw = icmp eq i64 %i.afv, 0, !dbg !26363
  br i1 %i.afw, label %bb.mt, label %bb.mu, !dbg !26363

bb.mt:                                            ; preds = %bb.ms
  %.sroa.4.0..sroa_idx.i388 = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !26364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i388, i8 0, i64 16, i1 false), !dbg !26364, !noalias !25334
  br label %_RNvNtCsiGRwBGCeC5s_11quiche_apps6common25writable_response_streams.exit, !dbg !26365

bb.mu:                                            ; preds = %bb.ms
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 14920, !dbg !26366
  call void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap8writableCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.afx), !dbg !26367, !noalias !25335
  br label %_RNvNtCsiGRwBGCeC5s_11quiche_apps6common25writable_response_streams.exit, !dbg !26365

_RNvNtCsiGRwBGCeC5s_11quiche_apps6common25writable_response_streams.exit: ; preds = %bb.mt, %bb.mu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !26361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cl, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !dbg !26368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26369, !noalias !25334
  %i.afy = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.afz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.aga = getelementptr inbounds nuw i8, ptr %i.cl, i64 72 ; 2 uses
  br label %bb.nl, !dbg !26370

bb.mv:                                            ; preds = %bb.nn, %bb.ob, %bb.na, %.thread, %.body352.thread403, %.body347, %bb.i, %.body
end_hunk_2
begin_hunk_3_@_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn15handle_requests:bb.a
    #dbg_value(ptr %i.aiq, !25560, !DIExpression(), !25563)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aiq, ptr nonnull align 1 %i.ail, i64 %i.aik, i1 false), !dbg !26451
    #dbg_value(ptr %i.cg, !25565, !DIExpression(), !25580)
  store i64 %i.aik, ptr %i.ahp, align 8, !dbg !26452
  br label %bb.nz, !dbg !26453

bb.ob:                                            ; preds = %bb.nz
  %i.ais = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg) #19
          to label %common.resume unwind label %bb.mv, !dbg !24344

bb.oc:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !24344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !24344
    #dbg_value(ptr %i.cg, !3272, !DIExpression(), !23605)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit392 unwind label %bb.od, !dbg !26454

bb.od:                                            ; preds = %bb.oc
  %i.ait = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.cg, !3277, !DIExpression(), !23607)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %common.resume unwind label %bb.oe, !dbg !26455

bb.oe:                                            ; preds = %bb.od
  %i.aiu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26454
  unreachable, !dbg !26454

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit392: ; preds = %bb.oc
    #dbg_value(ptr %i.cg, !3277, !DIExpression(), !23609)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg), !dbg !26456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !24344
  br label %bb.nt, !dbg !24344

bb.of:                                            ; preds = %._crit_edge1501
    #dbg_value(ptr %i.ahw, !23703, !DIExpression(), !25581)
    #dbg_value(i64 0, !23704, !DIExpression(), !25582)
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !26457 ; 3 uses
  %i.aiw = load i64, ptr %i.aiv, align 8, !dbg !26457, !noundef !1793 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !26458
  %i.aiy = load i64, ptr %i.aix, align 8, !dbg !26458, !noundef !1793 ; 2 uses
    #dbg_value(i64 %i.aiw, !23705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25583)
    #dbg_value(i64 %i.aiy, !23705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25583)
    #dbg_value(ptr undef, !24054, !DIExpression(), !24060)
    #dbg_value(ptr undef, !24056, !DIExpression(), !24059)
    #dbg_value(ptr undef, !24046, !DIExpression(), !24053)
    #dbg_value(ptr undef, !24047, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25584)
  %i.aiz = icmp ult i64 %i.aiw, %i.aiy, !dbg !26459
  br i1 %i.aiz, label %.lr.ph1505, label %.loopexit, !dbg !24052

.lr.ph1505:                                       ; preds = %bb.of
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ajd = sub nuw i64 %i.aiy, %i.aiw, !dbg !24052 ; 2 uses
  br label %bb.og, !dbg !24052

bb.og:                                            ; preds = %.lr.ph1505, %bb.oi
  %.sroa.018.01503 = phi i64 [ 0, %.lr.ph1505 ], [ %i.ajp, %bb.oi ] ; 2 uses
    #dbg_value(i64 %.sroa.018.01503, !23704, !DIExpression(), !25582)
    #dbg_value(i64 poison, !23705, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25583)
  %i.aje = load i64, ptr %i.aja, align 8, !dbg !26460, !noundef !1793
    #dbg_value(ptr %i.ahw, !25585, !DIExpression(), !25588)
  %i.ajf = load ptr, ptr %i.ajb, align 8, !dbg !26461, !nonnull !1793, !noundef !1793
  %i.ajg = load i64, ptr %i.ajc, align 8, !dbg !26462, !noundef !1793
  %i.ajh = call fastcc { i64, i64 } @_RNvNtCsiGRwBGCeC5s_11quiche_apps6common13send_h3_dgram(ptr noalias nofree noundef align 16 dereferenceable(15552) %1, i64 noundef %i.aje, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajf, i64 noundef %i.ajg), !dbg !26463 ; 2 uses
  %i.aji = extractvalue { i64, i64 } %i.ajh, 0, !dbg !26463 ; 2 uses
  %.not328 = icmp eq i64 %i.aji, -1, !dbg !26463
  br i1 %.not328, label %bb.oi, label %bb.oh, !dbg !26464

.loopexit:                                        ; preds = %bb.oi, %bb.of, %bb.ok
  %.sroa.018.0492 = phi i64 [ %.sroa.018.01503, %bb.ok ], [ 0, %bb.of ], [ %i.ajd, %bb.oi ]
  %i.ajj = load i64, ptr %i.aiv, align 8, !dbg !26465, !noundef !1793
  %i.ajk = add i64 %i.ajj, %.sroa.018.0492, !dbg !26465
  store i64 %i.ajk, ptr %i.aiv, align 8, !dbg !26465
  br label %bb.ol, !dbg !26466

bb.oh:                                            ; preds = %bb.og
  %i.ajl = extractvalue { i64, i64 } %i.ajh, 1, !dbg !26463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !26467
  store i64 %i.aji, ptr %i.cd, align 8, !dbg !26467
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8, !dbg !26467
  store i64 %i.ajl, ptr %i.ajm, align 8, !dbg !26467
    #dbg_value(i64 1, !23709, !DIExpression(), !25598)
    #dbg_value(ptr poison, !24147, !DIExpression(), !25599)
    #dbg_value(ptr poison, !24147, !DIExpression(), !25600)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !24230, !DIExpression(), !24407)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !23612)
    #dbg_value(i8 0, !6359, !DIExpression(), !23612)
  %i.ajn = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26468 ; 2 uses
  %i.ajo = icmp ult i64 %i.ajn, 6, !dbg !26469
  call void @llvm.assume(i1 %i.ajo), !dbg !26469
    #dbg_value(ptr poison, !24148, !DIExpression(), !25601)
    #dbg_value(i8 poison, !24174, !DIExpression(), !25602)
    #dbg_value(i8 poison, !24180, !DIExpression(), !25607)
    #dbg_value(i8 poison, !24159, !DIExpression(), !25608)
  %.not329 = icmp eq i64 %i.ajn, 0, !dbg !26470
  br i1 %.not329, label %bb.ok, label %bb.oj, !dbg !24392

bb.oi:                                            ; preds = %bb.og
    #dbg_value(i64 poison, !23705, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25583)
  %i.ajp = add i64 %.sroa.018.01503, 1, !dbg !26471 ; 2 uses
    #dbg_value(i64 %i.ajp, !23704, !DIExpression(), !25582)
    #dbg_value(ptr undef, !24054, !DIExpression(), !24060)
    #dbg_value(ptr undef, !24056, !DIExpression(), !24059)
    #dbg_value(ptr undef, !24046, !DIExpression(), !24053)
    #dbg_value(ptr undef, !24047, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25584)
  %exitcond.not = icmp eq i64 %i.ajp, %i.ajd, !dbg !26459
  br i1 %exitcond.not, label %.loopexit, label %bb.og, !dbg !24052

bb.oj:                                            ; preds = %bb.oh
    #dbg_value(ptr %i.cd, !23711, !DIExpression(), !25609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !dbg !26472
  store ptr %i.cd, ptr %i.cc, align 8, !dbg !26472
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8, !dbg !26472
  store ptr @_RNvXs5_NtCs3f36owOmepS_6quiche5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4119.0..sroa_idx, align 8, !dbg !26472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !dbg !24392
  store ptr @67, ptr %i.cb, align 8, !dbg !24392
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8, !dbg !24392
  store i64 19, ptr %i.ajq, align 8, !dbg !24392
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.cb, i64 16, !dbg !24392
  store ptr @67, ptr %i.ajr, align 8, !dbg !24392
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.cb, i64 24, !dbg !24392
  store i64 19, ptr %i.ajs, align 8, !dbg !24392
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.cb, i64 32, !dbg !24392
  store ptr @184, ptr %i.ajt, align 8, !dbg !24392
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @155, ptr noundef nonnull %i.cc, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cb), !dbg !24392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !24392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !dbg !24392
  br label %bb.ok, !dbg !24392

bb.ok:                                            ; preds = %bb.oh, %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !dbg !26473
  br label %.loopexit, !dbg !26474

bb.ol:                                            ; preds = %.loopexit, %._crit_edge1501, %bb.nj
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.nj ], [ undef, %._crit_edge1501 ], [ undef, %.loopexit ], !dbg !24061
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.nj ], [ -1, %._crit_edge1501 ], [ -1, %.loopexit ], !dbg !24061
  %i.aju = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !26398
  %i.ajv = insertvalue { i64, i64 } %i.aju, i64 %.sroa.4.1, 1, !dbg !26398
  ret { i64, i64 } %i.ajv, !dbg !26398

bb.om:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !26475
    #dbg_value(ptr %1, !24469, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25613)
    #dbg_value(ptr %1, !24473, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !25616)
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 14680, !dbg !26476
  %i.ajx = load ptr, ptr %i.ajw, align 8, !dbg !26476, !nonnull !1793, !noundef !1793
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 14688, !dbg !26477
  %i.ajz = load i64, ptr %i.ajy, align 16, !dbg !26477, !noundef !1793
  store ptr %i.ajx, ptr %i.co, align 8, !dbg !26478
  %i.aka = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !26478
  store i64 %i.ajz, ptr %i.aka, align 8, !dbg !26478
    #dbg_value(ptr %i.co, !23689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25628)
    #dbg_value(ptr %i.cp, !23689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !26479
  store ptr %i.co, ptr %i.cn, align 8, !dbg !26479
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8, !dbg !26479
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.496.0..sroa_idx, align 8, !dbg !26479
  %i.akb = getelementptr inbounds nuw i8, ptr %i.cn, i64 16, !dbg !26479
  store ptr %i.cp, ptr %i.akb, align 8, !dbg !26479
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24, !dbg !26479
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4100.0..sroa_idx, align 8, !dbg !26479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !24150
  store ptr @67, ptr %i.cm, align 8, !dbg !24150
  %i.akc = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !24150
  store i64 19, ptr %i.akc, align 8, !dbg !24150
  %i.akd = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !24150
  store ptr @67, ptr %i.akd, align 8, !dbg !24150
  %i.ake = getelementptr inbounds nuw i8, ptr %i.cm, i64 24, !dbg !24150
  store i64 19, ptr %i.ake, align 8, !dbg !24150
  %i.akf = getelementptr inbounds nuw i8, ptr %i.cm, i64 32, !dbg !24150
  store ptr @185, ptr %i.akf, align 8, !dbg !24150
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @170, ptr noundef nonnull %i.cn, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cm), !dbg !24150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !24150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !24150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !24150
  %.pre1892.a = load i64, ptr %i.cp, align 8, !dbg !26480, !range !7252
  %.pre1893 = load i64, ptr %i.agu, align 8, !dbg !26480
  br label %bb.on, !dbg !24150

bb.on:                                            ; preds = %bb.nk, %bb.om
  %i.akg = phi i64 [ %i.agt, %bb.nk ], [ %.pre1893, %bb.om ], !dbg !26480
  %i.akh = phi i64 [ %i.ka, %bb.nk ], [ %.pre1892.a, %bb.om ], !dbg !26480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !26481
  br label %bb.nj, !dbg !25632
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn15handle_writable(ptr noalias nofree noundef align 8 dereferenceable(712) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26499 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
    #dbg_value(i64 %3, !26561, !DIExpression(), !26590)
    #dbg_value(i64 %3, !26591, !DIExpression(), !26598)
  store i64 %3, ptr %i.p, align 8
    #dbg_value(ptr %0, !26558, !DIExpression(), !26590)
    #dbg_value(ptr %1, !26559, !DIExpression(), !26590)
    #dbg_value(ptr %1, !26599, !DIExpression(), !26602)
    #dbg_value(ptr %1, !26599, !DIExpression(), !26604)
    #dbg_value(ptr %1, !26593, !DIExpression(), !26598)
    #dbg_value(ptr %1, !26599, !DIExpression(), !26606)
    #dbg_value(ptr %2, !26560, !DIExpression(), !26590)
    #dbg_value(ptr %2, !26607, !DIExpression(), !26611)
    #dbg_value(ptr %2, !26612, !DIExpression(), !26616)
    #dbg_value(ptr %2, !26617, !DIExpression(), !26621)
    #dbg_value(ptr %2, !26617, !DIExpression(), !26623)
    #dbg_declare(ptr %i.o, !26562, !DIExpression(), !26624)
    #dbg_declare(ptr %i.k, !26572, !DIExpression(), !26625)
    #dbg_declare(ptr %i.f, !26582, !DIExpression(), !26626)
    #dbg_value(ptr poison, !26627, !DIExpression(), !26632)
    #dbg_value(i8 -1, !26633, !DIExpression(), !26644)
    #dbg_declare(ptr poison, !26634, !DIExpression(), !26645)
    #dbg_value(i8 -1, !26646, !DIExpression(), !26651)
    #dbg_value(i8 0, !26652, !DIExpression(), !26658)
    #dbg_declare(ptr poison, !26634, !DIExpression(), !26663)
    #dbg_value(ptr poison, !26627, !DIExpression(), !26665)
    #dbg_value(i8 -1, !26633, !DIExpression(), !26668)
    #dbg_declare(ptr poison, !26634, !DIExpression(), !26669)
    #dbg_value(i8 -1, !26646, !DIExpression(), !26674)
    #dbg_value(i8 0, !26652, !DIExpression(), !26679)
    #dbg_declare(ptr poison, !26634, !DIExpression(), !26684)
    #dbg_value(i8 1, !26595, !DIExpression(), !26598)
    #dbg_value(ptr poison, !26627, !DIExpression(), !26686)
    #dbg_value(i8 -1, !26633, !DIExpression(), !26689)
    #dbg_declare(ptr poison, !26634, !DIExpression(), !26690)
    #dbg_value(i8 -1, !26646, !DIExpression(), !26695)
    #dbg_value(i8 0, !26652, !DIExpression(), !26700)
    #dbg_declare(ptr poison, !26634, !DIExpression(), !26705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !26870
  call fastcc void @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection15stream_capacityCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, i64 noundef %3) #24, !dbg !26871
    #dbg_value(i64 4, !26564, !DIExpression(), !26706)
    #dbg_value(ptr poison, !26628, !DIExpression(), !26707)
    #dbg_value(ptr poison, !26628, !DIExpression(), !26708)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !26653, !DIExpression(), !26658)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !26518)
    #dbg_value(i8 0, !6359, !DIExpression(), !26518)
  %i.q = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26872 ; 2 uses
  %i.r = icmp ult i64 %i.q, 6, !dbg !26873
  tail call void @llvm.assume(i1 %i.r), !dbg !26873
    #dbg_value(ptr poison, !26629, !DIExpression(), !26709)
    #dbg_value(i8 poison, !26637, !DIExpression(), !26710)
    #dbg_value(i8 poison, !26647, !DIExpression(), !26715)
    #dbg_value(i8 poison, !26636, !DIExpression(), !26716)
  %i.s = icmp samesign ugt i64 %i.q, 3, !dbg !26874
  br i1 %i.s, label %bb.b, label %bb.c, !dbg !26631

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !26875
    #dbg_value(ptr %1, !26717, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26720)
    #dbg_value(ptr %1, !26721, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26724)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 14680, !dbg !26876
  %i.u = load ptr, ptr %i.t, align 8, !dbg !26876, !nonnull !1793, !noundef !1793
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 14688, !dbg !26877
  %i.w = load i64, ptr %i.v, align 16, !dbg !26877, !noundef !1793
  store ptr %i.u, ptr %i.n, align 8, !dbg !26878
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !26878
  store i64 %i.w, ptr %i.x, align 8, !dbg !26878
    #dbg_value(ptr %i.n, !26566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26735)
    #dbg_value(ptr %i.p, !26566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26735)
    #dbg_value(ptr %i.o, !26566, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !26879
  store ptr %i.n, ptr %i.m, align 8, !dbg !26879
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !26879
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !26879
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !26879
  store ptr %i.p, ptr %i.y, align 8, !dbg !26879
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !26879
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !26879
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !26879
  store ptr %i.o, ptr %i.z, align 8, !dbg !26879
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !26879
  store ptr @_RNvXst_NtCskKLDkoKarTP_4core6resultINtB5_6ResultjNtNtCs3f36owOmepS_6quiche5error5ErrorENtNtB7_3fmt5Debug3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !26879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !26631
  store ptr @67, ptr %i.l, align 8, !dbg !26631
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !26631
  store i64 19, ptr %i.aa, align 8, !dbg !26631
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !26631
  store ptr @67, ptr %i.ab, align 8, !dbg !26631
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !26631
  store i64 19, ptr %i.ac, align 8, !dbg !26631
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !26631
  store ptr @186, ptr %i.ad, align 8, !dbg !26631
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @127, ptr noundef nonnull %i.m, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l), !dbg !26631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !26631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !26631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !26631
  br label %bb.c, !dbg !26631

bb.c:                                             ; preds = %bb.a, %bb.b
    #dbg_value(ptr %i.p, !26608, !DIExpression(), !26611)
    #dbg_value(ptr %i.p, !26561, !DIExpression(DW_OP_deref), !26590)
    #dbg_value(ptr %i.p, !26591, !DIExpression(DW_OP_deref), !26598)
  %i.ae = call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyyEBT_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !26880
  br i1 %i.ae, label %bb.d, label %bb.w, !dbg !26881

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.p, !26613, !DIExpression(), !26616)
    #dbg_value(ptr %i.p, !26561, !DIExpression(DW_OP_deref), !26590)
    #dbg_value(ptr %i.p, !26591, !DIExpression(DW_OP_deref), !26598)
  %i.af = call noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE7get_mutyEBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !26882 ; 10 uses
    #dbg_value(ptr %i.af, !26736, !DIExpression(), !26740)
  %.not = icmp eq ptr %i.af, null, !dbg !26883
  br i1 %.not, label %bb.f, label %bb.e, !dbg !26884, !prof !3051

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.af, !26569, !DIExpression(), !26741)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !26885 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !26886
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !26887, !range !3252, !noundef !1793
  %.not101 = icmp eq i64 %i.ai, -1, !dbg !26887
  br i1 %.not101, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit, label %bb.g, !dbg !26888

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #23, !dbg !26889
  unreachable, !dbg !26889

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 57, !dbg !26887
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !26887, !range !7220, !noundef !1793
  %.not102 = icmp eq i8 %i.ak, 2, !dbg !26887
  br i1 %.not102, label %.thread, label %bb.k, !dbg !26888

bb.h:                                             ; preds = %bb.k
  %.pr.pre = load i64, ptr %i.ag, align 8, !dbg !26890, !alias.scope !26742
  %i.al = icmp eq i64 %.pr.pre, -1, !dbg !26890
    #dbg_value(ptr %i.ag, !3310, !DIExpression(), !26532)
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit, label %.thread, !dbg !26890

.thread:                                          ; preds = %bb.g, %bb.h
    #dbg_value(ptr %i.ag, !3317, !DIExpression(), !26534)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit.i unwind label %bb.i, !dbg !26891

bb.i:                                             ; preds = %.thread
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ag, !3322, !DIExpression(), !26536)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body unwind label %bb.j, !dbg !26892

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !26891
  unreachable, !dbg !26891

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %.thread
    #dbg_value(ptr %i.ag, !3322, !DIExpression(), !26538)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.p, !dbg !26893

bb.k:                                             ; preds = %bb.g
    #dbg_value(ptr %i.ag, !26570, !DIExpression(), !26743)
    #dbg_value(ptr %i.ag, !26744, !DIExpression(), !26747)
    #dbg_value(ptr %i.ag, !26748, !DIExpression(), !26751)
    #dbg_value(ptr %i.ag, !26752, !DIExpression(), !26756)
    #dbg_value(ptr %i.ah, !26571, !DIExpression(), !26757)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !26894
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !26894, !nonnull !1793, !noundef !1793
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !26895
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !26895, !noundef !1793
  %i.as = load i64, ptr %i.p, align 8, !dbg !26896, !noundef !1793
    #dbg_value(i64 %i.as, !26591, !DIExpression(), !26598)
    #dbg_value(i64 %i.as, !26561, !DIExpression(), !26590)
  %i.at = call { i64, i64 } @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection27send_response_with_priorityNtB6_6HeaderNtNtB8_7buffers17DefaultBufFactoryECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.ah, i1 noundef zeroext false), !dbg !26897 ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0, !dbg !26897 ; 4 uses
  %i.av = extractvalue { i64, i64 } %i.at, 1, !dbg !26897
  %.not103 = icmp eq i64 %i.au, -1, !dbg !26896
  br i1 %.not103, label %bb.h, label %bb.l, !dbg !26898

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp ne i64 %i.au, 34, !dbg !26896
  call void @llvm.assume(i1 %i.aw), !dbg !26896
  %i.ax = icmp eq i64 %i.au, 35, !dbg !26898
  br i1 %i.ax, label %bb.w, label %bb.m, !dbg !26898

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !26899
  store i64 %i.au, ptr %i.k, align 8, !dbg !26899
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26899
  store i64 %i.av, ptr %i.ay, align 8, !dbg !26899
    #dbg_value(i64 1, !26574, !DIExpression(), !26764)
    #dbg_value(ptr poison, !26628, !DIExpression(), !26765)
    #dbg_value(ptr poison, !26628, !DIExpression(), !26766)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !26653, !DIExpression(), !26679)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !26546)
    #dbg_value(i8 0, !6359, !DIExpression(), !26546)
  %i.az = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26900 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 6, !dbg !26901
  call void @llvm.assume(i1 %i.ba), !dbg !26901
    #dbg_value(ptr poison, !26629, !DIExpression(), !26767)
    #dbg_value(i8 poison, !26639, !DIExpression(), !26768)
    #dbg_value(i8 poison, !26647, !DIExpression(), !26773)
    #dbg_value(i8 poison, !26636, !DIExpression(), !26774)
  %.not106 = icmp eq i64 %i.az, 0, !dbg !26902
  br i1 %.not106, label %bb.o, label %bb.n, !dbg !26664

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !26903
    #dbg_value(ptr %1, !26717, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26777)
    #dbg_value(ptr %1, !26721, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26780)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 14680, !dbg !26904
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !26904, !nonnull !1793, !noundef !1793
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 14688, !dbg !26905
  %i.be = load i64, ptr %i.bd, align 16, !dbg !26905, !noundef !1793
  store ptr %i.bc, ptr %i.j, align 8, !dbg !26906
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !26906
  store i64 %i.be, ptr %i.bf, align 8, !dbg !26906
    #dbg_value(ptr %i.j, !26576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26792)
    #dbg_value(ptr %i.k, !26576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26792)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !26907
  store ptr %i.j, ptr %i.i, align 8, !dbg !26907
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !26907
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !26907
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !26907
  store ptr %i.k, ptr %i.bg, align 8, !dbg !26907
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !26907
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !26907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !26664
  store ptr @67, ptr %i.h, align 8, !dbg !26664
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !26664
  store i64 19, ptr %i.bh, align 8, !dbg !26664
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !26664
  store ptr @67, ptr %i.bi, align 8, !dbg !26664
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !26664
  store i64 19, ptr %i.bj, align 8, !dbg !26664
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !26664
  store ptr @188, ptr %i.bk, align 8, !dbg !26664
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @115, ptr noundef nonnull %i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h), !dbg !26664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !26664
  br label %bb.o, !dbg !26664

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !26908
  br label %bb.w, !dbg !26909

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !26910

.body:                                            ; preds = %bb.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.p ], [ %i.am, %bb.i ]
  store i64 -1, ptr %i.ag, align 8, !dbg !26910
  resume { ptr, i32 } %eh.lpad-body, !dbg !26911

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.e, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsiGRwBGCeC5s_11quiche_apps.exit.i
  store i64 -1, ptr %i.ag, align 8, !dbg !26910
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 57, !dbg !26912
  store i8 2, ptr %i.bm, align 1, !dbg !26912
    #dbg_value(ptr %i.af, !26794, !DIExpression(), !26798)
    #dbg_value(ptr %i.af, !26799, !DIExpression(), !26802)
    #dbg_value(ptr %i.af, !26730, !DIExpression(), !26805)
    #dbg_value(ptr %i.af, !26732, !DIExpression(), !26808)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !26913 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !26913, !noundef !1793 ; 4 uses
    #dbg_value(i64 %i.bo, !26795, !DIExpression(), !26809)
    #dbg_value(i64 %i.bo, !26810, !DIExpression(), !26814)
    #dbg_value(i64 %i.bo, !26815, !DIExpression(), !26820)
    #dbg_value(i64 %i.bo, !26821, !DIExpression(), !26826)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !26914 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !26914, !noundef !1793 ; 4 uses
    #dbg_value(ptr poison, !26811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26814)
    #dbg_value(ptr poison, !26816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26820)
    #dbg_value(ptr poison, !26822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26826)
    #dbg_value(i64 %i.bq, !26811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26814)
    #dbg_value(i64 %i.bq, !26816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26820)
    #dbg_value(i64 %i.bq, !26822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26826)
  %i.br = icmp ugt i64 %i.bo, %i.bq, !dbg !26915
  br i1 %i.br, label %bb.r, label %bb.q, !dbg !26915, !prof !3051

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !26916
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !26916, !nonnull !1793, !noundef !1793
    #dbg_value(ptr %i.bt, !26811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26814)
    #dbg_value(ptr %i.bt, !26816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26820)
    #dbg_value(ptr %i.bt, !26822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26826)
  %i.bu = sub nuw i64 %i.bq, %i.bo, !dbg !26917
    #dbg_value(i64 %i.bu, !26817, !DIExpression(), !26833)
    #dbg_value(i64 %i.bu, !26823, !DIExpression(), !26826)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bo, !dbg !26918
    #dbg_value(ptr %i.bv, !26579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26834)
    #dbg_value(ptr %i.bv, !26594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26598)
    #dbg_value(i64 %i.bu, !26579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26834)
    #dbg_value(i64 %i.bu, !26594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26598)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !26919
    #dbg_value(ptr %0, !26592, !DIExpression(), !26598)
  %i.bw = load i64, ptr %i.p, align 8, !dbg !26920, !noundef !1793
    #dbg_value(i64 %i.bw, !26591, !DIExpression(), !26598)
    #dbg_value(i64 %i.bw, !26561, !DIExpression(), !26590)
  call void @_RINvMsd_NtCs3f36owOmepS_6quiche2h3NtB6_10Connection12do_send_bodyNtNtB8_7buffers17DefaultBufFactoryRShjNCINvB2_9send_bodyB11_E0ECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %1, i64 noundef %i.bw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bu, i1 noundef zeroext true), !dbg !26921
  %i.bx = load i64, ptr %i.g, align 16, !dbg !26919, !range !7219, !noundef !1793 ; 2 uses
  switch i64 %i.bx, label %bb.u [
    i64 -1, label %bb.s
    i64 23, label %bb.t
  ], !dbg !26922

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEEECsiGRwBGCeC5s_11quiche_apps.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bo, i64 noundef %i.bq, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #23, !dbg !26923
  unreachable, !dbg !26923

bb.s:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26924
  %i.bz = load i64, ptr %i.by, align 8, !dbg !26924, !noundef !1793
    #dbg_value(i64 %i.bz, !26580, !DIExpression(), !26835)
  br label %bb.t, !dbg !26925

bb.t:                                             ; preds = %bb.q, %bb.s
  %.sroa.010.0 = phi i64 [ %i.bz, %bb.s ], [ 0, %bb.q ], !dbg !26834
    #dbg_value(i64 %.sroa.010.0, !26580, !DIExpression(), !26835)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !26926
  %i.ca = load i64, ptr %i.bn, align 8, !dbg !26927, !noundef !1793
  %i.cb = add i64 %i.ca, %.sroa.010.0, !dbg !26927 ; 2 uses
  store i64 %i.cb, ptr %i.bn, align 8, !dbg !26927
    #dbg_value(ptr %i.af, !26836, !DIExpression(), !26839)
  %i.cc = load i64, ptr %i.bp, align 8, !dbg !26928, !noundef !1793 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, -1, !dbg !26929
  call void @llvm.assume(i1 %i.cd), !dbg !26930
  %i.ce = icmp eq i64 %i.cb, %i.cc, !dbg !26931
  br i1 %i.ce, label %bb.v, label %bb.w, !dbg !26931

bb.u:                                             ; preds = %bb.q
  %4 = icmp ne i64 %i.bx, 34, !dbg !26919
  call void @llvm.assume(i1 %4), !dbg !26919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !26932
  %5 = load <2 x i64>, ptr %i.g, align 16, !dbg !26932
  store <2 x i64> %5, ptr %i.f, align 16, !dbg !26932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !26933
    #dbg_value(ptr %i.p, !26618, !DIExpression(), !26621)
    #dbg_value(ptr %i.p, !26561, !DIExpression(DW_OP_deref), !26590)
    #dbg_value(ptr %i.p, !26591, !DIExpression(DW_OP_deref), !26598)
  call void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeyEBT_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !26934
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e), !dbg !26935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !26935
    #dbg_value(i64 1, !26584, !DIExpression(), !26840)
    #dbg_value(ptr poison, !26628, !DIExpression(), !26841)
    #dbg_value(ptr poison, !26628, !DIExpression(), !26842)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !26653, !DIExpression(), !26700)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6356, !DIExpression(), !26555)
    #dbg_value(i8 0, !6359, !DIExpression(), !26555)
  %i.cf = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !26936 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 6, !dbg !26937
  call void @llvm.assume(i1 %i.cg), !dbg !26937
    #dbg_value(ptr poison, !26629, !DIExpression(), !26843)
    #dbg_value(i8 poison, !26641, !DIExpression(), !26844)
    #dbg_value(i8 poison, !26647, !DIExpression(), !26849)
    #dbg_value(i8 poison, !26636, !DIExpression(), !26850)
  %.not105 = icmp eq i64 %i.cf, 0, !dbg !26938
  br i1 %.not105, label %bb.y, label %bb.x, !dbg !26685

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26939
    #dbg_value(ptr %i.p, !26618, !DIExpression(), !26623)
    #dbg_value(ptr %i.p, !26561, !DIExpression(DW_OP_deref), !26590)
    #dbg_value(ptr %i.p, !26591, !DIExpression(DW_OP_deref), !26598)
  call void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeyEBT_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !26940
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiGRwBGCeC5s_11quiche_apps6common15PartialResponseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a), !dbg !26941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26941
  br label %bb.w, !dbg !26942

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.y, %bb.c, %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !26943
  ret void, !dbg !26944

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26945
    #dbg_value(ptr %1, !26717, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26853)
    #dbg_value(ptr %1, !26721, !DIExpression(DW_OP_plus_uconst, 14672, DW_OP_stack_value), !26856)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 14680, !dbg !26946
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !26946, !nonnull !1793, !noundef !1793
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14688, !dbg !26947
  %i.ck = load i64, ptr %i.cj, align 16, !dbg !26947, !noundef !1793
  store ptr %i.ci, ptr %i.d, align 8, !dbg !26948
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !26948
  store i64 %i.ck, ptr %i.cl, align 8, !dbg !26948
    #dbg_value(ptr %i.d, !26586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26868)
    #dbg_value(ptr %i.f, !26586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26868)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26949
  store ptr %i.d, ptr %i.c, align 8, !dbg !26949
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !26949
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiGRwBGCeC5s_11quiche_apps, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !26949
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !26949
  store ptr %i.f, ptr %i.cm, align 8, !dbg !26949
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !26949
  store ptr @_RNvXsh_NtCs3f36owOmepS_6quiche2h3NtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.437.0..sroa_idx, align 8, !dbg !26949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26685
  store ptr @67, ptr %i.b, align 8, !dbg !26685
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26685
  store i64 19, ptr %i.cn, align 8, !dbg !26685
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !26685
  store ptr @67, ptr %i.co, align 8, !dbg !26685
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !26685
  store i64 19, ptr %i.cp, align 8, !dbg !26685
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !26685
  store ptr @189, ptr %i.cq, align 8, !dbg !26685
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull @115, ptr noundef nonnull %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b), !dbg !26685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !26685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26685
  br label %bb.y, !dbg !26685

bb.y:                                             ; preds = %bb.u, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !26950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !26926
  br label %bb.w, !dbg !26951
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3ConnNtB5_8HttpConn16handle_responses(ptr noalias nofree noundef align 8 dereferenceable(712) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27003 {
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
    #dbg_value(ptr poison, !27450, !DIExpression(), !27457)
    #dbg_value(ptr poison, !27470, !DIExpression(), !27473)
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
    #dbg_value(ptr poison, !27474, !DIExpression(), !27022)
    #dbg_value(ptr poison, !27484, !DIExpression(), !27023)
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 10 uses
  %i.am = alloca [16 x i8], align 8               ; 9 uses
  %i.an = alloca [8 x i8], align 8                ; 6 uses
  %i.ao = alloca [40 x i8], align 8               ; 9 uses
    #dbg_value(ptr poison, !27490, !DIExpression(), !27033)
    #dbg_value(ptr poison, !27499, !DIExpression(), !27034)
  %i.ap = alloca [40 x i8], align 8               ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !27357, !DIExpression(), !27505)
    #dbg_value(ptr %1, !27358, !DIExpression(), !27505)
    #dbg_value(ptr %1, !27506, !DIExpression(), !27515)
    #dbg_value(ptr %1, !27516, !DIExpression(), !27519)
    #dbg_value(ptr %1, !27516, !DIExpression(), !27521)
    #dbg_value(ptr %2, !27359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27505)
    #dbg_value(ptr %2, !27512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27515)
    #dbg_value(ptr %2, !27522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27526)
    #dbg_value(ptr %2, !27527, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27531)
    #dbg_value(ptr %2, !27532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27537)
    #dbg_value(ptr %2, !27538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27544)
    #dbg_value(ptr %2, !27522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27546)
    #dbg_value(ptr %2, !27527, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27549)
    #dbg_value(ptr %2, !27532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27552)
    #dbg_value(ptr %2, !27538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27555)
    #dbg_value(ptr %2, !27522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27557)
    #dbg_value(ptr %2, !27527, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27560)
    #dbg_value(ptr %2, !27532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27563)
    #dbg_value(ptr %2, !27538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27566)
    #dbg_value(ptr %2, !27567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27570)
    #dbg_value(ptr %2, !27571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27575)
    #dbg_value(ptr %2, !27532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27578)
    #dbg_value(ptr %2, !27538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27581)
    #dbg_value(i64 %3, !27359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27505)
    #dbg_value(i64 %3, !27512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27515)
    #dbg_value(i64 %3, !27522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27526)
    #dbg_value(i64 %3, !27527, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27531)
    #dbg_value(i64 %3, !27532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27537)
    #dbg_value(i64 %3, !27538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27544)
    #dbg_value(i64 %3, !27522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27546)
    #dbg_value(i64 %3, !27527, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27549)
    #dbg_value(i64 %3, !27532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27552)
    #dbg_value(i64 %3, !27538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27555)
    #dbg_value(i64 %3, !27522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27557)
    #dbg_value(i64 %3, !27527, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27560)
    #dbg_value(i64 %3, !27532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27563)
    #dbg_value(i64 %3, !27538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27566)
    #dbg_value(i64 %3, !27567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27570)
    #dbg_value(i64 %3, !27571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27575)
    #dbg_value(i64 %3, !27532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27578)
    #dbg_value(i64 %3, !27538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27581)
    #dbg_value(ptr %4, !27360, !DIExpression(), !27505)
    #dbg_declare(ptr %i.as, !27362, !DIExpression(), !27582)
    #dbg_declare(ptr %i.al, !27523, !DIExpression(), !27583)
    #dbg_declare(ptr %i.al, !27528, !DIExpression(), !27584)
    #dbg_declare(ptr %i.al, !27533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27585)
    #dbg_declare(ptr %i.al, !27523, !DIExpression(), !27586)
    #dbg_declare(ptr %i.al, !27528, !DIExpression(), !27587)
    #dbg_declare(ptr %i.al, !27533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27588)
    #dbg_declare(ptr %i.ab, !27395, !DIExpression(), !27589)
    #dbg_declare(ptr %i.w, !27408, !DIExpression(), !27590)
    #dbg_declare(ptr %i.m, !27427, !DIExpression(), !27591)
    #dbg_declare(ptr %i.i, !27572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27592)
    #dbg_declare(ptr %i.i, !27533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27593)
    #dbg_declare(ptr %i.h, !27435, !DIExpression(), !27594)
    #dbg_declare(ptr %i.f, !27468, !DIExpression(), !27600)
    #dbg_value(ptr poison, !27601, !DIExpression(), !27606)
    #dbg_value(i8 -1, !27607, !DIExpression(), !27630)
    #dbg_declare(ptr poison, !27608, !DIExpression(), !27631)
    #dbg_value(i8 -1, !27632, !DIExpression(), !27637)
    #dbg_value(ptr poison, !27601, !DIExpression(), !27639)
    #dbg_value(i8 -1, !27607, !DIExpression(), !27642)
    #dbg_declare(ptr poison, !27608, !DIExpression(), !27643)
    #dbg_value(i8 -1, !27632, !DIExpression(), !27648)
    #dbg_value(ptr poison, !27601, !DIExpression(), !27650)
end_hunk_3
