Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.5?download=true
inline.NumInlined: 228
inline.NumDeleted: 106
begin_hunk_0_@_RNvMCshhfsHpF03Qr_6netlogNtB2_11EventHeader16populate_strings:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit20: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhfsHpF03Qr_6netlog.exit.i17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !9090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9095
  ret void, !dbg !9096

bb.l:                                             ; preds = %.body18, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body19, %.body18 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn, !dbg !9097
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringB1E_NtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCshhfsHpF03Qr_6netlog(ptr %.0.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9102 {
bb.a:
    #dbg_declare(ptr poison, !9139, !DIExpression(), !9147)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
    #dbg_value(ptr %.0.val, !9141, !DIExpression(), !9148)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !9191
    #dbg_value(ptr %i.a, !9149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9162)
    #dbg_value(i64 11, !9149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9162)
    #dbg_value(i64 %.16.val, !9156, !DIExpression(), !9162)
    #dbg_value(i64 %.16.val, !9163, !DIExpression(), !9174)
    #dbg_value(i64 %.16.val, !9156, !DIExpression(), !9176)
    #dbg_value(i64 %.16.val, !9163, !DIExpression(), !9179)
    #dbg_value(ptr %i.a, !9170, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9174)
    #dbg_value(i64 11, !9170, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9174)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.16.val, !dbg !9192 ; 3 uses
    #dbg_value(ptr %i.b, !9143, !DIExpression(), !9180)
    #dbg_value(ptr %i.b, !9181, !DIExpression(), !9184)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 272, !dbg !9193
    #dbg_value(ptr %i.c, !9149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9176)
    #dbg_value(i64 11, !9149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9176)
    #dbg_value(ptr %i.c, !9170, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9179)
    #dbg_value(i64 11, !9170, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9179)
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.16.val, !dbg !9194 ; 4 uses
    #dbg_value(ptr %i.d, !9144, !DIExpression(), !9185)
    #dbg_value(ptr %i.d, !9145, !DIExpression(), !9186)
    #dbg_value(ptr %i.b, !9187, !DIExpression(), !9190)
    #dbg_value(ptr %i.b, !1269, !DIExpression(), !9110)
    #dbg_value(ptr %i.b, !1274, !DIExpression(), !9112)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhfsHpF03Qr_6netlog.exit.i unwind label %bb.b, !dbg !9195

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !1281, !DIExpression(), !9114)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c, !dbg !9196

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !9195
  unreachable, !dbg !9195

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhfsHpF03Qr_6netlog.exit.i: ; preds = %bb.a
    #dbg_value(ptr %i.b, !1281, !DIExpression(), !9116)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit unwind label %bb.d, !dbg !9197

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhfsHpF03Qr_6netlog.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !9198

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtBQ_6string6StringEECshhfsHpF03Qr_6netlog(ptr %i.d) #21
          to label %common.resume unwind label %bb.g, !dbg !9198

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhfsHpF03Qr_6netlog.exit.i
    #dbg_value(ptr poison, !1249, !DIExpression(), !9118)
    #dbg_value(ptr poison, !1254, !DIExpression(), !9120)
    #dbg_value(ptr %i.d, !1258, !DIExpression(), !9122)
    #dbg_value(ptr %i.d, !1264, !DIExpression(), !9124)
    #dbg_value(ptr %i.d, !1269, !DIExpression(), !9126)
    #dbg_value(ptr %i.d, !1274, !DIExpression(), !9128)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtBQ_6string6StringEECshhfsHpF03Qr_6netlog.exit unwind label %bb.e, !dbg !9199

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1281, !DIExpression(), !9130)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.f, !dbg !9200

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !9199
  unreachable, !dbg !9199

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !9201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtBQ_6string6StringEECshhfsHpF03Qr_6netlog.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit
    #dbg_value(ptr %i.d, !1281, !DIExpression(), !9132)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !9202
  ret void, !dbg !9203

bb.g:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !9204
  unreachable, !dbg !9204
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E6insertCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9227 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 4 uses
    #dbg_value(ptr %1, !9310, !DIExpression(), !9386)
    #dbg_declare(ptr %2, !9311, !DIExpression(), !9387)
    #dbg_declare(ptr %3, !9312, !DIExpression(), !9388)
    #dbg_declare(ptr %i.l, !9313, !DIExpression(), !9389)
    #dbg_declare(ptr %i.j, !9314, !DIExpression(), !9390)
    #dbg_declare(ptr %i.j, !9392, !DIExpression(), !9399)
    #dbg_declare(ptr %i.i, !9396, !DIExpression(), !9400)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !9500
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14), !dbg !9500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9401), !dbg !9501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9402), !dbg !9501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9403), !dbg !9501
    #dbg_value(ptr %1, !9404, !DIExpression(), !9243)
    #dbg_declare(ptr %2, !9417, !DIExpression(), !9244)
    #dbg_declare(ptr poison, !9423, !DIExpression(), !9245)
    #dbg_value(ptr %1, !9418, !DIExpression(), !9246)
    #dbg_value(ptr %1, !9419, !DIExpression(), !9246)
  %i.m = load ptr, ptr %1, align 8, !dbg !9502, !alias.scope !9402, !noundef !640 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null, !dbg !9502
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !9503

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9502
    #dbg_value(ptr %1, !9421, !DIExpression(), !9247)
    #dbg_value(ptr %1, !9425, !DIExpression(), !9250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9504, !noalias !9431
  %i.o = load i64, ptr %i.n, align 8, !dbg !9505, !alias.scope !9402, !noundef !640
  invoke void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringB1y_NtB1i_14LeafOrInternalE11search_treeB1y_ECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.j, !dbg !9506, !noalias !9432

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload16 = load i64, ptr %2, align 8, !dbg !9507, !alias.scope !9433
  %.sroa.7.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx18, i64 16, i1 false), !dbg !9507, !alias.scope !9433
  br label %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit, !dbg !9508

bb.d:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !9509, !noalias !9432
  unreachable, !dbg !9509

bb.e:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !dbg !9504, !range !2059, !noalias !9431, !noundef !640
  %i.r = trunc nuw i64 %i.q to i1, !dbg !9510
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9511 ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.f, !dbg !9510

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !dbg !9512, !noalias !9434
  %.sroa.9.8..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !9512
  %.sroa.9.8.copyload20 = load ptr, ptr %.sroa.9.8..sroa_idx19, align 8, !dbg !9512, !noalias !9434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9513, !noalias !9431
    #dbg_value(ptr %2, !1269, !DIExpression(), !9252)
    #dbg_value(ptr %2, !1274, !DIExpression(), !9254)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit.i unwind label %bb.g, !dbg !9514, !noalias !9401

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %2, !1281, !DIExpression(), !9256)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %.thread25 unwind label %bb.h, !dbg !9515, !noalias !9401

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !9514, !noalias !9401
  unreachable, !dbg !9514

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit.i: ; preds = %bb.f
    #dbg_value(ptr %2, !1281, !DIExpression(), !9258)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit.thread unwind label %bb.k, !dbg !9516, !noalias !9401

bb.i:                                             ; preds = %bb.e
  %.sroa.11.32.copyload = load ptr, ptr %i.s, align 8, !dbg !9517, !noalias !9434
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.32..sroa_idx, i64 16, i1 false), !dbg !9517, !noalias !9434
  %.sroa.0.0.copyload15 = load i64, ptr %2, align 8, !dbg !9518, !alias.scope !9433
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx17, i64 16, i1 false), !dbg !9518, !alias.scope !9433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9513, !noalias !9431
  br label %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit, !dbg !9513

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #21
          to label %.thread25 unwind label %bb.d, !dbg !9519, !noalias !9432

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread25, !dbg !9520

_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.i, %bb.c
  %.sroa.11.0 = phi ptr [ null, %bb.c ], [ %.sroa.11.32.copyload, %bb.i ], !dbg !9521 ; 3 uses
  %.sroa.0.021 = phi i64 [ %.sroa.0.0.copyload16, %bb.c ], [ %.sroa.0.0.copyload15, %bb.i ], !dbg !9521 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.021, -1, !dbg !9500
  br i1 %i.w, label %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit.thread, label %bb.n, !dbg !9522

_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit.i, %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit
  %.sroa.9.040 = phi ptr [ %1, %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit ], [ %.sroa.9.8.copyload20, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit.i ]
  %.sroa.11.039 = phi ptr [ %.sroa.11.0, %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit ], [ %1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !dbg !9523
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !9523
  store ptr %.sroa.9.040, ptr %.sroa.9.8..sroa_idx, align 8, !dbg !9523
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !9523
  store ptr %.sroa.11.039, ptr %.sroa.11.8..sroa_idx, align 8, !dbg !9523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !9524
    #dbg_value(ptr %i.l, !9436, !DIExpression(), !9261)
    #dbg_value(ptr %i.l, !9442, !DIExpression(), !9264)
    #dbg_declare(ptr %i.k, !9440, !DIExpression(), !9265)
    #dbg_declare(ptr poison, !9447, !DIExpression(), !9268)
  %i.x = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1C_NtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.t unwind label %bb.l, !dbg !9525, !noalias !9452

bb.l:                                             ; preds = %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #21
          to label %.thread29 unwind label %bb.m, !dbg !9526, !noalias !9453

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !9527, !noalias !9453
  unreachable, !dbg !9527

bb.n:                                             ; preds = %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9528
  store i64 %.sroa.0.021, ptr %i.j, align 8, !dbg !9528
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !9528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !dbg !9528
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !9528 ; 4 uses
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !9528
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !9528 ; 2 uses
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !9528
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !9528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false), !dbg !9528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !9529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9454), !dbg !9531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9455), !dbg !9531
    #dbg_declare(ptr %i.j, !9456, !DIExpression(), !9283)
    #dbg_declare(ptr %i.i, !9460, !DIExpression(), !9284)
    #dbg_declare(ptr %i.f, !9461, !DIExpression(), !9285)
    #dbg_declare(ptr %i.e, !9465, !DIExpression(), !9286)
    #dbg_declare(ptr %i.b, !9466, !DIExpression(), !9287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9532, !noalias !9473
  %.not.i6 = icmp eq ptr %.sroa.11.0, null, !dbg !9533
  br i1 %.not.i6, label %bb.o, label %.noexc10, !dbg !9534

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %i.j, !9476, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9291)
    #dbg_value(ptr %1, !9463, !DIExpression(), !9292)
    #dbg_value(ptr %1, !9482, !DIExpression(), !9295)
  %i.aa = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringB1s_NtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog()
          to label %.noexc9 unwind label %bb.q, !dbg !9535, !noalias !9473 ; 2 uses

