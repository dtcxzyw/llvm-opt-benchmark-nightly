Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.14?download=true
inline.NumInlined: 112
inline.NumDeleted: 67
begin_hunk_0_@_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client:bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.af, !595, !DIExpression(), !8597)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.af)
          to label %.body.i.i.i unwind label %bb.k, !dbg !8661

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !8660
  unreachable, !dbg !8660

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i.i: ; preds = %.lr.ph52
    #dbg_value(ptr %i.af, !595, !DIExpression(), !8599)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEECslusEaBCZKLp_13quiche_client.exit.i.i.i unwind label %bb.m, !dbg !8662

bb.l:                                             ; preds = %.lr.ph54
  %i.aj = add nuw nsw i64 %.sroa.0.1.i.i.i53, 1, !dbg !8655 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %.sroa.11.0, !dbg !8655
  br i1 %i.ak, label %common.resume, label %.lr.ph54, !dbg !8655

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.ah, %bb.j ] ; 2 uses
  %i.am = icmp eq i64 %i.ag, %.sroa.11.0, !dbg !8655
  br i1 %i.am, label %common.resume, label %.lr.ph54, !dbg !8655

.lr.ph54:                                         ; preds = %.body.i.i.i, %bb.l
  %.sroa.0.1.i.i.i53 = phi i64 [ %i.aj, %bb.l ], [ %i.ag, %.body.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i53, !dbg !8655
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(88) %i.an) #16
          to label %bb.l unwind label %bb.n, !dbg !8655

common.resume:                                    ; preds = %bb.l, %.body.i.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.l ]
  resume { ptr, i32 } %common.resume.op, !dbg !8605

bb.n:                                             ; preds = %.lr.ph54
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !8655
  unreachable, !dbg !8655

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperTINtNtBI_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEEECslusEaBCZKLp_13quiche_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEECslusEaBCZKLp_13quiche_client.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEECslusEaBCZKLp_13quiche_client.exit.i.i.i.preheader
  ret void, !dbg !8663

bb.o:                                             ; preds = %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !8664
  unreachable, !dbg !8664
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtB1c_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8679 {
_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEE12slice_rangesNtNtNtB1d_3ops5range9RangeFullECslusEaBCZKLp_13quiche_client.exit:
    #dbg_value(ptr %0, !8733, !DIExpression(), !8744)
    #dbg_value(ptr %0, !8745, !DIExpression(), !8756)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8774
  %i.b = load i64, ptr %i.a, align 8, !dbg !8774, !noundef !414
    #dbg_value(ptr poison, !8758, !DIExpression(), !8690)
    #dbg_declare(ptr poison, !8764, !DIExpression(), !8691)
    #dbg_value(i64 %i.b, !8765, !DIExpression(), !8690)
  %i.c = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECslusEaBCZKLp_13quiche_client(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !8775, !noalias !8773 ; 0 uses
  ret void, !dbg !8776
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8781 {
_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeyE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECslusEaBCZKLp_13quiche_client.exit:
    #dbg_value(ptr %0, !8792, !DIExpression(), !8802)
    #dbg_value(ptr %0, !8803, !DIExpression(), !8814)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8816
  %i.b = load i64, ptr %i.a, align 8, !dbg !8816, !noundef !414
    #dbg_value(ptr poison, !1763, !DIExpression(), !8786)
    #dbg_declare(ptr poison, !1769, !DIExpression(), !8787)
    #dbg_value(i64 %i.b, !1770, !DIExpression(), !8786)
  %i.c = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECslusEaBCZKLp_13quiche_client(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !8817, !noalias !8815 ; 0 uses
  ret void, !dbg !8818
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryTyINtNtBb_6option6OptionjEENCNvMs0_B1S_NtB1S_21ConnectionIdentifiers13find_scid_seq0E0INtB7_5FnMutTuB1P_EE8call_mutCslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(80) %2) unnamed_addr #5 !dbg !8826 {
bb.a:
  %.sroa.4.i = alloca i64, align 8                ; 6 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
    #dbg_value(ptr %2, !8899, !DIExpression(), !8903)
    #dbg_value(ptr %1, !8898, !DIExpression(), !8903)
  %i.a = load ptr, ptr %1, align 8, !dbg !8990, !nonnull !414, !align !1797, !noundef !414
  %.val = load ptr, ptr %i.a, align 8, !dbg !8991, !nonnull !414, !align !1797, !noundef !414 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8904), !dbg !8991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8905), !dbg !8991
    #dbg_value(ptr poison, !8906, !DIExpression(DW_OP_deref), !8833)
    #dbg_declare(ptr poison, !8911, !DIExpression(), !8834)
    #dbg_value(ptr %2, !8909, !DIExpression(), !8833)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !8992
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i), !dbg !8992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8915), !dbg !8992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8916), !dbg !8992
    #dbg_value(ptr poison, !8918, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8844)
    #dbg_value(ptr %2, !8931, !DIExpression(), !8844)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !8993
  %.val.i.i = load ptr, ptr %i.b, align 8, !dbg !8993, !alias.scope !8933, !nonnull !414, !noundef !414
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !8993
  %.val3.i.i = load i64, ptr %i.c, align 16, !dbg !8993, !alias.scope !8933, !noundef !414 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8934), !dbg !8993
    #dbg_value(ptr poison, !8936, !DIExpression(), !8851)
    #dbg_value(ptr poison, !8949, !DIExpression(), !8852)
    #dbg_value(ptr poison, !8952, !DIExpression(), !8859)
    #dbg_value(ptr %.val, !8950, !DIExpression(), !8852)
    #dbg_value(ptr %.val, !8952, !DIExpression(), !8861)
    #dbg_value(ptr %.val.i.i, !8963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8865)
    #dbg_value(i64 %.val3.i.i, !8963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8865)
    #dbg_value(ptr undef, !8940, !DIExpression(), !8866)
  %.sroa.46.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !8994
  %.sroa.46.0.i.i.i = load i64, ptr %.sroa.46.0.in.i.i.i, align 8, !dbg !8994, !alias.scope !8934, !noalias !8973, !noundef !414
    #dbg_value(ptr poison, !8968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8865)
    #dbg_value(i64 %.sroa.46.0.i.i.i, !8968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8865)
    #dbg_value(ptr undef, !8936, !DIExpression(), !8851)
    #dbg_value(i64 %.val3.i.i, !8969, !DIExpression(), !8867)
    #dbg_value(i64 %.val3.i.i, !8974, !DIExpression(), !8871)
    #dbg_value(i64 %.val3.i.i, !8980, !DIExpression(), !8872)
  %i.d = icmp eq i64 %.val3.i.i, %.sroa.46.0.i.i.i, !dbg !8995
  br i1 %i.d, label %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, label %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0CslusEaBCZKLp_13quiche_client.exit.i, !dbg !8995

