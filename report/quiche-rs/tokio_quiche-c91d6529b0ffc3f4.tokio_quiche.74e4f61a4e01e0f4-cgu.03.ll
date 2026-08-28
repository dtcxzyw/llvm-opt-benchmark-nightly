Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.03?download=true
inline.NumInlined: 273
inline.NumDeleted: 130
begin_hunk_0_@_RNvMNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streamsNtB2_9StreamCtx24handle_sent_stop_sending:bb.a
bb.a:
    #dbg_value(ptr %0, !12017, !DIExpression(), !12019)
    #dbg_value(i64 %1, !12018, !DIExpression(), !12019)
    #dbg_value(i8 4, !12020, !DIExpression(), !12025)
    #dbg_value(ptr %0, !12033, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !12036)
    #dbg_value(ptr %0, !12038, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !12041)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !12043
  %i.b = load ptr, ptr %i.a, align 8, !dbg !12043, !nonnull !25, !noundef !25
    #dbg_value(ptr %i.b, !12030, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12046)
    #dbg_value(i64 %1, !12031, !DIExpression(), !12047)
    #dbg_value(i64 %1, !12024, !DIExpression(), !12025)
    #dbg_value(ptr %i.b, !12023, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12048)
    #dbg_value(ptr %i.b, !12049, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12052)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !12054
    #dbg_value(ptr %i.c, !11952, !DIExpression(), !12057)
    #dbg_value(i64 %1, !11957, !DIExpression(), !12057)
    #dbg_value(i8 4, !11958, !DIExpression(), !12057)
  store atomic i64 %1, ptr %i.c seq_cst, align 8, !dbg !12059
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137, !dbg !12060
  store i8 1, ptr %i.d, align 1, !dbg !12060
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12061 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEEB1W_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e)
          to label %bb.c unwind label %bb.b, !dbg !12061

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.e, align 8, !dbg !12061
  resume { ptr, i32 } %i.f, !dbg !12062

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.e, align 8, !dbg !12061
  ret void, !dbg !12063
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streamsNtB2_9StreamCtx25handle_recvd_stop_sending(ptr noalias nofree noundef align 8 dereferenceable(144) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12064 {
bb.a:
    #dbg_value(ptr %0, !12067, !DIExpression(), !12069)
    #dbg_value(i64 %1, !12068, !DIExpression(), !12069)
    #dbg_value(i8 4, !12070, !DIExpression(), !12075)
    #dbg_value(ptr %0, !12083, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !12086)
    #dbg_value(ptr %0, !12088, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !12091)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !12093
  %i.b = load ptr, ptr %i.a, align 8, !dbg !12093, !nonnull !25, !noundef !25
    #dbg_value(ptr %i.b, !12080, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12096)
    #dbg_value(i64 %1, !12081, !DIExpression(), !12097)
    #dbg_value(i64 %1, !12074, !DIExpression(), !12075)
    #dbg_value(ptr %i.b, !12073, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !12098)
    #dbg_value(ptr %i.b, !12099, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !12102)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !12104
    #dbg_value(ptr %i.c, !11952, !DIExpression(), !12107)
    #dbg_value(i64 %1, !11957, !DIExpression(), !12107)
    #dbg_value(i8 4, !11958, !DIExpression(), !12107)
  store atomic i64 %1, ptr %i.c seq_cst, align 8, !dbg !12109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 138, !dbg !12110 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !dbg !12110, !range !6471, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1, !dbg !12110
  br i1 %i.f, label %bb.l, label %bb.b, !dbg !12110

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 2, !dbg !12111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !12112 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g)
          to label %bb.d unwind label %bb.c, !dbg !12112

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  store i8 -1, ptr %i.g, align 8, !dbg !12112
  br label %bb.m, !dbg !12113

bb.d:                                             ; preds = %bb.b
  store i8 -1, ptr %i.g, align 8, !dbg !12112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !12114 ; 8 uses
    #dbg_value(ptr %i.i, !2401, !DIExpression(), !12115)
  %i.j = load ptr, ptr %i.i, align 8, !dbg !12117, !alias.scope !12118, !noundef !25
  %i.k = icmp eq ptr %i.j, null, !dbg !12117
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1X_.exit, label %bb.e, !dbg !12117

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.i, !2406, !DIExpression(), !12121)
    #dbg_value(ptr %i.i, !2414, !DIExpression(), !12123)
  invoke void @_RNvXsb_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.h unwind label %bb.f, !dbg !12125

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12126), !dbg !12125
    #dbg_value(ptr %i.i, !2140, !DIExpression(), !12129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12131), !dbg !12134
    #dbg_value(ptr %i.i, !2154, !DIExpression(), !12135)
    #dbg_value(ptr %i.i, !2159, !DIExpression(), !12137)
    #dbg_value(i64 1, !2169, !DIExpression(), !12139)
    #dbg_value(i8 1, !2173, !DIExpression(), !12139)
    #dbg_value(i64 1, !2176, !DIExpression(), !12141)
    #dbg_value(i8 1, !2180, !DIExpression(), !12141)
  %i.m = load ptr, ptr %i.i, align 8, !dbg !12143, !alias.scope !12145, !nonnull !25, !noundef !25
    #dbg_value(ptr %i.m, !2172, !DIExpression(), !12150)
    #dbg_value(ptr %i.m, !2179, !DIExpression(), !12141)
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !dbg !12151, !noalias !12152
  %i.o = icmp eq i64 %i.n, 1, !dbg !12153
  br i1 %i.o, label %bb.g, label %.body, !dbg !12153

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !1812, !DIExpression(), !12154)
  fence acquire, !dbg !12156
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chan4ChanNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtBL_7bounded9SemaphoreEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21
          to label %.body unwind label %bb.j, !dbg !12157

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12158), !dbg !12125
    #dbg_value(ptr %i.i, !2140, !DIExpression(), !12161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12163), !dbg !12166
    #dbg_value(ptr %i.i, !2154, !DIExpression(), !12167)
    #dbg_value(ptr %i.i, !2159, !DIExpression(), !12169)
    #dbg_value(i64 1, !2169, !DIExpression(), !12171)
    #dbg_value(i8 1, !2173, !DIExpression(), !12171)
    #dbg_value(i64 1, !2176, !DIExpression(), !12173)
    #dbg_value(i8 1, !2180, !DIExpression(), !12173)
  %i.p = load ptr, ptr %i.i, align 8, !dbg !12175, !alias.scope !12177, !nonnull !25, !noundef !25
    #dbg_value(ptr %i.p, !2172, !DIExpression(), !12178)
    #dbg_value(ptr %i.p, !2179, !DIExpression(), !12173)
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !12179, !noalias !12180
  %i.r = icmp eq i64 %i.q, 1, !dbg !12181
  br i1 %i.r, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1X_.exit, !dbg !12181

