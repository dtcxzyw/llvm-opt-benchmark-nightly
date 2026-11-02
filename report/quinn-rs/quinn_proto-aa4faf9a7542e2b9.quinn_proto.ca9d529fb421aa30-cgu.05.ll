Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.05?download=true
inline.NumInlined: 488
inline.NumDeleted: 148
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs_NvXNvNtCs7IHJO2Xhr2x_4qlog6eventssc_1__NtBa_9EventDataNtNtCsbwMSWOJol8F_10serde_core3ser9Serialize9serializeNtB5_s_18___AdjacentlyTaggedBX_9serializeQINtNtCscFTfv2TGtgR_10serde_json3ser10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB3o_6marker4SendNtB3Y_4SyncEL_NtB2y_15PrettyFormatterEECshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(ptr poison, !4847, !DIExpression(), !16003)
    #dbg_value(ptr @125, !4852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16003)
    #dbg_value(i64 1, !4852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16003)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val12.i.i.i, i64 56, !dbg !16159
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !16159, !invariant.load !1631, !noalias !16114, !nonnull !1631
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull %.val11.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 1) #16, !dbg !16160, !noalias !16108, !inline_history !1000 ; 2 uses
    #dbg_value(ptr %i.ar, !5106, !DIExpression(), !16006)
  %.not.i.i45 = icmp eq ptr %i.ar, null, !dbg !16161
  br i1 %.not.i.i45, label %_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBY_6marker4SendNtB1y_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCshovLROGBtMy_11quinn_proto.exit, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i, !dbg !16162, !prof !5082

_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i: ; preds = %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i44, %bb.k, %bb.j
  %.sroa.0.0.i9.i.i = phi ptr [ %i.ar, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i44 ], [ %i.an, %bb.k ], [ %i.aj, %bb.j ]
    #dbg_value(ptr %.sroa.0.0.i9.i.i, !5108, !DIExpression(), !16007)
  %i.as = call noundef nonnull align 8 ptr @_RNvMs0_NtCscFTfv2TGtgR_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i9.i.i), !dbg !16163
  br label %_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBY_6marker4SendNtB1y_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCshovLROGBtMy_11quinn_proto.exit, !dbg !16164

_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBY_6marker4SendNtB1y_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i44, %bb.h, %bb.c, %bb.e, %bb.g
  %.sroa.0.0 = phi ptr [ %i.v, %bb.g ], [ %i.q, %bb.c ], [ %i.s, %bb.e ], [ null, %bb.h ], [ %i.as, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i ], [ null, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i44 ], !dbg !16117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16165
  ret ptr %.sroa.0.0, !dbg !16166
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCshovLROGBtMy_11quinn_proto(ptr %.0.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16171 {
bb.a:
    #dbg_declare(ptr poison, !16209, !DIExpression(), !16217)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
    #dbg_value(ptr %.0.val, !16211, !DIExpression(), !16218)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !16287
    #dbg_value(ptr %i.a, !16219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16232)
    #dbg_value(i64 11, !16219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16232)
    #dbg_value(i64 %.16.val, !16227, !DIExpression(), !16232)
    #dbg_value(i64 %.16.val, !16233, !DIExpression(), !16243)
    #dbg_value(i64 %.16.val, !16244, !DIExpression(), !16256)
    #dbg_value(i64 %.16.val, !16257, !DIExpression(), !16269)
    #dbg_value(ptr %i.a, !16239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16243)
    #dbg_value(i64 11, !16239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16243)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.16.val, !dbg !16288 ; 3 uses
    #dbg_value(ptr %i.b, !16213, !DIExpression(), !16270)
    #dbg_value(ptr %i.b, !16271, !DIExpression(), !16277)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 272, !dbg !16289
    #dbg_value(ptr %i.c, !16251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16256)
    #dbg_value(i64 11, !16251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16256)
    #dbg_value(ptr %i.c, !16264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16269)
    #dbg_value(i64 11, !16264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16269)
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %.16.val, !dbg !16290 ; 2 uses
    #dbg_value(ptr %i.d, !16214, !DIExpression(), !16278)
    #dbg_value(ptr %i.d, !16215, !DIExpression(), !16279)
    #dbg_value(ptr %i.b, !16281, !DIExpression(), !16286)
    #dbg_value(ptr %i.b, !2839, !DIExpression(), !16183)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !16291

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !2846, !DIExpression(), !16185)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.d, !dbg !16292

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !2846, !DIExpression(), !16187)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit unwind label %bb.e, !dbg !16293

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !16291
  unreachable, !dbg !16291

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !16294

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertEECshovLROGBtMy_11quinn_proto(ptr nonnull %i.d) #15
          to label %common.resume unwind label %bb.h, !dbg !16294

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c
    #dbg_value(ptr poison, !2895, !DIExpression(), !16189)
    #dbg_value(ptr poison, !2899, !DIExpression(), !16191)
    #dbg_value(ptr %i.d, !2901, !DIExpression(), !16193)
    #dbg_value(ptr %i.d, !2907, !DIExpression(), !16195)
    #dbg_value(ptr %i.d, !2912, !DIExpression(), !16197)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !16295 ; 3 uses
    #dbg_value(ptr %i.h, !2839, !DIExpression(), !16199)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertEECshovLROGBtMy_11quinn_proto.exit unwind label %bb.f, !dbg !16296

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !2846, !DIExpression(), !16201)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.g, !dbg !16297

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !16296
  unreachable, !dbg !16296

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !16298

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertEECshovLROGBtMy_11quinn_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit
    #dbg_value(ptr %i.h, !2846, !DIExpression(), !16203)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !16299
  ret void, !dbg !16300

bb.h:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !16301
  unreachable, !dbg !16301
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1R_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #2 !dbg !16325 {
bb.a:
    #dbg_value(ptr %0, !16409, !DIExpression(), !16414)
    #dbg_value(i64 0, !16415, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16440)
  %i.a = load i64, ptr %0, align 8, !dbg !16483, !range !2453, !noundef !1631
  %i.b = trunc nuw i64 %i.a to i1, !dbg !16484    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !16484

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16483 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !16483, !noundef !1631
  %.not = icmp eq ptr %i.d, null, !dbg !16483
  br i1 %.not, label %bb.d, label %bb.c, !dbg !16484

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16485
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !16485
  ret ptr %.sroa.0.0, !dbg !16486

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !16411, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16449)
    #dbg_value(ptr %i.c, !16451, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16458)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16487 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16487
  %i.h = load i64, ptr %i.g, align 8, !dbg !16487, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.h, !16444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %i.h, !16445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %i.h, !16461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
  %.sroa.013.029 = load ptr, ptr %i.f, align 8, !dbg !16488, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !16489
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !16489

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !16489        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !16489
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !16489

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.031.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.029, %.lr.ph.preheader ]
  %.sroa.011.030.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
    #dbg_value(i64 %.sroa.011.030.prol, !16461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030.prol, !16447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030.prol, !16415, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.031.prol, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.031.prol, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.031.prol, !16435, !DIExpression(), !16482)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.031.prol, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
  %i.k = add i64 %.sroa.011.030.prol, -1, !dbg !16491 ; 2 uses
    #dbg_value(i64 %i.k, !16444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %i.k, !16445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %i.k, !16461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !16488, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.prol, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0.prol, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0.prol, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0.prol, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !16489 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !16489
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !16489, !llvm.loop !16343

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.031.unr = phi ptr [ %.sroa.013.029, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.030.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !16489
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !16489

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.029, %bb.d ], [ %.sroa.013.0.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !16488
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !16492
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !16492
  br label %bb.c, !dbg !16493

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.031 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.031.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.030 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.030.unr, %.lr.ph.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030, !16447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030, !16415, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.031, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.031, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.031, !16435, !DIExpression(), !16482)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.031, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
    #dbg_value(i64 %.sroa.011.030, !16444, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16445, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !16488, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030, !16447, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030, !16415, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.0, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.0, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.0, !16435, !DIExpression(), !16482)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
    #dbg_value(i64 %.sroa.011.030, !16444, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16445, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !16488, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.1, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0.1, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0.1, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0.1, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030, !16447, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030, !16415, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.1, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.0.1, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.1, !16435, !DIExpression(), !16482)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
    #dbg_value(i64 %.sroa.011.030, !16444, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16445, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !16488, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.2, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0.2, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0.2, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0.2, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030, !16447, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030, !16415, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.2, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.0.2, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.2, !16435, !DIExpression(), !16482)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
    #dbg_value(i64 %.sroa.011.030, !16444, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16445, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !16488, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.3, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0.3, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0.3, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0.3, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030, !16447, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030, !16415, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.3, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.0.3, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.3, !16435, !DIExpression(), !16482)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
    #dbg_value(i64 %.sroa.011.030, !16444, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16445, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !16488, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.4, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0.4, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0.4, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0.4, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030, !16447, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030, !16415, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.4, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.0.4, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.4, !16435, !DIExpression(), !16482)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
    #dbg_value(i64 %.sroa.011.030, !16444, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16445, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !16488, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.5, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0.5, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0.5, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0.5, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030, !16447, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030, !16415, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.5, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.0.5, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.5, !16435, !DIExpression(), !16482)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
    #dbg_value(i64 %.sroa.011.030, !16444, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16445, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !16488, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.6, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0.6, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0.6, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0.6, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(i64 %.sroa.011.030, !16461, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16479)
    #dbg_value(i64 %.sroa.011.030, !16447, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16481)
    #dbg_value(i64 %.sroa.011.030, !16415, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.6, !16447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16481)
    #dbg_value(ptr %.sroa.013.0.6, !16415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16440)
    #dbg_value(ptr %.sroa.013.0.6, !16435, !DIExpression(), !16482)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 1160, !dbg !16490
    #dbg_value(ptr poison, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
    #dbg_value(ptr poison, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr poison, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr poison, !16436, !DIExpression(), !16480)
  %i.u = add i64 %.sroa.011.030, -8, !dbg !16491  ; 2 uses
    #dbg_value(i64 %i.u, !16444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16459)
    #dbg_value(i64 %i.u, !16445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16460)
    #dbg_value(i64 %i.u, !16461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16479)
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !16488, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.7, !16436, !DIExpression(), !16480)
    #dbg_value(ptr %.sroa.013.0.7, !16461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16479)
    #dbg_value(ptr %.sroa.013.0.7, !16445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16460)
    #dbg_value(ptr %.sroa.013.0.7, !16444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16459)
  %i.v = icmp eq i64 %i.u, 0, !dbg !16489
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !16489
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE6insertB1e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16503 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !16527, !DIExpression(), !16559)
    #dbg_value(i64 %2, !16528, !DIExpression(), !16559)
    #dbg_declare(ptr %3, !16529, !DIExpression(), !16560)
    #dbg_declare(ptr %i.g, !16530, !DIExpression(), !16561)
    #dbg_declare(ptr %i.e, !16531, !DIExpression(), !16562)
    #dbg_declare(ptr %i.e, !16563, !DIExpression(), !16570)
    #dbg_declare(ptr %i.d, !16567, !DIExpression(), !16571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16572), !dbg !16596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
    #dbg_value(i64 %2, !16573, !DIExpression(), !16517)
  store i64 %2, ptr %i.b, align 8, !noalias !16593
    #dbg_value(ptr %1, !16586, !DIExpression(), !16517)
    #dbg_value(ptr %1, !16587, !DIExpression(), !16519)
    #dbg_value(ptr %1, !16588, !DIExpression(), !16519)
  %i.h = load ptr, ptr %1, align 8, !dbg !16597, !alias.scope !16572, !noundef !1631 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null, !dbg !16597
  br i1 %.not.i, label %bb.e, label %bb.b, !dbg !16598

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16597
    #dbg_value(ptr %1, !16589, !DIExpression(), !16520)
    #dbg_value(ptr %1, !16594, !DIExpression(), !16523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16599, !noalias !16593
  %i.j = load i64, ptr %i.i, align 8, !dbg !16600, !alias.scope !16572, !noundef !1631
    #dbg_value(ptr %i.b, !16573, !DIExpression(DW_OP_deref), !16517)
  invoke void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1i_14LeafOrInternalE11search_treeyEB1F_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