_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.a
  %.sroa.04.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !8994
  %.sroa.04.0.i.i.i = load ptr, ptr %.sroa.04.0.in.i.i.i, align 8, !dbg !8994, !alias.scope !8934, !noalias !8973, !nonnull !414, !noundef !414
    #dbg_value(ptr %.sroa.04.0.i.i.i, !8968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8865)
    #dbg_value(ptr %.val.i.i, !8978, !DIExpression(), !8871)
    #dbg_value(ptr %.sroa.04.0.i.i.i, !8979, !DIExpression(), !8871)
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull %.sroa.04.0.i.i.i, i64 %.val3.i.i), !dbg !8996, !noalias !8985
  %i.e = icmp eq i32 %bcmp.i.i.i, 0, !dbg !8996
  br i1 %i.e, label %bb.b, label %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0CslusEaBCZKLp_13quiche_client.exit.i, !dbg !8993

bb.b:                                             ; preds = %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72, !dbg !8997
  %i.g = load i64, ptr %i.f, align 8, !dbg !8997, !alias.scope !8933, !noundef !414
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !8998
  %i.i = load i64, ptr %i.h, align 16, !dbg !8998, !range !8986, !alias.scope !8933, !noundef !414
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !8998
  %i.k = load i64, ptr %i.j, align 8, !dbg !8998, !alias.scope !8933
  store i64 %i.i, ptr %.sroa.4.i, align 8, !dbg !8999, !alias.scope !8915, !noalias !8987
  br label %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0CslusEaBCZKLp_13quiche_client.exit.i, !dbg !9000

_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0CslusEaBCZKLp_13quiche_client.exit.i: ; preds = %bb.b, %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.b ], [ undef, %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i ], [ undef, %bb.a ], !dbg !8992
  %.sink2.i.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.b ], [ %.sroa.4.i, %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i ], [ %.sroa.4.i, %bb.a ]
  %.sink.i.i = phi i64 [ %i.k, %bb.b ], [ 2, %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i ], [ 2, %bb.a ]
  store i64 %.sink.i.i, ptr %.sink2.i.sroa.phi.i, align 8, !dbg !9001, !alias.scope !8915, !noalias !8987
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !8992, !range !8988, !noalias !8987, !noundef !414 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, 2, !dbg !8992
  br i1 %.not.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryTyINtNtBe_6option6OptionjEENCNvMs0_B1j_NtB1j_21ConnectionIdentifiers13find_scid_seq0E0CslusEaBCZKLp_13quiche_client.exit, label %bb.c, !dbg !9002