bb.i:                                             ; preds = %bb.h
    #dbg_value(i8 2, !1812, !DIExpression(), !12182)
  fence acquire, !dbg !12184
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chan4ChanNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtBL_7bounded9SemaphoreEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1X_.exit unwind label %bb.k, !dbg !12185

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !12125
  unreachable, !dbg !12125

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !12114

.body:                                            ; preds = %bb.f, %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.l, %bb.g ], [ %i.l, %bb.f ]
  store ptr null, ptr %i.i, align 8, !dbg !12114
  br label %bb.m, !dbg !12186

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1X_.exit: ; preds = %bb.h, %bb.d, %bb.i
  store ptr null, ptr %i.i, align 8, !dbg !12114
  br label %bb.l, !dbg !12187

bb.l:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1X_.exit
  ret void, !dbg !12187

bb.m:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %.pn, !dbg !12188
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streamsNtB2_9StreamCtx3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12189 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [152 x i8], align 8               ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 13 uses
  %i.h = alloca [144 x i8], align 8               ; 13 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.8 = alloca [52 x i8], align 4            ; 4 uses
    #dbg_declare(ptr poison, !12207, !DIExpression(DW_OP_LLVM_fragment, 128, 320), !12209)
    #dbg_declare(ptr %.sroa.8, !12207, !DIExpression(DW_OP_LLVM_fragment, 544, 416), !12209)
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(i64 %1, !12199, !DIExpression(), !12210)
    #dbg_value(i64 %2, !12200, !DIExpression(), !12210)
    #dbg_declare(ptr %i.o, !12201, !DIExpression(), !12211)
    #dbg_declare(ptr %i.n, !12203, !DIExpression(), !12212)
    #dbg_declare(ptr %i.m, !12204, !DIExpression(), !12213)
    #dbg_declare(ptr %i.l, !12206, !DIExpression(), !12214)
  %i.p = tail call { ptr, ptr } @_RINvNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded7channelNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEBY_(i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !dbg !12215 ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0, !dbg !12215 ; 7 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1, !dbg !12215 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !12216
  store ptr %i.q, ptr %i.o, align 8, !dbg !12216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !12217
  store ptr %i.r, ptr %i.n, align 8, !dbg !12217
  %i.s = invoke { ptr, ptr } @_RINvNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded7channelNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEBY_(i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
          to label %bb.d unwind label %bb.c, !dbg !12218 ; 2 uses

bb.b:                                             ; preds = %.body59, %.thread73, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn7276, %.thread73 ], [ %i.t, %bb.c ], [ %i.av, %.body59 ]
  %.sroa.016.0 = phi i1 [ false, %.thread73 ], [ true, %bb.c ], [ false, %.body59 ], !dbg !12210
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.n) #22
          to label %bb.ac unwind label %bb.y, !dbg !12219

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.u = extractvalue { ptr, ptr } %i.s, 0, !dbg !12218 ; 7 uses
  %i.v = extractvalue { ptr, ptr } %i.s, 1, !dbg !12218 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !12220
  store ptr %i.u, ptr %i.m, align 8, !dbg !12220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !12221
  store ptr %i.v, ptr %i.l, align 8, !dbg !12221
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !12222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12223
    #dbg_value(ptr %i.q, !12224, !DIExpression(), !12230)
    #dbg_declare(ptr %i.d, !12232, !DIExpression(), !12241)
    #dbg_declare(ptr %i.d, !12251, !DIExpression(), !12263)
    #dbg_value(i64 1, !12265, !DIExpression(), !12271)
    #dbg_value(i8 0, !12270, !DIExpression(), !12271)
    #dbg_value(i64 1, !12287, !DIExpression(), !12292)
    #dbg_value(i8 0, !12291, !DIExpression(), !12292)
    #dbg_value(i64 1, !12265, !DIExpression(), !12294)
    #dbg_value(i8 0, !12270, !DIExpression(), !12294)
    #dbg_value(i64 1, !12287, !DIExpression(), !12305)
    #dbg_value(i8 0, !12291, !DIExpression(), !12305)
    #dbg_value(ptr null, !12308, !DIExpression(), !12313)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12315, !noalias !12316
    #dbg_value(ptr poison, !12285, !DIExpression(), !12319)
    #dbg_value(ptr poison, !12278, !DIExpression(), !12320)
    #dbg_value(ptr %i.q, !12321, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !12324)
    #dbg_value(ptr %i.q, !12327, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !12330)
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 496, !dbg !12332
    #dbg_value(ptr %i.w, !12269, !DIExpression(), !12271)
    #dbg_value(ptr %i.w, !12290, !DIExpression(), !12292)
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !dbg !12333, !noalias !12316 ; 0 uses
    #dbg_value(ptr poison, !12301, !DIExpression(), !12334)
    #dbg_value(ptr %i.q, !12269, !DIExpression(), !12335)
    #dbg_value(ptr %i.q, !12290, !DIExpression(), !12305)
  %i.y = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !12336, !noalias !12316
    #dbg_value(i64 %i.y, !12302, !DIExpression(), !12337)
  %i.z = icmp slt i64 %i.y, 0, !dbg !12338
  br i1 %i.z, label %bb.i, label %bb.e, !dbg !12338

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.f, align 8, !dbg !12315, !noalias !12316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12339, !noalias !12316
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12339
  store ptr %i.q, ptr %i.aa, align 8, !dbg !12339, !noalias !12316
  store i64 0, ptr %i.e, align 8, !dbg !12339, !noalias !12316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12340, !noalias !12316
  store ptr null, ptr %i.d, align 8, !dbg !12341, !noalias !12316
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 144, !dbg !12341
  store i8 0, ptr %i.ab, align 8, !dbg !12341, !noalias !12316
    #dbg_declare(ptr %i.d, !12342, !DIExpression(), !12350)
    #dbg_value(i64 8, !12352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12364)
    #dbg_value(i64 8, !12366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12389)
    #dbg_value(i64 8, !12391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12399)
    #dbg_value(i64 152, !12352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12364)
    #dbg_value(i64 152, !12366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12389)
    #dbg_value(i64 152, !12391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12399)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12388, !DIExpression(), !12389)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12397, !DIExpression(), !12399)
    #dbg_value(i8 0, !12398, !DIExpression(), !12399)
    #dbg_value(i64 8, !12401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12431)
    #dbg_value(i64 8, !12433, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12436)
    #dbg_value(i64 152, !12401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12431)
    #dbg_value(i64 152, !12433, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12436)
    #dbg_value(i1 false, !12407, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12431)
    #dbg_value(i64 152, !12408, !DIExpression(), !12438)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !dbg !12439, !noalias !12440
  %i.ac = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 153) 152, i64 noundef range(i64 1, 9) 8) #12, !dbg !12443, !noalias !12440 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !12444
  br i1 %i.ad, label %bb.f, label %bb.l, !dbg !12445, !prof !8323

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #24
          to label %.noexc.i unwind label %bb.g, !dbg !12446, !noalias !12316