end_hunk_0
begin_hunk_1_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10dying_nextCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(i64 %.sroa.020.036.i.i, !17184, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17007)
    #dbg_value(i64 %.sroa.020.036.i.i, !17183, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17006)
    #dbg_value(i64 %.sroa.020.036.i.i, !17159, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17005)
    #dbg_value(i64 %.sroa.020.036.i.i, !17217, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17014)
    #dbg_value(i64 %.sroa.020.036.i.i, !17186, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17016)
    #dbg_value(i64 %.sroa.020.036.i.i, !17162, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16990)
    #dbg_value(ptr %i.s, !17186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17016)
    #dbg_value(ptr %i.s, !17162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16990)
    #dbg_value(ptr %i.s, !17177, !DIExpression(), !17017)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 896, !dbg !17364
    #dbg_value(ptr %i.t, !17235, !DIExpression(), !17020)
    #dbg_value(ptr %i.t, !17242, !DIExpression(), !17023)
    #dbg_value(ptr %i.t, !17246, !DIExpression(), !17026)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !17365, !noalias !17248, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.u, !17159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17005)
    #dbg_value(ptr %i.u, !17183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17006)
    #dbg_value(ptr %i.u, !17184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17007)
    #dbg_value(ptr %i.u, !17217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17014)
    #dbg_value(ptr %i.u, !17178, !DIExpression(), !17015)
    #dbg_value(i64 %.sroa.020.036.i.i, !17184, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17007)
    #dbg_value(i64 %.sroa.020.036.i.i, !17183, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17006)
    #dbg_value(i64 %.sroa.020.036.i.i, !17159, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17005)
    #dbg_value(i64 %.sroa.020.036.i.i, !17217, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17014)
    #dbg_value(i64 %.sroa.020.036.i.i, !17186, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17016)
    #dbg_value(i64 %.sroa.020.036.i.i, !17162, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16990)
    #dbg_value(ptr %i.u, !17186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17016)
    #dbg_value(ptr %i.u, !17162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16990)
    #dbg_value(ptr %i.u, !17177, !DIExpression(), !17017)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 896, !dbg !17364
    #dbg_value(ptr %i.v, !17235, !DIExpression(), !17020)
    #dbg_value(ptr %i.v, !17242, !DIExpression(), !17023)
    #dbg_value(ptr %i.v, !17246, !DIExpression(), !17026)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !17365, !noalias !17248, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.w, !17159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17005)
    #dbg_value(ptr %i.w, !17183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17006)
    #dbg_value(ptr %i.w, !17184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17007)
    #dbg_value(ptr %i.w, !17217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17014)
    #dbg_value(ptr %i.w, !17178, !DIExpression(), !17015)
    #dbg_value(i64 %.sroa.020.036.i.i, !17184, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17007)
    #dbg_value(i64 %.sroa.020.036.i.i, !17183, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17006)
    #dbg_value(i64 %.sroa.020.036.i.i, !17159, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17005)
    #dbg_value(i64 %.sroa.020.036.i.i, !17217, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17014)
    #dbg_value(i64 %.sroa.020.036.i.i, !17186, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17016)
    #dbg_value(i64 %.sroa.020.036.i.i, !17162, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16990)
    #dbg_value(ptr %i.w, !17186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17016)
    #dbg_value(ptr %i.w, !17162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16990)
    #dbg_value(ptr %i.w, !17177, !DIExpression(), !17017)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 896, !dbg !17364
    #dbg_value(ptr %i.x, !17235, !DIExpression(), !17020)
    #dbg_value(ptr %i.x, !17242, !DIExpression(), !17023)
    #dbg_value(ptr %i.x, !17246, !DIExpression(), !17026)
  %i.y = load ptr, ptr %i.x, align 8, !dbg !17365, !noalias !17248, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.y, !17159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17005)
    #dbg_value(ptr %i.y, !17183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17006)
    #dbg_value(ptr %i.y, !17184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17007)
    #dbg_value(ptr %i.y, !17217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17014)
    #dbg_value(ptr %i.y, !17178, !DIExpression(), !17015)
    #dbg_value(i64 %.sroa.020.036.i.i, !17184, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17007)
    #dbg_value(i64 %.sroa.020.036.i.i, !17183, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17006)
    #dbg_value(i64 %.sroa.020.036.i.i, !17159, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17005)
    #dbg_value(i64 %.sroa.020.036.i.i, !17217, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17014)
    #dbg_value(i64 %.sroa.020.036.i.i, !17186, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17016)
    #dbg_value(i64 %.sroa.020.036.i.i, !17162, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16990)
    #dbg_value(ptr %i.y, !17186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17016)
    #dbg_value(ptr %i.y, !17162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16990)
    #dbg_value(ptr %i.y, !17177, !DIExpression(), !17017)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896, !dbg !17364
    #dbg_value(ptr %i.z, !17235, !DIExpression(), !17020)
    #dbg_value(ptr %i.z, !17242, !DIExpression(), !17023)
    #dbg_value(ptr %i.z, !17246, !DIExpression(), !17026)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !17365, !noalias !17248, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.aa, !17159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17005)
    #dbg_value(ptr %i.aa, !17183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17006)
    #dbg_value(ptr %i.aa, !17184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17007)
    #dbg_value(ptr %i.aa, !17217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17014)
    #dbg_value(ptr %i.aa, !17178, !DIExpression(), !17015)
    #dbg_value(i64 %.sroa.020.036.i.i, !17184, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17007)
    #dbg_value(i64 %.sroa.020.036.i.i, !17183, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17006)
    #dbg_value(i64 %.sroa.020.036.i.i, !17159, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17005)
    #dbg_value(i64 %.sroa.020.036.i.i, !17217, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17014)
    #dbg_value(i64 %.sroa.020.036.i.i, !17186, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17016)
    #dbg_value(i64 %.sroa.020.036.i.i, !17162, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16990)
    #dbg_value(ptr %i.aa, !17186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17016)
    #dbg_value(ptr %i.aa, !17162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16990)
    #dbg_value(ptr %i.aa, !17177, !DIExpression(), !17017)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 896, !dbg !17364
    #dbg_value(ptr %i.ab, !17235, !DIExpression(), !17020)
    #dbg_value(ptr %i.ab, !17242, !DIExpression(), !17023)
    #dbg_value(ptr %i.ab, !17246, !DIExpression(), !17026)
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !17365, !noalias !17248, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.ac, !17159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17005)
    #dbg_value(ptr %i.ac, !17183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17006)
    #dbg_value(ptr %i.ac, !17184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17007)
    #dbg_value(ptr %i.ac, !17217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17014)
    #dbg_value(ptr %i.ac, !17178, !DIExpression(), !17015)
  %i.ad = add i64 %.sroa.020.036.i.i, -8, !dbg !17366 ; 2 uses
    #dbg_value(i64 %i.ad, !17217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17014)
    #dbg_value(i64 %i.ad, !17184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17007)
    #dbg_value(i64 %i.ad, !17183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17006)
    #dbg_value(i64 %i.ad, !17159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17005)
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !17363
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !17363

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17367, !noalias !17134
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !17367, !noalias !17134
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17367
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !17367, !noalias !17134
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17367
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !17367, !noalias !17134
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !17368, !noalias !17134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17369, !noalias !17134
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !17370

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8, !dbg !17371
  br label %bb.j, !dbg !17372

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !17373
  store i64 %i.af, ptr %i.e, align 8, !dbg !17373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17249), !dbg !17374
    #dbg_value(ptr %1, !17250, !DIExpression(), !17034)
    #dbg_declare(ptr poison, !17254, !DIExpression(), !17035)
    #dbg_declare(ptr poison, !17258, !DIExpression(), !17038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17264), !dbg !17375
    #dbg_value(ptr %1, !17265, !DIExpression(), !17049)
    #dbg_value(i64 0, !17282, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17059)
  %i.ag = load i64, ptr %1, align 8, !dbg !17376, !range !2453, !alias.scope !17291, !noundef !1631
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !17377
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !17377

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17376 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !17376, !alias.scope !17291, !noundef !1631
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !17376
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit.i, !dbg !17377

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !17279, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17060)
    #dbg_value(ptr %i.ai, !17293, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !17063)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17378 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17378
  %i.am = load i64, ptr %i.al, align 8, !dbg !17378, !alias.scope !17291, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.am, !17286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %i.am, !17287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %i.am, !17299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
  %.sroa.013.029.i.i = load ptr, ptr %i.ak, align 8, !dbg !17379, !alias.scope !17291, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !17380
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !17380

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !17380       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !17380
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !17380

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !17299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !17289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !17282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !17283, !DIExpression(), !17071)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
  %i.ap = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !17382 ; 2 uses
    #dbg_value(i64 %i.ap, !17286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %i.ap, !17287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %i.ap, !17299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !17380 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !17380
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !17380, !llvm.loop !17073

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !17380
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !17380

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !17379
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !17383, !alias.scope !17291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !17383, !alias.scope !17291
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit.i, !dbg !17384

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i, !17289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i, !17282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.031.i.i, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.031.i.i, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.031.i.i, !17283, !DIExpression(), !17071)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
    #dbg_value(i64 %.sroa.011.030.i.i, !17286, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17287, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i, !17289, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i, !17282, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.0.i.i, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i, !17283, !DIExpression(), !17071)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
    #dbg_value(i64 %.sroa.011.030.i.i, !17286, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17287, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i, !17289, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i, !17282, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17283, !DIExpression(), !17071)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
    #dbg_value(i64 %.sroa.011.030.i.i, !17286, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17287, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i, !17289, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i, !17282, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17283, !DIExpression(), !17071)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
    #dbg_value(i64 %.sroa.011.030.i.i, !17286, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17287, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i, !17289, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i, !17282, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17283, !DIExpression(), !17071)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
    #dbg_value(i64 %.sroa.011.030.i.i, !17286, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17287, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i, !17289, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i, !17282, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17283, !DIExpression(), !17071)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
    #dbg_value(i64 %.sroa.011.030.i.i, !17286, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17287, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i, !17289, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i, !17282, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17283, !DIExpression(), !17071)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
    #dbg_value(i64 %.sroa.011.030.i.i, !17286, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17287, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(i64 %.sroa.011.030.i.i, !17299, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17068)
    #dbg_value(i64 %.sroa.011.030.i.i, !17289, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17070)
    #dbg_value(i64 %.sroa.011.030.i.i, !17282, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17070)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17059)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17283, !DIExpression(), !17071)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 896, !dbg !17381
    #dbg_value(ptr poison, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
    #dbg_value(ptr poison, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr poison, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr poison, !17284, !DIExpression(), !17069)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !17382 ; 2 uses
    #dbg_value(i64 %i.az, !17286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17064)
    #dbg_value(i64 %i.az, !17287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17065)
    #dbg_value(i64 %i.az, !17299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17068)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !17379, !noalias !17301, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17284, !DIExpression(), !17069)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17068)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17065)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17064)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !17380
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !17380

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !17302, !DIExpression(), !17077)
    #dbg_value(ptr poison, !17256, !DIExpression(), !17078)
    #dbg_value(ptr poison, !17262, !DIExpression(), !17079)
    #dbg_declare(ptr %i.d, !17308, !DIExpression(), !17086)
    #dbg_value(ptr poison, !17313, !DIExpression(), !17087)
    #dbg_value(ptr poison, !17322, !DIExpression(), !17090)
    #dbg_declare(ptr poison, !17314, !DIExpression(), !17091)
    #dbg_declare(ptr poison, !17316, !DIExpression(), !17092)
    #dbg_declare(ptr %i.b, !17317, !DIExpression(), !17093)
    #dbg_declare(ptr %i.b, !17326, !DIExpression(), !17094)
    #dbg_declare(ptr poison, !17315, !DIExpression(), !17095)
    #dbg_declare(ptr poison, !17328, !DIExpression(), !17099)
    #dbg_declare(ptr poison, !17334, !DIExpression(), !17100)
    #dbg_declare(ptr %i.a, !17336, !DIExpression(), !17108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17385, !noalias !17351
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !17386, !noalias !17352

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !17387, !noalias !17351, !noundef !1631
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !17387
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !17388, !prof !2224

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #13
          to label %.noexc2.i.i unwind label %bb.i, !dbg !17389, !noalias !17353

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !17389

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !17116)
    #dbg_value(ptr poison, !2235, !DIExpression(), !17118)
  tail call void @llvm.trap(), !dbg !17390