.noexc9:                                          ; preds = %bb.o
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0, !dbg !9535 ; 3 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1, !dbg !9535 ; 2 uses
    #dbg_value(ptr %i.ab, !9486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9296)
    #dbg_value(i64 %i.ac, !9486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9296)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ], !dbg !9536
  store ptr %i.ab, ptr %1, align 8, !dbg !9537, !noalias !9473
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9537
  store i64 %i.ac, ptr %i.ad, align 8, !dbg !9537, !noalias !9473
    #dbg_value(ptr %1, !9464, !DIExpression(), !9297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9538, !noalias !9473
    #dbg_value(i64 %i.ac, !9488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9300)
    #dbg_value(ptr %i.ab, !9488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9300)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !9539
  store i64 %i.ac, ptr %i.ae, align 8, !dbg !9539, !noalias !9473
  store ptr %i.ab, ptr %i.e, align 8, !dbg !9539, !noalias !9473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9540, !noalias !9473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 24, i1 false), !dbg !9540, !noalias !9493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9541, !noalias !9473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !9541
  call void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1p_NtB19_4LeafE16push_with_handleCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !9542, !noalias !9473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9543, !noalias !9473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9543, !noalias !9473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9544, !noalias !9473
  br label %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringB1l_E8into_mutCshhfsHpF03Qr_6netlog.exit, !dbg !9545

.noexc10:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9546, !noalias !9473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false), !dbg !9546, !noalias !9493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9547, !noalias !9473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 24, i1 false), !dbg !9547, !noalias !9493
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 56, !dbg !9548
  call void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringB1D_NtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3a_11VacantEntryB1D_B1D_E12insert_entry0ECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.9.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af), !dbg !9549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9550, !noalias !9473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9551, !noalias !9473
  %.pre = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !9552, !alias.scope !9455
  br label %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringB1l_E8into_mutCshhfsHpF03Qr_6netlog.exit, !dbg !9551

bb.p:                                             ; preds = %bb.r, %bb.q
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !9553, !noalias !9454
  unreachable, !dbg !9553

bb.q:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #21
          to label %bb.r unwind label %bb.p, !dbg !9554, !noalias !9494

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j) #21
          to label %.thread29 unwind label %bb.p, !dbg !9554, !noalias !9454

_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringB1l_E8into_mutCshhfsHpF03Qr_6netlog.exit: ; preds = %.noexc10, %.noexc9
  %4 = phi ptr [ %.pre, %.noexc10 ], [ %1, %.noexc9 ], !dbg !9552
    #dbg_value(ptr %i.j, !9476, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9302)
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !9555 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !9555, !noalias !9493, !noundef !640
  %i.ak = add i64 %i.aj, 1, !dbg !9555
  store i64 %i.ak, ptr %i.ai, align 8, !dbg !9555, !noalias !9493
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9556
  %i.am = load ptr, ptr %i.f, align 8, !dbg !9556, !noalias !9473, !nonnull !640, !noundef !640
  %i.an = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !9557, !alias.scope !9455, !nonnull !640, !noundef !640
  store ptr %i.am, ptr %i.h, align 8, !dbg !9558, !alias.scope !9454
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !9558
  %i.ao = load <2 x i64>, ptr %i.al, align 8, !dbg !9556, !noalias !9473
  store <2 x i64> %i.ao, ptr %.sroa.4.0..sroa_idx.i7, align 8, !dbg !9558, !alias.scope !9454
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !9558
  store ptr %i.an, ptr %i.ap, align 8, !dbg !9558, !alias.scope !9454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9554, !noalias !9473
    #dbg_declare(ptr %i.h, !9495, !DIExpression(), !9305)
  %i.aq = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1C_NtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h), !dbg !9559 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9561
  store i64 -1, ptr %0, align 8, !dbg !9562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9563
  br label %bb.s, !dbg !9564

bb.s:                                             ; preds = %bb.t, %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringB1l_E8into_mutCshhfsHpF03Qr_6netlog.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !9564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !9564
  ret void, !dbg !9565

bb.t:                                             ; preds = %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog.exit.thread
  %i.ar = extractvalue { ptr, ptr } %i.x, 1, !dbg !9566 ; 2 uses
    #dbg_value(ptr %i.ar, !9450, !DIExpression(), !9306)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !dbg !9567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !9568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9570
  br label %bb.s, !dbg !9570

.thread29:                                        ; preds = %bb.l, %bb.r, %.thread25
  %.pn24 = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %eh.lpad-body28, %.thread25 ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %.pn24, !dbg !9571

.thread25:                                        ; preds = %bb.g, %bb.j, %bb.k
  %eh.lpad-body28 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.k ], [ %i.v, %bb.j ], [ %i.t, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #21
          to label %.thread29 unwind label %bb.u, !dbg !9520

bb.u:                                             ; preds = %.thread25
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !9571
  unreachable, !dbg !9571
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringB17_E10dying_nextCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9576 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
    #dbg_value(ptr %1, !9654, !DIExpression(), !9656)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !9760 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !9760, !noundef !640 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !9760
  br i1 %i.g, label %bb.b, label %bb.d, !dbg !9760

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9761
    #dbg_value(ptr %1, !9662, !DIExpression(), !9580)
    #dbg_declare(ptr %i.c, !9664, !DIExpression(), !9581)
  call void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10take_frontCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !dbg !9761
  %i.h = load ptr, ptr %i.c, align 8, !dbg !9762, !noalias !9666, !noundef !640
  %.not.i = icmp eq ptr %i.h, null, !dbg !9762
  br i1 %.not.i, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog.exit, label %bb.c, !dbg !9763

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !9764
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog.exit, !dbg !9765

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9766
  store ptr null, ptr %0, align 8, !dbg !9767
  br label %bb.i, !dbg !9768

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1, !dbg !9769
  store i64 %i.i, ptr %i.e, align 8, !dbg !9769
    #dbg_value(ptr %1, !9667, !DIExpression(), !9587)
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !dbg !9770, !noalias !9675 ; 3 uses
    #dbg_value(ptr %i.j, !9676, !DIExpression(), !9597)
  %.not.i1 = icmp eq ptr %i.j, null, !dbg !9771
  br i1 %.not.i1, label %bb.h, label %bb.e, !dbg !9772, !prof !1181

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.j, !9673, !DIExpression(), !9598)
    #dbg_value(ptr %i.j, !9691, !DIExpression(), !9601)
    #dbg_declare(ptr %i.d, !9698, !DIExpression(), !9609)
    #dbg_value(ptr %i.j, !9706, !DIExpression(), !9610)
    #dbg_value(ptr %i.j, !9717, !DIExpression(), !9613)
    #dbg_declare(ptr poison, !9709, !DIExpression(), !9614)
    #dbg_declare(ptr %i.b, !9710, !DIExpression(), !9615)
    #dbg_declare(ptr %i.b, !9721, !DIExpression(), !9616)
    #dbg_declare(ptr poison, !9724, !DIExpression(), !9620)
    #dbg_declare(ptr %i.a, !9732, !DIExpression(), !9628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9773, !noalias !9747
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringB1S_NtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !dbg !9774, !noalias !9748

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !dbg !9775, !noalias !9747, !noundef !640
  %.not.i.i.i = icmp eq ptr %i.k, null, !dbg !9775
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog.exit, !dbg !9776, !prof !1181

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
          to label %.noexc2.i.i unwind label %bb.g, !dbg !9777, !noalias !9749

.noexc2.i.i:                                      ; preds = %bb.f
  unreachable, !dbg !9777

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !9751, !DIExpression(), !9638)
    #dbg_value(ptr poison, !9757, !DIExpression(), !9641)
  tail call void @llvm.trap(), !dbg !9778
  unreachable, !dbg !9778

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !dbg !9779, !noalias !9675
  unreachable, !dbg !9779

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !9780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9781, !noalias !9747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !9782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !9783
  br label %bb.i, !dbg !9768

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog.exit
  ret void, !dbg !9784
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9785 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
    #dbg_value(ptr %0, !9811, !DIExpression(), !9813)
    #dbg_value(ptr %0, !9814, !DIExpression(), !9819)
    #dbg_declare(ptr %i.b, !9820, !DIExpression(), !9827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9856
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !dbg !9857 ; 3 uses
    #dbg_value(ptr %.sroa.06.0.copyload, !9828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9843)
    #dbg_value(i64 poison, !9828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9843)
    #dbg_value(i64 poison, !9828, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9843)
    #dbg_value(i64 poison, !9832, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9844)
    #dbg_value(ptr poison, !9832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9844)
    #dbg_value(i64 poison, !9832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9844)
  %.not = icmp eq ptr %.sroa.06.0.copyload, null, !dbg !9858
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9859

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9857
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !9857
    #dbg_value(i64 %.sroa.58.0.copyload, !9828, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9843)
    #dbg_value(i64 %.sroa.58.0.copyload, !9832, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9844)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9857
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !9857 ; 2 uses
    #dbg_value(i64 %.sroa.47.0.copyload, !9828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9843)
    #dbg_value(i64 %.sroa.47.0.copyload, !9832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9844)
    #dbg_value(i64 %.sroa.47.0.copyload, !9833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9845)
    #dbg_value(ptr %.sroa.06.0.copyload, !9833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9845)
    #dbg_value(i64 1, !9834, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9846)
    #dbg_value(ptr null, !9834, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9846)
    #dbg_value(ptr %.sroa.06.0.copyload, !9834, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9846)
    #dbg_value(i64 %.sroa.47.0.copyload, !9834, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9846)
    #dbg_value(i64 1, !9834, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9846)
    #dbg_value(ptr null, !9834, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9846)
    #dbg_value(ptr %.sroa.06.0.copyload, !9834, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !9846)
    #dbg_value(i64 %.sroa.47.0.copyload, !9834, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !9846)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9860
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !9860
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9860
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !9860
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9860
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !9860
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9860
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8, !dbg !9860
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9860
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8, !dbg !9860
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !9860
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8, !dbg !9860
  br label %bb.c, !dbg !9861

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink35 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !9844 ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ], !dbg !9844
  store i64 %.sink35, ptr %i.b, align 8, !dbg !9844
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9844
  store i64 %.sink35, ptr %i.c, align 8, !dbg !9844
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !9844
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8, !dbg !9844
    #dbg_value(ptr %i.b, !9847, !DIExpression(), !9796)
    #dbg_value(ptr %i.b, !9851, !DIExpression(), !9801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9862, !noalias !9855
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringB17_E10dying_nextCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !dbg !9863
  %i.e = load ptr, ptr %i.a, align 8, !dbg !9862, !noalias !9855, !noundef !640 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.e, null, !dbg !9862
  br i1 %.not7.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringB1A_EECshhfsHpF03Qr_6netlog.exit, label %.lr.ph.i.i, !dbg !9864