.noexc.i:                                         ; preds = %bb.f
  unreachable, !dbg !12446

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc19make_acquire_futureNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameE0EB1L_(ptr noundef nonnull align 8 dereferenceable(152) %i.d) #22
          to label %.body.i unwind label %bb.h, !dbg !12447, !noalias !12316

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !12448, !noalias !12316
  unreachable, !dbg !12448

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !12449
  unreachable, !dbg !12449

.body.i:                                          ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc5StateNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #22
          to label %bb.k unwind label %bb.j, !dbg !12450, !noalias !12316

bb.j:                                             ; preds = %bb.k, %.body.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !12451, !noalias !12316
  unreachable, !dbg !12451

bb.k:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded6SenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEEB1V_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.f) #22
          to label %bb.ab unwind label %bb.j, !dbg !12450, !noalias !12316

bb.l:                                             ; preds = %bb.e
    #dbg_value(ptr %i.ac, !12347, !DIExpression(), !12452)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ac, ptr noundef nonnull align 8 dereferenceable(152) %i.d, i64 152, i1 false), !dbg !12453, !noalias !12316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12454, !noalias !12316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12450, !noalias !12316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12450, !noalias !12316
  store i64 0, ptr %i.k, align 8, !dbg !12223
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12223
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12223
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !12223
  store ptr %i.ac, ptr %.sroa.561.0..sroa_idx, align 8, !dbg !12223
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !12223
  store ptr @32, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !12223
  %.sroa.7.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !12223
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx62, align 8, !dbg !12223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12455
  store ptr %i.v, ptr %i.j, align 8, !dbg !12455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12456
  store i8 -1, ptr %i.i, align 8, !dbg !12456
    #dbg_value(i64 %1, !12457, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12466)
    #dbg_value(i64 0, !12457, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12466)
    #dbg_value(i64 0, !12457, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12466)
    #dbg_value(i64 -1, !12457, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !12466)
    #dbg_value(i64 -1, !12457, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12466)
    #dbg_value(i64 -1, !12457, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !12466)
    #dbg_value(i64 -1, !12457, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !12466)
    #dbg_value(i8 0, !12457, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !12466)
    #dbg_value(i8 0, !12457, !DIExpression(DW_OP_LLVM_fragment, 584, 8), !12466)
    #dbg_value(i64 0, !12457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12466)
    #dbg_value(i32 0, !12457, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12468
  store i64 1, ptr %i.g, align 8, !dbg !12468
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !12468
  store i64 1, ptr %i.ah, align 8, !dbg !12468
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12468
  store i64 0, ptr %i.ai, align 8, !dbg !12468
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !12468
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !12468
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !12468
  store i64 %1, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !12468
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !12468
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !12468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !12468
  %.sroa.1211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88, !dbg !12468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.87.0..sroa_idx, i8 -1, i64 32, i1 false), !dbg !12468
  store i8 0, ptr %.sroa.1211.0..sroa_idx, align 8, !dbg !12468
  %.sroa.1312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 89, !dbg !12468
  store i8 0, ptr %.sroa.1312.0..sroa_idx, align 1, !dbg !12468
    #dbg_declare(ptr %i.g, !12469, !DIExpression(), !12477)
    #dbg_value(i64 8, !12352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12479)
    #dbg_value(i64 8, !12366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12481)
    #dbg_value(i64 8, !12391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12483)
    #dbg_value(i64 96, !12352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12479)
    #dbg_value(i64 96, !12366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(i64 96, !12391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12483)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12388, !DIExpression(), !12481)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12397, !DIExpression(), !12483)
    #dbg_value(i8 0, !12398, !DIExpression(), !12483)
    #dbg_value(i64 8, !12401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12485)
    #dbg_value(i64 8, !12433, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12487)
    #dbg_value(i64 96, !12401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12485)
    #dbg_value(i64 96, !12433, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12487)
    #dbg_value(i1 false, !12407, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12485)
    #dbg_value(i64 96, !12408, !DIExpression(), !12489)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !dbg !12490, !noalias !12491
  %i.aj = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 153) 96, i64 noundef range(i64 1, 9) 8) #12, !dbg !12494, !noalias !12491 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null, !dbg !12495
  br i1 %i.ak, label %bb.m, label %bb.p, !dbg !12496, !prof !8323

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #24
          to label %.noexc unwind label %bb.n, !dbg !12497