end_hunk_1
begin_hunk_2_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10dying_nextCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(i64 %.sroa.020.036.i.i, !17628, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17451)
    #dbg_value(i64 %.sroa.020.036.i.i, !17627, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17450)
    #dbg_value(i64 %.sroa.020.036.i.i, !17603, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17449)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17458)
    #dbg_value(i64 %.sroa.020.036.i.i, !17630, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17460)
    #dbg_value(i64 %.sroa.020.036.i.i, !17606, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17434)
    #dbg_value(ptr %i.s, !17630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17460)
    #dbg_value(ptr %i.s, !17606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17434)
    #dbg_value(ptr %i.s, !17621, !DIExpression(), !17461)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1072, !dbg !17808
    #dbg_value(ptr %i.t, !17679, !DIExpression(), !17464)
    #dbg_value(ptr %i.t, !17686, !DIExpression(), !17467)
    #dbg_value(ptr %i.t, !17690, !DIExpression(), !17470)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !17809, !noalias !17692, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.u, !17603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17449)
    #dbg_value(ptr %i.u, !17627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17450)
    #dbg_value(ptr %i.u, !17628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17451)
    #dbg_value(ptr %i.u, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17458)
    #dbg_value(ptr %i.u, !17622, !DIExpression(), !17459)
    #dbg_value(i64 %.sroa.020.036.i.i, !17628, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17451)
    #dbg_value(i64 %.sroa.020.036.i.i, !17627, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17450)
    #dbg_value(i64 %.sroa.020.036.i.i, !17603, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17449)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17458)
    #dbg_value(i64 %.sroa.020.036.i.i, !17630, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17460)
    #dbg_value(i64 %.sroa.020.036.i.i, !17606, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17434)
    #dbg_value(ptr %i.u, !17630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17460)
    #dbg_value(ptr %i.u, !17606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17434)
    #dbg_value(ptr %i.u, !17621, !DIExpression(), !17461)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1072, !dbg !17808
    #dbg_value(ptr %i.v, !17679, !DIExpression(), !17464)
    #dbg_value(ptr %i.v, !17686, !DIExpression(), !17467)
    #dbg_value(ptr %i.v, !17690, !DIExpression(), !17470)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !17809, !noalias !17692, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.w, !17603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17449)
    #dbg_value(ptr %i.w, !17627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17450)
    #dbg_value(ptr %i.w, !17628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17451)
    #dbg_value(ptr %i.w, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17458)
    #dbg_value(ptr %i.w, !17622, !DIExpression(), !17459)
    #dbg_value(i64 %.sroa.020.036.i.i, !17628, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17451)
    #dbg_value(i64 %.sroa.020.036.i.i, !17627, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17450)
    #dbg_value(i64 %.sroa.020.036.i.i, !17603, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17449)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17458)
    #dbg_value(i64 %.sroa.020.036.i.i, !17630, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17460)
    #dbg_value(i64 %.sroa.020.036.i.i, !17606, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17434)
    #dbg_value(ptr %i.w, !17630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17460)
    #dbg_value(ptr %i.w, !17606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17434)
    #dbg_value(ptr %i.w, !17621, !DIExpression(), !17461)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1072, !dbg !17808
    #dbg_value(ptr %i.x, !17679, !DIExpression(), !17464)
    #dbg_value(ptr %i.x, !17686, !DIExpression(), !17467)
    #dbg_value(ptr %i.x, !17690, !DIExpression(), !17470)
  %i.y = load ptr, ptr %i.x, align 8, !dbg !17809, !noalias !17692, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.y, !17603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17449)
    #dbg_value(ptr %i.y, !17627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17450)
    #dbg_value(ptr %i.y, !17628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17451)
    #dbg_value(ptr %i.y, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17458)
    #dbg_value(ptr %i.y, !17622, !DIExpression(), !17459)
    #dbg_value(i64 %.sroa.020.036.i.i, !17628, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17451)
    #dbg_value(i64 %.sroa.020.036.i.i, !17627, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17450)
    #dbg_value(i64 %.sroa.020.036.i.i, !17603, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17449)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17458)
    #dbg_value(i64 %.sroa.020.036.i.i, !17630, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17460)
    #dbg_value(i64 %.sroa.020.036.i.i, !17606, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17434)
    #dbg_value(ptr %i.y, !17630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17460)
    #dbg_value(ptr %i.y, !17606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17434)
    #dbg_value(ptr %i.y, !17621, !DIExpression(), !17461)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1072, !dbg !17808
    #dbg_value(ptr %i.z, !17679, !DIExpression(), !17464)
    #dbg_value(ptr %i.z, !17686, !DIExpression(), !17467)
    #dbg_value(ptr %i.z, !17690, !DIExpression(), !17470)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !17809, !noalias !17692, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.aa, !17603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17449)
    #dbg_value(ptr %i.aa, !17627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17450)
    #dbg_value(ptr %i.aa, !17628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17451)
    #dbg_value(ptr %i.aa, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17458)
    #dbg_value(ptr %i.aa, !17622, !DIExpression(), !17459)
    #dbg_value(i64 %.sroa.020.036.i.i, !17628, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17451)
    #dbg_value(i64 %.sroa.020.036.i.i, !17627, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17450)
    #dbg_value(i64 %.sroa.020.036.i.i, !17603, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17449)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17458)
    #dbg_value(i64 %.sroa.020.036.i.i, !17630, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17460)
    #dbg_value(i64 %.sroa.020.036.i.i, !17606, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17434)
    #dbg_value(ptr %i.aa, !17630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17460)
    #dbg_value(ptr %i.aa, !17606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17434)
    #dbg_value(ptr %i.aa, !17621, !DIExpression(), !17461)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1072, !dbg !17808
    #dbg_value(ptr %i.ab, !17679, !DIExpression(), !17464)
    #dbg_value(ptr %i.ab, !17686, !DIExpression(), !17467)
    #dbg_value(ptr %i.ab, !17690, !DIExpression(), !17470)
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !17809, !noalias !17692, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.ac, !17603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17449)
    #dbg_value(ptr %i.ac, !17627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17450)
    #dbg_value(ptr %i.ac, !17628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17451)
    #dbg_value(ptr %i.ac, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17458)
    #dbg_value(ptr %i.ac, !17622, !DIExpression(), !17459)
  %i.ad = add i64 %.sroa.020.036.i.i, -8, !dbg !17810 ; 2 uses
    #dbg_value(i64 %i.ad, !17661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17458)
    #dbg_value(i64 %i.ad, !17628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17451)
    #dbg_value(i64 %i.ad, !17627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17450)
    #dbg_value(i64 %i.ad, !17603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17449)
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !17807
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !17807

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17811, !noalias !17578
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !17811, !noalias !17578
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17811
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !17811, !noalias !17578
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17811
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !17811, !noalias !17578
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !17812, !noalias !17578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17813, !noalias !17578
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !17814

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8, !dbg !17815
  br label %bb.j, !dbg !17816

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !17817
  store i64 %i.af, ptr %i.e, align 8, !dbg !17817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17693), !dbg !17818
    #dbg_value(ptr %1, !17694, !DIExpression(), !17478)
    #dbg_declare(ptr poison, !17698, !DIExpression(), !17479)
    #dbg_declare(ptr poison, !17702, !DIExpression(), !17482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17708), !dbg !17819
    #dbg_value(ptr %1, !17709, !DIExpression(), !17493)
    #dbg_value(i64 0, !17726, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17503)
  %i.ag = load i64, ptr %1, align 8, !dbg !17820, !range !2453, !alias.scope !17735, !noundef !1631
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !17821
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !17821

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17820 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !17820, !alias.scope !17735, !noundef !1631
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !17820
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit.i, !dbg !17821

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !17723, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17504)
    #dbg_value(ptr %i.ai, !17737, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !17507)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17822 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17822
  %i.am = load i64, ptr %i.al, align 8, !dbg !17822, !alias.scope !17735, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.am, !17730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %i.am, !17731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %i.am, !17743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
  %.sroa.013.029.i.i = load ptr, ptr %i.ak, align 8, !dbg !17823, !alias.scope !17735, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !17824
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !17824

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !17824       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !17824
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !17824

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !17743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !17733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !17726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !17727, !DIExpression(), !17515)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
  %i.ap = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !17826 ; 2 uses
    #dbg_value(i64 %i.ap, !17730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %i.ap, !17731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %i.ap, !17743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !17824 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !17824
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !17824, !llvm.loop !17517

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !17824
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !17824

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !17823
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !17827, !alias.scope !17735
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !17827, !alias.scope !17735
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit.i, !dbg !17828

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i, !17733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i, !17726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.031.i.i, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.031.i.i, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.031.i.i, !17727, !DIExpression(), !17515)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
    #dbg_value(i64 %.sroa.011.030.i.i, !17730, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17731, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i, !17733, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i, !17726, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.0.i.i, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i, !17727, !DIExpression(), !17515)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
    #dbg_value(i64 %.sroa.011.030.i.i, !17730, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17731, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i, !17733, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i, !17726, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17727, !DIExpression(), !17515)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
    #dbg_value(i64 %.sroa.011.030.i.i, !17730, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17731, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i, !17733, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i, !17726, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17727, !DIExpression(), !17515)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
    #dbg_value(i64 %.sroa.011.030.i.i, !17730, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17731, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i, !17733, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i, !17726, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17727, !DIExpression(), !17515)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
    #dbg_value(i64 %.sroa.011.030.i.i, !17730, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17731, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i, !17733, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i, !17726, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17727, !DIExpression(), !17515)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
    #dbg_value(i64 %.sroa.011.030.i.i, !17730, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17731, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i, !17733, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i, !17726, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17727, !DIExpression(), !17515)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
    #dbg_value(i64 %.sroa.011.030.i.i, !17730, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17731, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(i64 %.sroa.011.030.i.i, !17743, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17512)
    #dbg_value(i64 %.sroa.011.030.i.i, !17733, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17514)
    #dbg_value(i64 %.sroa.011.030.i.i, !17726, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17503)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17727, !DIExpression(), !17515)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 1072, !dbg !17825
    #dbg_value(ptr poison, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr poison, !17728, !DIExpression(), !17513)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !17826 ; 2 uses
    #dbg_value(i64 %i.az, !17730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17508)
    #dbg_value(i64 %i.az, !17731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(i64 %i.az, !17743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17512)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !17823, !noalias !17745, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17728, !DIExpression(), !17513)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17512)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17508)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !17824
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !17824

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !17746, !DIExpression(), !17521)
    #dbg_value(ptr poison, !17700, !DIExpression(), !17522)
    #dbg_value(ptr poison, !17706, !DIExpression(), !17523)
    #dbg_declare(ptr %i.d, !17752, !DIExpression(), !17530)
    #dbg_value(ptr poison, !17757, !DIExpression(), !17531)
    #dbg_value(ptr poison, !17766, !DIExpression(), !17534)
    #dbg_declare(ptr poison, !17758, !DIExpression(), !17535)
    #dbg_declare(ptr poison, !17760, !DIExpression(), !17536)
    #dbg_declare(ptr %i.b, !17761, !DIExpression(), !17537)
    #dbg_declare(ptr %i.b, !17770, !DIExpression(), !17538)
    #dbg_declare(ptr poison, !17759, !DIExpression(), !17539)
    #dbg_declare(ptr poison, !17772, !DIExpression(), !17543)
    #dbg_declare(ptr poison, !17778, !DIExpression(), !17544)
    #dbg_declare(ptr %i.a, !17780, !DIExpression(), !17552)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17829, !noalias !17795
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !17830, !noalias !17796

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !17831, !noalias !17795, !noundef !1631
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !17831
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !17832, !prof !2224

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #13
          to label %.noexc2.i.i unwind label %bb.i, !dbg !17833, !noalias !17797

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !17833

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !17560)
    #dbg_value(ptr poison, !2235, !DIExpression(), !17562)
  tail call void @llvm.trap(), !dbg !17834
end_hunk_2
begin_hunk_3_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10dying_nextB1e_:bb.a
    #dbg_value(i64 %.sroa.020.036.i.i, !18059, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17891)
    #dbg_value(i64 %.sroa.020.036.i.i, !18058, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17890)
    #dbg_value(i64 %.sroa.020.036.i.i, !18034, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17889)
    #dbg_value(i64 %.sroa.020.036.i.i, !18092, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17898)
    #dbg_value(i64 %.sroa.020.036.i.i, !18061, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17900)
    #dbg_value(i64 %.sroa.020.036.i.i, !18037, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17874)
    #dbg_value(ptr %i.s, !18061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17900)
    #dbg_value(ptr %i.s, !18037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17874)
    #dbg_value(ptr %i.s, !18052, !DIExpression(), !17901)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1160, !dbg !18239
    #dbg_value(ptr %i.t, !18110, !DIExpression(), !17904)
    #dbg_value(ptr %i.t, !18117, !DIExpression(), !17907)
    #dbg_value(ptr %i.t, !18121, !DIExpression(), !17910)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !18240, !noalias !18123, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.u, !18034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17889)
    #dbg_value(ptr %i.u, !18058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17890)
    #dbg_value(ptr %i.u, !18059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17891)
    #dbg_value(ptr %i.u, !18092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17898)
    #dbg_value(ptr %i.u, !18053, !DIExpression(), !17899)
    #dbg_value(i64 %.sroa.020.036.i.i, !18059, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17891)
    #dbg_value(i64 %.sroa.020.036.i.i, !18058, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17890)
    #dbg_value(i64 %.sroa.020.036.i.i, !18034, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17889)
    #dbg_value(i64 %.sroa.020.036.i.i, !18092, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17898)
    #dbg_value(i64 %.sroa.020.036.i.i, !18061, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17900)
    #dbg_value(i64 %.sroa.020.036.i.i, !18037, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17874)
    #dbg_value(ptr %i.u, !18061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17900)
    #dbg_value(ptr %i.u, !18037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17874)
    #dbg_value(ptr %i.u, !18052, !DIExpression(), !17901)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1160, !dbg !18239
    #dbg_value(ptr %i.v, !18110, !DIExpression(), !17904)
    #dbg_value(ptr %i.v, !18117, !DIExpression(), !17907)
    #dbg_value(ptr %i.v, !18121, !DIExpression(), !17910)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !18240, !noalias !18123, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.w, !18034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17889)
    #dbg_value(ptr %i.w, !18058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17890)
    #dbg_value(ptr %i.w, !18059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17891)
    #dbg_value(ptr %i.w, !18092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17898)
    #dbg_value(ptr %i.w, !18053, !DIExpression(), !17899)
    #dbg_value(i64 %.sroa.020.036.i.i, !18059, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17891)
    #dbg_value(i64 %.sroa.020.036.i.i, !18058, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17890)
    #dbg_value(i64 %.sroa.020.036.i.i, !18034, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17889)
    #dbg_value(i64 %.sroa.020.036.i.i, !18092, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17898)
    #dbg_value(i64 %.sroa.020.036.i.i, !18061, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17900)
    #dbg_value(i64 %.sroa.020.036.i.i, !18037, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17874)
    #dbg_value(ptr %i.w, !18061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17900)
    #dbg_value(ptr %i.w, !18037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17874)
    #dbg_value(ptr %i.w, !18052, !DIExpression(), !17901)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1160, !dbg !18239
    #dbg_value(ptr %i.x, !18110, !DIExpression(), !17904)
    #dbg_value(ptr %i.x, !18117, !DIExpression(), !17907)
    #dbg_value(ptr %i.x, !18121, !DIExpression(), !17910)
  %i.y = load ptr, ptr %i.x, align 8, !dbg !18240, !noalias !18123, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.y, !18034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17889)
    #dbg_value(ptr %i.y, !18058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17890)
    #dbg_value(ptr %i.y, !18059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17891)
    #dbg_value(ptr %i.y, !18092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17898)
    #dbg_value(ptr %i.y, !18053, !DIExpression(), !17899)
    #dbg_value(i64 %.sroa.020.036.i.i, !18059, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17891)
    #dbg_value(i64 %.sroa.020.036.i.i, !18058, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17890)
    #dbg_value(i64 %.sroa.020.036.i.i, !18034, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17889)
    #dbg_value(i64 %.sroa.020.036.i.i, !18092, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17898)
    #dbg_value(i64 %.sroa.020.036.i.i, !18061, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17900)
    #dbg_value(i64 %.sroa.020.036.i.i, !18037, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17874)
    #dbg_value(ptr %i.y, !18061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17900)
    #dbg_value(ptr %i.y, !18037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17874)
    #dbg_value(ptr %i.y, !18052, !DIExpression(), !17901)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1160, !dbg !18239
    #dbg_value(ptr %i.z, !18110, !DIExpression(), !17904)
    #dbg_value(ptr %i.z, !18117, !DIExpression(), !17907)
    #dbg_value(ptr %i.z, !18121, !DIExpression(), !17910)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !18240, !noalias !18123, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.aa, !18034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17889)
    #dbg_value(ptr %i.aa, !18058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17890)
    #dbg_value(ptr %i.aa, !18059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17891)
    #dbg_value(ptr %i.aa, !18092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17898)
    #dbg_value(ptr %i.aa, !18053, !DIExpression(), !17899)
    #dbg_value(i64 %.sroa.020.036.i.i, !18059, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17891)
    #dbg_value(i64 %.sroa.020.036.i.i, !18058, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17890)
    #dbg_value(i64 %.sroa.020.036.i.i, !18034, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17889)
    #dbg_value(i64 %.sroa.020.036.i.i, !18092, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17898)
    #dbg_value(i64 %.sroa.020.036.i.i, !18061, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17900)
    #dbg_value(i64 %.sroa.020.036.i.i, !18037, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17874)
    #dbg_value(ptr %i.aa, !18061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17900)
    #dbg_value(ptr %i.aa, !18037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17874)
    #dbg_value(ptr %i.aa, !18052, !DIExpression(), !17901)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1160, !dbg !18239
    #dbg_value(ptr %i.ab, !18110, !DIExpression(), !17904)
    #dbg_value(ptr %i.ab, !18117, !DIExpression(), !17907)
    #dbg_value(ptr %i.ab, !18121, !DIExpression(), !17910)
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !18240, !noalias !18123, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.ac, !18034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17889)
    #dbg_value(ptr %i.ac, !18058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17890)
    #dbg_value(ptr %i.ac, !18059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17891)
    #dbg_value(ptr %i.ac, !18092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17898)
    #dbg_value(ptr %i.ac, !18053, !DIExpression(), !17899)
  %i.ad = add i64 %.sroa.020.036.i.i, -8, !dbg !18241 ; 2 uses
    #dbg_value(i64 %i.ad, !18092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17898)
    #dbg_value(i64 %i.ad, !18059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17891)
    #dbg_value(i64 %i.ad, !18058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17890)
    #dbg_value(i64 %i.ad, !18034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17889)
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !18238
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !18238

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18242, !noalias !18009
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !18242, !noalias !18009
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18242
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !18242, !noalias !18009
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18242
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !18242, !noalias !18009
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB1Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !18243, !noalias !18009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18244, !noalias !18009
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE16deallocating_endNtNtBc_5alloc6GlobalEB1R_.exit, !dbg !18245

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE16deallocating_endNtNtBc_5alloc6GlobalEB1R_.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8, !dbg !18246
  br label %bb.j, !dbg !18247

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !18248
  store i64 %i.af, ptr %i.e, align 8, !dbg !18248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18124), !dbg !18249
    #dbg_value(ptr %1, !18125, !DIExpression(), !17918)
    #dbg_declare(ptr poison, !18129, !DIExpression(), !17919)
    #dbg_declare(ptr poison, !18133, !DIExpression(), !17922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18139), !dbg !18250
    #dbg_value(ptr %1, !18140, !DIExpression(), !17933)
    #dbg_value(i64 0, !18157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17943)
  %i.ag = load i64, ptr %1, align 8, !dbg !18251, !range !2453, !alias.scope !18166, !noundef !1631
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !18252
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !18252

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18251 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !18251, !alias.scope !18166, !noundef !1631
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !18251
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i, !dbg !18252

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !18154, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17944)
    #dbg_value(ptr %i.ai, !18168, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !17947)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18253 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18253
  %i.am = load i64, ptr %i.al, align 8, !dbg !18253, !alias.scope !18166, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.am, !18161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %i.am, !18162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %i.am, !18174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
  %.sroa.013.029.i.i = load ptr, ptr %i.ak, align 8, !dbg !18254, !alias.scope !18166, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !18255
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !18255

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !18255       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18255
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !18255

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !18174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !18164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !18157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !18158, !DIExpression(), !17955)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
  %i.ap = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !18257 ; 2 uses
    #dbg_value(i64 %i.ap, !18161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %i.ap, !18162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %i.ap, !18174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18255 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18255
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !18255, !llvm.loop !17957

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !18255
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !18255

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !18254
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !18258, !alias.scope !18166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !18258, !alias.scope !18166
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i, !dbg !18259

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i, !18164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i, !18157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.031.i.i, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.031.i.i, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.031.i.i, !18158, !DIExpression(), !17955)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
    #dbg_value(i64 %.sroa.011.030.i.i, !18161, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18162, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i, !18164, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i, !18157, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.0.i.i, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i, !18158, !DIExpression(), !17955)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
    #dbg_value(i64 %.sroa.011.030.i.i, !18161, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18162, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i, !18164, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i, !18157, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18158, !DIExpression(), !17955)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
    #dbg_value(i64 %.sroa.011.030.i.i, !18161, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18162, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i, !18164, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i, !18157, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18158, !DIExpression(), !17955)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
    #dbg_value(i64 %.sroa.011.030.i.i, !18161, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18162, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i, !18164, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i, !18157, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18158, !DIExpression(), !17955)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
    #dbg_value(i64 %.sroa.011.030.i.i, !18161, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18162, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i, !18164, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i, !18157, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18158, !DIExpression(), !17955)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
    #dbg_value(i64 %.sroa.011.030.i.i, !18161, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18162, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i, !18164, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i, !18157, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18158, !DIExpression(), !17955)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
    #dbg_value(i64 %.sroa.011.030.i.i, !18161, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18162, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(i64 %.sroa.011.030.i.i, !18174, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17952)
    #dbg_value(i64 %.sroa.011.030.i.i, !18164, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17954)
    #dbg_value(i64 %.sroa.011.030.i.i, !18157, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17954)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18158, !DIExpression(), !17955)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 1160, !dbg !18256
    #dbg_value(ptr poison, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
    #dbg_value(ptr poison, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr poison, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr poison, !18159, !DIExpression(), !17953)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !18257 ; 2 uses
    #dbg_value(i64 %i.az, !18161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17948)
    #dbg_value(i64 %i.az, !18162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17949)
    #dbg_value(i64 %i.az, !18174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17952)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !18254, !noalias !18176, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18159, !DIExpression(), !17953)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17952)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17948)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !18255
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !18255

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !18177, !DIExpression(), !17961)
    #dbg_value(ptr poison, !18131, !DIExpression(), !17962)
    #dbg_value(ptr poison, !18137, !DIExpression(), !17963)
    #dbg_declare(ptr %i.d, !18183, !DIExpression(), !17970)
    #dbg_value(ptr poison, !18188, !DIExpression(), !17971)
    #dbg_value(ptr poison, !18197, !DIExpression(), !17974)
    #dbg_declare(ptr poison, !18189, !DIExpression(), !17975)
    #dbg_declare(ptr poison, !18191, !DIExpression(), !17976)
    #dbg_declare(ptr %i.b, !18192, !DIExpression(), !17977)
    #dbg_declare(ptr %i.b, !18201, !DIExpression(), !17978)
    #dbg_declare(ptr poison, !18190, !DIExpression(), !17979)
    #dbg_declare(ptr poison, !18203, !DIExpression(), !17983)
    #dbg_declare(ptr poison, !18209, !DIExpression(), !17984)
    #dbg_declare(ptr %i.a, !18211, !DIExpression(), !17992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18260, !noalias !18226
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB1Z_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !18261, !noalias !18227

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !18262, !noalias !18226, !noundef !1631
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !18262
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1R_.exit, !dbg !18263, !prof !2224

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #13
          to label %.noexc2.i.i unwind label %bb.i, !dbg !18264, !noalias !18228

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !18264

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !18000)
    #dbg_value(ptr poison, !2235, !DIExpression(), !18002)
  tail call void @llvm.trap(), !dbg !18265