bb.c:                                             ; preds = %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0CslusEaBCZKLp_13quiche_client.exit.i
    #dbg_value(i64 %.sroa.0.0.i, !8910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8873)
    #dbg_value(i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, !8910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8873)
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i = load i64, ptr %.sroa.8.i, align 8, !dbg !9003, !noalias !8987
    #dbg_value(i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i, !8910, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8873)
  store i64 %.sroa.0.0.i, ptr %0, align 8, !dbg !9004, !alias.scope !8904
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9004
  store i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !9004, !alias.scope !8904
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryTyINtNtBe_6option6OptionjEENCNvMs0_B1j_NtB1j_21ConnectionIdentifiers13find_scid_seq0E0CslusEaBCZKLp_13quiche_client.exit, !dbg !9005

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryTyINtNtBe_6option6OptionjEENCNvMs0_B1j_NtB1j_21ConnectionIdentifiers13find_scid_seq0E0CslusEaBCZKLp_13quiche_client.exit: ; preds = %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0CslusEaBCZKLp_13quiche_client.exit.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9006
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.l, align 8, !dbg !9006, !alias.scope !8904
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !9005
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !dbg !9005
  ret void, !dbg !9007
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryyQNCNvMs0_B1S_NtB1S_21ConnectionIdentifiers25lowest_available_dcid_seq0E0INtB7_5FnMutTuB1P_EE8call_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 !dbg !9014 {
bb.a:
    #dbg_value(ptr %1, !9040, !DIExpression(), !9044)
    #dbg_value(ptr %0, !9039, !DIExpression(), !9044)
  %i.a = load ptr, ptr %0, align 8, !dbg !9054, !nonnull !414, !align !1797, !noundef !414
    #dbg_value(ptr %i.a, !9045, !DIExpression(DW_OP_deref), !9018)
    #dbg_declare(ptr poison, !9050, !DIExpression(), !9019)
    #dbg_value(ptr %1, !9048, !DIExpression(), !9018)
  %i.b = tail call { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtBW_21ConnectionIdentifiers25lowest_available_dcid_seq0INtB7_5FnMutTRNtBW_17ConnectionIdEntryEE8call_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %1), !dbg !9055 ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !9055
  %i.d = trunc nuw i64 %i.c to i1, !dbg !9056
  %i.e = extractvalue { i64, i64 } %i.b, 1, !dbg !9056
  %.sroa.3.0.i = select i1 %i.d, i64 %i.e, i64 undef, !dbg !9056
  %i.f = insertvalue { i64, i64 } %i.b, i64 %.sroa.3.0.i, 1, !dbg !9057
  ret { i64, i64 } %i.f, !dbg !9058
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1Z_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0INtB7_5FnMutTuB1P_EE8call_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 !dbg !9066 {
bb.a:
    #dbg_value(ptr %1, !9099, !DIExpression(), !9107)
    #dbg_value(ptr %0, !9098, !DIExpression(), !9107)
  %i.a = load ptr, ptr %0, align 8, !dbg !9126, !nonnull !414, !align !1797, !noundef !414 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !dbg !9127, !nonnull !414, !align !1797, !noundef !414
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !9127
  %.val2 = load ptr, ptr %i.b, align 8, !dbg !9127, !nonnull !414, !noundef !414 ; 2 uses
  %.val3 = load i64, ptr %1, align 8, !dbg !9127, !noundef !414
    #dbg_value(ptr poison, !9108, !DIExpression(DW_OP_deref), !9069)
    #dbg_value(ptr poison, !9112, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !9069)
    #dbg_declare(ptr poison, !9113, !DIExpression(), !9070)
    #dbg_value(i64 %.val3, !9111, !DIExpression(DW_OP_LLVM_implicit_pointer), !9069)
    #dbg_value(ptr poison, !9120, !DIExpression(DW_OP_deref, DW_OP_deref), !9073)
    #dbg_value(i64 %.val3, !9124, !DIExpression(DW_OP_LLVM_implicit_pointer), !9073)
  %i.c = load i64, ptr %.val, align 8, !dbg !9128, !noundef !414
  %i.d = icmp eq i64 %.val3, %i.c, !dbg !9129
  %i.e = load i64, ptr %.val2, align 8, !dbg !9130, !noundef !414 ; 2 uses
  br i1 %i.d, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1q_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0CslusEaBCZKLp_13quiche_client.exit, label %bb.b, !dbg !9131

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.e, 1, !dbg !9132
  store i64 %i.f, ptr %.val2, align 8, !dbg !9132
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1q_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0CslusEaBCZKLp_13quiche_client.exit, !dbg !9133

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1q_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0CslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ], !dbg !9130
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !9134
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1, !dbg !9134
  ret { i64, i64 } %i.h, !dbg !9135
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9137 {
bb.a:
    #dbg_value(ptr %0, !9146, !DIExpression(), !9151)
    #dbg_value(ptr %1, !9147, !DIExpression(), !9151)
  %i.a = load ptr, ptr %0, align 8, !dbg !9152, !nonnull !414, !align !1797, !noundef !414
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9153
  ret i1 %i.b, !dbg !9154
}

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECslusEaBCZKLp_13quiche_client(i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECslusEaBCZKLp_13quiche_client(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtCsfYSUKQ7VyeN_4zmij7privatedNtB4_6Sealed20write_to_zmij_buffer(double noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtCsfYSUKQ7VyeN_4zmij7privatefNtB2_6Sealed20write_to_zmij_buffer(float noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtBW_21ConnectionIdentifiers25lowest_available_dcid_seq0INtB7_5FnMutTRNtBW_17ConnectionIdEntryEE8call_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE4growCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE4growB19_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEE8grow_oneCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeyE4growCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { noinline }
attributes #18 = { nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !310, producer: "clang LLVM (rustc version 1.100.0-nightly (bff8e12ff 2026-08-26))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !399, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DefaultBufFactory", scope: !430, file: !311, align: 8, flags: DIFlagPublic, elements: !414, identifier: "7a38d4827b2441e55d5b4195eeacb41a")
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<quiche::buffers::DefaultBufFactory>", scope: !413, file: !311, align: 8, flags: DIFlagPublic, elements: !414, templateParams: !429, identifier: "a887996125acdf95fed0c7543f3f55fe")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !438, file: !311, align: 8, flags: DIFlagPublic, elements: !414, identifier: "8460d4266e4993ec9914e3baad45ea18")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Align8<usize>", scope: !453, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !455, templateParams: !457, identifier: "28736be91cf5ef198418713dba1ba10")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::sync::atomic::private::Align8<usize>>", scope: !450, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !452, templateParams: !459, identifier: "745865dbc2608c21dab2fae63a29842b")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic<usize>", scope: !321, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !449, templateParams: !457, identifier: "ab6d44a665e759882233ba7d40d0d615")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<[u8]>", scope: !433, file: !311, size: 128, align: 64, flags: DIFlagPrivate, elements: !447, templateParams: !461, identifier: "ea49aa8e8541aa77541b0ced74d44928")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<[u8]>>", scope: !413, file: !311, align: 8, flags: DIFlagPublic, elements: !414, templateParams: !440, identifier: "aa69136b9d1a44ff8098afdc125a592f")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const alloc::sync::ArcInner<[u8]>", file: !311, size: 128, align: 64, elements: !469, templateParams: !414, identifier: "d6cc1ba07d90906d95a85048dd87f45")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<[u8]>>", scope: !463, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !465, templateParams: !440, identifier: "4238ec4cf2f671dcf5b1c22c68b73588")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<[u8], alloc::alloc::Global>", scope: !433, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !437, templateParams: !471, identifier: "a2ac5a0f3d7be3e8d936307f2edbbbaf")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DefaultBuf", scope: !430, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !432, templateParams: !414, identifier: "61f12b359a5e38df53b6b641a3704e8e")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RangeBuf<quiche::buffers::DefaultBufFactory>", scope: !418, file: !311, size: 448, align: 64, flags: DIFlagPublic, elements: !427, templateParams: !473, identifier: "6f489288918f1a30885f679fd1172148")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<quiche::range_buf::RangeBuf<quiche::buffers::DefaultBufFactory>>", scope: !413, file: !311, align: 8, flags: DIFlagPublic, elements: !414, templateParams: !416, identifier: "9304169f83b2fe1c762dbb28a5fd529c")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UsizeNoHighBit", scope: !479, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !481, templateParams: !414, identifier: "de2a7f83086bb66b1d84717ca15ed153")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !413, file: !311, align: 8, flags: DIFlagPublic, elements: !414, templateParams: !487, identifier: "146b3aeda1c45f24e2166b366592181")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !463, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !490, templateParams: !487, identifier: "c31d4ef568cfbefd99aa13b8883a7b70")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !482, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !485, templateParams: !487, identifier: "29b6b6df28c88bc2c540a8e9e6174ec0")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVecInner<alloc::alloc::Global>", scope: !409, file: !311, size: 128, align: 64, flags: DIFlagPrivate, elements: !477, templateParams: !491, identifier: "df99d7c016703de7881c5c4f5cc3291d")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<quiche::range_buf::RangeBuf<quiche::buffers::DefaultBufFactory>, alloc::alloc::Global>", scope: !409, file: !311, size: 128, align: 64, flags: DIFlagProtected, elements: !412, templateParams: !492, identifier: "a28834dee7fc6f0fbb5744c66b61ec40")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WrappedIndex", scope: !493, file: !311, size: 64, align: 64, flags: DIFlagProtected, elements: !495, templateParams: !414, identifier: "bbf55ef5168a8ebf95fef81f70fd826a")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VecDeque<quiche::range_buf::RangeBuf<quiche::buffers::DefaultBufFactory>, alloc::alloc::Global>", scope: !403, file: !311, size: 256, align: 64, flags: DIFlagPublic, elements: !408, templateParams: !492, identifier: "4792cffc7ece5c2edb03a008833fe922")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !498, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !501, templateParams: !503, identifier: "3d5478a5947dd4b5314bb26ed19be6")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(core::ops::range::Range<usize>, core::ops::range::Range<usize>)", file: !311, size: 256, align: 64, elements: !506, templateParams: !414, identifier: "83501aab17a24cbb6287726c6afe9bd0")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<u8>", scope: !553, file: !311, size: 8, align: 8, flags: DIFlagPublic, elements: !555, templateParams: !557, identifier: "9b65eac3a8001b2bbef3b05e410da404")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<u8>", scope: !550, file: !311, size: 8, align: 8, flags: DIFlagPublic, elements: !552, templateParams: !487, identifier: "6f65c7e7a1ce48e25d4c5e27ef3e21b4")
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<u8>", scope: !545, file: !311, size: 8, align: 8, elements: !549, templateParams: !487, identifier: "e6ac4f3691529f9f850ab6aa8d4344a2")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Buffer", scope: !539, file: !311, size: 192, align: 8, flags: DIFlagPublic, elements: !544, templateParams: !414, identifier: "60e9dd33db73cd4d26d7c10413b00952")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !311, size: 128, align: 64, elements: !562, templateParams: !414, identifier: "6fc9dd7daffb1f73292744aea0793200")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [u8]", file: !311, size: 128, align: 64, elements: !566, templateParams: !414, identifier: "3e3ad86cd85de990a3ba2615930c5e50")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<u8, alloc::alloc::Global>", scope: !409, file: !311, size: 128, align: 64, flags: DIFlagProtected, elements: !588, templateParams: !589, identifier: "812d0db64fea1b7464457f30f154f4")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<u8, alloc::alloc::Global>", scope: !582, file: !311, size: 192, align: 64, flags: DIFlagPublic, elements: !585, templateParams: !589, identifier: "1bd6b564d1f00359fe3d0a71aed88d28")
!33 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client", scope: !462, file: !578, line: 848, type: !581, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !593, retainedNodes: !591)
!34 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECslusEaBCZKLp_13quiche_client", scope: !462, file: !578, line: 848, type: !597, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !600, retainedNodes: !598)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [alloc::vec::Vec<u8, alloc::alloc::Global>]", file: !311, size: 128, align: 64, elements: !609, templateParams: !414, identifier: "e68061e033e92426d87508cf45a10ac8")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Dropper<alloc::vec::Vec<u8, alloc::alloc::Global>>", scope: !403, file: !311, size: 128, align: 64, flags: DIFlagPrivate, elements: !605, templateParams: !593, identifier: "f563219539174d1c9d0e98d9a465ce7d")
!37 = distinct !DISubprogram(name: "drop_glue<alloc::collections::vec_deque::Dropper<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtBI_3vec3VechEEECslusEaBCZKLp_13quiche_client", scope: !462, file: !578, line: 848, type: !603, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !613, retainedNodes: !611)
!38 = distinct !DISubprogram(name: "drop<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB4_7DropperINtNtB8_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client", scope: !615, file: !400, line: 141, type: !603, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !593, retainedNodes: !616)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [alloc::vec::Vec<u8, alloc::alloc::Global>]", file: !311, size: 128, align: 64, elements: !622, templateParams: !414, identifier: "5ce365f7a5d5564fca6d5743fc6430cd")
!40 = distinct !DISubprogram(name: "drop_in_place<[alloc::vec::Vec<u8, alloc::alloc::Global>]>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client", scope: !462, file: !578, line: 831, type: !619, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !626, retainedNodes: !623)
!41 = distinct !DISubprogram(name: "drop_glue<[alloc::vec::Vec<u8, alloc::alloc::Global>]>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client", scope: !462, file: !578, line: 848, type: !629, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !626, retainedNodes: !630)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DatagramHeader", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !671, templateParams: !414, identifier: "f03dc03cd703277ac6ff5ae75b24fb69")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Datagram", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !673, templateParams: !414, identifier: "a84a018ee17c95d25b98e594f1df427a")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HandshakeDone", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !414, identifier: "969738fe11e21cb9cf9fd8cc79127bfe")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ApplicationClose", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !676, templateParams: !414, identifier: "e8652ca17549ea874f8ef6cd0a212331")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionClose", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !680, templateParams: !414, identifier: "7511be95842fb24160481d1191367207")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PathResponse", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !685, templateParams: !414, identifier: "f98bd313a58006ec605c5f191f3e06a1")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PathChallenge", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !687, templateParams: !414, identifier: "f104253dc3afd6a8fd9d35c438f27bd3")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RetireConnectionId", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !689, templateParams: !414, identifier: "8660b06baf2e83a5ab4a0964426a4443")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NewConnectionId", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !697, templateParams: !414, identifier: "e300db7a7b077bd0392f4d33d8f381fe")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamsBlockedUni", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !699, templateParams: !414, identifier: "8bc7101f9a14dc1496e1b04afc0c2257")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamsBlockedBidi", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !701, templateParams: !414, identifier: "a602f362cd8308e4fb0eb2a79414b9a7")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamDataBlocked", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !704, templateParams: !414, identifier: "1982c9ea83d4c92ba3404fe29172b12")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DataBlocked", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !706, templateParams: !414, identifier: "18f0ea0c4d875ad6a951373d55807e7c")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxStreamsUni", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !708, templateParams: !414, identifier: "3179e22a2d9d53bac86221b91de959ed")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxStreamsBidi", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !710, templateParams: !414, identifier: "d700b787a639a340ec0b94ffc8b61190")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxStreamData", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !713, templateParams: !414, identifier: "874119afbf9d4d65ddc541642fc49c4a")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxData", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !715, templateParams: !414, identifier: "24405ead32ad82de9bd40724a54a7941")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamHeader", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !720, templateParams: !414, identifier: "707229b558276bf2f279ead0af83d7bb")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Stream", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !723, templateParams: !414, identifier: "7f4841a3210baa9a719b9f6fd943de4a")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NewToken", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !725, templateParams: !414, identifier: "8e96336ac044a9f560856bc31e67862e")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CryptoHeader", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !728, templateParams: !414, identifier: "7da03bcbe7867caacb9b990e0231bd3b")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Crypto", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !730, templateParams: !414, identifier: "5a64b63ba4cacc94139b4418f9c27b42")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StopSending", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !733, templateParams: !414, identifier: "7686c198437378882973c2be11ccf645")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ResetStream", scope: !127, file: !311, size: 1024, align: 64, flags: DIFlagPublic, elements: !737, templateParams: !414, identifier: "df62acefeb223e38c57f27b26edd7982")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EcnCounts", scope: !640, file: !311, size: 192, align: 64, flags: DIFlagPublic, elements: !752, templateParams: !414, identifier: "5b0d7506a7232fc873b895046c90222")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !70, file: !311, size: 256, align: 64, flags: DIFlagPublic, elements: !748, templateParams: !754, identifier: "2db267f0356338bd97a51d4570857c28")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !70, file: !311, size: 256, align: 64, flags: DIFlagPublic, elements: !414, templateParams: !754, identifier: "48e7ffb048d5e03f94adf21443c6d530")
!69 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !70, file: !311, size: 256, align: 64, elements: !746, templateParams: !414, identifier: "840c08323a0e60c1a519736c96eaa30a", discriminator: !755)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quiche::frame::EcnCounts>", scope: !742, file: !311, size: 256, align: 64, flags: DIFlagPublic, elements: !743, templateParams: !414, identifier: "ef0f7030099ee3c111f4b866fbe947cb")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, u64)", file: !311, size: 128, align: 64, elements: !778, templateParams: !414, identifier: "7891b4bdc2158a166fd4174a50224f9b")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::boxed::Box<(u64, u64), alloc::alloc::Global>>", scope: !413, file: !311, align: 8, flags: DIFlagPublic, elements: !414, templateParams: !775, identifier: "b50811a61800d865b56299147f17ad0b")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<alloc::alloc::Global>", scope: !553, file: !311, align: 8, flags: DIFlagPublic, elements: !782, templateParams: !784, identifier: "aeb998b9044113d213d68e2b5f2151f2")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<alloc::alloc::Global>", scope: !550, file: !311, align: 8, flags: DIFlagPublic, elements: !780, templateParams: !786, identifier: "63f4be1962d2711891047ed193000090")
!75 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !76, file: !311, align: 8, elements: !414, identifier: "ad11c9ac5c3931acf6732117829cb9e8")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LeafOrInternal", scope: !803, file: !311, align: 8, flags: DIFlagProtected, elements: !804, templateParams: !414, identifier: "d462502a0bb968bca6215a2517f1bea3")
!77 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !78, file: !311, align: 8, elements: !414, identifier: "5ae67affbaaf5eeb6a0fd25b7ea247a9")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Owned", scope: !803, file: !311, align: 8, flags: DIFlagProtected, elements: !805, templateParams: !414, identifier: "8b166052339404444934578d76de4c")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(alloc::collections::btree::node::marker::Owned, alloc::collections::btree::node::marker::LeafOrInternal)", file: !311, align: 8, elements: !802, templateParams: !414, identifier: "685595690ad0133d972ab9b693d3f31d")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(alloc::collections::btree::node::marker::Owned, alloc::collections::btree::node::marker::LeafOrInternal)>", scope: !413, file: !311, align: 8, flags: DIFlagPublic, elements: !414, templateParams: !799, identifier: "8191e563ef443da4dca111e1dbf6609")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<u64>", scope: !553, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !825, templateParams: !827, identifier: "30d6166dcab86cc430085188eac88e3e")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<u64>", scope: !550, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !823, templateParams: !829, identifier: "86b0ff64b0fb9f424b550fe443a6cfa9")
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<u64>", scope: !545, file: !311, size: 64, align: 64, elements: !821, templateParams: !829, identifier: "792680abb7bfec551250e577606fd40c")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<u16>", scope: !553, file: !311, size: 16, align: 16, flags: DIFlagPublic, elements: !836, templateParams: !838, identifier: "e6094661a801bf11f90a2796f2ed8bdc")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<u16>", scope: !550, file: !311, size: 16, align: 16, flags: DIFlagPublic, elements: !834, templateParams: !840, identifier: "a1c6077f7518dde0568e74b5cd1b0aba")
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<u16>", scope: !545, file: !311, size: 16, align: 16, elements: !832, templateParams: !840, identifier: "501f35735ac3eaf4774b56ef76b12be")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<u64, u64>>>", scope: !553, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !862, templateParams: !864, identifier: "bb50636250af4953c5a189e79318f6aa")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<u64, u64>>>", scope: !550, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !860, templateParams: !866, identifier: "7f679898e1596809dbbebd63e4730a48")
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!8869 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCslusEaBCZKLp_13quiche_client", scope: !8975, file: !8962, line: 151, type: !8977, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8984, retainedNodes: !8981)
!8870 = distinct !DILocation(line: 24, column: 22, scope: !8862, inlinedAt: !8864)
!8871 = distinct !DILocation(line: 0, scope: !8869, inlinedAt: !8870)
!8872 = distinct !DILocation(line: 0, scope: !8868, inlinedAt: !8870)
!8873 = distinct !DILocation(line: 0, scope: !8830, inlinedAt: !8832)
!8874 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::find_map::check::{closure_env#0}<&quiche::cid::ConnectionIdEntry, (u64, core::option::Option<usize>), quiche::cid::{impl#2}::find_scid_seq::{closure_env#0}>", baseType: !8820, size: 64, align: 64, dwarfAddressSpace: 0)
!8875 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut &mut core::iter::traits::iterator::Iterator::find_map::check::{closure_env#0}<&quiche::cid::ConnectionIdEntry, (u64, core::option::Option<usize>), quiche::cid::{impl#2}::find_scid_seq::{closure_env#0}>", baseType: !8874, size: 64, align: 64, dwarfAddressSpace: 0)
!8876 = !{!8825, !8875, !546, !1783}
!8877 = !DISubroutineType(types: !8876)
!8878 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !8820, file: !311, baseType: !8819, size: 64, align: 64)
!8879 = !{!8878}
!8880 = !DINamespace(name: "find_scid_seq", scope: !1790)
!8881 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&quiche::packet::ConnectionId", baseType: !221, size: 64, align: 64, dwarfAddressSpace: 0)
!8882 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__scid", scope: !8819, file: !311, baseType: !8881, size: 64, align: 64)
!8883 = !{!8882}
!8884 = !{!8824}
!8885 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !8824, file: !311, baseType: !8823, size: 192, align: 64, extraData: i64 2)
!8886 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !8824, file: !311, baseType: !8822, size: 192, align: 64)
!8887 = !{!8885, !8886}
!8888 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8822, file: !311, baseType: !8821, size: 192, align: 64, flags: DIFlagPublic)
!8889 = !{!8888}
!8890 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8821, file: !311, baseType: !332, size: 64, align: 64)
!8891 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !8821, file: !311, baseType: !123, size: 128, align: 64, offset: 64)
!8892 = !{!8890, !8891}
!8893 = !DITemplateTypeParameter(name: "B", type: !8821)
!8894 = !{!8893, !1792}
!8895 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8823, file: !311, baseType: !546, align: 8, flags: DIFlagPublic)
!8896 = !{!8895}
!8897 = !DIDerivedType(tag: DW_TAG_member, scope: !8825, file: !311, baseType: !332, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!8898 = !DILocalVariable(name: "self", arg: 1, scope: !8826, file: !1377, line: 297, type: !8875)
!8899 = !DILocalVariable(name: "args", arg: 2, scope: !8826, file: !1377, line: 297, type: !302)
!8900 = !{!8898, !8899}
!8901 = !DITemplateTypeParameter(name: "F", type: !8820)
!8902 = !{!1796, !8901}
!8903 = !DILocation(line: 0, scope: !8826)
!8904 = !{!8828}
!8905 = !{!8829}
!8906 = !DILocalVariable(name: "f", scope: !8831, file: !1799, line: 2993, type: !8819, align: 64)
!8907 = !{!8825, !8874, !546, !1783}
!8908 = !DISubroutineType(cc: DW_CC_nocall, types: !8907)
!8909 = !DILocalVariable(name: "x", arg: 3, scope: !8831, file: !1799, line: 2994, type: !1783)
!8910 = !DILocalVariable(name: "x", scope: !8830, file: !1799, line: 2995, type: !8821, align: 64)
!8911 = !DILocalVariable(arg: 2, scope: !8831, file: !1799, line: 2994, type: !546)
!8912 = !{!8909, !8906, !8910, !8911}
!8913 = !DITemplateTypeParameter(name: "impl FnMut(T) -> Option<B>", type: !8819)
!8914 = !{!1800, !8893, !8913}
!8915 = !{!8836}
!8916 = !{!8837}
!8918 = !DILocalVariable(name: "scid", scope: !8842, file: !1801, line: 678, type: !221, align: 64)
!8919 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut quiche::cid::{impl#2}::find_scid_seq::{closure_env#0}", baseType: !8819, size: 64, align: 64, dwarfAddressSpace: 0)
!8920 = !{!8841, !8919, !1783}
!8921 = !DISubroutineType(cc: DW_CC_nocall, types: !8920)
!8922 = !{!8840}
!8923 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !8840, file: !311, baseType: !8839, size: 192, align: 64, extraData: i64 2)
!8924 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !8840, file: !311, baseType: !8838, size: 192, align: 64)
!8925 = !{!8923, !8924}
!8926 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8838, file: !311, baseType: !8821, size: 192, align: 64, flags: DIFlagPublic)
!8927 = !{!8926}
!8928 = !DITemplateTypeParameter(name: "T", type: !8821)
!8929 = !{!8928}
!8930 = !DIDerivedType(tag: DW_TAG_member, scope: !8841, file: !311, baseType: !332, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!8931 = !DILocalVariable(name: "e", arg: 2, scope: !8842, file: !1801, line: 680, type: !1783)
!8932 = !{!8931, !8918}
!8933 = !{!8837, !8829}
!8934 = !{!8846}
!8935 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&[u8]", baseType: !216, size: 64, align: 64, dwarfAddressSpace: 0)
!8936 = !DILocalVariable(name: "other", arg: 2, scope: !8847, file: !1442, line: 2398, type: !8935)
!8937 = !DINamespace(name: "{impl#9}", scope: !1677)
!8938 = !{!424, !8935, !8935}
!8939 = !DISubroutineType(types: !8938)
!8940 = !DILocalVariable(name: "self", arg: 1, scope: !8847, file: !1442, line: 2398, type: !8935)
!8941 = !{!8940, !8936}
!8942 = !DITemplateTypeParameter(name: "A", type: !445)
!8943 = !DITemplateTypeParameter(name: "B", type: !445)
!8944 = !{!8942, !8943}
!8945 = !DIFile(filename: "quiche/src/packet.rs", directory: "/opt-bench/work/quiche-rs/quiche", checksumkind: CSK_MD5, checksum: "a1f1c98abb0c018a8f44be0d8ed8197a")
!8946 = !DINamespace(name: "{impl#10}", scope: !1325)
!8947 = !{!424, !8881, !8881}
!8948 = !DISubroutineType(cc: DW_CC_nocall, types: !8947)
!8949 = !DILocalVariable(name: "self", arg: 1, scope: !8848, file: !8945, line: 239, type: !8881)
!8950 = !DILocalVariable(name: "other", arg: 2, scope: !8848, file: !8945, line: 239, type: !8881)
!8951 = !{!8949, !8950}
!8952 = !DILocalVariable(name: "self", arg: 1, scope: !8857, file: !8945, line: 248, type: !8881)
!8953 = !DINamespace(name: "{impl#12}", scope: !1325)
!8954 = !{!216, !8881}
!8955 = !DISubroutineType(types: !8954)
!8956 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<u8, alloc::alloc::Global>", baseType: !32, size: 64, align: 64, dwarfAddressSpace: 0)
!8957 = !DILocalVariable(name: "v", scope: !8856, file: !8945, line: 250, type: !8956, align: 64)
!8958 = !DILocalVariable(name: "v", scope: !8855, file: !8945, line: 251, type: !8935, align: 64)
!8959 = !DILocalVariable(name: "v", scope: !8854, file: !8945, line: 250, type: !8956, align: 64)
!8960 = !DILocalVariable(name: "v", scope: !8853, file: !8945, line: 251, type: !8935, align: 64)
!8961 = !{!8952, !8957, !8958, !8959, !8960}
!8962 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1d6518c072587d593bede5b5773a8b8b")
!8963 = !DILocalVariable(name: "self", arg: 1, scope: !8863, file: !8962, line: 19, type: !216)
!8964 = !DINamespace(name: "cmp", scope: !1573)
!8965 = !DINamespace(name: "{impl#0}", scope: !8964)
!8966 = !{!424, !216, !216}
!8967 = !DISubroutineType(types: !8966)
!8968 = !DILocalVariable(name: "other", arg: 2, scope: !8863, file: !8962, line: 19, type: !216)
!8969 = !DILocalVariable(name: "len", scope: !8862, file: !8962, line: 20, type: !405, align: 64)
!8970 = !{!8963, !8968, !8969}
!8971 = !DITemplateTypeParameter(name: "U", type: !322)
!8972 = !{!486, !8971}
!8973 = !{!8836, !8837, !8828, !8829}
!8974 = !DILocalVariable(name: "len", arg: 3, scope: !8869, file: !8962, line: 151, type: !405)
!8975 = !DINamespace(name: "{impl#5}", scope: !8964)
!8976 = !{!424, !488, !488, !405}
!8977 = !DISubroutineType(types: !8976)
!8978 = !DILocalVariable(name: "lhs", arg: 1, scope: !8869, file: !8962, line: 151, type: !488)
!8979 = !DILocalVariable(name: "rhs", arg: 2, scope: !8869, file: !8962, line: 151, type: !488)
!8980 = !DILocalVariable(name: "size", scope: !8868, file: !8962, line: 156, type: !405, align: 64)
!8981 = !{!8978, !8979, !8974, !8980}
!8982 = !DITemplateTypeParameter(name: "A", type: !322)
!8983 = !DITemplateTypeParameter(name: "B", type: !322)
!8984 = !{!8982, !8983}
!8985 = !{!8846, !8836, !8837, !8828, !8829}
!8986 = !{i64 0, i64 2}
!8987 = !{!8828, !8829}
!8988 = !{i64 0, i64 3}
!8990 = !DILocation(line: 298, column: 13, scope: !8826)
!8991 = !DILocation(line: 298, column: 21, scope: !8826)
!8992 = !DILocation(line: 2994, column: 32, scope: !8831, inlinedAt: !8832)
!8993 = !DILocation(line: 681, column: 16, scope: !8842, inlinedAt: !8843)
!8994 = !DILocation(line: 0, scope: !8857, inlinedAt: !8860)
!8995 = !DILocation(line: 21, column: 12, scope: !8862, inlinedAt: !8864)
!8996 = !DILocation(line: 157, column: 13, scope: !8868, inlinedAt: !8870)
!8997 = !DILocation(line: 682, column: 23, scope: !8842, inlinedAt: !8843)
!8998 = !DILocation(line: 682, column: 30, scope: !8842, inlinedAt: !8843)
!8999 = !DILocation(line: 682, column: 17, scope: !8842, inlinedAt: !8843)
!9000 = !DILocation(line: 681, column: 13, scope: !8842, inlinedAt: !8843)
!9001 = !DILocation(line: 0, scope: !8842, inlinedAt: !8843)
!9002 = !DILocation(line: 2994, column: 26, scope: !8831, inlinedAt: !8832)
!9003 = !DILocation(line: 2995, column: 22, scope: !8831, inlinedAt: !8832)
!9004 = !DILocation(line: 2995, column: 28, scope: !8830, inlinedAt: !8832)
!9005 = !DILocation(line: 2997, column: 13, scope: !8831, inlinedAt: !8832)
!9006 = !DILocation(line: 0, scope: !8831, inlinedAt: !8832)
!9007 = !DILocation(line: 299, column: 10, scope: !8826)
!9008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !9027, file: !311, align: 8, elements: !414, identifier: "e68d59046b8700acf134cdf242689af6")
!9009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&quiche::cid::ConnectionIdEntry, u64, &mut quiche::cid::{impl#2}::lowest_available_dcid_seq::{closure_env#0}>", scope: !1789, file: !311, size: 64, align: 64, elements: !9026, templateParams: !414, identifier: "5eafb27c8cdcd7b6d2c4c74d21b72b33")
!9010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !9013, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !9033, templateParams: !9035, identifier: "554066a362ce46ed8b945b9f8b8e015f")
!9011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !9013, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !9037, templateParams: !9035, identifier: "4a5a9249dd5b63d095d28c9ad5bb3943")
!9012 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !9013, file: !311, size: 128, align: 64, elements: !9031, templateParams: !414, identifier: "5052de534664dcb8a66d7c5eb1bd6ad5", discriminator: !9038)
!9013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<u64, ()>", scope: !1791, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !9028, templateParams: !414, identifier: "8c48d9b3af86f355f25d0a18c4c0e9eb")
!9014 = distinct !DISubprogram(name: "call_mut<((), &quiche::cid::ConnectionIdEntry), core::iter::traits::iterator::Iterator::find_map::check::{closure_env#0}<&quiche::cid::ConnectionIdEntry, u64, &mut quiche::cid::{impl#2}::lowest_available_dcid_seq::{closure_env#0}>>", linkageName: "_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryyQNCNvMs0_B1S_NtB1S_21ConnectionIdentifiers25lowest_available_dcid_seq0E0INtB7_5FnMutTuB1P_EE8call_mutCslusEaBCZKLp_13quiche_client", scope: !1782, file: !1377, line: 297, type: !9023, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !9043, retainedNodes: !9041)
!9015 = distinct !DILexicalBlock(scope: !9016, file: !1799, line: 2995, column: 17)
!9016 = distinct !DISubprogram(name: "{closure#0}<&quiche::cid::ConnectionIdEntry, u64, &mut quiche::cid::{impl#2}::lowest_available_dcid_seq::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryyQNCNvMs0_B1j_NtB1j_21ConnectionIdentifiers25lowest_available_dcid_seq0E0CslusEaBCZKLp_13quiche_client", scope: !1789, file: !1799, line: 2994, type: !9047, scopeLine: 2994, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !9053, retainedNodes: !9051)
!9017 = distinct !DILocation(line: 298, column: 21, scope: !9014)
!9018 = distinct !DILocation(line: 0, scope: !9016, inlinedAt: !9017)
!9019 = distinct !DILocation(line: 2994, column: 19, scope: !9016, inlinedAt: !9017)
!9020 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::find_map::check::{closure_env#0}<&quiche::cid::ConnectionIdEntry, u64, &mut quiche::cid::{impl#2}::lowest_available_dcid_seq::{closure_env#0}>", baseType: !9009, size: 64, align: 64, dwarfAddressSpace: 0)
!9021 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut &mut core::iter::traits::iterator::Iterator::find_map::check::{closure_env#0}<&quiche::cid::ConnectionIdEntry, u64, &mut quiche::cid::{impl#2}::lowest_available_dcid_seq::{closure_env#0}>", baseType: !9020, size: 64, align: 64, dwarfAddressSpace: 0)
!9022 = !{!9013, !9021, !546, !1783}
!9023 = !DISubroutineType(types: !9022)
!9024 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut quiche::cid::{impl#2}::lowest_available_dcid_seq::{closure_env#0}", baseType: !9008, size: 64, align: 64, dwarfAddressSpace: 0)
!9025 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !9009, file: !311, baseType: !9024, size: 64, align: 64)
!9026 = !{!9025}
!9027 = !DINamespace(name: "lowest_available_dcid_seq", scope: !1790)
!9028 = !{!9012}
!9029 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !9012, file: !311, baseType: !9011, size: 128, align: 64, extraData: i64 0)
!9030 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !9012, file: !311, baseType: !9010, size: 128, align: 64, extraData: i64 1)
!9031 = !{!9029, !9030}
!9032 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9010, file: !311, baseType: !332, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!9033 = !{!9032}
!9034 = !DITemplateTypeParameter(name: "B", type: !332)
!9035 = !{!9034, !1792}
!9036 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9011, file: !311, baseType: !546, align: 8, offset: 64, flags: DIFlagPublic)
!9037 = !{!9036}
!9038 = !DIDerivedType(tag: DW_TAG_member, scope: !9013, file: !311, baseType: !332, size: 64, align: 64, flags: DIFlagArtificial)
!9039 = !DILocalVariable(name: "self", arg: 1, scope: !9014, file: !1377, line: 297, type: !9021)
!9040 = !DILocalVariable(name: "args", arg: 2, scope: !9014, file: !1377, line: 297, type: !302)
!9041 = !{!9039, !9040}
!9042 = !DITemplateTypeParameter(name: "F", type: !9009)
!9043 = !{!1796, !9042}
!9044 = !DILocation(line: 0, scope: !9014)
!9045 = !DILocalVariable(name: "f", scope: !9016, file: !1799, line: 2993, type: !9024, align: 64)
!9046 = !{!9013, !9020, !546, !1783}
!9047 = !DISubroutineType(types: !9046)
!9048 = !DILocalVariable(name: "x", arg: 3, scope: !9016, file: !1799, line: 2994, type: !1783)
!9049 = !DILocalVariable(name: "x", scope: !9015, file: !1799, line: 2995, type: !332, align: 64)
!9050 = !DILocalVariable(arg: 2, scope: !9016, file: !1799, line: 2994, type: !546)
!9051 = !{!9048, !9045, !9049, !9050}
!9052 = !DITemplateTypeParameter(name: "impl FnMut(T) -> Option<B>", type: !9024)
!9053 = !{!1800, !9034, !9052}
!9054 = !DILocation(line: 298, column: 13, scope: !9014)
!9055 = !DILocation(line: 2994, column: 32, scope: !9016, inlinedAt: !9017)
!9056 = !DILocation(line: 2994, column: 26, scope: !9016, inlinedAt: !9017)
!9057 = !DILocation(line: 2997, column: 14, scope: !9016, inlinedAt: !9017)
!9058 = !DILocation(line: 299, column: 10, scope: !9014)
!9059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !9084, file: !311, size: 64, align: 64, elements: !9086, templateParams: !414, identifier: "6fbcdc0820f8a82d756ac68cda5c23d0")
!9060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&u64, quiche::cid::{impl#2}::mark_advertise_new_scid_seq::{closure_env#0}>", scope: !9079, file: !311, size: 128, align: 64, elements: !9083, templateParams: !414, identifier: "49b6655cf6aace957f497cc5e4ec18c9")
!9061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !9064, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !9092, templateParams: !9094, identifier: "54ef86fda17b05b35914a518f8c77877")
!9062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !9064, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !9096, templateParams: !9094, identifier: "c304e539087f7459c5bcd95700a7382")
!9063 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !9064, file: !311, size: 128, align: 64, elements: !9090, templateParams: !414, identifier: "f83098265b70d13c7887e82930d5f00c", discriminator: !9097)
!9064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<usize, ()>", scope: !1791, file: !311, size: 128, align: 64, flags: DIFlagPublic, elements: !9087, templateParams: !414, identifier: "fd5a23dbd5a27454d719078d4fe2e83d")
!9065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "((), &u64)", file: !311, size: 64, align: 64, elements: !9103, templateParams: !414, identifier: "e2bd1b61ba2f9074e416985e9314aeb5")
!9066 = distinct !DISubprogram(name: "call_mut<((), &u64), core::iter::traits::iterator::Iterator::position::check::{closure_env#0}<&u64, quiche::cid::{impl#2}::mark_advertise_new_scid_seq::{closure_env#0}>>", linkageName: "_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1Z_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0INtB7_5FnMutTuB1P_EE8call_mutCslusEaBCZKLp_13quiche_client", scope: !1782, file: !1377, line: 297, type: !9077, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !9106, retainedNodes: !9100)
!9067 = distinct !DISubprogram(name: "{closure#0}<&u64, quiche::cid::{impl#2}::mark_advertise_new_scid_seq::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1q_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0CslusEaBCZKLp_13quiche_client", scope: !9079, file: !1799, line: 3141, type: !9110, scopeLine: 3141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !9116, retainedNodes: !9114)
!9068 = distinct !DILocation(line: 298, column: 21, scope: !9066)
!9069 = distinct !DILocation(line: 0, scope: !9067, inlinedAt: !9068)
!9070 = distinct !DILocation(line: 3141, column: 19, scope: !9067, inlinedAt: !9068)
!9071 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers27mark_advertise_new_scid_seq0CslusEaBCZKLp_13quiche_client", scope: !9084, file: !1801, line: 741, type: !9123, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !414, retainedNodes: !9125)
!9072 = distinct !DILocation(line: 3142, column: 20, scope: !9067, inlinedAt: !9068)
!9073 = distinct !DILocation(line: 0, scope: !9071, inlinedAt: !9072)
!9074 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::position::check::{closure_env#0}<&u64, quiche::cid::{impl#2}::mark_advertise_new_scid_seq::{closure_env#0}>", baseType: !9060, size: 64, align: 64, dwarfAddressSpace: 0)
!9075 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut &mut core::iter::traits::iterator::Iterator::position::check::{closure_env#0}<&u64, quiche::cid::{impl#2}::mark_advertise_new_scid_seq::{closure_env#0}>", baseType: !9074, size: 64, align: 64, dwarfAddressSpace: 0)
!9076 = !{!9064, !9075, !546, !1760}
!9077 = !DISubroutineType(types: !9076)
!9078 = !DINamespace(name: "position", scope: !1787)
!9079 = !DINamespace(name: "check", scope: !9078)
!9080 = !DIDerivedType(tag: DW_TAG_member, name: "predicate", scope: !9060, file: !311, baseType: !9059, size: 64, align: 64)
!9081 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !405, size: 64, align: 64, dwarfAddressSpace: 0)
!9082 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !9060, file: !311, baseType: !9081, size: 64, align: 64, offset: 64)
!9083 = !{!9080, !9082}
!9084 = !DINamespace(name: "mark_advertise_new_scid_seq", scope: !1790)
!9085 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__scid_seq", scope: !9059, file: !311, baseType: !1760, size: 64, align: 64)
!9086 = !{!9085}
!9087 = !{!9063}
!9088 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !9063, file: !311, baseType: !9062, size: 128, align: 64, extraData: i64 0)
!9089 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !9063, file: !311, baseType: !9061, size: 128, align: 64, extraData: i64 1)
!9090 = !{!9088, !9089}
!9091 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9061, file: !311, baseType: !405, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!9092 = !{!9091}
!9093 = !DITemplateTypeParameter(name: "B", type: !405)
!9094 = !{!9093, !1792}
!9095 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9062, file: !311, baseType: !546, align: 8, offset: 64, flags: DIFlagPublic)
!9096 = !{!9095}
!9097 = !DIDerivedType(tag: DW_TAG_member, scope: !9064, file: !311, baseType: !332, size: 64, align: 64, flags: DIFlagArtificial)
!9098 = !DILocalVariable(name: "self", arg: 1, scope: !9066, file: !1377, line: 297, type: !9075)
!9099 = !DILocalVariable(name: "args", arg: 2, scope: !9066, file: !1377, line: 297, type: !9065)
!9100 = !{!9098, !9099}
!9101 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !9065, file: !311, baseType: !546, align: 8)
!9102 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !9065, file: !311, baseType: !1760, size: 64, align: 64)
!9103 = !{!9101, !9102}
!9104 = !DITemplateTypeParameter(name: "A", type: !9065)
!9105 = !DITemplateTypeParameter(name: "F", type: !9060)
!9106 = !{!9104, !9105}
!9107 = !DILocation(line: 0, scope: !9066)
!9108 = !DILocalVariable(name: "predicate", scope: !9067, file: !1799, line: 3137, type: !9059, align: 64)
!9109 = !{!9064, !9074, !546, !1760}
!9110 = !DISubroutineType(cc: DW_CC_nocall, types: !9109)
!9111 = !DILocalVariable(name: "x", arg: 3, scope: !9067, file: !1799, line: 3141, type: !1760)
!9112 = !DILocalVariable(name: "acc", scope: !9067, file: !1799, line: 3138, type: !9081, align: 64)
!9113 = !DILocalVariable(arg: 2, scope: !9067, file: !1799, line: 3141, type: !546)
!9114 = !{!9111, !9108, !9112, !9113}
!9115 = !DITemplateTypeParameter(name: "impl FnMut(T) -> bool + 'a", type: !9059)
!9116 = !{!1761, !9115}
!9120 = !DILocalVariable(name: "scid_seq", scope: !9071, file: !1801, line: 734, type: !332, align: 64)
!9121 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut quiche::cid::{impl#2}::mark_advertise_new_scid_seq::{closure_env#0}", baseType: !9059, size: 64, align: 64, dwarfAddressSpace: 0)
!9122 = !{!424, !9121, !1760}
!9123 = !DISubroutineType(cc: DW_CC_nocall, types: !9122)
!9124 = !DILocalVariable(name: "s", arg: 2, scope: !9071, file: !1801, line: 741, type: !1760)
!9125 = !{!9124, !9120}
!9126 = !DILocation(line: 298, column: 13, scope: !9066)
!9127 = !DILocation(line: 298, column: 21, scope: !9066)
!9128 = !DILocation(line: 741, column: 33, scope: !9071, inlinedAt: !9072)
!9129 = !DILocation(line: 741, column: 27, scope: !9071, inlinedAt: !9072)
!9130 = !DILocation(line: 0, scope: !9067, inlinedAt: !9068)
!9131 = !DILocation(line: 3142, column: 20, scope: !9067, inlinedAt: !9068)
!9132 = !DILocation(line: 3145, column: 21, scope: !9067, inlinedAt: !9068)
!9133 = !DILocation(line: 3142, column: 17, scope: !9067, inlinedAt: !9068)
!9134 = !DILocation(line: 3148, column: 14, scope: !9067, inlinedAt: !9068)
!9135 = !DILocation(line: 299, column: 10, scope: !9066)
!9136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Alignment", scope: !331, file: !311, size: 64, align: 64, flags: DIFlagPublic, elements: !9145, templateParams: !414, identifier: "c67b16fbb8da1285801bfe1dbac65451")
!9137 = distinct !DISubprogram(name: "fmt<core::mem::alignment::Alignment>", linkageName: "_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client", scope: !9139, file: !9138, line: 2887, type: !9143, scopeLine: 2887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !9150, retainedNodes: !9148)
!9138 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "12cfba091d4ac621dc20425387516488")
!9139 = !DINamespace(name: "{impl#80}", scope: !1382)
!9140 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::mem::alignment::Alignment", baseType: !9136, size: 64, align: 64, dwarfAddressSpace: 0)
!9141 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&core::mem::alignment::Alignment", baseType: !9140, size: 64, align: 64, dwarfAddressSpace: 0)
!9142 = !{!238, !9141, !1393}
!9143 = !DISubroutineType(types: !9142)
!9144 = !DIDerivedType(tag: DW_TAG_member, name: "_inner_repr_trick", scope: !9136, file: !311, baseType: !398, size: 64, align: 64, flags: DIFlagPrivate)
!9145 = !{!9144}
!9146 = !DILocalVariable(name: "self", arg: 1, scope: !9137, file: !9138, line: 2887, type: !9141)
!9147 = !DILocalVariable(name: "f", arg: 2, scope: !9137, file: !9138, line: 2887, type: !1393)
!9148 = !{!9146, !9147}
!9149 = !DITemplateTypeParameter(name: "T", type: !9136)
!9150 = !{!9149}
!9151 = !DILocation(line: 0, scope: !9137)
!9152 = !DILocation(line: 2887, column: 71, scope: !9137)
!9153 = !DILocation(line: 2887, column: 62, scope: !9137)
!9154 = !DILocation(line: 2887, column: 84, scope: !9137)
end_hunk_1