.noexc:                                           ; preds = %bb.m
  unreachable, !dbg !12497

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http35stats12H3AuditStatsEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.g) #22
          to label %.body unwind label %bb.o, !dbg !12498

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !12499
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6clientNtB5_11ClientHooksNtNtB7_5hooks11DriverHooks16headers_received:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !dbg !19351, !noalias !19353
  call void @_RNvMs6_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventNtNtB7_9unbounded9SemaphoreE4sendB11_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a), !dbg !19354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19355, !noalias !19352
    #dbg_value(i64 -2, !19155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19357, !noalias !19245
  br label %bb.u, !dbg !19358

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.c, !12899, !DIExpression(), !19359)
  %i.ai = load i64, ptr %i.c, align 8, !dbg !19361, !range !12908, !alias.scope !19362, !noalias !19353, !noundef !25
  %.not.i3.i.i = icmp eq i64 %i.ai, -1, !dbg !19361
  br i1 %.not.i3.i.i, label %common.resume, label %bb.p, !dbg !19361

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7H3EventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %common.resume unwind label %bb.q, !dbg !19361, !noalias !19365

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !19366, !noalias !19365
  unreachable, !dbg !19366

bb.r:                                             ; preds = %bb.e
  call void @llvm.trap(), !dbg !19367
  unreachable, !dbg !19367