end_hunk_3
begin_hunk_4_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(i64 %.sroa.020.036.i.i, !18503, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18326)
    #dbg_value(i64 %.sroa.020.036.i.i, !18502, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18325)
    #dbg_value(i64 %.sroa.020.036.i.i, !18478, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18324)
    #dbg_value(i64 %.sroa.020.036.i.i, !18536, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18333)
    #dbg_value(i64 %.sroa.020.036.i.i, !18505, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18335)
    #dbg_value(i64 %.sroa.020.036.i.i, !18481, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18309)
    #dbg_value(ptr %i.s, !18505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18335)
    #dbg_value(ptr %i.s, !18481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18309)
    #dbg_value(ptr %i.s, !18496, !DIExpression(), !18336)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192, !dbg !18675
    #dbg_value(ptr %i.t, !18553, !DIExpression(), !18339)
    #dbg_value(ptr %i.t, !18555, !DIExpression(), !18342)
    #dbg_value(ptr %i.t, !18557, !DIExpression(), !18345)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !18676, !noalias !18559, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.u, !18478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18324)
    #dbg_value(ptr %i.u, !18502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18325)
    #dbg_value(ptr %i.u, !18503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18326)
    #dbg_value(ptr %i.u, !18536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18333)
    #dbg_value(ptr %i.u, !18497, !DIExpression(), !18334)
    #dbg_value(i64 %.sroa.020.036.i.i, !18503, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18326)
    #dbg_value(i64 %.sroa.020.036.i.i, !18502, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18325)
    #dbg_value(i64 %.sroa.020.036.i.i, !18478, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18324)
    #dbg_value(i64 %.sroa.020.036.i.i, !18536, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18333)
    #dbg_value(i64 %.sroa.020.036.i.i, !18505, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18335)
    #dbg_value(i64 %.sroa.020.036.i.i, !18481, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18309)
    #dbg_value(ptr %i.u, !18505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18335)
    #dbg_value(ptr %i.u, !18481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18309)
    #dbg_value(ptr %i.u, !18496, !DIExpression(), !18336)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192, !dbg !18675
    #dbg_value(ptr %i.v, !18553, !DIExpression(), !18339)
    #dbg_value(ptr %i.v, !18555, !DIExpression(), !18342)
    #dbg_value(ptr %i.v, !18557, !DIExpression(), !18345)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !18676, !noalias !18559, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.w, !18478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18324)
    #dbg_value(ptr %i.w, !18502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18325)
    #dbg_value(ptr %i.w, !18503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18326)
    #dbg_value(ptr %i.w, !18536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18333)
    #dbg_value(ptr %i.w, !18497, !DIExpression(), !18334)
    #dbg_value(i64 %.sroa.020.036.i.i, !18503, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18326)
    #dbg_value(i64 %.sroa.020.036.i.i, !18502, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18325)
    #dbg_value(i64 %.sroa.020.036.i.i, !18478, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18324)
    #dbg_value(i64 %.sroa.020.036.i.i, !18536, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18333)
    #dbg_value(i64 %.sroa.020.036.i.i, !18505, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18335)
    #dbg_value(i64 %.sroa.020.036.i.i, !18481, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18309)
    #dbg_value(ptr %i.w, !18505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18335)
    #dbg_value(ptr %i.w, !18481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18309)
    #dbg_value(ptr %i.w, !18496, !DIExpression(), !18336)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192, !dbg !18675
    #dbg_value(ptr %i.x, !18553, !DIExpression(), !18339)
    #dbg_value(ptr %i.x, !18555, !DIExpression(), !18342)
    #dbg_value(ptr %i.x, !18557, !DIExpression(), !18345)
  %i.y = load ptr, ptr %i.x, align 8, !dbg !18676, !noalias !18559, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.y, !18478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18324)
    #dbg_value(ptr %i.y, !18502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18325)
    #dbg_value(ptr %i.y, !18503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18326)
    #dbg_value(ptr %i.y, !18536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18333)
    #dbg_value(ptr %i.y, !18497, !DIExpression(), !18334)
    #dbg_value(i64 %.sroa.020.036.i.i, !18503, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18326)
    #dbg_value(i64 %.sroa.020.036.i.i, !18502, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18325)
    #dbg_value(i64 %.sroa.020.036.i.i, !18478, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18324)
    #dbg_value(i64 %.sroa.020.036.i.i, !18536, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18333)
    #dbg_value(i64 %.sroa.020.036.i.i, !18505, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18335)
    #dbg_value(i64 %.sroa.020.036.i.i, !18481, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18309)
    #dbg_value(ptr %i.y, !18505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18335)
    #dbg_value(ptr %i.y, !18481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18309)
    #dbg_value(ptr %i.y, !18496, !DIExpression(), !18336)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192, !dbg !18675
    #dbg_value(ptr %i.z, !18553, !DIExpression(), !18339)
    #dbg_value(ptr %i.z, !18555, !DIExpression(), !18342)
    #dbg_value(ptr %i.z, !18557, !DIExpression(), !18345)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !18676, !noalias !18559, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.aa, !18478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18324)
    #dbg_value(ptr %i.aa, !18502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18325)
    #dbg_value(ptr %i.aa, !18503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18326)
    #dbg_value(ptr %i.aa, !18536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18333)
    #dbg_value(ptr %i.aa, !18497, !DIExpression(), !18334)
    #dbg_value(i64 %.sroa.020.036.i.i, !18503, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18326)
    #dbg_value(i64 %.sroa.020.036.i.i, !18502, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18325)
    #dbg_value(i64 %.sroa.020.036.i.i, !18478, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18324)
    #dbg_value(i64 %.sroa.020.036.i.i, !18536, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18333)
    #dbg_value(i64 %.sroa.020.036.i.i, !18505, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18335)
    #dbg_value(i64 %.sroa.020.036.i.i, !18481, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18309)
    #dbg_value(ptr %i.aa, !18505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18335)
    #dbg_value(ptr %i.aa, !18481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18309)
    #dbg_value(ptr %i.aa, !18496, !DIExpression(), !18336)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192, !dbg !18675
    #dbg_value(ptr %i.ab, !18553, !DIExpression(), !18339)
    #dbg_value(ptr %i.ab, !18555, !DIExpression(), !18342)
    #dbg_value(ptr %i.ab, !18557, !DIExpression(), !18345)
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !18676, !noalias !18559, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.ac, !18478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18324)
    #dbg_value(ptr %i.ac, !18502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18325)
    #dbg_value(ptr %i.ac, !18503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18326)
    #dbg_value(ptr %i.ac, !18536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18333)
    #dbg_value(ptr %i.ac, !18497, !DIExpression(), !18334)
  %i.ad = add i64 %.sroa.020.036.i.i, -8, !dbg !18677 ; 2 uses
    #dbg_value(i64 %i.ad, !18536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18333)
    #dbg_value(i64 %i.ad, !18503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18326)
    #dbg_value(i64 %i.ad, !18502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18325)
    #dbg_value(i64 %i.ad, !18478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18324)
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !18674
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !18674

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18678, !noalias !18453
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !18678, !noalias !18453
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18678
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !18678, !noalias !18453
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18678
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !18678, !noalias !18453
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyyNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !18679, !noalias !18453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18680, !noalias !18453
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !18681

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8, !dbg !18682
  br label %bb.j, !dbg !18683

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !18684
  store i64 %i.af, ptr %i.e, align 8, !dbg !18684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18560), !dbg !18685
    #dbg_value(ptr %1, !18561, !DIExpression(), !18353)
    #dbg_declare(ptr poison, !18565, !DIExpression(), !18354)
    #dbg_declare(ptr poison, !18569, !DIExpression(), !18357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18575), !dbg !18686
    #dbg_value(ptr %1, !18576, !DIExpression(), !18368)
    #dbg_value(i64 0, !18593, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18378)
  %i.ag = load i64, ptr %1, align 8, !dbg !18687, !range !2453, !alias.scope !18602, !noundef !1631
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !18688
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !18688

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18687 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !18687, !alias.scope !18602, !noundef !1631
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !18687
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCshovLROGBtMy_11quinn_proto.exit.i, !dbg !18688

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !18590, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18379)
    #dbg_value(ptr %i.ai, !18604, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18382)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18689 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18689
  %i.am = load i64, ptr %i.al, align 8, !dbg !18689, !alias.scope !18602, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.am, !18597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %i.am, !18598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %i.am, !18610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
  %.sroa.013.029.i.i = load ptr, ptr %i.ak, align 8, !dbg !18690, !alias.scope !18602, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !18691
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !18691

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !18691       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18691
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !18691

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !18610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !18600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !18593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !18594, !DIExpression(), !18390)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
  %i.ap = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !18693 ; 2 uses
    #dbg_value(i64 %i.ap, !18597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %i.ap, !18598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %i.ap, !18610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18691 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18691
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !18691, !llvm.loop !18392

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !18691
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !18691

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !18690
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !18694, !alias.scope !18602
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !18694, !alias.scope !18602
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCshovLROGBtMy_11quinn_proto.exit.i, !dbg !18695

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i, !18600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i, !18593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.031.i.i, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.031.i.i, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.031.i.i, !18594, !DIExpression(), !18390)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
    #dbg_value(i64 %.sroa.011.030.i.i, !18597, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18598, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i, !18600, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i, !18593, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.0.i.i, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i, !18594, !DIExpression(), !18390)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
    #dbg_value(i64 %.sroa.011.030.i.i, !18597, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18598, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i, !18600, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i, !18593, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18594, !DIExpression(), !18390)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
    #dbg_value(i64 %.sroa.011.030.i.i, !18597, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18598, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i, !18600, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i, !18593, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18594, !DIExpression(), !18390)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
    #dbg_value(i64 %.sroa.011.030.i.i, !18597, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18598, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i, !18600, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i, !18593, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18594, !DIExpression(), !18390)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
    #dbg_value(i64 %.sroa.011.030.i.i, !18597, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18598, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i, !18600, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i, !18593, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18594, !DIExpression(), !18390)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
    #dbg_value(i64 %.sroa.011.030.i.i, !18597, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18598, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i, !18600, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i, !18593, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18594, !DIExpression(), !18390)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
    #dbg_value(i64 %.sroa.011.030.i.i, !18597, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18598, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(i64 %.sroa.011.030.i.i, !18610, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18387)
    #dbg_value(i64 %.sroa.011.030.i.i, !18600, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18389)
    #dbg_value(i64 %.sroa.011.030.i.i, !18593, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18389)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18378)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18594, !DIExpression(), !18390)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 192, !dbg !18692
    #dbg_value(ptr poison, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr poison, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr poison, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr poison, !18595, !DIExpression(), !18388)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !18693 ; 2 uses
    #dbg_value(i64 %i.az, !18597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %i.az, !18598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(i64 %i.az, !18610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18387)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !18690, !noalias !18612, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18595, !DIExpression(), !18388)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18387)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !18691
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !18691

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !18613, !DIExpression(), !18396)
    #dbg_value(ptr poison, !18567, !DIExpression(), !18397)
    #dbg_value(ptr poison, !18573, !DIExpression(), !18398)
    #dbg_declare(ptr %i.d, !18619, !DIExpression(), !18405)
    #dbg_value(ptr poison, !18624, !DIExpression(), !18406)
    #dbg_value(ptr poison, !18633, !DIExpression(), !18409)
    #dbg_declare(ptr poison, !18625, !DIExpression(), !18410)
    #dbg_declare(ptr poison, !18627, !DIExpression(), !18411)
    #dbg_declare(ptr %i.b, !18628, !DIExpression(), !18412)
    #dbg_declare(ptr %i.b, !18637, !DIExpression(), !18413)
    #dbg_declare(ptr poison, !18626, !DIExpression(), !18414)
    #dbg_declare(ptr poison, !18639, !DIExpression(), !18418)
    #dbg_declare(ptr poison, !18645, !DIExpression(), !18419)
    #dbg_declare(ptr %i.a, !18647, !DIExpression(), !18427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18696, !noalias !18662
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyyNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !18697, !noalias !18663

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !18698, !noalias !18662, !noundef !1631
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !18698
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !18699, !prof !2224

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #13
          to label %.noexc2.i.i unwind label %bb.i, !dbg !18700, !noalias !18664

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !18700

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !18435)
    #dbg_value(ptr poison, !2235, !DIExpression(), !18437)
  tail call void @llvm.trap(), !dbg !18701