.lr.ph.i.i:                                       ; preds = %bb.c
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d, !dbg !9864

end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!9352 = !{!9350, !9351}
!9353 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9210, file: !474, baseType: !9209, align: 8, flags: DIFlagPrivate)
!9354 = !{!9353}
!9355 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut ()", baseType: !627, size: 64, align: 64, dwarfAddressSpace: 0)
!9356 = !DITemplateTypeParameter(name: "T", type: !9355)
!9357 = !{!9356}
!9358 = !DITemplateTypeParameter(name: "BorrowType", type: !9210)
!9359 = !{!9358, !1582, !925, !1592}
!9360 = !DITemplateTypeParameter(name: "Node", type: !9213)
!9361 = !{!9360, !1595}
!9362 = !DITemplateTypeParameter(name: "T", type: !9214)
!9363 = !{!9362}
!9364 = !DIDerivedType(tag: DW_TAG_member, scope: !9218, file: !474, baseType: !527, size: 64, align: 64, flags: DIFlagArtificial)
!9365 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !9225, file: !474, baseType: !9224, size: 192, align: 64, flags: DIFlagProtected)
!9366 = !DIDerivedType(tag: DW_TAG_member, name: "dormant_map", scope: !9225, file: !474, baseType: !9208, size: 64, align: 64, offset: 192, flags: DIFlagProtected)
!9367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !9225, file: !474, baseType: !54, align: 8, offset: 256, flags: DIFlagProtected)
!9368 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !9225, file: !474, baseType: !9205, align: 8, offset: 256, flags: DIFlagProtected)
!9369 = !{!9365, !9366, !9367, !9368}
!9370 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !9224, file: !474, baseType: !9223, size: 128, align: 64, flags: DIFlagPrivate)
!9371 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !9224, file: !474, baseType: !630, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!9372 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !9224, file: !474, baseType: !283, align: 8, offset: 192, flags: DIFlagPrivate)
!9373 = !{!9370, !9371, !9372}
!9374 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !9223, file: !474, baseType: !630, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!9375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !9223, file: !474, baseType: !262, size: 64, align: 64, flags: DIFlagPrivate)
!9376 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !9223, file: !474, baseType: !9222, align: 8, offset: 128, flags: DIFlagPrivate)
!9377 = !{!9374, !9375, !9376}
!9378 = !DITemplateTypeParameter(name: "T", type: !9221)
!9379 = !{!9378}
!9380 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9221, file: !474, baseType: !9210, align: 8)
!9381 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !9221, file: !474, baseType: !267, align: 8)
!9382 = !{!9380, !9381}
!9383 = !{!9358, !1582, !925, !1610}
!9384 = !DITemplateTypeParameter(name: "Node", type: !9223)
!9385 = !{!9384, !1626}
!9386 = !DILocation(line: 0, scope: !9227)
!9387 = !DILocation(line: 1045, column: 30, scope: !9227)
!9388 = !DILocation(line: 1045, column: 38, scope: !9227)
!9389 = !DILocation(line: 1050, column: 22, scope: !9226)
!9390 = !DILocation(line: 1051, column: 20, scope: !9220)
!9391 = !DIFile(filename: "library/alloc/src/collections/btree/map/entry.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "285eab8bd4ff0934fec7899727f7ebe5")
!9392 = !DILocalVariable(name: "self", arg: 1, scope: !9228, file: !9391, line: 425, type: !9219)
!9393 = !{!1268, !9219, !51}
!9394 = !DISubroutineType(types: !9393)
!9395 = !DISubprogram(name: "insert<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringB1j_E6insertCshhfsHpF03Qr_6netlog", scope: !9219, file: !9391, line: 425, type: !9394, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9396 = !DILocalVariable(name: "value", arg: 2, scope: !9228, file: !9391, line: 425, type: !51)
!9397 = !{!9392, !9396}
!9398 = !DILocation(line: 1052, column: 23, scope: !9220)
!9399 = !DILocation(line: 425, column: 19, scope: !9228, inlinedAt: !9398)
!9400 = !DILocation(line: 425, column: 25, scope: !9228, inlinedAt: !9398)
!9401 = !{!9230}
!9402 = !{!9231}
!9403 = !{!9232}
!9404 = !DILocalVariable(name: "self", arg: 1, scope: !9241, file: !1617, line: 1501, type: !2275)
!9405 = !{!9236, !2275, !51}
!9406 = !DISubroutineType(types: !9405)
!9407 = !{!9235}
!9408 = !DIDerivedType(tag: DW_TAG_member, name: "Vacant", scope: !9235, file: !474, baseType: !9234, size: 448, align: 64)
!9409 = !DIDerivedType(tag: DW_TAG_member, name: "Occupied", scope: !9235, file: !474, baseType: !9233, size: 448, align: 64, extraData: i64 -1)
!9410 = !{!9408, !9409}
!9411 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9233, file: !474, baseType: !9225, size: 256, align: 64, offset: 64, flags: DIFlagPublic)
!9412 = !{!9411}
!9413 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9234, file: !474, baseType: !9219, size: 448, align: 64, flags: DIFlagPublic)
!9414 = !{!9413}
!9415 = !DIDerivedType(tag: DW_TAG_member, scope: !9236, file: !474, baseType: !527, size: 64, align: 64, flags: DIFlagArtificial)
!9416 = !DISubprogram(name: "entry<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E5entryCshhfsHpF03Qr_6netlog", scope: !457, file: !1617, line: 1501, type: !9406, scopeLine: 1501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9417 = !DILocalVariable(name: "key", arg: 2, scope: !9241, file: !1617, line: 1501, type: !51)
!9418 = !DILocalVariable(name: "map", scope: !9240, file: !1617, line: 1505, type: !2275, align: 64)
!9419 = !DILocalVariable(name: "dormant_map", scope: !9240, file: !1617, line: 1505, type: !9208, align: 64)
!9420 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>", baseType: !452, size: 64, align: 64, dwarfAddressSpace: 0)
!9421 = !DILocalVariable(name: "root", scope: !9239, file: !1617, line: 1514, type: !9420, align: 64)
!9422 = !DILocalVariable(name: "handle", scope: !9238, file: !1617, line: 1515, type: !9224, align: 64)
!9423 = !DILocalVariable(name: "handle", scope: !9237, file: !1617, line: 1521, type: !9214, align: 64)
!9424 = !{!9404, !9417, !9418, !9419, !9421, !9422, !9423}
!9425 = !DILocalVariable(name: "self", arg: 1, scope: !9248, file: !1253, line: 640, type: !9420)
!9426 = !{!9223, !9420}
!9427 = !DISubroutineType(types: !9426)
!9428 = !{!1582, !925, !1610}
!9429 = !DISubprogram(name: "borrow_mut<alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>", linkageName: "_RNvMst_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5OwnedNtNtBb_6string6StringB1r_NtB19_14LeafOrInternalE10borrow_mutCshhfsHpF03Qr_6netlog", scope: !452, file: !1253, line: 640, type: !9427, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !9428)
!9430 = !{!9425}
!9431 = !{!9230, !9231, !9232}
!9432 = !{!9230, !9231}
!9433 = !{!9230, !9232}
!9434 = !{!9231, !9232}
!9435 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::collections::btree::map::entry::OccupiedEntry<alloc::string::String, alloc::string::String, alloc::alloc::Global>", baseType: !9225, size: 64, align: 64, dwarfAddressSpace: 0)
!9436 = !DILocalVariable(name: "self", arg: 1, scope: !9259, file: !9391, line: 627, type: !9435)
!9437 = !{!51, !9435, !51}
!9438 = !DISubroutineType(types: !9437)
!9439 = !DISubprogram(name: "insert<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringB1l_E6insertCshhfsHpF03Qr_6netlog", scope: !9225, file: !9391, line: 627, type: !9438, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9440 = !DILocalVariable(name: "value", arg: 2, scope: !9259, file: !9391, line: 627, type: !51)
!9441 = !{!9436, !9440}
!9442 = !DILocalVariable(name: "self", arg: 1, scope: !9262, file: !9391, line: 577, type: !9435)
!9443 = !{!1268, !9435}
!9444 = !DISubroutineType(types: !9443)
!9445 = !DISubprogram(name: "get_mut<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringB1l_E7get_mutCshhfsHpF03Qr_6netlog", scope: !9225, file: !9391, line: 577, type: !9444, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9446 = !{!9442}
!9447 = !DILocalVariable(name: "src", arg: 2, scope: !9266, file: !2279, line: 961, type: !51)
!9448 = !{!51, !1268, !51}
!9449 = !DISubroutineType(types: !9448)
!9450 = !DILocalVariable(name: "dest", arg: 1, scope: !9266, file: !2279, line: 961, type: !1268)
!9451 = !{!9450, !9447}
!9452 = !{!9271, !9270}
!9453 = !{!9271}
!9454 = !{!9273}
!9455 = !{!9274}
!9456 = !DILocalVariable(name: "self", arg: 1, scope: !9281, file: !9391, line: 447, type: !9219)
!9457 = !{!9225, !9219, !51}
!9458 = !DISubroutineType(types: !9457)
!9459 = !DISubprogram(name: "insert_entry<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringB1j_E12insert_entryCshhfsHpF03Qr_6netlog", scope: !9219, file: !9391, line: 447, type: !9458, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9460 = !DILocalVariable(name: "value", arg: 2, scope: !9281, file: !9391, line: 447, type: !51)
!9461 = !DILocalVariable(name: "handle", scope: !9280, file: !9391, line: 448, type: !9279, align: 64)
!9462 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::string::String, alloc::alloc::Global>", baseType: !457, size: 64, align: 64, dwarfAddressSpace: 0)
!9463 = !DILocalVariable(name: "map", scope: !9278, file: !9391, line: 451, type: !9462, align: 64)
!9464 = !DILocalVariable(name: "root", scope: !9277, file: !9391, line: 452, type: !9420, align: 64)
!9465 = !DILocalVariable(name: "leaf", scope: !9276, file: !9391, line: 456, type: !9213, align: 64)
!9466 = !DILocalVariable(name: "handle", scope: !9275, file: !9391, line: 460, type: !9214, align: 64)
!9467 = !{!9456, !9460, !9461, !9463, !9464, !9465, !9466}
!9468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !9279, file: !474, baseType: !9213, size: 128, align: 64, flags: DIFlagPrivate)
!9469 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !9279, file: !474, baseType: !630, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!9470 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !9279, file: !474, baseType: !283, align: 8, offset: 192, flags: DIFlagPrivate)
!9471 = !{!9468, !9469, !9470}
!9472 = !{!9360, !1626}
!9473 = !{!9273, !9274, !9288}
!9474 = !DIFile(filename: "library/alloc/src/collections/btree/borrow.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "a309a8cbebbee92acb7f2a2f0ea232ad")
!9475 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::collections::btree::borrow::DormantMutRef<alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::string::String, alloc::alloc::Global>>", baseType: !9208, size: 64, align: 64, dwarfAddressSpace: 0)
!9476 = !DILocalVariable(name: "self", arg: 1, scope: !9289, file: !9474, line: 51, type: !9475)
!9477 = !{!2275, !9475}
!9478 = !DISubroutineType(types: !9477)
!9479 = !DISubprogram(name: "reborrow<alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::string::String, alloc::alloc::Global>>", linkageName: "_RNvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6borrowINtB5_13DormantMutRefINtNtB7_3map8BTreeMapNtNtBb_6string6StringB1B_EE8reborrowCshhfsHpF03Qr_6netlog", scope: !9208, file: !9474, line: 51, type: !9478, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2278)
!9480 = !{!9476}
!9481 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::option::Option<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>>", baseType: !456, size: 64, align: 64, dwarfAddressSpace: 0)
!9482 = !DILocalVariable(name: "self", arg: 1, scope: !9293, file: !1454, line: 1720, type: !9481)
!9483 = !{!9420, !9481, !452}
!9484 = !DISubroutineType(types: !9483)
!9485 = !DISubprogram(name: "insert<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node7NodeRefNtNtBK_6marker5OwnedNtNtBQ_6string6StringB20_NtB1I_14LeafOrInternalEE6insertCshhfsHpF03Qr_6netlog", scope: !456, file: !1454, line: 1720, type: !9484, scopeLine: 1720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2273)
!9486 = !DILocalVariable(name: "value", arg: 2, scope: !9293, file: !1454, line: 1720, type: !452)
!9487 = !{!9482, !9486}
!9488 = !DILocalVariable(name: "self", scope: !9298, file: !1253, line: 750, type: !9223, align: 64)
!9489 = !{!9213, !9223}
!9490 = !DISubroutineType(types: !9489)
!9491 = !DISubprogram(name: "cast_to_leaf_unchecked<alloc::string::String, alloc::string::String>", linkageName: "_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1p_NtB19_14LeafOrInternalE22cast_to_leaf_uncheckedCshhfsHpF03Qr_6netlog", scope: !9223, file: !1253, line: 749, type: !9490, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1583)
!9492 = !{!9488}
!9493 = !{!9273, !9288}
!9494 = !{!9273, !9274}
!9495 = !DILocalVariable(name: "self", arg: 1, scope: !9303, file: !9391, line: 604, type: !9225)
!9496 = !{!1268, !9225}
!9497 = !DISubroutineType(types: !9496)
!9498 = !DISubprogram(name: "into_mut<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringB1l_E8into_mutCshhfsHpF03Qr_6netlog", scope: !9225, file: !9391, line: 604, type: !9497, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9499 = !{!9495}
!9500 = !DILocation(line: 1049, column: 15, scope: !9227)
!9501 = !DILocation(line: 1049, column: 20, scope: !9227)
!9502 = !DILocation(line: 1506, column: 15, scope: !9240, inlinedAt: !9242)
!9503 = !DILocation(line: 1506, column: 9, scope: !9240, inlinedAt: !9242)
!9504 = !DILocation(line: 1514, column: 41, scope: !9239, inlinedAt: !9242)
!9505 = !DILocation(line: 641, column: 27, scope: !9248, inlinedAt: !9249)
!9506 = !DILocation(line: 1514, column: 59, scope: !9239, inlinedAt: !9242)
!9507 = !DILocation(line: 1508, column: 17, scope: !9240, inlinedAt: !9242)
!9508 = !DILocation(line: 1513, column: 14, scope: !9240, inlinedAt: !9242)
!9509 = !DILocation(line: 1501, column: 5, scope: !9241, inlinedAt: !9242)
!9510 = !DILocation(line: 1514, column: 35, scope: !9239, inlinedAt: !9242)
!9511 = !DILocation(line: 0, scope: !9239, inlinedAt: !9242)
!9512 = !DILocation(line: 1515, column: 23, scope: !9239, inlinedAt: !9242)
!9513 = !DILocation(line: 1528, column: 13, scope: !9240, inlinedAt: !9242)
!9514 = !DILocation(line: 848, column: 1, scope: !167, inlinedAt: !9253)
!9515 = !DILocation(line: 848, column: 1, scope: !168, inlinedAt: !9255)
!9516 = !DILocation(line: 848, column: 1, scope: !168, inlinedAt: !9257)
!9517 = !DILocation(line: 1521, column: 24, scope: !9239, inlinedAt: !9242)
!9518 = !DILocation(line: 1522, column: 21, scope: !9237, inlinedAt: !9242)
!9519 = !DILocation(line: 1530, column: 5, scope: !9241, inlinedAt: !9242)
!9520 = !DILocation(line: 1056, column: 5, scope: !9227)
!9521 = !DILocation(line: 0, scope: !9240, inlinedAt: !9242)
!9522 = !DILocation(line: 1049, column: 9, scope: !9227)
!9523 = !DILocation(line: 1050, column: 22, scope: !9227)
!9524 = !DILocation(line: 1050, column: 54, scope: !9226)
!9525 = !DILocation(line: 578, column: 21, scope: !9262, inlinedAt: !9263)
!9526 = !DILocation(line: 629, column: 5, scope: !9259, inlinedAt: !9260)
!9527 = !DILocation(line: 627, column: 5, scope: !9259, inlinedAt: !9260)
!9528 = !DILocation(line: 1051, column: 20, scope: !9227)
!9529 = !DILocation(line: 1052, column: 30, scope: !9220)
!9530 = !DILocation(line: 426, column: 9, scope: !9228, inlinedAt: !9398)
!9531 = !DILocation(line: 426, column: 14, scope: !9228, inlinedAt: !9398)
!9532 = !DILocation(line: 448, column: 13, scope: !9281, inlinedAt: !9282)
!9533 = !DILocation(line: 448, column: 28, scope: !9281, inlinedAt: !9282)
!9534 = !DILocation(line: 448, column: 22, scope: !9281, inlinedAt: !9282)
!9535 = !DILocation(line: 452, column: 44, scope: !9278, inlinedAt: !9282)
!9536 = !DILocation(line: 1724, column: 17, scope: !9293, inlinedAt: !9294)
!9537 = !DILocation(line: 1724, column: 9, scope: !9293, inlinedAt: !9294)
!9538 = !DILocation(line: 456, column: 25, scope: !9277, inlinedAt: !9282)
!9539 = !DILocation(line: 753, column: 9, scope: !9298, inlinedAt: !9299)
!9540 = !DILocation(line: 457, column: 43, scope: !9276, inlinedAt: !9282)
!9541 = !DILocation(line: 457, column: 53, scope: !9276, inlinedAt: !9282)
!9542 = !DILocation(line: 457, column: 26, scope: !9276, inlinedAt: !9282)
!9543 = !DILocation(line: 457, column: 58, scope: !9276, inlinedAt: !9282)
!9544 = !DILocation(line: 458, column: 17, scope: !9277, inlinedAt: !9282)
!9545 = !DILocation(line: 459, column: 13, scope: !9281, inlinedAt: !9282)
!9546 = !DILocation(line: 460, column: 18, scope: !9281, inlinedAt: !9282)
!9547 = !DILocation(line: 460, column: 53, scope: !9275, inlinedAt: !9282)
!9548 = !DILocation(line: 460, column: 70, scope: !9275, inlinedAt: !9282)
!9549 = !DILocation(line: 460, column: 36, scope: !9275, inlinedAt: !9282)
!9550 = !DILocation(line: 467, column: 14, scope: !9275, inlinedAt: !9282)
!9551 = !DILocation(line: 467, column: 14, scope: !9281, inlinedAt: !9282)
!9552 = !DILocation(line: 53, column: 24, scope: !9289, inlinedAt: !9301)
!9553 = !DILocation(line: 447, column: 5, scope: !9281, inlinedAt: !9282)
!9554 = !DILocation(line: 479, column: 5, scope: !9281, inlinedAt: !9282)
!9555 = !DILocation(line: 471, column: 18, scope: !9280, inlinedAt: !9282)
!9556 = !DILocation(line: 474, column: 21, scope: !9280, inlinedAt: !9282)
!9557 = !DILocation(line: 475, column: 26, scope: !9280, inlinedAt: !9282)
!9558 = !DILocation(line: 473, column: 9, scope: !9280, inlinedAt: !9282)
!9559 = !DILocation(line: 605, column: 21, scope: !9303, inlinedAt: !9304)
!9560 = !DILocation(line: 426, column: 43, scope: !9228, inlinedAt: !9398)
!9561 = !DILocation(line: 1052, column: 35, scope: !9220)
!9562 = !DILocation(line: 1053, column: 17, scope: !9220)
!9563 = !DILocation(line: 1054, column: 13, scope: !9227)
!9564 = !DILocation(line: 1055, column: 9, scope: !9227)
!9565 = !DILocation(line: 1056, column: 6, scope: !9227)
!9566 = !DILocation(line: 578, column: 9, scope: !9262, inlinedAt: !9263)
!9567 = !DILocation(line: 975, column: 22, scope: !9266, inlinedAt: !9267)
!9568 = !DILocation(line: 976, column: 49, scope: !9266, inlinedAt: !9267)
!9569 = !DILocation(line: 1050, column: 59, scope: !9226)
!9570 = !DILocation(line: 1050, column: 60, scope: !9227)
!9571 = !DILocation(line: 1045, column: 5, scope: !9227)
!9572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !9575, file: !474, size: 192, align: 64, flags: DIFlagPublic, elements: !9649, templateParams: !9651, identifier: "e20b55bdfeea1497889e63a87200aba8")
!9573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !9575, file: !474, size: 192, align: 64, flags: DIFlagPublic, elements: !640, templateParams: !9651, identifier: "58e41be0756c83541c2b4428d6ccdd8")
!9574 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !9575, file: !474, size: 192, align: 64, elements: !9647, templateParams: !640, identifier: "a4026f23d5369ebc9e4698d7ddab7bb1", discriminator: !9652)
!9575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", scope: !928, file: !474, size: 192, align: 64, flags: DIFlagPublic, elements: !9644, templateParams: !640, identifier: "fa30c9ab3d62df861e2fc985565b89b1")
!9576 = distinct !DISubprogram(name: "dying_next<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringB17_E10dying_nextCshhfsHpF03Qr_6netlog", scope: !279, file: !1617, line: 1932, type: !9643, scopeLine: 1932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !1616, declaration: !9653, retainedNodes: !9655)
!9577 = distinct !DISubprogram(name: "deallocating_end<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog", scope: !278, file: !9657, line: 213, type: !9660, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !1616, declaration: !9661, retainedNodes: !9665)
!9578 = distinct !DILexicalBlock(scope: !9577, file: !9657, line: 214, column: 48)
!9579 = distinct !DILocation(line: 1936, column: 24, scope: !9576)
!9580 = distinct !DILocation(line: 0, scope: !9577, inlinedAt: !9579)
!9581 = distinct !DILocation(line: 214, column: 21, scope: !9578, inlinedAt: !9579)
!9582 = distinct !{!9582, i1 true, !"_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog"}
!9583 = distinct !{!9583, !9582, !"_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog: argument 0"}
!9584 = distinct !DILexicalBlock(scope: !9585, file: !9657, line: 198, column: 9)
!9585 = distinct !DISubprogram(name: "deallocating_next_unchecked<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog", scope: !278, file: !9657, line: 193, type: !9669, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !1616, declaration: !9670, retainedNodes: !9674)
!9586 = distinct !DILocation(line: 1940, column: 38, scope: !9576)
!9587 = distinct !DILocation(line: 0, scope: !9585, inlinedAt: !9586)
!9588 = distinct !{!9588, i1 true, !"_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog"}
!9589 = distinct !{!9589, !9588, !"_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog: argument 0"}
!9590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !9593, file: !474, size: 64, align: 64, flags: DIFlagPublic, elements: !9682, templateParams: !9684, identifier: "f3ab3ba1251b22a4d4424af833913969")
!9591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !9593, file: !474, size: 64, align: 64, flags: DIFlagPublic, elements: !640, templateParams: !9684, identifier: "4938dda69d56773367e05af367543f43")
!9592 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !9593, file: !474, size: 64, align: 64, elements: !9680, templateParams: !640, identifier: "198b29608d0d65fa3d0cb629866a9e47", discriminator: !9685)
!9593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", scope: !928, file: !474, size: 64, align: 64, flags: DIFlagPublic, elements: !9677, templateParams: !640, identifier: "ff7cd886cd2075ecccab72014067b32")
!9594 = distinct !DILexicalBlock(scope: !9595, file: !1454, line: 1015, column: 13)
!9595 = distinct !DISubprogram(name: "unwrap<&mut alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionQINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node6HandleINtBL_7NodeRefNtNtBL_6marker5DyingNtNtBR_6string6StringB2e_NtB1W_4LeafENtB1W_4EdgeEE6unwrapCshhfsHpF03Qr_6netlog", scope: !9593, file: !1454, line: 1013, type: !9687, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !9684, declaration: !9688, retainedNodes: !9690)
!9596 = distinct !DILocation(line: 198, column: 39, scope: !9585, inlinedAt: !9586)
!9597 = distinct !DILocation(line: 0, scope: !9595, inlinedAt: !9596)
!9598 = distinct !DILocation(line: 0, scope: !9584, inlinedAt: !9586)
!9599 = distinct !DISubprogram(name: "deallocating_next_unchecked<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RINvMsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringB1S_NtB1z_4LeafENtB1z_4EdgeE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog", scope: !264, file: !9657, line: 595, type: !9693, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !1616, declaration: !9694, retainedNodes: !9696)
!9600 = distinct !DILocation(line: 199, column: 24, scope: !9584, inlinedAt: !9586)
!9601 = distinct !DILocation(line: 0, scope: !9599, inlinedAt: !9600)
!9602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<alloc::string::String, alloc::string::String, alloc::alloc::Global>", scope: !9703, file: !474, align: 8, elements: !9705, templateParams: !640, identifier: "4cb3b72135aba170eaa6c478184b9077")
!9603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PanicGuard", scope: !9712, file: !474, align: 8, flags: DIFlagProtected, elements: !640, identifier: "64d6a86fdfad65f62819409ce25d261a")
!9604 = distinct !DISubprogram(name: "replace<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::navigate::{impl#24}::deallocating_next_unchecked::{closure_env#0}<alloc::string::String, alloc::string::String, alloc::alloc::Global>>", linkageName: "_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtB8_6string6StringB1R_NtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B1R_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECshhfsHpF03Qr_6netlog", scope: !9699, file: !9697, line: 18, type: !9701, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !9716, retainedNodes: !9711)
!9605 = distinct !DILexicalBlock(scope: !9604, file: !9697, line: 25, column: 5)
!9606 = distinct !DILexicalBlock(scope: !9605, file: !9697, line: 26, column: 5)
!9607 = distinct !DILexicalBlock(scope: !9606, file: !9697, line: 27, column: 5)
!9608 = distinct !DILocation(line: 599, column: 9, scope: !9599, inlinedAt: !9600)
!9609 = distinct !DILocation(line: 27, column: 21, scope: !9607, inlinedAt: !9608)
!9610 = distinct !DILocation(line: 0, scope: !9604, inlinedAt: !9608)
!9611 = distinct !DISubprogram(name: "write<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node6HandleINtBA_7NodeRefNtNtBA_6marker5DyingNtNtBG_6string6StringB23_NtB1L_4LeafENtB1L_4EdgeEECshhfsHpF03Qr_6netlog", scope: !715, file: !1174, line: 1941, type: !9720, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !9723, retainedNodes: !9722)
!9612 = distinct !DILocation(line: 29, column: 9, scope: !9607, inlinedAt: !9608)
!9613 = distinct !DILocation(line: 0, scope: !9611, inlinedAt: !9612)
!9614 = distinct !DILocation(line: 26, column: 9, scope: !9606, inlinedAt: !9608)
!9615 = distinct !DILocation(line: 27, column: 10, scope: !9607, inlinedAt: !9608)
!9616 = distinct !DILocation(line: 1941, column: 43, scope: !9611, inlinedAt: !9612)
!9617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)", file: !474, size: 384, align: 64, elements: !9729, templateParams: !640, identifier: "8aebf5f09bae4d91a520f865ba5a525c")
!9618 = distinct !DISubprogram(name: "{closure#0}<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNCINvMsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtBe_6string6StringB1U_NtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0CshhfsHpF03Qr_6netlog", scope: !9703, file: !9657, line: 599, type: !9726, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !1616, retainedNodes: !9731)
!9619 = distinct !DILocation(line: 27, column: 28, scope: !9606, inlinedAt: !9608)
!9620 = distinct !DILocation(line: 599, column: 36, scope: !9618, inlinedAt: !9619)
!9621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !9624, file: !474, size: 384, align: 64, flags: DIFlagPublic, elements: !9738, templateParams: !9740, identifier: "fd0475b44c995ffb36f27b07304454ce")
!9622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !9624, file: !474, size: 384, align: 64, flags: DIFlagPublic, elements: !640, templateParams: !9740, identifier: "e9f90b9aa77fd128c7eb14cc6397f0cf")
!9623 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !9624, file: !474, size: 384, align: 64, elements: !9736, templateParams: !640, identifier: "cf84978cc5ab3d6084521d5cb0e147d6", discriminator: !9741)
!9624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>", scope: !928, file: !474, size: 384, align: 64, flags: DIFlagPublic, elements: !9733, templateParams: !640, identifier: "645c04bd10da53b3df0c82ecf5aa28e2")
!9625 = distinct !DILexicalBlock(scope: !9626, file: !1454, line: 1015, column: 13)
!9626 = distinct !DISubprogram(name: "unwrap<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionTINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node6HandleINtBL_7NodeRefNtNtBL_6marker5DyingNtNtBR_6string6StringB2e_NtB1W_4LeafENtB1W_4EdgeEIBJ_IB1H_B1U_B2e_B2e_NtB1W_14LeafOrInternalENtB1W_2KVEEE6unwrapCshhfsHpF03Qr_6netlog", scope: !9624, file: !1454, line: 1013, type: !9743, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !9740, declaration: !9744, retainedNodes: !9746)
!9627 = distinct !DILocation(line: 600, column: 48, scope: !9618, inlinedAt: !9619)
!9628 = distinct !DILocation(line: 1013, column: 25, scope: !9626, inlinedAt: !9627)
!9629 = distinct !{!9629, !9588, !"_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog: argument 1"}
!9630 = distinct !{!9630, i1 true, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtB8_6string6StringB1R_NtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B1R_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECshhfsHpF03Qr_6netlog"}
!9631 = distinct !{!9631, !9630, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtB8_6string6StringB1R_NtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B1R_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECshhfsHpF03Qr_6netlog: argument 1"}
!9632 = distinct !{!9632, !9630, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtB8_6string6StringB1R_NtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B1R_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECshhfsHpF03Qr_6netlog: argument 0"}
!9633 = distinct !{!9633, i1 true, !"_RNCINvMsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtBe_6string6StringB1U_NtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0CshhfsHpF03Qr_6netlog"}
!9634 = distinct !{!9634, !9633, !"_RNCINvMsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtBe_6string6StringB1U_NtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0CshhfsHpF03Qr_6netlog: argument 1"}
!9635 = distinct !{!9635, !9633, !"_RNCINvMsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtBe_6string6StringB1U_NtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0CshhfsHpF03Qr_6netlog: argument 0"}
!9636 = distinct !DISubprogram(name: "drop_glue<alloc::collections::btree::mem::replace::PanicGuard>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replace10PanicGuardECshhfsHpF03Qr_6netlog", scope: !715, file: !1174, line: 848, type: !9753, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !9756, retainedNodes: !9754)
!9637 = distinct !DILocation(line: 33, column: 1, scope: !9604, inlinedAt: !9608)
!9638 = distinct !DILocation(line: 0, scope: !9636, inlinedAt: !9637)
!9639 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXNvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceNtB2_10PanicGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop", scope: !9758, file: !9697, line: 21, type: !9753, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !640, retainedNodes: !9759)
!9640 = distinct !DILocation(line: 848, column: 1, scope: !9636, inlinedAt: !9637)
!9641 = distinct !DILocation(line: 0, scope: !9639, inlinedAt: !9640)
!9642 = !{!9575, !1493}
!9643 = !DISubroutineType(types: !9642)
!9644 = !{!9574}
!9645 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !9574, file: !474, baseType: !9573, size: 192, align: 64, extraData: i64 0)
!9646 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !9574, file: !474, baseType: !9572, size: 192, align: 64)
!9647 = !{!9645, !9646}
!9648 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9572, file: !474, baseType: !284, size: 192, align: 64, flags: DIFlagPublic)
!9649 = !{!9648}
!9650 = !DITemplateTypeParameter(name: "T", type: !284)
!9651 = !{!9650}
!9652 = !DIDerivedType(tag: DW_TAG_member, scope: !9575, file: !474, baseType: !527, size: 64, align: 64, flags: DIFlagArtificial)
!9653 = !DISubprogram(name: "dying_next<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringB17_E10dying_nextCshhfsHpF03Qr_6netlog", scope: !279, file: !1617, line: 1932, type: !9643, scopeLine: 1932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9654 = !DILocalVariable(name: "self", arg: 1, scope: !9576, file: !1617, line: 1933, type: !1493)
!9655 = !{!9654}
!9656 = !DILocation(line: 0, scope: !9576)
!9657 = !DIFile(filename: "library/alloc/src/collections/btree/navigate.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "3915575bf90426eb0f21b0b5facad8a8")
!9658 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String>", baseType: !278, size: 64, align: 64, dwarfAddressSpace: 0)
!9659 = !{null, !9658, !54}
!9660 = !DISubroutineType(types: !9659)
!9661 = !DISubprogram(name: "deallocating_end<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E16deallocating_endNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog", scope: !278, file: !9657, line: 213, type: !9660, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9662 = !DILocalVariable(name: "self", arg: 1, scope: !9577, file: !9657, line: 213, type: !9658)
!9663 = !DILocalVariable(name: "alloc", arg: 2, scope: !9577, file: !9657, line: 213, type: !54)
!9664 = !DILocalVariable(name: "front", scope: !9578, file: !9657, line: 214, type: !264, align: 64)
!9665 = !{!9662, !9663, !9664}
!9666 = !{!9583}
!9667 = !DILocalVariable(name: "self", arg: 1, scope: !9585, file: !9657, line: 194, type: !9658)
!9668 = !{!284, !9658, !54}
!9669 = !DISubroutineType(types: !9668)
!9670 = !DISubprogram(name: "deallocating_next_unchecked<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog", scope: !278, file: !9657, line: 193, type: !9669, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9671 = !DILocalVariable(name: "alloc", arg: 2, scope: !9585, file: !9657, line: 195, type: !54)
!9672 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", baseType: !264, size: 64, align: 64, dwarfAddressSpace: 0)
!9673 = !DILocalVariable(name: "front", scope: !9584, file: !9657, line: 198, type: !9672, align: 64)
!9674 = !{!9667, !9671, !9673}
!9675 = !{!9589}
!9676 = !DILocalVariable(name: "self", arg: 1, scope: !9595, file: !1454, line: 1013, type: !9593)
!9677 = !{!9592}
!9678 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !9592, file: !474, baseType: !9591, size: 64, align: 64, extraData: i64 0)
!9679 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !9592, file: !474, baseType: !9590, size: 64, align: 64)
!9680 = !{!9678, !9679}
!9681 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9590, file: !474, baseType: !9672, size: 64, align: 64, flags: DIFlagPublic)
!9682 = !{!9681}
!9683 = !DITemplateTypeParameter(name: "T", type: !9672)
!9684 = !{!9683}
!9685 = !DIDerivedType(tag: DW_TAG_member, scope: !9593, file: !474, baseType: !527, size: 64, align: 64, flags: DIFlagArtificial)
!9686 = !{!9672, !9593, !1152}
!9687 = !DISubroutineType(types: !9686)
!9688 = !DISubprogram(name: "unwrap<&mut alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionQINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node6HandleINtBL_7NodeRefNtNtBL_6marker5DyingNtNtBR_6string6StringB2e_NtB1W_4LeafENtB1W_4EdgeEE6unwrapCshhfsHpF03Qr_6netlog", scope: !9593, file: !1454, line: 1013, type: !9687, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !9684)
!9689 = !DILocalVariable(name: "val", scope: !9594, file: !1454, line: 1015, type: !9672, align: 64)
!9690 = !{!9676, !9689}
!9691 = !DILocalVariable(name: "self", arg: 1, scope: !9599, file: !9657, line: 596, type: !9672)
!9692 = !{!284, !9672, !54}
!9693 = !DISubroutineType(types: !9692)
!9694 = !DISubprogram(name: "deallocating_next_unchecked<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RINvMsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringB1S_NtB1z_4LeafENtB1z_4EdgeE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshhfsHpF03Qr_6netlog", scope: !264, file: !9657, line: 595, type: !9693, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1616)
!9695 = !DILocalVariable(name: "alloc", arg: 2, scope: !9599, file: !9657, line: 597, type: !54)
!9696 = !{!9691, !9695}
!9697 = !DIFile(filename: "library/alloc/src/collections/btree/mem.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "cbbb453e921be15b68c5af700a463b89")
!9698 = !DILocalVariable(name: "ret", scope: !9607, file: !9697, line: 27, type: !284, align: 64)
!9699 = !DINamespace(name: "mem", scope: !1230)
!9700 = !{!284, !9672, !9602}
!9701 = !DISubroutineType(types: !9700)
!9702 = !DINamespace(name: "{impl#24}", scope: !1500)
!9703 = !DINamespace(name: "deallocating_next_unchecked", scope: !9702)
!9704 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !9602, file: !474, baseType: !54, align: 8)
!9705 = !{!9704}
!9706 = !DILocalVariable(name: "v", arg: 1, scope: !9604, file: !9697, line: 18, type: !9672)
!9707 = !DILocalVariable(name: "change", arg: 2, scope: !9604, file: !9697, line: 18, type: !9602)
!9708 = !DILocalVariable(name: "guard", scope: !9605, file: !9697, line: 25, type: !9603, align: 8)
!9709 = !DILocalVariable(name: "value", scope: !9606, file: !9697, line: 26, type: !264, align: 64)
!9710 = !DILocalVariable(name: "new_value", scope: !9607, file: !9697, line: 27, type: !264, align: 64)
!9711 = !{!9706, !9707, !9708, !9709, !9710, !9698}
!9712 = !DINamespace(name: "replace", scope: !9699)
!9713 = !DITemplateTypeParameter(name: "T", type: !264)
!9714 = !DITemplateTypeParameter(name: "R", type: !284)
!9715 = !DITemplateTypeParameter(name: "impl FnOnce(T) -> (T, R)", type: !9602)
!9716 = !{!9713, !9714, !9715}
!9717 = !DILocalVariable(name: "dst", arg: 1, scope: !9611, file: !1174, line: 1941, type: !9672)
!9718 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", baseType: !264, size: 64, align: 64, dwarfAddressSpace: 0)
!9719 = !{null, !9718, !264, !1152}
!9720 = !DISubroutineType(types: !9719)
!9721 = !DILocalVariable(name: "src", arg: 2, scope: !9611, file: !1174, line: 1941, type: !264)
!9722 = !{!9717, !9721}
!9723 = !{!9713}
!9724 = !DILocalVariable(name: "leaf_edge", arg: 2, scope: !9618, file: !9657, line: 599, type: !264)
!9725 = !{!9617, !9602, !264}
!9726 = !DISubroutineType(types: !9725)
!9727 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9617, file: !474, baseType: !264, size: 192, align: 64)
!9728 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !9617, file: !474, baseType: !284, size: 192, align: 64, offset: 192)
!9729 = !{!9727, !9728}
!9730 = !DILocalVariable(name: "alloc", scope: !9618, file: !9657, line: 597, type: !54, align: 8)
!9731 = !{!9724, !9730}
!9732 = !DILocalVariable(name: "self", arg: 1, scope: !9626, file: !1454, line: 1013, type: !9624)
!9733 = !{!9623}
!9734 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !9623, file: !474, baseType: !9622, size: 384, align: 64, extraData: i64 0)
!9735 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !9623, file: !474, baseType: !9621, size: 384, align: 64)
!9736 = !{!9734, !9735}
!9737 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9621, file: !474, baseType: !9617, size: 384, align: 64, flags: DIFlagPublic)
!9738 = !{!9737}
!9739 = !DITemplateTypeParameter(name: "T", type: !9617)
!9740 = !{!9739}
!9741 = !DIDerivedType(tag: DW_TAG_member, scope: !9624, file: !474, baseType: !527, size: 64, align: 64, flags: DIFlagArtificial)
!9742 = !{!9617, !9624, !1152}
!9743 = !DISubroutineType(types: !9742)
!9744 = !DISubprogram(name: "unwrap<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, alloc::string::String, alloc::string::String, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionTINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node6HandleINtBL_7NodeRefNtNtBL_6marker5DyingNtNtBR_6string6StringB2e_NtB1W_4LeafENtB1W_4EdgeEIBJ_IB1H_B1U_B2e_B2e_NtB1W_14LeafOrInternalENtB1W_2KVEEE6unwrapCshhfsHpF03Qr_6netlog", scope: !9624, file: !1454, line: 1013, type: !9743, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !9740)
!9745 = !DILocalVariable(name: "val", scope: !9625, file: !1454, line: 1015, type: !9617, align: 64)
!9746 = !{!9732, !9745}
!9747 = !{!9635, !9634, !9632, !9631, !9589, !9629}
!9748 = !{!9632, !9589}
!9749 = !{!9635, !9634, !9632, !9631, !9589}
!9750 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::collections::btree::mem::replace::PanicGuard", baseType: !9603, size: 64, align: 64, dwarfAddressSpace: 0)
!9751 = !DILocalVariable(arg: 1, scope: !9636, file: !1174, line: 848, type: !9750)
!9752 = !{null, !9750}
!9753 = !DISubroutineType(cc: DW_CC_nocall, types: !9752)
!9754 = !{!9751}
!9755 = !DITemplateTypeParameter(name: "T", type: !9603)
!9756 = !{!9755}
!9757 = !DILocalVariable(name: "self", arg: 1, scope: !9639, file: !9697, line: 21, type: !9750)
!9758 = !DINamespace(name: "{impl#0}", scope: !9712)
!9759 = !{!9757}
!9760 = !DILocation(line: 1935, column: 12, scope: !9576)
!9761 = !DILocation(line: 214, column: 35, scope: !9578, inlinedAt: !9579)
!9762 = !DILocation(line: 214, column: 30, scope: !9578, inlinedAt: !9579)
!9763 = !DILocation(line: 214, column: 16, scope: !9578, inlinedAt: !9579)
!9764 = !DILocation(line: 215, column: 19, scope: !9578, inlinedAt: !9579)
!9765 = !DILocation(line: 214, column: 9, scope: !9577, inlinedAt: !9579)
!9766 = !DILocation(line: 217, column: 6, scope: !9577, inlinedAt: !9579)
!9767 = !DILocation(line: 1937, column: 13, scope: !9576)
!9768 = !DILocation(line: 1935, column: 9, scope: !9576)
!9769 = !DILocation(line: 1939, column: 13, scope: !9576)
!9770 = !DILocation(line: 198, column: 26, scope: !9585, inlinedAt: !9586)
!9771 = !DILocation(line: 1014, column: 15, scope: !9595, inlinedAt: !9596)
!9772 = !DILocation(line: 1014, column: 9, scope: !9595, inlinedAt: !9596)
!9773 = !DILocation(line: 600, column: 13, scope: !9618, inlinedAt: !9619)
!9774 = !DILocation(line: 600, column: 23, scope: !9618, inlinedAt: !9619)
!9775 = !DILocation(line: 1014, column: 15, scope: !9626, inlinedAt: !9627)
!9776 = !DILocation(line: 1014, column: 9, scope: !9626, inlinedAt: !9627)
!9777 = !DILocation(line: 1016, column: 21, scope: !9626, inlinedAt: !9627)
!9778 = !DILocation(line: 22, column: 13, scope: !9639, inlinedAt: !9640)
!9779 = !DILocation(line: 1016, column: 21, scope: !9595, inlinedAt: !9596)
!9780 = !DILocation(line: 1015, column: 18, scope: !9626, inlinedAt: !9627)
!9781 = !DILocation(line: 600, column: 55, scope: !9618, inlinedAt: !9619)
!9782 = !DILocation(line: 1964, column: 41, scope: !9611, inlinedAt: !9612)
!9783 = !DILocation(line: 1940, column: 13, scope: !9576)
!9784 = !DILocation(line: 1942, column: 6, scope: !9576)
!9785 = distinct !DISubprogram(name: "drop<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog", scope: !9808, file: !1617, line: 207, type: !9810, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !1616, retainedNodes: !9812)
!9786 = distinct !DISubprogram(name: "read<alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::string::String, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBF_6string6StringB1v_EECshhfsHpF03Qr_6netlog", scope: !715, file: !1174, line: 1717, type: !9816, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !2278, retainedNodes: !9817)
!9787 = distinct !DISubprogram(name: "drop<alloc::collections::btree::map::IntoIter<alloc::string::String, alloc::string::String, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem4dropINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtBF_6string6StringB1v_EECshhfsHpF03Qr_6netlog", scope: !525, file: !2279, line: 1045, type: !9822, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !9825, retainedNodes: !9823)
!9788 = distinct !DILexicalBlock(scope: !9789, file: !1617, line: 1887, column: 13)
!9789 = distinct !DILexicalBlock(scope: !9792, file: !1617, line: 1886, column: 44)
!9790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::string::String, alloc::alloc::Global>>", scope: !1244, file: !474, size: 192, align: 64, flags: DIFlagPublic, elements: !9839, templateParams: !9841, identifier: "b60b6a22c2ca076bebebcfdcea80b02a")
!9791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::string::String, alloc::alloc::Global>>", scope: !1241, file: !474, size: 192, align: 64, flags: DIFlagPublic, elements: !9837, templateParams: !2278, identifier: "17d524f94f66343c3992297bbddd6dcc")
!9792 = distinct !DILexicalBlock(scope: !9793, file: !1617, line: 1885, column: 9)
!9793 = distinct !DISubprogram(name: "into_iter<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvXsx_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCshhfsHpF03Qr_6netlog", scope: !9829, file: !1617, line: 1884, type: !9831, scopeLine: 1884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !1616, retainedNodes: !9835)
!9794 = distinct !DISubprogram(name: "drop_glue<alloc::collections::btree::map::IntoIter<alloc::string::String, alloc::string::String, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringB1A_EECshhfsHpF03Qr_6netlog", scope: !715, file: !1174, line: 848, type: !9849, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !9825, retainedNodes: !9850)
!9795 = distinct !DILocation(line: 1049, column: 1, scope: !9787, inlinedAt: !9826)
!9796 = distinct !DILocation(line: 0, scope: !9794, inlinedAt: !9795)
!9797 = distinct !DILexicalBlock(scope: !9798, file: !1617, line: 1921, column: 13)
!9798 = distinct !DILexicalBlock(scope: !9799, file: !1617, line: 1920, column: 48)
!9799 = distinct !DISubprogram(name: "drop<alloc::string::String, alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringB17_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog", scope: !1491, file: !1617, line: 1906, type: !9849, scopeLine: 1906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !1616, retainedNodes: !9854)
!9800 = distinct !DILocation(line: 848, column: 1, scope: !9794, inlinedAt: !9795)
!9801 = distinct !DILocation(line: 0, scope: !9799, inlinedAt: !9800)
!9802 = distinct !{!9802, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringB1A_EECshhfsHpF03Qr_6netlog"}
!9803 = distinct !{!9803, !9802, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringB1A_EECshhfsHpF03Qr_6netlog: argument 0"}
!9804 = distinct !{!9804, i1 true, !"_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringB17_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog"}
!9805 = distinct !{!9805, !9804, !"_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringB17_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog: argument 0"}
!9806 = distinct !DILocation(line: 0, scope: !9798, inlinedAt: !9800)
!9807 = distinct !DILocation(line: 0, scope: !9797, inlinedAt: !9800)
!9808 = !DINamespace(name: "{impl#0}", scope: !1490)
!9809 = !{null, !2275}
!9810 = !DISubroutineType(types: !9809)
!9811 = !DILocalVariable(name: "self", arg: 1, scope: !9785, file: !1617, line: 207, type: !2275)
!9812 = !{!9811}
!9813 = !DILocation(line: 0, scope: !9785)
!9814 = !DILocalVariable(name: "src", arg: 1, scope: !9786, file: !1174, line: 1717, type: !2275)
!9815 = !{!457, !2276, !1152}
!9816 = !DISubroutineType(types: !9815)
!9817 = !{!9814}
!9818 = !DILocation(line: 208, column: 23, scope: !9785)
!9819 = !DILocation(line: 0, scope: !9786, inlinedAt: !9818)
!9820 = !DILocalVariable(name: "_x", arg: 1, scope: !9787, file: !2279, line: 1045, type: !279)
!9821 = !{null, !279}
!9822 = !DISubroutineType(types: !9821)
!9823 = !{!9820}
!9824 = !DITemplateTypeParameter(name: "T", type: !279)
!9825 = !{!9824}
!9826 = !DILocation(line: 208, column: 9, scope: !9785)
!9827 = !DILocation(line: 1045, column: 22, scope: !9787, inlinedAt: !9826)
!9828 = !DILocalVariable(name: "self", arg: 1, scope: !9793, file: !1617, line: 1884, type: !457)
!9829 = !DINamespace(name: "{impl#35}", scope: !1490)
!9830 = !{!279, !457}
!9831 = !DISubroutineType(types: !9830)
!9832 = !DILocalVariable(name: "me", scope: !9792, file: !1617, line: 1885, type: !9791, align: 64)
!9833 = !DILocalVariable(name: "root", scope: !9789, file: !1617, line: 1886, type: !452, align: 64)
!9834 = !DILocalVariable(name: "full_range", scope: !9788, file: !1617, line: 1887, type: !278, align: 64)
!9835 = !{!9828, !9832, !9833, !9834}
!9836 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !9791, file: !474, baseType: !9790, size: 192, align: 64, flags: DIFlagPrivate)
!9837 = !{!9836}
!9838 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9790, file: !474, baseType: !457, size: 192, align: 64, flags: DIFlagPrivate)
!9839 = !{!9838}
!9840 = !DITemplateTypeParameter(name: "P", type: !457)
!9841 = !{!9840}
!9842 = !DILocation(line: 208, column: 41, scope: !9785)
!9843 = !DILocation(line: 0, scope: !9793, inlinedAt: !9842)
!9844 = !DILocation(line: 0, scope: !9792, inlinedAt: !9842)
!9845 = !DILocation(line: 0, scope: !9789, inlinedAt: !9842)
!9846 = !DILocation(line: 0, scope: !9788, inlinedAt: !9842)
!9847 = !DILocalVariable(arg: 1, scope: !9794, file: !1174, line: 848, type: !1493)
!9848 = !{null, !1493}
!9849 = !DISubroutineType(types: !9848)
!9850 = !{!9847}
!9851 = !DILocalVariable(name: "self", arg: 1, scope: !9799, file: !1617, line: 1906, type: !1493)
!9852 = !DILocalVariable(name: "kv", scope: !9798, file: !1617, line: 1920, type: !284, align: 64)
!9853 = !DILocalVariable(name: "guard", scope: !9797, file: !1617, line: 1921, type: !280, align: 64)
!9854 = !{!9851, !9852, !9853}
!9855 = !{!9805, !9803}
!9856 = !DILocation(line: 208, column: 14, scope: !9785)
!9857 = !DILocation(line: 1756, column: 9, scope: !9786, inlinedAt: !9818)
!9858 = !DILocation(line: 1886, column: 29, scope: !9789, inlinedAt: !9842)
!9859 = !DILocation(line: 1886, column: 16, scope: !9789, inlinedAt: !9842)
!9860 = !DILocation(line: 1889, column: 13, scope: !9788, inlinedAt: !9842)
!9861 = !DILocation(line: 1886, column: 9, scope: !9792, inlinedAt: !9842)
!9862 = !DILocation(line: 1920, column: 30, scope: !9798, inlinedAt: !9800)
!9863 = !DILocation(line: 1920, column: 35, scope: !9798, inlinedAt: !9800)
!9864 = !DILocation(line: 1920, column: 19, scope: !9798, inlinedAt: !9800)
!9865 = !DILocation(line: 1920, column: 24, scope: !9798, inlinedAt: !9800)
!9866 = !DILocation(line: 1923, column: 25, scope: !9797, inlinedAt: !9800)
!9867 = !DILocation(line: 1925, column: 9, scope: !9798, inlinedAt: !9800)
!9868 = !DILocation(line: 1925, column: 9, scope: !9799, inlinedAt: !9800)
!9869 = !DILocation(line: 1906, column: 5, scope: !9799, inlinedAt: !9800)
!9870 = !DILocation(line: 208, column: 52, scope: !9785)
!9871 = !DILocation(line: 209, column: 6, scope: !9785)
!9872 = distinct !DILocation(line: 394, column: 21, scope: !458)
!9873 = distinct !DILocation(line: 0, scope: !169, inlinedAt: !9872)
!9874 = distinct !DILocation(line: 848, column: 1, scope: !169, inlinedAt: !9872)
!9875 = distinct !DILocation(line: 0, scope: !170, inlinedAt: !9874)
!9876 = distinct !DILocation(line: 848, column: 1, scope: !170, inlinedAt: !9874)
!9877 = distinct !DILocation(line: 0, scope: !171, inlinedAt: !9876)
!9878 = distinct !DILocation(line: 848, column: 1, scope: !171, inlinedAt: !9876)
!9879 = distinct !DILocation(line: 0, scope: !172, inlinedAt: !9878)
!9880 = distinct !DILocation(line: 235, column: 21, scope: !172, inlinedAt: !9878)
!9881 = distinct !DILocation(line: 0, scope: !179, inlinedAt: !9880)
!9882 = distinct !DILocation(line: 279, column: 39, scope: !178, inlinedAt: !9880)
!9883 = distinct !DILocation(line: 0, scope: !180, inlinedAt: !9882)
!9884 = distinct !DILocation(line: 1229, column: 27, scope: !180, inlinedAt: !9882)
!9885 = distinct !DILocation(line: 0, scope: !181, inlinedAt: !9884)
!9886 = distinct !DILocation(line: 1212, column: 14, scope: !181, inlinedAt: !9884)
!9887 = distinct !DILocation(line: 0, scope: !182, inlinedAt: !9886)
!9888 = distinct !DILocation(line: 251, column: 29, scope: !179, inlinedAt: !9880)
!9889 = distinct !DILocation(line: 0, scope: !183, inlinedAt: !9888)
!9890 = distinct !DILocation(line: 0, scope: !178, inlinedAt: !9880)
!9891 = distinct !DILocation(line: 0, scope: !176, inlinedAt: !9880)
!9892 = distinct !DILocation(line: 259, column: 24, scope: !176, inlinedAt: !9880)
!9893 = distinct !DILocation(line: 0, scope: !232, inlinedAt: !9892)
!9894 = distinct !DILocation(line: 259, column: 56, scope: !176, inlinedAt: !9880)
!9895 = distinct !DILocation(line: 0, scope: !235, inlinedAt: !9894)
!9896 = distinct !DILocation(line: 1061, column: 42, scope: !235, inlinedAt: !9894)
!9897 = distinct !DILocation(line: 0, scope: !174, inlinedAt: !9880)
!9898 = distinct !DILocation(line: 280, column: 31, scope: !174, inlinedAt: !9880)
!9899 = distinct !DILocation(line: 0, scope: !236, inlinedAt: !9898)
!9900 = distinct !DILocation(line: 236, column: 39, scope: !236, inlinedAt: !9898)
!9901 = distinct !DILocation(line: 0, scope: !237, inlinedAt: !9900)
!9902 = distinct !{!9902, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECshhfsHpF03Qr_6netlog"}
!9903 = distinct !{!9903, !9902, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECshhfsHpF03Qr_6netlog: argument 0"}
!9904 = distinct !DILocation(line: 237, column: 15, scope: !172, inlinedAt: !9878)
!9905 = distinct !DILocation(line: 0, scope: !238, inlinedAt: !9904)
!9906 = distinct !DILocation(line: 848, column: 1, scope: !238, inlinedAt: !9904)
!9907 = distinct !DILocation(line: 0, scope: !239, inlinedAt: !9906)
!9908 = !DILocation(line: 0, scope: !459)
!9909 = !DILocation(line: 0, scope: !458)
!9910 = !{!9903}
!9911 = !DILocation(line: 391, column: 19, scope: !459)
!9912 = !DILocation(line: 391, column: 30, scope: !459)
!9913 = !DILocation(line: 391, column: 13, scope: !459)
!9914 = !DILocation(line: 394, column: 21, scope: !458)
!9915 = !DILocation(line: 848, column: 1, scope: !169, inlinedAt: !9872)
!9916 = !DILocation(line: 235, column: 21, scope: !172, inlinedAt: !9878)
!9917 = !DILocation(line: 151, column: 18, scope: !183, inlinedAt: !9888)
!9918 = !DILocation(line: 252, column: 11, scope: !178, inlinedAt: !9880)
!9919 = !DILocation(line: 252, column: 5, scope: !178, inlinedAt: !9880)
!9920 = !DILocation(line: 1073, column: 28, scope: !232, inlinedAt: !9892)
!9921 = !DILocation(line: 1065, column: 15, scope: !235, inlinedAt: !9894)
!9922 = !DILocation(line: 1065, column: 9, scope: !235, inlinedAt: !9894)
!9923 = !DILocation(line: 270, column: 9, scope: !178, inlinedAt: !9880)
!9924 = !DILocation(line: 475, column: 18, scope: !182, inlinedAt: !9886)
!9925 = !DILocation(line: 247, column: 13, scope: !237, inlinedAt: !9900)
!9926 = !DILocation(line: 280, column: 13, scope: !174, inlinedAt: !9880)
!9927 = !DILocation(line: 0, scope: !178, inlinedAt: !9880)
!9928 = !DILocation(line: 848, column: 1, scope: !239, inlinedAt: !9906)
!9929 = !DILocation(line: 237, column: 15, scope: !172, inlinedAt: !9878)
!9930 = !DILocation(line: 398, column: 10, scope: !459)
!9931 = !DILocation(line: 390, column: 9, scope: !459)
!9932 = !DILocation(line: 397, column: 13, scope: !459)
!9933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__FieldVisitor", scope: !1774, file: !474, align: 8, flags: DIFlagProtected, elements: !640, identifier: "ecaebf62adc6b0a684e648b6ac3505a5")
!9934 = distinct !DISubprogram(name: "expecting", linkageName: "_RNvXNvXNvCshhfsHpF03Qr_6netlog1__NtB7_11EventSourceNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBP_7Visitor9expecting", scope: !2288, file: !1633, line: 127, type: !9937, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !640, retainedNodes: !9940)
!9935 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&netlog::_::{impl#0}::deserialize::__FieldVisitor", baseType: !9933, size: 64, align: 64, dwarfAddressSpace: 0)
!9936 = !{!307, !9935, !1700}
!9937 = !DISubroutineType(types: !9936)
!9938 = !DILocalVariable(name: "self", arg: 1, scope: !9934, file: !1633, line: 127, type: !9935)
!9939 = !DILocalVariable(name: "__formatter", arg: 2, scope: !9934, file: !1633, line: 127, type: !1700)
!9940 = !{!9938, !9939}
!9941 = !DILocation(line: 0, scope: !9934)
!9942 = !DILocation(line: 127, column: 10, scope: !9934)
!9943 = !DILocation(line: 127, column: 21, scope: !9934)
!9944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__FieldVisitor", scope: !1774, file: !474, align: 8, flags: DIFlagProtected, elements: !640, identifier: "92b563c62f88d584f5b9a4958b99984a")
!9945 = distinct !DISubprogram(name: "expecting", linkageName: "_RNvXNvXNvCshhfsHpF03Qr_6netlogs0_1__NtB7_16SourceDependencyNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBX_7Visitor9expecting", scope: !2288, file: !1633, line: 163, type: !9948, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, templateParams: !640, retainedNodes: !9951)
!9946 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&netlog::_::{impl#0}::deserialize::__FieldVisitor", baseType: !9944, size: 64, align: 64, dwarfAddressSpace: 0)
!9947 = !{!307, !9946, !1700}
!9948 = !DISubroutineType(types: !9947)
!9949 = !DILocalVariable(name: "self", arg: 1, scope: !9945, file: !1633, line: 163, type: !9946)
end_hunk_1