_RNvMs2_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventE4sendB1k_.exit.i: ; preds = %bb.k
  %.sroa.0.0.copyload33.i = load i64, ptr %i.c, align 8, !dbg !19368, !alias.scope !19369, !noalias !19370 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.copyload33.i, !19155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
  %.sroa.6.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !19368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx34.i, i64 88, i1 false), !dbg !19368, !alias.scope !19369, !noalias !19370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19357, !noalias !19245
  %.not26.i = icmp eq i64 %.sroa.0.0.copyload33.i, -2, !dbg !19371
  br i1 %.not26.i, label %bb.u, label %bb.s, !dbg !19358

bb.s:                                             ; preds = %_RNvMs2_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventE4sendB1k_.exit.i
    #dbg_value(i64 %.sroa.0.0.copyload33.i, !19143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19372)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !19373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19373, !noalias !19245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i, i64 88, i1 false), !dbg !19374, !noalias !19245
  store i64 %.sroa.0.0.copyload33.i, ptr %i.b, align 8, !dbg !19373, !noalias !19245
    #dbg_value(ptr %i.b, !18633, !DIExpression(), !19375)
    #dbg_value(ptr %i.b, !12899, !DIExpression(), !19381)
  %.not.i.i30.i = icmp eq i64 %.sroa.0.0.copyload33.i, -1, !dbg !19383
  br i1 %.not.i.i30.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5error9SendErrorNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventEEB1C_.exit.i, label %bb.t, !dbg !19383