end_hunk_4
begin_hunk_5_@_RNvXs1x_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(ptr %i.c, !19237, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19249)
    #dbg_value(i64 %i.e, !19237, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19249)
    #dbg_value(i64 1, !19237, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !19249)
    #dbg_value(ptr null, !19237, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !19249)
    #dbg_value(ptr %i.c, !19237, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !19249)
    #dbg_value(i64 %i.e, !19237, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !19249)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19256
  %i.g = load i64, ptr %i.f, align 8, !dbg !19256, !noundef !1631
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19257
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19257
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !19257
  store ptr %i.c, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !19257
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !19257
  store i64 %i.e, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !19257
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !19257
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19257
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !19257
  store ptr %i.c, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !dbg !19257
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !19257
  store i64 %i.e, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !dbg !19257
  br label %bb.c, !dbg !19258

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink22 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !19240 ; 2 uses
  %.sink = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ], !dbg !19240
  store i64 %.sink22, ptr %i.a, align 8, !dbg !19240
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !19240
  store i64 %.sink22, ptr %i.h, align 8, !dbg !19240
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !19240
  store i64 %.sink, ptr %i.i, align 8, !dbg !19240
  %i.j = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCsexYYUdYSQU6_5alloc3vec3VechERNtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertINtNtNtNtB18_11collections5btree3map4IterB13_B1D_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a), !dbg !19259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19260
  %i.k = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j), !dbg !19261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19262
  ret i1 %i.k, !dbg !19263
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvXs6_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBY_6marker4SendNtB1y_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser12SerializeMap3endCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #1 !dbg !996 {
bb.a:
    #dbg_value(ptr %0, !5101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19278)
    #dbg_value(i8 %1, !5101, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !19278)
    #dbg_declare(ptr poison, !5105, !DIExpression(), !19280)
    #dbg_value(ptr %0, !5102, !DIExpression(), !19281)
    #dbg_value(i8 %1, !5103, !DIExpression(), !19281)
  %i.a = icmp eq i8 %1, 0, !dbg !19290
  br i1 %i.a, label %bb.e, label %bb.b, !dbg !19290

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19282), !dbg !19292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19283), !dbg !19292
    #dbg_value(ptr %i.b, !5074, !DIExpression(), !19268)
    #dbg_value(ptr %0, !5076, !DIExpression(), !19268)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !19293 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !19293, !alias.scope !19282, !noundef !1631
  %i.e = add i64 %i.d, -1, !dbg !19293            ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !dbg !19293, !alias.scope !19282
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !19294
  %i.g = load i8, ptr %i.f, align 8, !dbg !19294, !range !5110, !alias.scope !19282, !noundef !1631
  %i.h = trunc nuw i8 %i.g to i1, !dbg !19294
  br i1 %i.h, label %bb.c, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit, !dbg !19294

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !dbg !19295, !alias.scope !19283, !nonnull !1631, !noundef !1631
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19295
  %.val10.i = load ptr, ptr %i.i, align 8, !dbg !19295, !alias.scope !19283, !nonnull !1631, !align !3324, !noundef !1631
    #dbg_value(ptr poison, !4847, !DIExpression(), !19270)
    #dbg_value(ptr @124, !4852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19270)
    #dbg_value(i64 1, !4852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19270)
  %i.j = getelementptr inbounds nuw i8, ptr %.val10.i, i64 56, !dbg !19296
  %i.k = load ptr, ptr %i.j, align 8, !dbg !19296, !invariant.load !1631, !noalias !19284, !nonnull !1631
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 1) #16, !dbg !19297, !noalias !19285, !inline_history !19273 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null, !dbg !19298
  br i1 %.not.i, label %bb.d, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread, !dbg !19299

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8, !dbg !19300, !alias.scope !19282, !nonnull !1631, !noundef !1631
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19300
  %i.o = load i64, ptr %i.n, align 8, !dbg !19300, !alias.scope !19282, !noundef !1631
  %i.p = tail call noundef ptr @_RINvNtCscFTfv2TGtgR_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o), !dbg !19301, !noalias !19282 ; 2 uses
  %.not9.i = icmp eq ptr %i.p, null, !dbg !19301
  br i1 %.not9.i, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread, !dbg !19299

_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b, %bb.d
  %.val11.i = load ptr, ptr %0, align 8, !dbg !19302, !alias.scope !19283, !nonnull !1631, !noundef !1631
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19302
  %.val12.i = load ptr, ptr %i.q, align 8, !dbg !19302, !alias.scope !19283, !nonnull !1631, !align !3324, !noundef !1631
    #dbg_value(ptr poison, !4847, !DIExpression(), !19275)
    #dbg_value(ptr @125, !4852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19275)
    #dbg_value(i64 1, !4852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19275)
  %i.r = getelementptr inbounds nuw i8, ptr %.val12.i, i64 56, !dbg !19303
  %i.s = load ptr, ptr %i.r, align 8, !dbg !19303, !invariant.load !1631, !noalias !19286, !nonnull !1631
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull %.val11.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 1) #16, !dbg !19304, !noalias !19282, !inline_history !19273 ; 2 uses
    #dbg_value(ptr %i.t, !5106, !DIExpression(), !19287)
  %.not = icmp eq ptr %i.t, null, !dbg !19305
  br i1 %.not, label %bb.e, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread, !dbg !19306, !prof !5082

bb.e:                                             ; preds = %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.u, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread ], [ null, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit ], !dbg !19281
  ret ptr %.sroa.0.0, !dbg !19307

_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread: ; preds = %bb.d, %bb.c, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit
  %.sroa.0.0.i9 = phi ptr [ %i.t, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit ], [ %i.p, %bb.d ], [ %i.l, %bb.c ]
    #dbg_value(ptr %.sroa.0.0.i9, !5108, !DIExpression(), !19288)
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscFTfv2TGtgR_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i9), !dbg !19308
  br label %bb.e, !dbg !19309
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_6ValuesyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19321 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !19441, !DIExpression(), !19443)
    #dbg_declare(ptr poison, !19444, !DIExpression(), !19456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19457), !dbg !19566
    #dbg_value(ptr %0, !19459, !DIExpression(), !19329)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !19567 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !19567, !alias.scope !19457, !noundef !1631 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !19567
  br i1 %i.f, label %_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1a_.exit, label %bb.b, !dbg !19567

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1, !dbg !19568
  store i64 %i.g, ptr %i.d, align 8, !dbg !19568, !alias.scope !19457
    #dbg_value(ptr %0, !19464, !DIExpression(), !19332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19469), !dbg !19569
    #dbg_value(ptr %0, !19470, !DIExpression(), !19339)
    #dbg_value(i64 0, !19478, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19351)
  %i.h = load i64, ptr %0, align 8, !dbg !19570, !range !2453, !alias.scope !19504, !noundef !1631
  %i.i = trunc nuw i64 %i.h to i1, !dbg !19571
  br i1 %i.i, label %bb.c, label %.critedge.i, !dbg !19571

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19570 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !19570, !alias.scope !19504, !noundef !1631
  %.not.i.i = icmp eq ptr %i.k, null, !dbg !19570
  br i1 %.not.i.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i, !dbg !19571

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !19475, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !19352)
    #dbg_value(ptr %i.j, !19506, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19355)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19572 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19572
  %i.n = load i64, ptr %i.m, align 8, !dbg !19572, !alias.scope !19504, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.n, !19499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %i.n, !19500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %i.n, !19512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
  %.sroa.013.029.i.i = load ptr, ptr %i.l, align 8, !dbg !19573, !alias.scope !19504, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !19574
  br i1 %i.o, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader, !dbg !19574

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7, !dbg !19574        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !19574
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !19574

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !19512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !19502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !19478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !19493, !DIExpression(), !19367)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
  %i.q = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !19576 ; 2 uses
    #dbg_value(i64 %i.q, !19499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %i.q, !19500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %i.q, !19512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.p, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !19574 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !19574
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !19574, !llvm.loop !19368

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %i.r = icmp ult i64 %i.n, 8, !dbg !19574
  br i1 %i.r, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !19574

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.d ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], !dbg !19573
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.j, align 8, !dbg !19577, !alias.scope !19504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !dbg !19577, !alias.scope !19504
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i, !dbg !19578

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i, !19502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i, !19478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.031.i.i, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.031.i.i, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.031.i.i, !19493, !DIExpression(), !19367)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
    #dbg_value(i64 %.sroa.011.030.i.i, !19499, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19500, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i = load ptr, ptr %i.s, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i, !19502, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i, !19478, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.0.i.i, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i, !19493, !DIExpression(), !19367)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
    #dbg_value(i64 %.sroa.011.030.i.i, !19499, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19500, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.t, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i, !19502, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i, !19478, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !19493, !DIExpression(), !19367)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
    #dbg_value(i64 %.sroa.011.030.i.i, !19499, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19500, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.u, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i, !19502, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i, !19478, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !19493, !DIExpression(), !19367)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
    #dbg_value(i64 %.sroa.011.030.i.i, !19499, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19500, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.v, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i, !19502, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i, !19478, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !19493, !DIExpression(), !19367)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
    #dbg_value(i64 %.sroa.011.030.i.i, !19499, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19500, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.w, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i, !19502, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i, !19478, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !19493, !DIExpression(), !19367)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
    #dbg_value(i64 %.sroa.011.030.i.i, !19499, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19500, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.x, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i, !19502, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i, !19478, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !19493, !DIExpression(), !19367)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
    #dbg_value(i64 %.sroa.011.030.i.i, !19499, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19500, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.y, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(i64 %.sroa.011.030.i.i, !19512, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19364)
    #dbg_value(i64 %.sroa.011.030.i.i, !19502, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(i64 %.sroa.011.030.i.i, !19478, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !19502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !19478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19351)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !19493, !DIExpression(), !19367)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 1160, !dbg !19575
    #dbg_value(ptr poison, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
    #dbg_value(ptr poison, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr poison, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr poison, !19494, !DIExpression(), !19365)
  %i.aa = add i64 %.sroa.011.030.i.i, -8, !dbg !19576 ; 2 uses
    #dbg_value(i64 %i.aa, !19499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19356)
    #dbg_value(i64 %i.aa, !19500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19357)
    #dbg_value(i64 %i.aa, !19512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19364)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.z, align 8, !dbg !19573, !noalias !19504, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !19494, !DIExpression(), !19365)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !19512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19364)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !19500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19357)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !19499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19356)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !19574
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !19574

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i: ; preds = %._crit_edge.i.i, %bb.c
    #dbg_value(ptr poison, !19529, !DIExpression(), !19372)
    #dbg_value(ptr poison, !19532, !DIExpression(), !19375)
    #dbg_value(ptr poison, !19537, !DIExpression(), !19382)
    #dbg_declare(ptr poison, !19540, !DIExpression(), !19383)
    #dbg_declare(ptr poison, !19542, !DIExpression(), !19384)
    #dbg_declare(ptr poison, !19541, !DIExpression(), !19385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19579, !noalias !19548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19580, !noalias !19548
    #dbg_declare(ptr poison, !19558, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !19395)
    #dbg_declare(ptr poison, !19556, !DIExpression(), !19396)
    #dbg_declare(ptr poison, !19554, !DIExpression(), !19397)
    #dbg_declare(ptr %i.a, !19555, !DIExpression(), !19398)
    #dbg_declare(ptr %i.b, !19561, !DIExpression(), !19402)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19580, !noalias !19564
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1y_4LeafENtB1y_4EdgeE7next_kvB1Y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !dbg !19581

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i
  %i.ac = load ptr, ptr %i.b, align 8, !dbg !19582, !noalias !19564, !noundef !1631 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !19582
  br i1 %i.ad, label %bb.e, label %bb.f, !dbg !19583, !prof !2224

bb.e:                                             ; preds = %.noexc.i.i
    #dbg_value(ptr null, !19558, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19406)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19584, !noalias !19564
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #13
          to label %.noexc3.i.i unwind label %bb.g, !dbg !19585, !noalias !19548

.noexc3.i.i:                                      ; preds = %bb.e
  unreachable, !dbg !19585

bb.f:                                             ; preds = %.noexc.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !19586
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i64 16, i1 false), !dbg !19586, !noalias !19564
    #dbg_value(ptr %i.ac, !19558, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19406)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19584, !noalias !19564
  store ptr %i.ac, ptr %i.a, align 8, !dbg !19587, !noalias !19564
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1Y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc4.i.i unwind label %bb.g, !dbg !19588, !noalias !19548