bb.t:                                             ; preds = %bb.s
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7H3EventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.b), !dbg !19383
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5error9SendErrorNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventEEB1C_.exit.i, !dbg !19383

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5error9SendErrorNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventEEB1C_.exit.i, %_RNvMs2_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventE4sendB1k_.exit.i, %_RNvMs2_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventE4sendB1k_.exit.thread.i
  %.sroa.0.0.i = phi i64 [ 43, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5error9SendErrorNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventEEB1C_.exit.i ], [ -1, %_RNvMs2_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventE4sendB1k_.exit.i ], [ -1, %_RNvMs2_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventE4sendB1k_.exit.thread.i ], !dbg !19356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !19384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19385, !noalias !19245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19385, !noalias !19245
  br label %bb.ac, !dbg !19385

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5error9SendErrorNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventEEB1C_.exit.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19373, !noalias !19245
  br label %bb.u, !dbg !19386

bb.v:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body28.thread.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsa2e0UnRrdBM_12tokio_quiche.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19385, !noalias !19245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19385, !noalias !19245
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client20PendingClientRequestEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h), !dbg !19385
  br label %bb.ac, !dbg !19385

bb.w:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %.body28.thread.i unwind label %bb.x, !dbg !19385, !noalias !19251

bb.x:                                             ; preds = %bb.y, %.body28.thread.i, %bb.w
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !19387, !noalias !19388
  unreachable, !dbg !19387

.body28.thread.i:                                 ; preds = %bb.w, %bb.v, %bb.g
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.w ], [ %i.ak, %bb.v ], [ %i.t, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h) #22
          to label %bb.y unwind label %bb.x, !dbg !19385, !noalias !19388

bb.y:                                             ; preds = %.body28.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !19385
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded8ReceiverNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.am) #22
          to label %common.resume unwind label %bb.x, !dbg !19385, !noalias !19388

bb.z:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !19210
    #dbg_value(ptr %2, !5377, !DIExpression(), !19389)
    #dbg_value(ptr %2, !2519, !DIExpression(), !19391)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver5hooks14InboundHeadersEBJ_.exit unwind label %bb.aa, !dbg !19393

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %2, !2530, !DIExpression(), !19394)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %common.resume unwind label %bb.ab, !dbg !19396

bb.ab:                                            ; preds = %bb.aa
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !19393
  unreachable, !dbg !19393

common.resume:                                    ; preds = %bb.ae, %bb.o, %bb.p, %bb.y, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.aa ], [ %i.ah, %bb.o ], [ %lpad.thr_comm.split-lp, %bb.ae ], [ %.pn.i, %bb.y ], [ %i.ah, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !19202

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver5hooks14InboundHeadersEBJ_.exit: ; preds = %bb.z
    #dbg_value(ptr %2, !2530, !DIExpression(), !19397)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2), !dbg !19399
  br label %bb.ad, !dbg !19400

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsa2e0UnRrdBM_12tokio_quiche.exit.i, %bb.u
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.u ], [ 45, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche2h36HeaderEECsa2e0UnRrdBM_12tokio_quiche.exit.i ], !dbg !19247
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i), !dbg !19401
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !19402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !19400
  br label %bb.ad, !dbg !19400

bb.ad:                                            ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver5hooks14InboundHeadersEBJ_.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.1.i, %bb.ac ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver5hooks14InboundHeadersEBJ_.exit ], !dbg !19202
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !19403
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 undef, 1, !dbg !19403
  ret { i64, i64 } %i.aq, !dbg !19403

bb.ae:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver5hooks14InboundHeadersEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #22
          to label %common.resume unwind label %bb.af, !dbg !19400

bb.af:                                            ; preds = %bb.ae
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !19404
  unreachable, !dbg !19404
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs3O5oxBhiT4j_10tokio_util4sync4mpscINtB5_10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19405 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %1, !19411, !DIExpression(), !19417)
    #dbg_value(i64 1, !19418, !DIExpression(), !19423)
    #dbg_value(i8 0, !19422, !DIExpression(), !19423)
    #dbg_value(i64 1, !19443, !DIExpression(), !19448)
    #dbg_value(i8 0, !19447, !DIExpression(), !19448)
    #dbg_value(i64 1, !19418, !DIExpression(), !19450)
    #dbg_value(i8 0, !19422, !DIExpression(), !19450)
    #dbg_value(i64 1, !19443, !DIExpression(), !19460)
    #dbg_value(i8 0, !19447, !DIExpression(), !19460)
    #dbg_value(i64 1, !19418, !DIExpression(), !19463)
    #dbg_value(i8 0, !19422, !DIExpression(), !19463)
    #dbg_value(i64 1, !19443, !DIExpression(), !19469)
    #dbg_value(i8 0, !19447, !DIExpression(), !19469)
    #dbg_value(i64 1, !19418, !DIExpression(), !19472)
    #dbg_value(i8 0, !19422, !DIExpression(), !19472)
    #dbg_value(i64 1, !19443, !DIExpression(), !19476)
    #dbg_value(i8 0, !19447, !DIExpression(), !19476)
    #dbg_value(ptr %1, !19440, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19479)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !19480
  %i.d = load ptr, ptr %i.c, align 8, !dbg !19480, !noundef !25 ; 8 uses
  %.not = icmp eq ptr %i.d, null, !dbg !19480
  br i1 %.not, label %bb.c, label %bb.b, !dbg !19481

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !19441, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19482)
    #dbg_value(ptr %1, !19431, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19483)
    #dbg_value(ptr %1, !19427, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19484)
    #dbg_value(ptr %i.d, !19485, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !19488)
    #dbg_value(ptr %i.d, !19490, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !19493)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 496, !dbg !19495 ; 2 uses
    #dbg_value(ptr %i.e, !19421, !DIExpression(), !19423)
    #dbg_value(ptr %i.e, !19446, !DIExpression(), !19448)
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !19496 ; 0 uses
    #dbg_value(ptr %1, !19454, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19497)
    #dbg_value(ptr %i.d, !19421, !DIExpression(), !19498)
    #dbg_value(ptr %i.d, !19446, !DIExpression(), !19460)
  %i.g = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !dbg !19499
    #dbg_value(i64 %i.g, !19455, !DIExpression(), !19500)
  %i.h = icmp slt i64 %i.g, 0, !dbg !19501
  br i1 %i.h, label %bb.f, label %bb.e, !dbg !19501

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ 3, %bb.a ], [ 0, %bb.e ], !dbg !19417 ; 2 uses
    #dbg_value(ptr %i.d, !19412, !DIExpression(), !19502)
    #dbg_value(i64 %i.i, !19414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19502)
    #dbg_value(ptr %i.d, !19414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19502)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19503
  store ptr %i.d, ptr %i.b, align 8, !dbg !19503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19504
  store i64 %i.i, ptr %i.a, align 8, !dbg !19504
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19504
  store ptr %i.d, ptr %i.j, align 8, !dbg !19504
    #dbg_value(i8 0, !19505, !DIExpression(), !19513)
    #dbg_value(i8 0, !19518, !DIExpression(), !19529)
    #dbg_value(i8 0, !19531, !DIExpression(), !19539)
    #dbg_value(i64 1, !12352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19541)
    #dbg_value(i64 1, !12366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19543)
    #dbg_value(i64 1, !12391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19545)
    #dbg_value(i64 1, !12352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19541)
    #dbg_value(i64 1, !12366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19543)
    #dbg_value(i64 1, !12391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19545)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12388, !DIExpression(), !19543)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12397, !DIExpression(), !19545)
    #dbg_value(i8 0, !12398, !DIExpression(), !19545)
    #dbg_value(i64 1, !12401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19547)
    #dbg_value(i64 1, !12433, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19549)
    #dbg_value(i64 1, !12401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19547)
    #dbg_value(i64 1, !12433, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19549)
    #dbg_value(i1 false, !12407, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19547)
    #dbg_value(i64 1, !12408, !DIExpression(), !19551)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !dbg !19552
  %i.k = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 153) 1, i64 noundef range(i64 1, 9) 1) #12, !dbg !19553 ; 3 uses
  %i.l = icmp eq ptr %i.k, null, !dbg !19554
  br i1 %i.l, label %bb.d, label %bb.h, !dbg !19555, !prof !8323

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #24
          to label %.noexc unwind label %.body, !dbg !19556

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !19556