.noexc4.i.i:                                      ; preds = %bb.f
  %i.ae = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1L_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1y_4LeafENtB1y_4EdgeETRyRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1Y_.exit.i unwind label %bb.g, !dbg !19589, !noalias !19548 ; 2 uses

bb.g:                                             ; preds = %.noexc4.i.i, %bb.f, %bb.e, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !19408)
    #dbg_value(ptr poison, !2235, !DIExpression(), !19410)
  tail call void @llvm.trap(), !dbg !19590
  unreachable, !dbg !19590

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1y_4LeafENtB1y_4EdgeETRyRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1Y_.exit.i: ; preds = %.noexc4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19591, !noalias !19548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !19592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19593, !noalias !19548
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0, !dbg !19594
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1, !dbg !19594
  %i.ai = icmp eq ptr %i.ag, null, !dbg !19595
  %i.aj = select i1 %i.ai, ptr null, ptr %i.ah, !dbg !19596
  br label %_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1a_.exit, !dbg !19597

.critedge.i:                                      ; preds = %bb.b
    #dbg_value(ptr poison, !19529, !DIExpression(), !19372)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #13, !dbg !19598, !noalias !19457
  unreachable, !dbg !19598

_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1a_.exit: ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1y_4LeafENtB1y_4EdgeETRyRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1Y_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.aj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1y_4LeafENtB1y_4EdgeETRyRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1Y_.exit.i ], [ null, %bb.a ], !dbg !19599
    #dbg_value(ptr poison, !19452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19565)
    #dbg_value(ptr poison, !19452, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19565)
  ret ptr %.sroa.0.0.i, !dbg !19600
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19606 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !19712, !DIExpression(), !19714)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !19869 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !19869, !noundef !1631 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !19869
  br i1 %i.f, label %bb.e, label %bb.b, !dbg !19869

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1, !dbg !19870
  store i64 %i.g, ptr %i.d, align 8, !dbg !19870
    #dbg_value(ptr %0, !19716, !DIExpression(), !19722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19723), !dbg !19871
    #dbg_value(ptr %0, !19724, !DIExpression(), !19618)
    #dbg_value(i64 0, !19742, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19630)
  %i.h = load i64, ptr %0, align 8, !dbg !19872, !range !2453, !alias.scope !19723, !noundef !1631
  %i.i = trunc nuw i64 %i.h to i1, !dbg !19873
  br i1 %i.i, label %bb.c, label %.critedge, !dbg !19873

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19872 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !19872, !alias.scope !19723, !noundef !1631
  %.not.i = icmp eq ptr %i.k, null, !dbg !19872
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit, !dbg !19873

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !19739, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !19631)
    #dbg_value(ptr %i.j, !19769, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19634)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19874 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19874
  %i.n = load i64, ptr %i.m, align 8, !dbg !19874, !alias.scope !19723, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.n, !19763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %i.n, !19764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %i.n, !19775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
  %.sroa.013.029.i = load ptr, ptr %i.l, align 8, !dbg !19875, !alias.scope !19723, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !19876
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !19876

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7, !dbg !19876        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !19876
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !19876

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.031.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.029.i, %.lr.ph.i.preheader ]
  %.sroa.011.030.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.prol, !19775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i.prol, !19766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i.prol, !19742, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.031.i.prol, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.031.i.prol, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.031.i.prol, !19757, !DIExpression(), !19646)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.prol, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
  %i.q = add i64 %.sroa.011.030.i.prol, -1, !dbg !19878 ; 2 uses
    #dbg_value(i64 %i.q, !19763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %i.q, !19764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %i.q, !19775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.prol, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i.prol, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i.prol, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i.prol, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !19876 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !19876
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !19876, !llvm.loop !19647

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.031.i.unr = phi ptr [ %.sroa.013.029.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.030.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8, !dbg !19876
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i, !dbg !19876

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.029.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ], !dbg !19875
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !dbg !19879, !alias.scope !19723
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !dbg !19879, !alias.scope !19723
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit, !dbg !19880

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.031.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.031.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.030.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.030.i.unr, %.lr.ph.i.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i, !19766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i, !19742, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.031.i, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.031.i, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.031.i, !19757, !DIExpression(), !19646)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
    #dbg_value(i64 %.sroa.011.030.i, !19763, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19764, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i, !19766, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i, !19742, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.0.i, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i, !19757, !DIExpression(), !19646)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
    #dbg_value(i64 %.sroa.011.030.i, !19763, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19764, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.1, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i.1, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i.1, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i.1, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i, !19766, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i, !19742, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.1, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.0.i.1, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.1, !19757, !DIExpression(), !19646)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
    #dbg_value(i64 %.sroa.011.030.i, !19763, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19764, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.2, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i.2, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i.2, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i.2, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i, !19766, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i, !19742, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.2, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.0.i.2, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.2, !19757, !DIExpression(), !19646)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
    #dbg_value(i64 %.sroa.011.030.i, !19763, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19764, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.3, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i.3, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i.3, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i.3, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i, !19766, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i, !19742, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.3, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.0.i.3, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.3, !19757, !DIExpression(), !19646)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
    #dbg_value(i64 %.sroa.011.030.i, !19763, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19764, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.4, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i.4, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i.4, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i.4, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i, !19766, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i, !19742, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.4, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.0.i.4, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.4, !19757, !DIExpression(), !19646)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
    #dbg_value(i64 %.sroa.011.030.i, !19763, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19764, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.5, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i.5, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i.5, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i.5, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i, !19766, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i, !19742, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.5, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.0.i.5, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.5, !19757, !DIExpression(), !19646)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
    #dbg_value(i64 %.sroa.011.030.i, !19763, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19764, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.6, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i.6, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i.6, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i.6, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(i64 %.sroa.011.030.i, !19775, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19643)
    #dbg_value(i64 %.sroa.011.030.i, !19766, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19645)
    #dbg_value(i64 %.sroa.011.030.i, !19742, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.6, !19766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19645)
    #dbg_value(ptr %.sroa.013.0.i.6, !19742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19630)
    #dbg_value(ptr %.sroa.013.0.i.6, !19757, !DIExpression(), !19646)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 896, !dbg !19877
    #dbg_value(ptr poison, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
    #dbg_value(ptr poison, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr poison, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr poison, !19758, !DIExpression(), !19644)
  %i.aa = add i64 %.sroa.011.030.i, -8, !dbg !19878 ; 2 uses
    #dbg_value(i64 %i.aa, !19763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19635)
    #dbg_value(i64 %i.aa, !19764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19636)
    #dbg_value(i64 %i.aa, !19775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19643)
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !dbg !19875, !noalias !19723, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.7, !19758, !DIExpression(), !19644)
    #dbg_value(ptr %.sroa.013.0.i.7, !19775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19643)
    #dbg_value(ptr %.sroa.013.0.i.7, !19764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19636)
    #dbg_value(ptr %.sroa.013.0.i.7, !19763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19635)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !19876
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i, !dbg !19876

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %._crit_edge.i
    #dbg_value(ptr poison, !19792, !DIExpression(), !19799)
    #dbg_value(ptr poison, !19800, !DIExpression(), !19806)
    #dbg_value(ptr poison, !19807, !DIExpression(), !19657)
    #dbg_declare(ptr poison, !19810, !DIExpression(), !19658)
    #dbg_declare(ptr poison, !19812, !DIExpression(), !19659)
    #dbg_declare(ptr poison, !19811, !DIExpression(), !19660)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19881, !noalias !19820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19882, !noalias !19820
    #dbg_declare(ptr poison, !19836, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !19675)
    #dbg_declare(ptr poison, !19828, !DIExpression(), !19676)
    #dbg_declare(ptr poison, !19826, !DIExpression(), !19677)
    #dbg_declare(ptr %i.a, !19827, !DIExpression(), !19678)
    #dbg_declare(ptr %i.b, !19851, !DIExpression(), !19686)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19882, !noalias !19868
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeE7next_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h, !dbg !19883

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit ], [ undef, %bb.a ], !dbg !19714
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit ], [ null, %bb.a ], !dbg !19714
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !19884
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1, !dbg !19884
  ret { ptr, ptr } %i.ad, !dbg !19884

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit
  %i.ae = load ptr, ptr %i.b, align 8, !dbg !19885, !noalias !19868, !noundef !1631 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null, !dbg !19885
  br i1 %i.af, label %bb.f, label %bb.g, !dbg !19886, !prof !2224

bb.f:                                             ; preds = %.noexc.i
    #dbg_value(ptr null, !19836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19690)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19887, !noalias !19868
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #13
          to label %.noexc3.i unwind label %bb.h, !dbg !19888, !noalias !19820

.noexc3.i:                                        ; preds = %bb.f
  unreachable, !dbg !19888

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !19889
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !dbg !19889, !noalias !19868
    #dbg_value(ptr %i.ae, !19836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19690)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19887, !noalias !19868
  store ptr %i.ae, ptr %i.a, align 8, !dbg !19890, !noalias !19868
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc4.i unwind label %bb.h, !dbg !19891, !noalias !19820

.noexc4.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit unwind label %bb.h, !dbg !19892, !noalias !19820 ; 2 uses

bb.h:                                             ; preds = %.noexc4.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !19692)
    #dbg_value(ptr poison, !2235, !DIExpression(), !19694)
  tail call void @llvm.trap(), !dbg !19893
  unreachable, !dbg !19893

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19894, !noalias !19820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !19895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19896, !noalias !19820
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0, !dbg !19897
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1, !dbg !19897
  br label %bb.e, !dbg !19898

.critedge:                                        ; preds = %bb.b
    #dbg_value(ptr poison, !19792, !DIExpression(), !19799)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #13, !dbg !19899
  unreachable, !dbg !19899
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19918 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !20064, !DIExpression(), !20066)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !20221 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !20221, !noundef !1631 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !20221
  br i1 %i.f, label %bb.e, label %bb.b, !dbg !20221

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1, !dbg !20222
  store i64 %i.g, ptr %i.d, align 8, !dbg !20222
    #dbg_value(ptr %0, !20068, !DIExpression(), !20074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20075), !dbg !20223
    #dbg_value(ptr %0, !20076, !DIExpression(), !19930)
    #dbg_value(i64 0, !20094, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19942)
  %i.h = load i64, ptr %0, align 8, !dbg !20224, !range !2453, !alias.scope !20075, !noundef !1631
  %i.i = trunc nuw i64 %i.h to i1, !dbg !20225
  br i1 %i.i, label %bb.c, label %.critedge, !dbg !20225

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20224 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !20224, !alias.scope !20075, !noundef !1631
  %.not.i = icmp eq ptr %i.k, null, !dbg !20224
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit, !dbg !20225

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !20091, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !19943)
    #dbg_value(ptr %i.j, !20121, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19946)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20226 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !20226
  %i.n = load i64, ptr %i.m, align 8, !dbg !20226, !alias.scope !20075, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.n, !20115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %i.n, !20116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %i.n, !20127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
  %.sroa.013.029.i = load ptr, ptr %i.l, align 8, !dbg !20227, !alias.scope !20075, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !20228
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !20228

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7, !dbg !20228        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20228
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !20228

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.031.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.029.i, %.lr.ph.i.preheader ]
  %.sroa.011.030.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.prol, !20127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i.prol, !20118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i.prol, !20094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.031.i.prol, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.031.i.prol, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.031.i.prol, !20109, !DIExpression(), !19958)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.prol, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
  %i.q = add i64 %.sroa.011.030.i.prol, -1, !dbg !20230 ; 2 uses
    #dbg_value(i64 %i.q, !20115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %i.q, !20116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %i.q, !20127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.prol, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i.prol, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i.prol, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i.prol, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !20228 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !20228
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !20228, !llvm.loop !19959

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.031.i.unr = phi ptr [ %.sroa.013.029.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.030.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8, !dbg !20228
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i, !dbg !20228

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.029.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ], !dbg !20227
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !dbg !20231, !alias.scope !20075
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !dbg !20231, !alias.scope !20075
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit, !dbg !20232

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.031.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.031.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.030.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.030.i.unr, %.lr.ph.i.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i, !20118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i, !20094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.031.i, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.031.i, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.031.i, !20109, !DIExpression(), !19958)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
    #dbg_value(i64 %.sroa.011.030.i, !20115, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20116, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i, !20118, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i, !20094, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.0.i, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i, !20109, !DIExpression(), !19958)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
    #dbg_value(i64 %.sroa.011.030.i, !20115, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20116, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.1, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i.1, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i.1, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i.1, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i, !20118, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i, !20094, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.1, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.0.i.1, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.1, !20109, !DIExpression(), !19958)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
    #dbg_value(i64 %.sroa.011.030.i, !20115, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20116, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.2, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i.2, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i.2, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i.2, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i, !20118, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i, !20094, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.2, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.0.i.2, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.2, !20109, !DIExpression(), !19958)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
    #dbg_value(i64 %.sroa.011.030.i, !20115, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20116, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.3, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i.3, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i.3, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i.3, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i, !20118, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i, !20094, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.3, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.0.i.3, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.3, !20109, !DIExpression(), !19958)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
    #dbg_value(i64 %.sroa.011.030.i, !20115, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20116, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.4, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i.4, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i.4, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i.4, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i, !20118, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i, !20094, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.4, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.0.i.4, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.4, !20109, !DIExpression(), !19958)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
    #dbg_value(i64 %.sroa.011.030.i, !20115, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20116, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.5, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i.5, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i.5, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i.5, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i, !20118, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i, !20094, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.5, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.0.i.5, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.5, !20109, !DIExpression(), !19958)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
    #dbg_value(i64 %.sroa.011.030.i, !20115, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20116, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.6, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i.6, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i.6, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i.6, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(i64 %.sroa.011.030.i, !20127, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19955)
    #dbg_value(i64 %.sroa.011.030.i, !20118, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19957)
    #dbg_value(i64 %.sroa.011.030.i, !20094, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.6, !20118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19957)
    #dbg_value(ptr %.sroa.013.0.i.6, !20094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19942)
    #dbg_value(ptr %.sroa.013.0.i.6, !20109, !DIExpression(), !19958)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 1072, !dbg !20229
    #dbg_value(ptr poison, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
    #dbg_value(ptr poison, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr poison, !20110, !DIExpression(), !19956)
  %i.aa = add i64 %.sroa.011.030.i, -8, !dbg !20230 ; 2 uses
    #dbg_value(i64 %i.aa, !20115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19947)
    #dbg_value(i64 %i.aa, !20116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(i64 %i.aa, !20127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19955)
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !dbg !20227, !noalias !20075, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.7, !20110, !DIExpression(), !19956)
    #dbg_value(ptr %.sroa.013.0.i.7, !20127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19955)
    #dbg_value(ptr %.sroa.013.0.i.7, !20116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %.sroa.013.0.i.7, !20115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19947)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !20228
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i, !dbg !20228

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %._crit_edge.i
    #dbg_value(ptr poison, !20144, !DIExpression(), !20151)
    #dbg_value(ptr poison, !20152, !DIExpression(), !20158)
    #dbg_value(ptr poison, !20159, !DIExpression(), !19969)
    #dbg_declare(ptr poison, !20162, !DIExpression(), !19970)
    #dbg_declare(ptr poison, !20164, !DIExpression(), !19971)
    #dbg_declare(ptr poison, !20163, !DIExpression(), !19972)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20233, !noalias !20172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20234, !noalias !20172
    #dbg_declare(ptr poison, !20188, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !19987)
    #dbg_declare(ptr poison, !20180, !DIExpression(), !19988)
    #dbg_declare(ptr poison, !20178, !DIExpression(), !19989)
    #dbg_declare(ptr %i.a, !20179, !DIExpression(), !19990)
    #dbg_declare(ptr %i.b, !20203, !DIExpression(), !19998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20234, !noalias !20220
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h, !dbg !20235

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit ], [ undef, %bb.a ], !dbg !20066
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit ], [ null, %bb.a ], !dbg !20066
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !20236
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1, !dbg !20236
  ret { ptr, ptr } %i.ad, !dbg !20236

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit
  %i.ae = load ptr, ptr %i.b, align 8, !dbg !20237, !noalias !20220, !noundef !1631 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null, !dbg !20237
  br i1 %i.af, label %bb.f, label %bb.g, !dbg !20238, !prof !2224