.body:                                            ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc5StateNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #22
          to label %bb.j unwind label %bb.i, !dbg !19557

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %i.d, !19415, !DIExpression(), !19558)
    #dbg_value(ptr poison, !19431, !DIExpression(), !19559)
    #dbg_value(ptr poison, !19427, !DIExpression(), !19560)
    #dbg_value(ptr %i.d, !19485, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !19561)
    #dbg_value(ptr %i.d, !19490, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !19564)
    #dbg_value(ptr %i.e, !19421, !DIExpression(), !19463)
    #dbg_value(ptr %i.e, !19446, !DIExpression(), !19469)
  %i.n = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !19567 ; 0 uses
    #dbg_value(ptr poison, !19454, !DIExpression(), !19568)
    #dbg_value(ptr %i.d, !19421, !DIExpression(), !19569)
    #dbg_value(ptr %i.d, !19446, !DIExpression(), !19476)
  %i.o = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !dbg !19570
    #dbg_value(i64 %i.o, !19457, !DIExpression(), !19571)
  %i.p = icmp slt i64 %i.o, 0, !dbg !19572
  br i1 %i.p, label %bb.g, label %bb.c, !dbg !19572

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !19573
  unreachable, !dbg !19573

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !19574
  unreachable, !dbg !19574

bb.h:                                             ; preds = %bb.c
    #dbg_value(ptr %i.k, !19536, !DIExpression(), !19575)
  store i8 0, ptr %i.k, align 1, !dbg !19576
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !19577
  store ptr %i.d, ptr %i.q, align 8, !dbg !19577
  store i64 %i.i, ptr %0, align 8, !dbg !19577
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19577
  store ptr %i.d, ptr %i.r, align 8, !dbg !19577
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19577
  store ptr %i.k, ptr %i.s, align 8, !dbg !19577
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19577
  store ptr @42, ptr %i.t, align 8, !dbg !19577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19557
  ret void, !dbg !19578

bb.i:                                             ; preds = %bb.j, %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !19579
  unreachable, !dbg !19579

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded6SenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1V_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #22
          to label %bb.k unwind label %bb.i, !dbg !19557

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.m, !dbg !19579
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNCNvMs1_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNCNvMs1_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs2sJxpAufolh_5tokio4sync7oneshotINtB5_6SenderINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCs6rgADF5KVz1_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellNtNtCskKLDkoKarTP_4core4time8DurationENtNtNtB1k_3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCs6rgADF5KVz1_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellNtNtCs1mB61iS8Qhs_15datagram_socket12socket_stats17StreamClosureKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client15ClientH3CommandNtNtB7_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7boundedINtB5_11OwnedPermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7boundedINtB5_11OwnedPermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs5OU5zKChQMG_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCs2sJxpAufolh_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtCs168gOGDjq8U_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_str(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtCs168gOGDjq8U_10prometools5serde3top9check_key(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMNtNtCs168gOGDjq8U_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvXNvNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labelss0_1__NtB5_14HandshakeErrorNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCs168gOGDjq8U_10prometools5serde5value15ValueSerializerEB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvXNvNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labelss_1__NtB5_14QuicWriteErrorNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCs168gOGDjq8U_10prometools5serde5value15ValueSerializerEB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvXNvNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labels1__NtB5_18QuicHandshakeStageNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCs168gOGDjq8U_10prometools5serde5value15ValueSerializerEB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvXs2_NtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labelsNtB6_29QuicInvalidInitialPacketErrorNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCs168gOGDjq8U_10prometools5serde5value15ValueSerializerEBa_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_1