bb.f:                                             ; preds = %.noexc.i
    #dbg_value(ptr null, !20188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20002)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20239, !noalias !20220
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #13
          to label %.noexc3.i unwind label %bb.h, !dbg !20240, !noalias !20172

.noexc3.i:                                        ; preds = %bb.f
  unreachable, !dbg !20240

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20241
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !dbg !20241, !noalias !20220
    #dbg_value(ptr %i.ae, !20188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20002)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20239, !noalias !20220
  store ptr %i.ae, ptr %i.a, align 8, !dbg !20242, !noalias !20220
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc4.i unwind label %bb.h, !dbg !20243, !noalias !20172

.noexc4.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit unwind label %bb.h, !dbg !20244, !noalias !20172 ; 2 uses

bb.h:                                             ; preds = %.noexc4.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !20004)
    #dbg_value(ptr poison, !2235, !DIExpression(), !20006)
  tail call void @llvm.trap(), !dbg !20245
  unreachable, !dbg !20245

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20246, !noalias !20172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !20247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20248, !noalias !20172
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0, !dbg !20249
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1, !dbg !20249
  br label %bb.e, !dbg !20250

.critedge:                                        ; preds = %bb.b
    #dbg_value(ptr poison, !20144, !DIExpression(), !20151)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #13, !dbg !20251
  unreachable, !dbg !20251
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20252 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !20321, !DIExpression(), !20323)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !20383 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !20383, !noundef !1631 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !20383
  br i1 %i.f, label %bb.e, label %bb.b, !dbg !20383

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1, !dbg !20384
  store i64 %i.g, ptr %i.d, align 8, !dbg !20384
    #dbg_value(ptr %0, !20324, !DIExpression(), !20328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20329), !dbg !20385
    #dbg_value(ptr %0, !20330, !DIExpression(), !20260)
    #dbg_value(i64 0, !20335, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20270)
  %i.h = load i64, ptr %0, align 8, !dbg !20386, !range !2453, !alias.scope !20329, !noundef !1631
  %i.i = trunc nuw i64 %i.h to i1, !dbg !20387
  br i1 %i.i, label %bb.c, label %.critedge, !dbg !20387

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20386 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !20386, !alias.scope !20329, !noundef !1631
  %.not.i = icmp eq ptr %i.k, null, !dbg !20386
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCshovLROGBtMy_11quinn_proto.exit, !dbg !20387

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !20332, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !20271)
    #dbg_value(ptr %i.j, !20344, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20274)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20388 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !20388
  %i.n = load i64, ptr %i.m, align 8, !dbg !20388, !alias.scope !20329, !noundef !1631 ; 5 uses
    #dbg_value(i64 %i.n, !20339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %i.n, !20340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %i.n, !20346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
  %.sroa.013.029.i = load ptr, ptr %i.l, align 8, !dbg !20389, !alias.scope !20329, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !20390
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !20390

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7, !dbg !20390        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20390
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !20390

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.031.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.029.i, %.lr.ph.i.preheader ]
  %.sroa.011.030.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.prol, !20346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i.prol, !20342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i.prol, !20335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.031.i.prol, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.031.i.prol, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.031.i.prol, !20336, !DIExpression(), !20282)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.prol, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
  %i.q = add i64 %.sroa.011.030.i.prol, -1, !dbg !20392 ; 2 uses
    #dbg_value(i64 %i.q, !20339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %i.q, !20340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %i.q, !20346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.prol, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i.prol, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i.prol, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i.prol, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !20390 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !20390
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !20390, !llvm.loop !20283

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.031.i.unr = phi ptr [ %.sroa.013.029.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.030.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8, !dbg !20390
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i, !dbg !20390

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.029.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ], !dbg !20389
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !dbg !20393, !alias.scope !20329
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !dbg !20393, !alias.scope !20329
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCshovLROGBtMy_11quinn_proto.exit, !dbg !20394

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.031.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.031.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.030.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.030.i.unr, %.lr.ph.i.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i, !20342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i, !20335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.031.i, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.031.i, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.031.i, !20336, !DIExpression(), !20282)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
    #dbg_value(i64 %.sroa.011.030.i, !20339, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20340, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i, !20342, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i, !20335, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.0.i, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i, !20336, !DIExpression(), !20282)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
    #dbg_value(i64 %.sroa.011.030.i, !20339, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20340, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.1, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i.1, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i.1, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i.1, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i, !20342, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i, !20335, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.1, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.0.i.1, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.1, !20336, !DIExpression(), !20282)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
    #dbg_value(i64 %.sroa.011.030.i, !20339, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20340, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.2, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i.2, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i.2, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i.2, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i, !20342, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i, !20335, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.2, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.0.i.2, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.2, !20336, !DIExpression(), !20282)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
    #dbg_value(i64 %.sroa.011.030.i, !20339, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20340, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.3, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i.3, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i.3, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i.3, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i, !20342, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i, !20335, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.3, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.0.i.3, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.3, !20336, !DIExpression(), !20282)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
    #dbg_value(i64 %.sroa.011.030.i, !20339, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20340, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.4, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i.4, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i.4, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i.4, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i, !20342, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i, !20335, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.4, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.0.i.4, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.4, !20336, !DIExpression(), !20282)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
    #dbg_value(i64 %.sroa.011.030.i, !20339, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20340, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.5, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i.5, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i.5, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i.5, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i, !20342, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i, !20335, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.5, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.0.i.5, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.5, !20336, !DIExpression(), !20282)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
    #dbg_value(i64 %.sroa.011.030.i, !20339, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20340, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.6, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i.6, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i.6, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i.6, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(i64 %.sroa.011.030.i, !20346, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %.sroa.011.030.i, !20342, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20281)
    #dbg_value(i64 %.sroa.011.030.i, !20335, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.6, !20342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %.sroa.013.0.i.6, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %.sroa.013.0.i.6, !20336, !DIExpression(), !20282)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 192, !dbg !20391
    #dbg_value(ptr poison, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr poison, !20337, !DIExpression(), !20280)
  %i.aa = add i64 %.sroa.011.030.i, -8, !dbg !20392 ; 2 uses
    #dbg_value(i64 %i.aa, !20339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %i.aa, !20340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(i64 %i.aa, !20346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20279)
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !dbg !20389, !noalias !20329, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.7, !20337, !DIExpression(), !20280)
    #dbg_value(ptr %.sroa.013.0.i.7, !20346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(ptr %.sroa.013.0.i.7, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %.sroa.013.0.i.7, !20339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !20390
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i, !dbg !20390

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %._crit_edge.i
    #dbg_value(ptr poison, !20348, !DIExpression(), !20352)
    #dbg_value(ptr poison, !20353, !DIExpression(), !20357)
    #dbg_value(ptr poison, !20358, !DIExpression(), !20293)
    #dbg_declare(ptr poison, !20361, !DIExpression(), !20294)
    #dbg_declare(ptr poison, !20363, !DIExpression(), !20295)
    #dbg_declare(ptr poison, !20362, !DIExpression(), !20296)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20395, !noalias !20369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20396, !noalias !20369
    #dbg_declare(ptr poison, !20376, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !20305)
    #dbg_declare(ptr poison, !20374, !DIExpression(), !20306)
    #dbg_declare(ptr poison, !20372, !DIExpression(), !20307)
    #dbg_declare(ptr %i.a, !20373, !DIExpression(), !20308)
    #dbg_declare(ptr %i.b, !20379, !DIExpression(), !20312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20396, !noalias !20382
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeE7next_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h, !dbg !20397

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit ], [ undef, %bb.a ], !dbg !20323
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit ], [ null, %bb.a ], !dbg !20323
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !20398
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1, !dbg !20398
  ret { ptr, ptr } %i.ad, !dbg !20398

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCshovLROGBtMy_11quinn_proto.exit
  %i.ae = load ptr, ptr %i.b, align 8, !dbg !20399, !noalias !20382, !noundef !1631 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null, !dbg !20399
  br i1 %i.af, label %bb.f, label %bb.g, !dbg !20400, !prof !2224

bb.f:                                             ; preds = %.noexc.i
    #dbg_value(ptr null, !20376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20316)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20401, !noalias !20382
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #13
          to label %.noexc3.i unwind label %bb.h, !dbg !20402, !noalias !20369

.noexc3.i:                                        ; preds = %bb.f
  unreachable, !dbg !20402

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20403
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !dbg !20403, !noalias !20382
    #dbg_value(ptr %i.ae, !20376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20316)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20401, !noalias !20382
  store ptr %i.ae, ptr %i.a, align 8, !dbg !20404, !noalias !20382
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc4.i unwind label %bb.h, !dbg !20405, !noalias !20369

.noexc4.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutyyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit unwind label %bb.h, !dbg !20406, !noalias !20369 ; 2 uses

bb.h:                                             ; preds = %.noexc4.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCshovLROGBtMy_11quinn_proto.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !20318)
    #dbg_value(ptr poison, !2235, !DIExpression(), !20320)
  tail call void @llvm.trap(), !dbg !20407
  unreachable, !dbg !20407

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECshovLROGBtMy_11quinn_proto.exit: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20408, !noalias !20369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !20409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20410, !noalias !20369
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0, !dbg !20411
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1, !dbg !20411
  br label %bb.e, !dbg !20412

.critedge:                                        ; preds = %bb.b
    #dbg_value(ptr poison, !20348, !DIExpression(), !20352)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #13, !dbg !20413
  unreachable, !dbg !20413
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryyENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20414 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !20497, !DIExpression(), !20499)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !20551 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !20551, !noundef !1631 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !20551
  br i1 %i.f, label %bb.e, label %bb.b, !dbg !20551

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1, !dbg !20552
  store i64 %i.g, ptr %i.d, align 8, !dbg !20552
    #dbg_value(ptr %0, !20500, !DIExpression(), !20504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20505), !dbg !20553
    #dbg_value(ptr %0, !20506, !DIExpression(), !20422)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20554
  %i.i = load i64, ptr %i.h, align 8, !dbg !20554, !range !2453, !alias.scope !20505, !noundef !1631
  %i.j = trunc nuw i64 %i.i to i1, !dbg !20555
  br i1 %i.j, label %bb.c, label %.critedge, !dbg !20555

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !20554 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !20554, !alias.scope !20505, !noundef !1631
  %.not.i = icmp eq ptr %i.l, null, !dbg !20554
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCshovLROGBtMy_11quinn_proto.exit, !dbg !20555

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !20508, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20423)
    #dbg_value(ptr %i.k, !20512, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20426)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !20556 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !20556, !alias.scope !20505, !nonnull !1631, !noundef !1631 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !20556 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !20556, !alias.scope !20505, !noundef !1631 ; 5 uses
    #dbg_value(ptr %i.n, !5408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20428)
    #dbg_value(i64 %i.p, !5408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20428)
    #dbg_value(i64 %i.p, !5412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %i.p, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(ptr %i.n, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.n, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.n, !5443, !DIExpression(), !20433)
  %i.q = icmp eq i64 %i.p, 0, !dbg !20557
  br i1 %i.q, label %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCshovLROGBtMy_11quinn_proto.exit.i, label %.lr.ph.i.i.preheader, !dbg !20557

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %i.p, 7, !dbg !20557        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20557
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !20557

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.03.019.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.018.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.prol ], [ %i.p, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i.prol, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i.prol, !5414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i.prol, !5457, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i.prol, !5453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.prol, i64 186, !dbg !20558
  %i.s = load i16, ptr %i.r, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.t = zext nneg i16 %i.s to i64, !dbg !20559
    #dbg_value(i64 %i.t, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.t, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.t, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !5455, !DIExpression(), !20446)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.prol, i64 192, !dbg !20560
    #dbg_value(ptr %i.u, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.u, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.v = icmp ult i16 %i.s, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.v), !dbg !20562
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t, !dbg !20563
    #dbg_value(ptr %i.w, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.w, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.w, !5507, !DIExpression(), !20452)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %i.x, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.x, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.x, !5443, !DIExpression(), !20433)
  %i.y = add i64 %.sroa.05.018.i.i.prol, -1, !dbg !20565 ; 2 uses
    #dbg_value(i64 %i.y, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %i.y, !5412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20429)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !20557 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !20557
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !20557, !llvm.loop !20453

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %.sroa.03.019.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %.sroa.05.018.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %i.z = icmp ult i64 %i.p, 8, !dbg !20557
  br i1 %i.z, label %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCshovLROGBtMy_11quinn_proto.exit.i, label %.lr.ph.i.i, !dbg !20557

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.03.019.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.sroa.03.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.sroa.05.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.03.019.i.i, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i, !5414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i, !5457, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i, !5453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %.sroa.03.019.i.i, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %.sroa.03.019.i.i, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %.sroa.03.019.i.i, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i, i64 186, !dbg !20558
  %i.ab = load i16, ptr %i.aa, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64, !dbg !20559
    #dbg_value(i64 %i.ac, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.ac, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.ac, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %.sroa.03.019.i.i, !5455, !DIExpression(), !20446)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i, i64 192, !dbg !20560
    #dbg_value(ptr %i.ad, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.ad, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.ae = icmp ult i16 %i.ab, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.ae), !dbg !20562
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac, !dbg !20563
    #dbg_value(ptr %i.af, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.af, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.af, !5507, !DIExpression(), !20452)
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.ag, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.ag, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.ag, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i, !5412, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %.sroa.05.018.i.i, !5426, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i, !5414, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i, !5457, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i, !5453, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %i.ag, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %i.ag, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %i.ag, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 186, !dbg !20558
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.aj = zext nneg i16 %i.ai to i64, !dbg !20559
    #dbg_value(i64 %i.aj, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.aj, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.aj, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %i.ag, !5455, !DIExpression(), !20446)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 192, !dbg !20560
    #dbg_value(ptr %i.ak, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.ak, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.al = icmp ult i16 %i.ai, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.al), !dbg !20562
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj, !dbg !20563
    #dbg_value(ptr %i.am, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.am, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.am, !5507, !DIExpression(), !20452)
  %i.an = load ptr, ptr %i.am, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.an, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.an, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.an, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i, !5412, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %.sroa.05.018.i.i, !5426, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i, !5414, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i, !5457, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i, !5453, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %i.an, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %i.an, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %i.an, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 186, !dbg !20558
  %i.ap = load i16, ptr %i.ao, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.aq = zext nneg i16 %i.ap to i64, !dbg !20559
    #dbg_value(i64 %i.aq, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.aq, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.aq, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %i.an, !5455, !DIExpression(), !20446)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 192, !dbg !20560
    #dbg_value(ptr %i.ar, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.ar, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.as = icmp ult i16 %i.ap, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.as), !dbg !20562
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq, !dbg !20563
    #dbg_value(ptr %i.at, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.at, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.at, !5507, !DIExpression(), !20452)
  %i.au = load ptr, ptr %i.at, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.au, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.au, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.au, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i, !5412, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %.sroa.05.018.i.i, !5426, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i, !5414, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i, !5457, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i, !5453, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %i.au, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %i.au, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %i.au, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 186, !dbg !20558
  %i.aw = load i16, ptr %i.av, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.ax = zext nneg i16 %i.aw to i64, !dbg !20559
    #dbg_value(i64 %i.ax, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.ax, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.ax, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %i.au, !5455, !DIExpression(), !20446)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 192, !dbg !20560
    #dbg_value(ptr %i.ay, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.ay, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.az = icmp ult i16 %i.aw, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.az), !dbg !20562
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax, !dbg !20563
    #dbg_value(ptr %i.ba, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.ba, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.ba, !5507, !DIExpression(), !20452)
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.bb, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.bb, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.bb, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i, !5412, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %.sroa.05.018.i.i, !5426, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i, !5414, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i, !5457, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i, !5453, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %i.bb, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %i.bb, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %i.bb, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 186, !dbg !20558
  %i.bd = load i16, ptr %i.bc, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.be = zext nneg i16 %i.bd to i64, !dbg !20559
    #dbg_value(i64 %i.be, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.be, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.be, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %i.bb, !5455, !DIExpression(), !20446)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 192, !dbg !20560
    #dbg_value(ptr %i.bf, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.bf, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.bg = icmp ult i16 %i.bd, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.bg), !dbg !20562
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be, !dbg !20563
    #dbg_value(ptr %i.bh, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.bh, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.bh, !5507, !DIExpression(), !20452)
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.bi, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.bi, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.bi, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i, !5412, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %.sroa.05.018.i.i, !5426, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i, !5414, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i, !5457, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i, !5453, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %i.bi, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %i.bi, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %i.bi, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 186, !dbg !20558
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.bl = zext nneg i16 %i.bk to i64, !dbg !20559
    #dbg_value(i64 %i.bl, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.bl, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.bl, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %i.bi, !5455, !DIExpression(), !20446)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 192, !dbg !20560
    #dbg_value(ptr %i.bm, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.bm, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.bn = icmp ult i16 %i.bk, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.bn), !dbg !20562
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl, !dbg !20563
    #dbg_value(ptr %i.bo, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.bo, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.bo, !5507, !DIExpression(), !20452)
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.bp, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.bp, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.bp, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i, !5412, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %.sroa.05.018.i.i, !5426, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i, !5414, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i, !5457, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i, !5453, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %i.bp, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %i.bp, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %i.bp, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 186, !dbg !20558
  %i.br = load i16, ptr %i.bq, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.bs = zext nneg i16 %i.br to i64, !dbg !20559
    #dbg_value(i64 %i.bs, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.bs, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.bs, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %i.bp, !5455, !DIExpression(), !20446)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 192, !dbg !20560
    #dbg_value(ptr %i.bt, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.bt, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.bu = icmp ult i16 %i.br, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.bu), !dbg !20562
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs, !dbg !20563
    #dbg_value(ptr %i.bv, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.bv, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.bv, !5507, !DIExpression(), !20452)
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.bw, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.bw, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.bw, !5443, !DIExpression(), !20433)
    #dbg_value(i64 %.sroa.05.018.i.i, !5412, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %.sroa.05.018.i.i, !5426, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %.sroa.05.018.i.i, !5414, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20434)
    #dbg_value(i64 %.sroa.05.018.i.i, !5457, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20436)
    #dbg_value(i64 %.sroa.05.018.i.i, !5453, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20437)
    #dbg_value(ptr %i.bw, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20434)
    #dbg_value(ptr %i.bw, !5457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20436)
    #dbg_value(ptr %i.bw, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20437)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 186, !dbg !20558
  %i.by = load i16, ptr %i.bx, align 2, !dbg !20558, !noalias !20514, !noundef !1631 ; 2 uses
  %i.bz = zext nneg i16 %i.by to i64, !dbg !20559
    #dbg_value(i64 %i.bz, !5453, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20437)
    #dbg_value(i64 %i.bz, !5472, !DIExpression(), !20443)
    #dbg_value(i64 %i.bz, !5484, !DIExpression(), !20445)
    #dbg_value(ptr %i.bw, !5455, !DIExpression(), !20446)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 192, !dbg !20560
    #dbg_value(ptr %i.ca, !5480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20443)
    #dbg_value(ptr %i.ca, !5491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20445)
    #dbg_value(i64 12, !5480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20443)
    #dbg_value(i64 12, !5491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20445)
  %i.cb = icmp ult i16 %i.by, 12, !dbg !20561
  tail call void @llvm.assume(i1 %i.cb), !dbg !20562
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz, !dbg !20563
    #dbg_value(ptr %i.cc, !5494, !DIExpression(), !20448)
    #dbg_value(ptr %i.cc, !5501, !DIExpression(), !20450)
    #dbg_value(ptr %i.cc, !5507, !DIExpression(), !20452)
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !20564, !noalias !20514, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %i.cd, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.cd, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20431)
    #dbg_value(ptr %i.cd, !5443, !DIExpression(), !20433)
  %i.ce = add i64 %.sroa.05.018.i.i, -8, !dbg !20565 ; 2 uses
    #dbg_value(i64 %i.ce, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20431)
    #dbg_value(i64 %i.ce, !5412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20429)
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !20557
  br i1 %i.cf, label %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCshovLROGBtMy_11quinn_proto.exit.i, label %.lr.ph.i.i, !dbg !20557

_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %.sroa.03.0.lcssa.i.i = phi ptr [ %i.n, %bb.d ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i ], !dbg !20566 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.lcssa.i.i, !5413, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20454)
    #dbg_value(ptr %.sroa.03.0.lcssa.i.i, !5509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20456)
    #dbg_value(i64 0, !5413, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20454)
    #dbg_value(i64 0, !5509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20456)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 186, !dbg !20567
  %i.ch = load i16, ptr %i.cg, align 2, !dbg !20567, !noalias !20514, !noundef !1631
  %i.ci = zext i16 %i.ch to i64, !dbg !20568
  store ptr %.sroa.03.0.lcssa.i.i, ptr %i.k, align 8, !dbg !20569, !alias.scope !20505
  store i64 0, ptr %i.m, align 8, !dbg !20569, !alias.scope !20505
  store i64 %i.ci, ptr %i.o, align 8, !dbg !20569, !alias.scope !20505
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCshovLROGBtMy_11quinn_proto.exit, !dbg !20570

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCshovLROGBtMy_11quinn_proto.exit.i
    #dbg_value(ptr poison, !20515, !DIExpression(), !20519)
    #dbg_value(ptr poison, !20520, !DIExpression(), !20524)
    #dbg_value(ptr poison, !20525, !DIExpression(), !20468)
    #dbg_declare(ptr poison, !20529, !DIExpression(), !20469)
    #dbg_declare(ptr poison, !20531, !DIExpression(), !20470)
    #dbg_declare(ptr poison, !20530, !DIExpression(), !20471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20571, !noalias !20537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20572, !noalias !20537
    #dbg_declare(ptr poison, !20544, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !20480)
    #dbg_declare(ptr poison, !20542, !DIExpression(), !20481)
    #dbg_declare(ptr poison, !20540, !DIExpression(), !20482)
    #dbg_declare(ptr %i.a, !20541, !DIExpression(), !20483)
    #dbg_declare(ptr %i.b, !20547, !DIExpression(), !20487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20572, !noalias !20550
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeE12next_back_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %.noexc.i unwind label %bb.h, !dbg !20573

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECshovLROGBtMy_11quinn_proto.exit
  %.sroa.3.0 = phi ptr [ %i.cq, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECshovLROGBtMy_11quinn_proto.exit ], [ undef, %bb.a ], !dbg !20499
  %.sroa.0.0 = phi ptr [ %i.cp, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECshovLROGBtMy_11quinn_proto.exit ], [ null, %bb.a ], !dbg !20499
  %i.cj = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !20574
  %i.ck = insertvalue { ptr, ptr } %i.cj, ptr %.sroa.3.0, 1, !dbg !20574
  ret { ptr, ptr } %i.ck, !dbg !20574

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCshovLROGBtMy_11quinn_proto.exit
  %i.cl = load ptr, ptr %i.b, align 8, !dbg !20575, !noalias !20550, !noundef !1631 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null, !dbg !20575
  br i1 %i.cm, label %bb.f, label %bb.g, !dbg !20576, !prof !2224

bb.f:                                             ; preds = %.noexc.i
    #dbg_value(ptr null, !20544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20491)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20577, !noalias !20550
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #13
          to label %.noexc3.i unwind label %bb.h, !dbg !20578, !noalias !20537

.noexc3.i:                                        ; preds = %bb.f
  unreachable, !dbg !20578

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20579
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !dbg !20579, !noalias !20550
    #dbg_value(ptr %i.cl, !20544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20491)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20577, !noalias !20550
  store ptr %i.cl, ptr %i.a, align 8, !dbg !20580, !noalias !20550
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_14LeafOrInternalENtB1y_2KVE19next_back_leaf_edgeCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc4.i unwind label %bb.h, !dbg !20581, !noalias !20537

.noexc4.i:                                        ; preds = %bb.g
  %i.cn = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutyyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECshovLROGBtMy_11quinn_proto.exit unwind label %bb.h, !dbg !20582, !noalias !20537 ; 2 uses

bb.h:                                             ; preds = %.noexc4.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCshovLROGBtMy_11quinn_proto.exit
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !20493)
    #dbg_value(ptr poison, !2235, !DIExpression(), !20495)
  call void @llvm.trap(), !dbg !20583
  unreachable, !dbg !20583

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECshovLROGBtMy_11quinn_proto.exit: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20584, !noalias !20537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !20585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20586, !noalias !20537
  %i.cp = extractvalue { ptr, ptr } %i.cn, 0, !dbg !20587
  %i.cq = extractvalue { ptr, ptr } %i.cn, 1, !dbg !20587
  br label %bb.e, !dbg !20588

.critedge:                                        ; preds = %bb.b
    #dbg_value(ptr poison, !20515, !DIExpression(), !20519)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #13, !dbg !20589
  unreachable, !dbg !20589
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1142 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr %0, !5645, !DIExpression(), !20607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20610
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10dying_nextB1e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0), !dbg !20611
  %i.b = load ptr, ptr %i.a, align 8, !dbg !20610, !noundef !1631 ; 2 uses
  %.not7 = icmp eq ptr %i.b, null, !dbg !20610
  br i1 %.not7, label %._crit_edge, label %.lr.ph, !dbg !20612

.lr.ph:                                           ; preds = %bb.a
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !20612

bb.b:                                             ; preds = %.lr.ph, %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1L_.exit
  %i.c = phi ptr [ %i.b, %.lr.ph ], [ %i.f, %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1L_.exit ]
    #dbg_value(ptr %i.c, !5646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20608)
    #dbg_value(i64 poison, !5646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20608)
  %.sroa.45.0.copyload = load i64, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !20613
    #dbg_value(i64 %.sroa.45.0.copyload, !5646, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20608)
    #dbg_value(ptr %0, !5647, !DIExpression(), !20609)
    #dbg_declare(ptr poison, !3265, !DIExpression(), !20591)
    #dbg_value(ptr %i.c, !3272, !DIExpression(), !20592)
    #dbg_value(i64 %.sroa.45.0.copyload, !3281, !DIExpression(), !20594)
    #dbg_value(i64 %.sroa.45.0.copyload, !3292, !DIExpression(), !20596)
    #dbg_value(!DIArgList(ptr %i.c, i64 %.sroa.45.0.copyload), !3274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1064, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !20597)
    #dbg_value(ptr %i.c, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20594)
    #dbg_value(i64 11, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(ptr %i.c, !3299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20596)
    #dbg_value(i64 11, !3299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20596)
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %.sroa.45.0.copyload, !dbg !20614
    #dbg_value(ptr %i.d, !3276, !DIExpression(), !20598)
    #dbg_value(ptr poison, !3305, !DIExpression(), !20600)
    #dbg_value(ptr poison, !3311, !DIExpression(), !20602)
    #dbg_value(ptr %i.d, !3313, !DIExpression(), !20604)
    #dbg_value(ptr %i.d, !3319, !DIExpression(), !20606)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1L_.exit unwind label %bb.c, !dbg !20615

._crit_edge:                                      ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1L_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20616
  ret void, !dbg !20617

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtNtBQ_5alloc6GlobalEEB2z_(ptr %0) #15
          to label %bb.e unwind label %bb.d, !dbg !20618

_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1L_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20610
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10dying_nextB1e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0), !dbg !20611
  %i.f = load ptr, ptr %i.a, align 8, !dbg !20610, !noundef !1631 ; 2 uses
  %.not = icmp eq ptr %i.f, null, !dbg !20610
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !20612

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !20619
  unreachable, !dbg !20619

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !20619
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyyNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1i_14LeafOrInternalE11search_treeyEB1F_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE9remove_kvB1s_(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1i_14LeafOrInternalE11search_treeyEB1H_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1L_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEEB1L_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEEB1L_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeyTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB3C_EEB1L_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_5
