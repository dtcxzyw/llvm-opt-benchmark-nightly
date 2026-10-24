Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.11?download=true
inline.NumInlined: 213
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyINtNtBa_6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterB14_EEB1C_:bb.a
    #dbg_value(ptr %.sroa.0.sroa.7.1, !3993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4028)
  %.not = icmp eq ptr %.sink16.i, null, !dbg !4051
  br i1 %.not, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextB1W_.exit.thread, label %bb.d, !dbg !4051

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextB1W_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %.sink16.i, i64 112, !dbg !4052
    #dbg_value(ptr %i.d, !3993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4028)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4053
    #dbg_value(ptr %.sink16.i, !3994, !DIExpression(), !4043)
  store ptr %.sink16.i, ptr %i.a, align 8, !dbg !4053, !captures !1735
    #dbg_value(ptr %i.a, !3994, !DIExpression(DW_OP_deref), !4043)
  %i.e = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6), !dbg !4054 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4055
  br label %bb.b, !dbg !4045

_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextB1W_.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextB1W_.exit
  ret ptr %0, !dbg !4056
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECs3f36owOmepS_6quiche(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4059 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !4090, !DIExpression(), !4069)
    #dbg_value(ptr %0, !4084, !DIExpression(), !4104)
    #dbg_value(ptr %1, !4085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4104)
    #dbg_value(ptr %2, !4085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4104)
    #dbg_value(ptr %1, !4086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4105)
    #dbg_value(ptr %2, !4086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4105)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !4086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4105)
    #dbg_value(ptr undef, !4090, !DIExpression(), !4069)
    #dbg_value(i64 1, !4106, !DIExpression(), !4072)
    #dbg_value(ptr %1, !4100, !DIExpression(), !4073)
    #dbg_value(ptr %1, !4110, !DIExpression(), !4072)
    #dbg_value(ptr %2, !4101, !DIExpression(), !4074)
    #dbg_value(ptr poison, !4113, !DIExpression(), !4077)
    #dbg_value(ptr poison, !4116, !DIExpression(), !4078)
  %i.b = icmp eq ptr %1, %2, !dbg !4119
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !4120

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.07, !4086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4105)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16, !dbg !4121 ; 2 uses
    #dbg_value(ptr %i.c, !4086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4122
    #dbg_value(ptr %.sroa.0.07, !4087, !DIExpression(), !4118)
  store ptr %.sroa.0.07, ptr %i.a, align 8, !dbg !4122, !captures !1735
    #dbg_value(ptr %i.a, !4087, !DIExpression(DW_OP_deref), !4118)
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7), !dbg !4123 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4124
    #dbg_value(ptr undef, !4090, !DIExpression(), !4069)
    #dbg_value(i64 1, !4106, !DIExpression(), !4072)
    #dbg_value(ptr %i.c, !4100, !DIExpression(), !4073)
    #dbg_value(ptr %i.c, !4110, !DIExpression(), !4072)
    #dbg_value(ptr %2, !4101, !DIExpression(), !4074)
    #dbg_value(ptr poison, !4113, !DIExpression(), !4077)
    #dbg_value(ptr poison, !4116, !DIExpression(), !4078)
  %i.e = icmp eq ptr %i.c, %2, !dbg !4119
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !4120

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
    #dbg_value(ptr poison, !4086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4105)
  ret ptr %0, !dbg !4125
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs3f36owOmepS_6quiche(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4128 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !4160, !DIExpression(), !4138)
    #dbg_value(ptr %0, !4154, !DIExpression(), !4174)
    #dbg_value(ptr %1, !4155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4174)
    #dbg_value(ptr %2, !4155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4174)
    #dbg_value(ptr %1, !4156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4175)
    #dbg_value(ptr %2, !4156, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4175)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !4156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4175)
    #dbg_value(ptr undef, !4160, !DIExpression(), !4138)
    #dbg_value(i64 1, !4176, !DIExpression(), !4141)
    #dbg_value(ptr %1, !4170, !DIExpression(), !4142)
    #dbg_value(ptr %1, !4180, !DIExpression(), !4141)
    #dbg_value(ptr %2, !4171, !DIExpression(), !4143)
    #dbg_value(ptr poison, !4183, !DIExpression(), !4146)
    #dbg_value(ptr poison, !4186, !DIExpression(), !4147)
  %i.b = icmp eq ptr %1, %2, !dbg !4189
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !4190

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.07, !4156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4175)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 1, !dbg !4191 ; 2 uses
    #dbg_value(ptr %i.c, !4156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4192
    #dbg_value(ptr %.sroa.0.07, !4157, !DIExpression(), !4188)
  store ptr %.sroa.0.07, ptr %i.a, align 8, !dbg !4192, !captures !1735
    #dbg_value(ptr %i.a, !4157, !DIExpression(DW_OP_deref), !4188)
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8), !dbg !4193 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4194
    #dbg_value(ptr undef, !4160, !DIExpression(), !4138)
    #dbg_value(i64 1, !4176, !DIExpression(), !4141)
    #dbg_value(ptr %i.c, !4170, !DIExpression(), !4142)
    #dbg_value(ptr %i.c, !4180, !DIExpression(), !4141)
    #dbg_value(ptr %2, !4171, !DIExpression(), !4143)
    #dbg_value(ptr poison, !4183, !DIExpression(), !4146)
    #dbg_value(ptr poison, !4186, !DIExpression(), !4147)
  %i.e = icmp eq ptr %i.c, %2, !dbg !4189
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !4190

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
    #dbg_value(ptr poison, !4156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4175)
  ret ptr %0, !dbg !4195
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECs3f36owOmepS_6quiche(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4201 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !4242, !DIExpression(), !4211)
    #dbg_value(ptr %0, !4236, !DIExpression(), !4256)
    #dbg_value(ptr %1, !4237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4256)
    #dbg_value(ptr %2, !4237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4256)
    #dbg_value(ptr %1, !4238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4257)
    #dbg_value(ptr %2, !4238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4257)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !4238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4257)
    #dbg_value(ptr undef, !4242, !DIExpression(), !4211)
    #dbg_value(i64 1, !4258, !DIExpression(), !4214)
    #dbg_value(ptr %1, !4252, !DIExpression(), !4215)
    #dbg_value(ptr %1, !4262, !DIExpression(), !4214)
    #dbg_value(ptr %2, !4253, !DIExpression(), !4216)
    #dbg_value(ptr poison, !4265, !DIExpression(), !4219)
    #dbg_value(ptr poison, !4268, !DIExpression(), !4220)
  %i.b = icmp eq ptr %1, %2, !dbg !4271
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !4272

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.07, !4238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4257)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 4, !dbg !4273 ; 2 uses
    #dbg_value(ptr %i.c, !4238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4274
    #dbg_value(ptr %.sroa.0.07, !4239, !DIExpression(), !4270)
  store ptr %.sroa.0.07, ptr %i.a, align 8, !dbg !4274, !captures !1735
    #dbg_value(ptr %i.a, !4239, !DIExpression(DW_OP_deref), !4270)
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9), !dbg !4275 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4276
    #dbg_value(ptr undef, !4242, !DIExpression(), !4211)
    #dbg_value(i64 1, !4258, !DIExpression(), !4214)
    #dbg_value(ptr %i.c, !4252, !DIExpression(), !4215)
    #dbg_value(ptr %i.c, !4262, !DIExpression(), !4214)
    #dbg_value(ptr %2, !4253, !DIExpression(), !4216)
    #dbg_value(ptr poison, !4265, !DIExpression(), !4219)
    #dbg_value(ptr poison, !4268, !DIExpression(), !4220)
  %i.e = icmp eq ptr %i.c, %2, !dbg !4271
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !4272

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
    #dbg_value(ptr poison, !4238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4257)
  ret ptr %0, !dbg !4277
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochj3_EBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(624) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4278 {
bb.a:
    #dbg_value(ptr %0, !4284, !DIExpression(), !4288)
    #dbg_value(ptr %0, !4289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4281)
    #dbg_value(i64 3, !4289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4281)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochEBJ_(ptr noalias nofree noundef align 8 dereferenceable(208) %0)
          to label %bb.b unwind label %bb.e, !dbg !4296

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochEBJ_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.a)
          to label %bb.c unwind label %bb.e, !dbg !4296

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !4296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochEBJ_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochEBK_.exit unwind label %bb.e, !dbg !4296

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochEBK_.exit: ; preds = %bb.c
  ret void, !dbg !4297

bb.d:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i64 %.sroa.0.1.i2, 1, !dbg !4296 ; 2 uses
  %i.d = icmp eq i64 %i.c, 3, !dbg !4296
  br i1 %i.d, label %._crit_edge, label %.lr.ph, !dbg !4296

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], !dbg !4296
  %.lcssa = phi i64 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], !dbg !4296
  %i.f = landingpad { ptr, i32 }
          cleanup
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !4296

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i2 = phi i64 [ %i.c, %bb.d ], [ %.lcssa, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.0.1.i2, !dbg !4296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochEBJ_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.g) #18
          to label %bb.d unwind label %bb.f, !dbg !4296

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f, !dbg !4296

bb.f:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4296
  unreachable, !dbg !4296
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8IntoIterAyj1_EECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !323 {
bb.a:
    #dbg_value(ptr %0, !2234, !DIExpression(), !4302)
  invoke void @_RNvXsG_Cs5kGgRUzsVpH_8smallvecINtB5_8IntoIterAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b, !dbg !4303

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2239, !DIExpression(), !4299)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecAyj1_EECs3f36owOmepS_6quiche.exit unwind label %bb.d, !dbg !4304

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2239, !DIExpression(), !4301)
  tail call void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !4305
  ret void, !dbg !4303

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4303
  unreachable, !dbg !4303

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecAyj1_EECs3f36owOmepS_6quiche.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4303
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche5frame5FrameEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4306 {
bb.a:
    #dbg_value(ptr %0, !4425, !DIExpression(), !4429)
  %i.a = load i64, ptr %0, align 8, !dbg !4552, !range !2252, !noundef !1030 ; 5 uses
  %i.b = icmp eq i64 %i.a, -1, !dbg !4552
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, label %bb.b, !dbg !4552

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit9.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit7.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit5.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit3.i, %bb.l, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void, !dbg !4552

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4430), !dbg !4552
    #dbg_value(ptr %0, !4432, !DIExpression(), !4311)
  %i.c = icmp ne i64 %i.a, 4, !dbg !4553
  tail call void @llvm.assume(i1 %i.c), !dbg !4553
  %i.d = add nsw i64 %i.a, -2, !dbg !4553
  %.inv.i = icmp samesign ult i64 %i.a, 2, !dbg !4553
  %i.e = select i1 %.inv.i, i64 2, i64 %i.d, !dbg !4553
  switch i64 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit [
    i64 2, label %bb.c
    i64 5, label %bb.f
    i64 7, label %bb.h
    i64 8, label %bb.k
    i64 18, label %bb.m
    i64 22, label %bb.p
    i64 23, label %bb.s
    i64 25, label %bb.v
  ], !dbg !4553

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !4437, !DIExpression(), !4314)
  %i.f = icmp eq i64 %i.a, 0, !dbg !4554
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4554 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !4554

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.g, !4444, !DIExpression(), !4317)
    #dbg_value(ptr %i.g, !4451, !DIExpression(), !4320)
  tail call void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.g), !dbg !4555
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4554

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %i.g, !4458, !DIExpression(), !4323)
    #dbg_value(ptr %i.g, !4465, !DIExpression(), !4326)
  tail call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g), !dbg !4556
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4554

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4553 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4471), !dbg !4553
    #dbg_value(ptr %i.h, !4473, !DIExpression(), !4331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4479), !dbg !4557
    #dbg_value(ptr %i.h, !4481, !DIExpression(), !4336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4487), !dbg !4558
    #dbg_value(ptr %i.h, !4489, !DIExpression(), !4341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4495), !dbg !4559
    #dbg_value(ptr %i.h, !4497, !DIExpression(), !4346)
    #dbg_value(ptr %i.h, !4500, !DIExpression(), !4350)
    #dbg_value(i64 1, !4509, !DIExpression(), !4353)
    #dbg_value(i8 1, !4514, !DIExpression(), !4353)
    #dbg_value(i64 1, !4516, !DIExpression(), !4356)
    #dbg_value(i8 1, !4521, !DIExpression(), !4356)
  %i.i = load ptr, ptr %i.h, align 8, !dbg !4560, !alias.scope !4525, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.i, !4513, !DIExpression(), !4359)
    #dbg_value(ptr %i.i, !4520, !DIExpression(), !4356)
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !dbg !4561, !noalias !4525
  %i.k = icmp eq i64 %i.j, 1, !dbg !4562
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4562

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !4530, !DIExpression(), !4362)
  fence acquire, !dbg !4563
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #20, !dbg !4564
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4564

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4553 ; 3 uses
    #dbg_value(ptr %i.l, !4535, !DIExpression(), !4365)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i unwind label %bb.i, !dbg !4565

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.l, !4541, !DIExpression(), !4368)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.j, !dbg !4566

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4565
  unreachable, !dbg !4565

common.resume.i:                                  ; preds = %bb.w, %bb.t, %bb.q, %bb.n, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.t ], [ %i.m, %bb.i ], [ %i.t, %bb.n ], [ %i.w, %bb.q ], [ %i.ac, %bb.w ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !4567

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i: ; preds = %bb.h
    #dbg_value(ptr %i.l, !4541, !DIExpression(), !4371)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l), !dbg !4568
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4553

bb.k:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4553 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4547), !dbg !4553
    #dbg_value(ptr %i.o, !4473, !DIExpression(), !4375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4548), !dbg !4569
    #dbg_value(ptr %i.o, !4481, !DIExpression(), !4379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4549), !dbg !4570
    #dbg_value(ptr %i.o, !4489, !DIExpression(), !4383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4550), !dbg !4571
    #dbg_value(ptr %i.o, !4497, !DIExpression(), !4387)
    #dbg_value(ptr %i.o, !4500, !DIExpression(), !4389)
    #dbg_value(i64 1, !4509, !DIExpression(), !4391)
    #dbg_value(i8 1, !4514, !DIExpression(), !4391)
    #dbg_value(i64 1, !4516, !DIExpression(), !4393)
    #dbg_value(i8 1, !4521, !DIExpression(), !4393)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !4572, !alias.scope !4551, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.p, !4513, !DIExpression(), !4395)
    #dbg_value(ptr %i.p, !4520, !DIExpression(), !4393)
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !4573, !noalias !4551
  %i.r = icmp eq i64 %i.q, 1, !dbg !4574
  br i1 %i.r, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4574

bb.l:                                             ; preds = %bb.k
    #dbg_value(i8 2, !4530, !DIExpression(), !4397)
  fence acquire, !dbg !4575
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o) #20, !dbg !4576
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4576

bb.m:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4553 ; 3 uses
    #dbg_value(ptr %i.s, !4535, !DIExpression(), !4399)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit3.i unwind label %bb.n, !dbg !4577

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.s, !4541, !DIExpression(), !4401)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i unwind label %bb.o, !dbg !4578

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4577
  unreachable, !dbg !4577

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit3.i: ; preds = %bb.m
    #dbg_value(ptr %i.s, !4541, !DIExpression(), !4403)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s), !dbg !4579
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4553

bb.p:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4553 ; 3 uses
    #dbg_value(ptr %i.v, !4535, !DIExpression(), !4405)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit5.i unwind label %bb.q, !dbg !4580

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.v, !4541, !DIExpression(), !4407)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i unwind label %bb.r, !dbg !4581

bb.r:                                             ; preds = %bb.q
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4580
  unreachable, !dbg !4580

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit5.i: ; preds = %bb.p
    #dbg_value(ptr %i.v, !4541, !DIExpression(), !4409)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !4582
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4553

bb.s:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4553 ; 3 uses
    #dbg_value(ptr %i.y, !4535, !DIExpression(), !4411)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit7.i unwind label %bb.t, !dbg !4583

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.y, !4541, !DIExpression(), !4413)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i unwind label %bb.u, !dbg !4584

bb.u:                                             ; preds = %bb.t
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4583
  unreachable, !dbg !4583

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit7.i: ; preds = %bb.s
    #dbg_value(ptr %i.y, !4541, !DIExpression(), !4415)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y), !dbg !4585
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4553

bb.v:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4553 ; 3 uses
    #dbg_value(ptr %i.ab, !4535, !DIExpression(), !4417)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit9.i unwind label %bb.w, !dbg !4586

bb.w:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ab, !4541, !DIExpression(), !4419)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i unwind label %bb.x, !dbg !4587

bb.x:                                             ; preds = %bb.w
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4586
  unreachable, !dbg !4586

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit9.i: ; preds = %bb.v
    #dbg_value(ptr %i.ab, !4541, !DIExpression(), !4421)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab), !dbg !4588
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_.exit, !dbg !4553
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !329 {
bb.a:
    #dbg_value(ptr %0, !2259, !DIExpression(), !4593)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b, !dbg !4594

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2264, !DIExpression(), !4590)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1j_.exit unwind label %bb.d, !dbg !4595

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2264, !DIExpression(), !4592)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !4596
  ret void, !dbg !4594

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4594
  unreachable, !dbg !4594

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4594
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler18ConnectionStateMapNtBE_27ConnectionStateOnSentPacketEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !331 {
bb.a:
    #dbg_value(ptr %0, !2273, !DIExpression(), !4603)
    #dbg_value(ptr %0, !2278, !DIExpression(), !4598)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtB1c_3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTyINtNtB4_6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEEEB26_.exit unwind label %bb.b, !dbg !4604

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2285, !DIExpression(), !4600)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtBT_3ops4drop4Drop4dropB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyINtNtB4_6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEEEB1N_.exit.i unwind label %bb.c, !dbg !4605

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4604
  unreachable, !dbg !4604

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyINtNtB4_6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEEEB1N_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4604

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTyINtNtB4_6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEEEB26_.exit: ; preds = %bb.a
    #dbg_value(ptr %0, !2285, !DIExpression(), !4602)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtBT_3ops4drop4Drop4dropB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !4606
  ret void, !dbg !4607
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr25BBRv2EBJ_(ptr noalias nofree noundef align 8 dereferenceable(1088) %0) unnamed_addr #0 !dbg !4608 {
bb.a:
    #dbg_value(ptr %0, !4615, !DIExpression(), !4619)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4621 ; 2 uses
    #dbg_value(ptr %i.a, !2293, !DIExpression(), !4610)
  %i.b = load i64, ptr %i.a, align 8, !dbg !4622, !range !2299, !alias.scope !4620, !noundef !1030 ; 3 uses
  %i.c = icmp ne i64 %i.b, 5, !dbg !4622
  tail call void @llvm.assume(i1 %i.c), !dbg !4622
  %i.d = add nsw i64 %i.b, -2, !dbg !4622
  %i.e = icmp samesign ugt i64 %i.b, 1, !dbg !4622
  %i.f = select i1 %i.e, i64 %i.d, i64 3, !dbg !4622
  switch i64 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24mode4ModeEBL_.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %.sink.split.i
  ], !dbg !4622

.sink.split.i:                                    ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sink.i = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.d ], [ %i.h, %bb.c ], [ %i.a, %bb.a ]
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_model17BBRv2NetworkModelEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %.sink.i), !dbg !4622
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24mode4ModeEBL_.exit, !dbg !4622

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !4622
  br label %.sink.split.i, !dbg !4622

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !4622
  br label %.sink.split.i, !dbg !4622

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !4622
  br label %.sink.split.i, !dbg !4622

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24mode4ModeEBL_.exit: ; preds = %bb.a, %.sink.split.i
  ret void, !dbg !4621
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4623 {
bb.a:
    #dbg_value(ptr %0, !4648, !DIExpression(), !4650)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4651 ; 3 uses
    #dbg_value(ptr %i.a, !2306, !DIExpression(), !4625)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !4652

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2313, !DIExpression(), !4627)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.d, !dbg !4653

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !2313, !DIExpression(), !4629)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB1G_.exit unwind label %bb.e, !dbg !4654

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4652
  unreachable, !dbg !4652

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !4651

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4651
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #18
          to label %.body5 unwind label %bb.p, !dbg !4651

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB1G_.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4651 ; 3 uses
    #dbg_value(ptr %i.f, !2259, !DIExpression(), !4631)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.g unwind label %bb.f, !dbg !4655

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB1G_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !2264, !DIExpression(), !4633)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.body5 unwind label %bb.h, !dbg !4656

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB1G_.exit
    #dbg_value(ptr %i.f, !2264, !DIExpression(), !4635)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit unwind label %bb.i, !dbg !4657

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4655
  unreachable, !dbg !4655

.body5:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !4651
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #18
          to label %.body8 unwind label %bb.p, !dbg !4651

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !4651 ; 3 uses
    #dbg_value(ptr %i.k, !2259, !DIExpression(), !4637)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.k unwind label %bb.j, !dbg !4658

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.k, !2264, !DIExpression(), !4639)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body8 unwind label %bb.l, !dbg !4659

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit
    #dbg_value(ptr %i.k, !2264, !DIExpression(), !4641)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit10 unwind label %bb.m, !dbg !4660

bb.l:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4658
  unreachable, !dbg !4658

.body8:                                           ; preds = %bb.m, %bb.j, %.body5
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body5 ], [ %i.o, %bb.m ], [ %i.l, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !4651
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #18
          to label %common.resume unwind label %bb.p, !dbg !4651

bb.m:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit10: ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !4651 ; 3 uses
    #dbg_value(ptr %i.p, !2259, !DIExpression(), !4643)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit12 unwind label %bb.n, !dbg !4661

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit10
  %i.q = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.p, !2264, !DIExpression(), !4645)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %common.resume unwind label %bb.o, !dbg !4662

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4661
  unreachable, !dbg !4661

common.resume:                                    ; preds = %.body8, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.n ], [ %.pn3, %.body8 ]
  resume { ptr, i32 } %common.resume.op, !dbg !4651

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit12: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1C_.exit10
    #dbg_value(ptr %i.p, !2264, !DIExpression(), !4647)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p), !dbg !4663
  ret void, !dbg !4651

bb.p:                                             ; preds = %.body8, %.body5, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4651
  unreachable, !dbg !4651
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_model17BBRv2NetworkModelEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4664 {
bb.a:
    #dbg_value(ptr %0, !4687, !DIExpression(), !4691)
    #dbg_value(ptr %0, !4693, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4667)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4713 ; 3 uses
    #dbg_value(ptr %i.a, !4700, !DIExpression(), !4670)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !4714

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !4707, !DIExpression(), !4673)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i unwind label %bb.d, !dbg !4715

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !4707, !DIExpression(), !4675)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointEEB1I_.exit.i unwind label %bb.e, !dbg !4716

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4714
  unreachable, !dbg !4714

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !4713

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4713
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler18ConnectionStateMapNtBE_27ConnectionStateOnSentPacketEEBM_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #18
          to label %common.resume.i unwind label %bb.h, !dbg !4713

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointEEB1I_.exit.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4713 ; 3 uses
    #dbg_value(ptr %i.f, !2273, !DIExpression(), !4677)
    #dbg_value(ptr %i.f, !2278, !DIExpression(), !4679)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtB1c_3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler16BandwidthSamplerEBL_.exit unwind label %bb.f, !dbg !4717

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointEEB1I_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !2285, !DIExpression(), !4681)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtBT_3ops4drop4Drop4dropB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %common.resume.i unwind label %bb.g, !dbg !4718

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4717
  unreachable, !dbg !4717

common.resume.i:                                  ; preds = %bb.f, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.g, %bb.f ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !4713

bb.h:                                             ; preds = %.body.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4713
  unreachable, !dbg !4713

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler16BandwidthSamplerEBL_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler8AckPointEEB1I_.exit.i
    #dbg_value(ptr %i.f, !2285, !DIExpression(), !4683)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEEENtNtNtBT_3ops4drop4Drop4dropB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f), !dbg !4719
  ret void, !dbg !4720
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24mode4ModeEBL_(ptr noalias nofree noundef align 8 dereferenceable(808) %0) unnamed_addr #0 !dbg !334 {
bb.a:
    #dbg_value(ptr %0, !2293, !DIExpression(), !4730)
  %i.a = load i64, ptr %0, align 8, !dbg !4752, !range !2299, !noundef !1030 ; 3 uses
  %i.b = icmp ne i64 %i.a, 5, !dbg !4752
  tail call void @llvm.assume(i1 %i.b), !dbg !4752
  %i.c = add nsw i64 %i.a, -2, !dbg !4752
  %i.d = icmp samesign ugt i64 %i.a, 1, !dbg !4752
  %i.e = select i1 %i.d, i64 %i.c, i64 3, !dbg !4752
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %.sink.split
  ], !dbg !4752

.sink.split:                                      ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sink = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %0, %bb.a ]
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_model17BBRv2NetworkModelEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %.sink), !dbg !4752
  br label %bb.b, !dbg !4752

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void, !dbg !4752

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4752
    #dbg_value(ptr %i.f, !4732, !DIExpression(), !4723)
  br label %.sink.split, !dbg !4752

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4752
    #dbg_value(ptr %i.g, !4739, !DIExpression(), !4726)
  br label %.sink.split, !dbg !4752

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4752
    #dbg_value(ptr %i.h, !4746, !DIExpression(), !4729)
  br label %.sink.split, !dbg !4752
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr15windowed_filterINtB2_14WindowedFilterNtNtB4_17bandwidth_sampler15ExtraAckedEventjjE6updateBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 !dbg !4754 {
bb.a:
    #dbg_declare(ptr %1, !4937, !DIExpression(DW_OP_LLVM_fragment, 64, 320), !4944)
    #dbg_value(ptr poison, !4945, !DIExpression(), !4759)
    #dbg_value(ptr poison, !4949, !DIExpression(), !4759)
    #dbg_value(ptr poison, !4945, !DIExpression(), !4761)
    #dbg_value(ptr poison, !4949, !DIExpression(), !4761)
    #dbg_value(ptr poison, !4949, !DIExpression(), !4763)
    #dbg_value(ptr poison, !4949, !DIExpression(), !4765)
    #dbg_value(ptr poison, !4949, !DIExpression(), !4767)
    #dbg_value(ptr %0, !4930, !DIExpression(), !4951)
    #dbg_value(ptr %0, !4939, !DIExpression(), !4952)
    #dbg_declare(ptr %1, !4931, !DIExpression(), !4953)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4951)
    #dbg_value(i64 %2, !4941, !DIExpression(), !4952)
    #dbg_declare(ptr %1, !4940, !DIExpression(), !4954)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5101 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !dbg !5101, !range !2325, !noundef !1030 ; 3 uses
  %.not = icmp eq i32 %i.b, -1, !dbg !5101
  br i1 %.not, label %bb.h, label %bb.b, !dbg !5102

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4955), !dbg !5104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4956), !dbg !5104
    #dbg_value(ptr %1, !4957, !DIExpression(), !4773)
    #dbg_value(ptr %i.c, !4960, !DIExpression(), !4773)
    #dbg_declare(ptr poison, !4965, !DIExpression(), !4777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4969), !dbg !5105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4970), !dbg !5105
    #dbg_value(ptr %1, !4971, !DIExpression(), !4783)
    #dbg_value(ptr %i.c, !4975, !DIExpression(), !4783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4977), !dbg !5106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4978), !dbg !5106
    #dbg_value(ptr %1, !4979, !DIExpression(), !4792)
    #dbg_value(ptr %i.c, !4983, !DIExpression(), !4792)
    #dbg_value(ptr %1, !4988, !DIExpression(), !4795)
    #dbg_value(ptr %i.c, !4992, !DIExpression(), !4796)
  %i.d = load i64, ptr %1, align 8, !dbg !5107, !alias.scope !4994, !noundef !1030 ; 6 uses
  %i.e = load i64, ptr %i.c, align 8, !dbg !5108, !alias.scope !4995, !noundef !1030 ; 3 uses
  %i.f = tail call i8 @llvm.ucmp.i8.i64(i64 %i.d, i64 %i.e), !dbg !5109
  %i.g = icmp eq i64 %i.d, %i.e, !dbg !5110
  br i1 %i.g, label %bb.c, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit, !dbg !5110

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !4988, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4798)
    #dbg_value(ptr %i.c, !4992, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4799)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5111
  %i.i = load i64, ptr %i.h, align 8, !dbg !5111, !alias.scope !4994, !noundef !1030 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5112
  %i.k = load i64, ptr %i.j, align 8, !dbg !5112, !alias.scope !4995, !noundef !1030 ; 2 uses
  %i.l = tail call i8 @llvm.ucmp.i8.i64(i64 %i.i, i64 %i.k), !dbg !5113
  %i.m = icmp eq i64 %i.i, %i.k, !dbg !5114
  br i1 %i.m, label %bb.d, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit, !dbg !5114

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !4996, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4803)
    #dbg_value(ptr %i.c, !4997, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4803)
    #dbg_value(ptr %1, !5000, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4806)
    #dbg_value(ptr %i.c, !5004, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4807)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5115
  %i.o = load i64, ptr %i.n, align 8, !dbg !5115, !alias.scope !4994, !noundef !1030 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5116
  %i.q = load i64, ptr %i.p, align 8, !dbg !5116, !alias.scope !4995, !noundef !1030 ; 2 uses
  %i.r = tail call i8 @llvm.ucmp.i8.i64(i64 %i.o, i64 %i.q), !dbg !5117
  %i.s = icmp eq i64 %i.o, %i.q, !dbg !5118
  br i1 %i.s, label %bb.e, label %bb.f, !dbg !5118

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !5008, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4810)
    #dbg_value(ptr %i.c, !5012, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4811)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !5119
  %i.u = load i32, ptr %i.t, align 8, !dbg !5119, !range !2354, !alias.scope !4994, !noundef !1030
  %i.v = tail call i8 @llvm.ucmp.i8.i32(i32 %i.u, i32 %i.b), !dbg !5120
  br label %bb.f, !dbg !5118

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi i8 [ %i.v, %bb.e ], [ %i.r, %bb.d ], !dbg !5118 ; 2 uses
  %i.w = icmp eq i8 %.sroa.0.0.i.i.i, 0, !dbg !5121
  br i1 %i.w, label %bb.g, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit, !dbg !5121

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !4988, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !4815)
    #dbg_value(ptr %i.c, !4992, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !4816)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5122
  %i.y = load i64, ptr %i.x, align 8, !dbg !5122, !alias.scope !4994, !noundef !1030
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5123
  %i.aa = load i64, ptr %i.z, align 8, !dbg !5123, !alias.scope !4995, !noundef !1030
  %i.ab = tail call i8 @llvm.ucmp.i8.i64(i64 %i.y, i64 %i.aa), !dbg !5124
  br label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit, !dbg !5125

_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit: ; preds = %bb.b, %bb.c, %bb.f, %bb.g
  %.sroa.0.1.i.i.i = phi i8 [ %i.ab, %bb.g ], [ %.sroa.0.0.i.i.i, %bb.f ], [ %i.l, %bb.c ], [ %i.f, %bb.b ], !dbg !5126
    #dbg_value(i8 %.sroa.0.1.i.i.i, !4966, !DIExpression(), !4817)
  %i.ac = icmp sgt i8 %.sroa.0.1.i.i.i, 0, !dbg !5127
  br i1 %i.ac, label %bb.h, label %bb.i, !dbg !5104

bb.h:                                             ; preds = %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit, %bb.a, %bb.j
    #dbg_value(i64 %2, !4937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5018)
  store i64 %2, ptr %0, align 8, !dbg !5128
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.681.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5128
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5128
  store i64 %2, ptr %i.ad, align 8, !dbg !5128
  %.sroa.681.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.681.0..sroa_idx82, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !5128
  store i64 %2, ptr %i.ae, align 8, !dbg !5128
  %.sroa.681.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !5128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.681.0..sroa_idx83, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5128
  br label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5129

bb.i:                                             ; preds = %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !5130 ; 9 uses
    #dbg_value(ptr %i.af, !5020, !DIExpression(), !5036)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !5131 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !dbg !5131, !range !2325, !noundef !1030 ; 2 uses
  %.not105 = icmp eq i32 %i.ah, -1, !dbg !5131
  br i1 %.not105, label %bb.k, label %bb.j, !dbg !5132, !prof !2357

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.af, !5037, !DIExpression(), !5044)
  %i.ai = load i64, ptr %i.af, align 8, !dbg !5130, !noundef !1030
    #dbg_value(i64 %2, !5046, !DIExpression(), !4828)
    #dbg_value(i64 %i.ai, !5051, !DIExpression(), !4828)
  %i.aj = sub i64 %2, %i.ai, !dbg !5133
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !5134
    #dbg_value(ptr undef, !4949, !DIExpression(), !4767)
    #dbg_value(ptr %i.ak, !4945, !DIExpression(), !4767)
  %i.al = load i64, ptr %i.ak, align 8, !dbg !5135, !alias.scope !5053, !noundef !1030 ; 5 uses
  %i.am = icmp ugt i64 %i.aj, %i.al, !dbg !5136
  br i1 %i.am, label %bb.h, label %bb.l, !dbg !5102

bb.k:                                             ; preds = %bb.i
    #dbg_value(ptr null, !5037, !DIExpression(), !5044)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21, !dbg !5137
  unreachable, !dbg !5137

bb.l:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5138 ; 9 uses
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5070)
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5138 ; 4 uses
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5070)
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !5138 ; 2 uses
  %.sroa.01.sroa.5.0.copyload = load i64, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !dbg !5138 ; 2 uses
    #dbg_value(i64 %.sroa.01.sroa.5.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5070)
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !5138 ; 2 uses
  %.sroa.01.sroa.6.0.copyload = load i64, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8, !dbg !5138
    #dbg_value(i64 %.sroa.01.sroa.6.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5070)
  %.sroa.01.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !5138 ; 2 uses
  %.sroa.01.sroa.7.0.copyload = load i64, ptr %.sroa.01.sroa.7.0..sroa_idx, align 8, !dbg !5138 ; 2 uses
    #dbg_value(i64 %.sroa.01.sroa.7.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5070)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !5138 ; 2 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5138 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5070)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5070)
  %.not106 = icmp eq i32 %.sroa.4.0.copyload, -1, !dbg !5139
  br i1 %.not106, label %bb.s, label %bb.m, !dbg !5140, !prof !2357

bb.m:                                             ; preds = %bb.l
  %.sroa.01.sroa.4.0.copyload = load i64, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8, !dbg !5138 ; 2 uses
    #dbg_value(i64 %.sroa.01.sroa.4.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5070)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5070)
    #dbg_value(ptr %1, !4957, !DIExpression(), !4843)
    #dbg_value(ptr undef, !4960, !DIExpression(), !4843)
    #dbg_declare(ptr poison, !4965, !DIExpression(), !4845)
    #dbg_value(ptr %1, !4971, !DIExpression(), !4847)
    #dbg_value(ptr undef, !4975, !DIExpression(), !4847)
    #dbg_value(ptr %1, !4979, !DIExpression(), !4849)
    #dbg_value(ptr undef, !4983, !DIExpression(), !4849)
    #dbg_value(ptr %1, !4988, !DIExpression(), !4851)
    #dbg_value(ptr undef, !4992, !DIExpression(), !4852)
  %i.ao = tail call i8 @llvm.ucmp.i8.i64(i64 %i.d, i64 %.sroa.01.sroa.4.0.copyload), !dbg !5141
  %i.ap = icmp eq i64 %i.d, %.sroa.01.sroa.4.0.copyload, !dbg !5142
  br i1 %i.ap, label %bb.n, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit118, !dbg !5142

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %1, !4988, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4854)
    #dbg_value(ptr undef, !4992, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4855)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5143
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !5143, !alias.scope !5073, !noundef !1030 ; 2 uses
  %i.as = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ar, i64 %.sroa.01.sroa.5.0.copyload), !dbg !5144
  %i.at = icmp eq i64 %i.ar, %.sroa.01.sroa.5.0.copyload, !dbg !5145
  br i1 %i.at, label %bb.o, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit118, !dbg !5145

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %1, !4996, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4863)
    #dbg_value(ptr undef, !4997, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4863)
    #dbg_value(ptr %1, !5000, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4865)
    #dbg_value(ptr undef, !5004, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4866)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5146
  %i.av = load i64, ptr %i.au, align 8, !dbg !5146, !alias.scope !5073, !noundef !1030 ; 2 uses
  %i.aw = tail call i8 @llvm.ucmp.i8.i64(i64 %i.av, i64 %.sroa.01.sroa.7.0.copyload), !dbg !5147
  %i.ax = icmp eq i64 %i.av, %.sroa.01.sroa.7.0.copyload, !dbg !5148
  br i1 %i.ax, label %bb.p, label %bb.q, !dbg !5148

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %1, !5008, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4868)
    #dbg_value(ptr undef, !5012, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4869)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !5149
  %i.az = load i32, ptr %i.ay, align 8, !dbg !5149, !range !2354, !alias.scope !5073, !noundef !1030
  %i.ba = tail call i8 @llvm.ucmp.i8.i32(i32 %i.az, i32 %.sroa.4.0.copyload), !dbg !5150
  br label %bb.q, !dbg !5148

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i117 = phi i8 [ %i.ba, %bb.p ], [ %i.aw, %bb.o ], !dbg !5148 ; 2 uses
  %i.bb = icmp eq i8 %.sroa.0.0.i.i.i117, 0, !dbg !5151
  br i1 %i.bb, label %bb.r, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit118, !dbg !5151

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %1, !4988, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !4872)
    #dbg_value(ptr undef, !4992, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !4873)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5152
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !5152, !alias.scope !5073, !noundef !1030
  %i.be = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bd, i64 %.sroa.01.sroa.6.0.copyload), !dbg !5153
  br label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit118, !dbg !5154

_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit118: ; preds = %bb.m, %bb.n, %bb.q, %bb.r
  %.sroa.0.1.i.i.i116 = phi i8 [ %i.be, %bb.r ], [ %.sroa.0.0.i.i.i117, %bb.q ], [ %i.as, %bb.n ], [ %i.ao, %bb.m ], !dbg !5155
    #dbg_value(i8 %.sroa.0.1.i.i.i116, !4966, !DIExpression(), !4874)
  %i.bf = icmp sgt i8 %.sroa.0.1.i.i.i116, 0, !dbg !5156
  br i1 %i.bf, label %bb.t, label %bb.u, !dbg !5157

bb.s:                                             ; preds = %bb.l
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21, !dbg !5158
  unreachable, !dbg !5158

bb.t:                                             ; preds = %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit118
  store i64 %2, ptr %i.an, align 8, !dbg !5159
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5159
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !dbg !5160
  br label %bb.ab, !dbg !5161

bb.u:                                             ; preds = %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit118
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5075)
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !5162 ; 2 uses
  %.sroa.010.sroa.4.0.copyload = load i64, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8, !dbg !5162 ; 2 uses
    #dbg_value(i64 %.sroa.010.sroa.4.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5075)
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5075)
  %.sroa.010.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !5162
  %.sroa.010.sroa.6.0.copyload = load i64, ptr %.sroa.010.sroa.6.0..sroa_idx, align 8, !dbg !5162
    #dbg_value(i64 %.sroa.010.sroa.6.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5075)
  %.sroa.010.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !5162
  %.sroa.010.sroa.7.0.copyload = load i64, ptr %.sroa.010.sroa.7.0..sroa_idx, align 8, !dbg !5162 ; 2 uses
    #dbg_value(i64 %.sroa.010.sroa.7.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5075)
    #dbg_value(i32 %i.ah, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5075)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5075)
    #dbg_value(ptr %1, !4957, !DIExpression(), !4876)
    #dbg_value(ptr undef, !4960, !DIExpression(), !4876)
    #dbg_declare(ptr poison, !4965, !DIExpression(), !4878)
    #dbg_value(ptr %1, !4971, !DIExpression(), !4880)
    #dbg_value(ptr undef, !4975, !DIExpression(), !4880)
    #dbg_value(ptr %1, !4979, !DIExpression(), !4882)
    #dbg_value(ptr undef, !4983, !DIExpression(), !4882)
    #dbg_value(ptr %1, !4988, !DIExpression(), !4884)
    #dbg_value(ptr undef, !4992, !DIExpression(), !4885)
  %i.bg = tail call i8 @llvm.ucmp.i8.i64(i64 %i.d, i64 %.sroa.010.sroa.4.0.copyload), !dbg !5163
  %i.bh = icmp eq i64 %i.d, %.sroa.010.sroa.4.0.copyload, !dbg !5164
  br i1 %i.bh, label %bb.v, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit121, !dbg !5164

bb.v:                                             ; preds = %bb.u
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !5162
  %.sroa.010.sroa.5.0.copyload = load i64, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8, !dbg !5162 ; 2 uses
    #dbg_value(i64 %.sroa.010.sroa.5.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5075)
    #dbg_value(ptr %1, !4988, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4887)
    #dbg_value(ptr undef, !4992, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4888)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5165
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !5165, !alias.scope !5076, !noundef !1030 ; 2 uses
  %i.bk = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bj, i64 %.sroa.010.sroa.5.0.copyload), !dbg !5166
  %i.bl = icmp eq i64 %i.bj, %.sroa.010.sroa.5.0.copyload, !dbg !5167
  br i1 %i.bl, label %bb.w, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit121, !dbg !5167

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr %1, !4996, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4896)
    #dbg_value(ptr undef, !4997, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4896)
    #dbg_value(ptr %1, !5000, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4898)
    #dbg_value(ptr undef, !5004, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4899)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5168
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !5168, !alias.scope !5076, !noundef !1030 ; 2 uses
  %i.bo = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bn, i64 %.sroa.010.sroa.7.0.copyload), !dbg !5169
  %i.bp = icmp eq i64 %i.bn, %.sroa.010.sroa.7.0.copyload, !dbg !5170
  br i1 %i.bp, label %bb.x, label %bb.y, !dbg !5170

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %1, !5008, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4901)
    #dbg_value(ptr undef, !5012, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4902)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !5171
  %i.br = load i32, ptr %i.bq, align 8, !dbg !5171, !range !2354, !alias.scope !5076, !noundef !1030
  %i.bs = tail call i8 @llvm.ucmp.i8.i32(i32 %i.br, i32 %i.ah), !dbg !5172
  br label %bb.y, !dbg !5170

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.0.i.i.i120 = phi i8 [ %i.bs, %bb.x ], [ %i.bo, %bb.w ], !dbg !5170 ; 2 uses
  %i.bt = icmp eq i8 %.sroa.0.0.i.i.i120, 0, !dbg !5173
  br i1 %i.bt, label %bb.z, label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit121, !dbg !5173

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %1, !4988, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !4905)
    #dbg_value(ptr undef, !4992, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !4906)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5174
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !5174, !alias.scope !5076, !noundef !1030
  %i.bw = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bv, i64 %.sroa.010.sroa.6.0.copyload), !dbg !5175
  br label %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit121, !dbg !5176

_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit121: ; preds = %bb.u, %bb.v, %bb.y, %bb.z
  %.sroa.0.1.i.i.i119 = phi i8 [ %i.bw, %bb.z ], [ %.sroa.0.0.i.i.i120, %bb.y ], [ %i.bk, %bb.v ], [ %i.bg, %bb.u ], !dbg !5177
    #dbg_value(i8 %.sroa.0.1.i.i.i119, !4966, !DIExpression(), !4907)
  %i.bx = icmp sgt i8 %.sroa.0.1.i.i.i119, 0, !dbg !5178
  br i1 %i.bx, label %bb.aa, label %bb.ab, !dbg !5179

bb.aa:                                            ; preds = %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit121
  store i64 %2, ptr %i.af, align 8, !dbg !5180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.010.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5180
  br label %bb.ab, !dbg !5181

bb.ab:                                            ; preds = %bb.t, %bb.aa, %_RNvYNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBc_.exit121
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5078)
    #dbg_value(i32 %i.b, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5078)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5078)
  %.sroa.021.0.copyload = load i64, ptr %0, align 8, !dbg !5182
    #dbg_value(i64 %.sroa.021.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5078)
    #dbg_value(i64 %2, !5046, !DIExpression(), !4909)
    #dbg_value(i64 %.sroa.021.0.copyload, !5051, !DIExpression(), !4909)
  %i.by = sub i64 %2, %.sroa.021.0.copyload, !dbg !5183
    #dbg_value(ptr undef, !4949, !DIExpression(), !4765)
    #dbg_value(ptr %i.ak, !4945, !DIExpression(), !4765)
  %i.bz = icmp ugt i64 %i.by, %i.al, !dbg !5184
  br i1 %i.bz, label %bb.ad, label %bb.ac, !dbg !5185

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5080)
  %.sroa.032.sroa.4.0.copyload = load i64, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8, !dbg !5186 ; 2 uses
    #dbg_value(i64 %.sroa.032.sroa.4.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5080)
  %.sroa.032.sroa.5.0.copyload = load i64, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !dbg !5186 ; 2 uses
    #dbg_value(i64 %.sroa.032.sroa.5.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5080)
  %.sroa.032.sroa.6.0.copyload = load i64, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8, !dbg !5186 ; 2 uses
    #dbg_value(i64 %.sroa.032.sroa.6.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5080)
  %.sroa.032.sroa.7.0.copyload = load i64, ptr %.sroa.01.sroa.7.0..sroa_idx, align 8, !dbg !5186 ; 2 uses
    #dbg_value(i64 %.sroa.032.sroa.7.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5080)
  %.sroa.433.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5186 ; 3 uses
    #dbg_value(i32 %.sroa.433.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5080)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5080)
  %.not109 = icmp eq i32 %.sroa.433.0.copyload, -1, !dbg !5187
  br i1 %.not109, label %bb.ae, label %bb.af, !dbg !5188, !prof !2357

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !dbg !5189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !dbg !5190
  store i64 %2, ptr %i.af, align 8, !dbg !5191
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !5191
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5191
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5082)
  %.sroa.530.0.copyload = load i32, ptr %i.a, align 8, !dbg !5192
    #dbg_value(i32 %.sroa.530.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5082)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5082)
  %.not115 = icmp eq i32 %.sroa.530.0.copyload, -1, !dbg !5193
  br i1 %.not115, label %bb.an, label %bb.am, !dbg !5194, !prof !2357

bb.ae:                                            ; preds = %bb.ac
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21, !dbg !5195
  unreachable, !dbg !5195

bb.af:                                            ; preds = %bb.ac
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5080)
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5084)
    #dbg_value(i64 %i.e, !5054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5084)
  %.sroa.039.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5196
  %.sroa.039.sroa.5.0.copyload = load i64, ptr %.sroa.039.sroa.5.0..sroa_idx, align 8, !dbg !5196
    #dbg_value(i64 %.sroa.039.sroa.5.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5084)
  %.sroa.039.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5196
  %.sroa.039.sroa.6.0.copyload = load i64, ptr %.sroa.039.sroa.6.0..sroa_idx, align 8, !dbg !5196
    #dbg_value(i64 %.sroa.039.sroa.6.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5084)
  %.sroa.039.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5196
  %.sroa.039.sroa.7.0.copyload = load i64, ptr %.sroa.039.sroa.7.0..sroa_idx, align 8, !dbg !5196
    #dbg_value(i64 %.sroa.039.sroa.7.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5084)
    #dbg_value(i32 %i.b, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5084)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5084)
    #dbg_value(ptr undef, !5085, !DIExpression(), !4912)
    #dbg_value(ptr undef, !5087, !DIExpression(), !4912)
  %i.ca = icmp eq i64 %.sroa.032.sroa.4.0.copyload, %i.e, !dbg !5197
  %i.cb = icmp eq i64 %.sroa.032.sroa.5.0.copyload, %.sroa.039.sroa.5.0.copyload
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false, !dbg !5197
  %i.cc = icmp eq i64 %.sroa.032.sroa.7.0.copyload, %.sroa.039.sroa.7.0.copyload
  %or.cond170 = select i1 %or.cond, i1 %i.cc, i1 false, !dbg !5197
  %i.cd = icmp eq i32 %.sroa.433.0.copyload, %i.b
  %or.cond171 = and i1 %i.cd, %or.cond170, !dbg !5197
  %i.ce = icmp eq i64 %.sroa.032.sroa.6.0.copyload, %.sroa.039.sroa.6.0.copyload
  %or.cond172 = select i1 %or.cond171, i1 %i.ce, i1 false, !dbg !5197
  br i1 %or.cond172, label %bb.ag, label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5197

_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.af, %bb.ag
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5090)
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5090)
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5090)
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5090)
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5090)
  %.sroa.455.0.copyload = load i32, ptr %i.ag, align 8, !dbg !5198 ; 2 uses
    #dbg_value(i32 %.sroa.455.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5090)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5090)
  %.not112 = icmp eq i32 %.sroa.455.0.copyload, -1, !dbg !5199
  br i1 %.not112, label %bb.ai, label %bb.aj, !dbg !5200, !prof !2357

bb.ag:                                            ; preds = %bb.af
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5092)
    #dbg_value(i32 %.sroa.433.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5092)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5092)
  %.sroa.046.0.copyload = load i64, ptr %i.an, align 8, !dbg !5201
    #dbg_value(i64 %.sroa.046.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5092)
    #dbg_value(i64 %2, !5046, !DIExpression(), !4914)
    #dbg_value(i64 %.sroa.046.0.copyload, !5051, !DIExpression(), !4914)
  %i.cf = sub i64 %2, %.sroa.046.0.copyload, !dbg !5202
    #dbg_value(i64 %i.al, !5093, !DIExpression(), !4917)
    #dbg_value(i64 4, !5095, !DIExpression(), !4917)
  %i.cg = lshr i64 %i.al, 2, !dbg !5203
    #dbg_value(ptr undef, !4949, !DIExpression(), !4761)
    #dbg_value(ptr undef, !4945, !DIExpression(), !4761)
  %i.ch = icmp ugt i64 %i.cf, %i.cg, !dbg !5204
  br i1 %i.ch, label %bb.ah, label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5205

bb.ah:                                            ; preds = %bb.ag
  store i64 %2, ptr %i.an, align 8, !dbg !5206
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5206
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !dbg !5207
  br label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5129

bb.ai:                                            ; preds = %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #21, !dbg !5208
  unreachable, !dbg !5208

bb.aj:                                            ; preds = %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  %.sroa.054.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !5198
  %.sroa.054.sroa.7.0.copyload = load i64, ptr %.sroa.054.sroa.7.0..sroa_idx, align 8, !dbg !5198
    #dbg_value(i64 %.sroa.054.sroa.7.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5090)
  %.sroa.054.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !5198
  %.sroa.054.sroa.6.0.copyload = load i64, ptr %.sroa.054.sroa.6.0..sroa_idx, align 8, !dbg !5198
    #dbg_value(i64 %.sroa.054.sroa.6.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5090)
  %.sroa.054.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !5198
  %.sroa.054.sroa.5.0.copyload = load i64, ptr %.sroa.054.sroa.5.0..sroa_idx, align 8, !dbg !5198
    #dbg_value(i64 %.sroa.054.sroa.5.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5090)
  %.sroa.054.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !5198 ; 2 uses
  %.sroa.054.sroa.4.0.copyload = load i64, ptr %.sroa.054.sroa.4.0..sroa_idx, align 8, !dbg !5198
    #dbg_value(i64 %.sroa.054.sroa.4.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5090)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5090)
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5098)
    #dbg_value(i64 %.sroa.032.sroa.4.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5098)
    #dbg_value(i64 %.sroa.032.sroa.5.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5098)
    #dbg_value(i64 %.sroa.032.sroa.6.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5098)
    #dbg_value(i64 %.sroa.032.sroa.7.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5098)
    #dbg_value(i32 %.sroa.433.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5098)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5098)
    #dbg_value(ptr undef, !5085, !DIExpression(), !4919)
    #dbg_value(ptr undef, !5087, !DIExpression(), !4919)
  %i.ci = icmp eq i64 %.sroa.054.sroa.4.0.copyload, %.sroa.032.sroa.4.0.copyload, !dbg !5209
  %i.cj = icmp eq i64 %.sroa.054.sroa.5.0.copyload, %.sroa.032.sroa.5.0.copyload
  %or.cond173 = select i1 %i.ci, i1 %i.cj, i1 false, !dbg !5209
  %i.ck = icmp eq i64 %.sroa.054.sroa.7.0.copyload, %.sroa.032.sroa.7.0.copyload
  %or.cond174 = select i1 %or.cond173, i1 %i.ck, i1 false, !dbg !5209
  %i.cl = icmp eq i32 %.sroa.455.0.copyload, %.sroa.433.0.copyload
  %or.cond175 = and i1 %i.cl, %or.cond174, !dbg !5209
  %i.cm = icmp eq i64 %.sroa.054.sroa.6.0.copyload, %.sroa.032.sroa.6.0.copyload
  %or.cond176 = select i1 %or.cond175, i1 %i.cm, i1 false, !dbg !5209
  br i1 %or.cond176, label %bb.ak, label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5209

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(i64 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5100)
    #dbg_value(i32 %.sroa.455.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5100)
    #dbg_value(i32 poison, !5054, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5100)
  %.sroa.068.0.copyload = load i64, ptr %i.af, align 8, !dbg !5210
    #dbg_value(i64 %.sroa.068.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5100)
    #dbg_value(i64 %2, !5046, !DIExpression(), !4921)
    #dbg_value(i64 %.sroa.068.0.copyload, !5051, !DIExpression(), !4921)
  %i.cn = sub i64 %2, %.sroa.068.0.copyload, !dbg !5211
    #dbg_value(i64 %i.al, !5093, !DIExpression(), !4923)
    #dbg_value(i64 2, !5095, !DIExpression(), !4923)
  %i.co = lshr i64 %i.al, 1, !dbg !5212
    #dbg_value(ptr undef, !4949, !DIExpression(), !4759)
    #dbg_value(ptr undef, !4945, !DIExpression(), !4759)
  %i.cp = icmp ugt i64 %i.cn, %i.co, !dbg !5213
  br i1 %i.cp, label %bb.al, label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5214

bb.al:                                            ; preds = %bb.ak
  store i64 %2, ptr %i.af, align 8, !dbg !5215
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.054.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5215
  br label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5216

_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread: ; preds = %bb.aj, %bb.am, %bb.ak, %bb.ao, %bb.al, %bb.ah, %bb.h
  ret void, !dbg !5217

bb.am:                                            ; preds = %bb.ad
  %.sroa.028.0.copyload = load i64, ptr %0, align 8, !dbg !5192
    #dbg_value(i64 %.sroa.028.0.copyload, !5054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5082)
    #dbg_value(i64 %2, !5046, !DIExpression(), !4925)
    #dbg_value(i64 %.sroa.028.0.copyload, !5051, !DIExpression(), !4925)
  %i.cq = sub i64 %2, %.sroa.028.0.copyload, !dbg !5218
    #dbg_value(ptr undef, !4949, !DIExpression(), !4763)
    #dbg_value(ptr %i.ak, !4945, !DIExpression(), !4763)
  %i.cr = icmp ugt i64 %i.cq, %i.al, !dbg !5219
  br i1 %i.cr, label %bb.ao, label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5220

bb.an:                                            ; preds = %bb.ad
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21, !dbg !5221
  unreachable, !dbg !5221

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !dbg !5222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !dbg !5223
  br label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5224
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery18pto_time_and_space(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2424) %1, i24 %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5234 {
bb.a:
    #dbg_declare(ptr poison, !5443, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5452)
    #dbg_declare(ptr poison, !5443, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5466)
    #dbg_declare(ptr poison, !5443, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5472)
    #dbg_declare(ptr poison, !5473, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5488)
    #dbg_value(ptr poison, !5489, !DIExpression(), !5499)
    #dbg_value(ptr poison, !5514, !DIExpression(), !5498)
    #dbg_value(ptr poison, !5511, !DIExpression(), !5497)
    #dbg_value(ptr poison, !5508, !DIExpression(), !5496)
    #dbg_value(ptr poison, !5505, !DIExpression(), !5517)
    #dbg_value(ptr poison, !5503, !DIExpression(), !5518)
    #dbg_value(ptr poison, !5500, !DIExpression(), !5519)
    #dbg_value(ptr poison, !5521, !DIExpression(), !5537)
    #dbg_value(ptr poison, !5490, !DIExpression(), !5499)
    #dbg_value(ptr poison, !5515, !DIExpression(), !5498)
    #dbg_value(ptr poison, !5512, !DIExpression(), !5497)
    #dbg_value(ptr poison, !5509, !DIExpression(), !5496)
    #dbg_value(ptr poison, !5506, !DIExpression(), !5538)
    #dbg_value(ptr poison, !5504, !DIExpression(), !5539)
    #dbg_value(ptr poison, !5501, !DIExpression(), !5540)
    #dbg_value(ptr poison, !5541, !DIExpression(), !5545)
    #dbg_value(ptr poison, !5546, !DIExpression(), !5548)
    #dbg_declare(ptr poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5549)
    #dbg_value(ptr poison, !5484, !DIExpression(), !5550)
    #dbg_value(ptr poison, !5457, !DIExpression(), !5551)
    #dbg_value(i24 %2, !5424, !DIExpression(DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5552)
    #dbg_value(i24 %2, !5424, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5552)
    #dbg_value(i24 %2, !5424, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !5552)
    #dbg_value(ptr %1, !5423, !DIExpression(), !5552)
    #dbg_value(i64 %3, !5425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5552)
    #dbg_value(i32 %4, !5425, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5552)
    #dbg_value(i32 2, !5553, !DIExpression(), !5562)
    #dbg_value(ptr @24, !5444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5563)
    #dbg_value(i64 44, !5444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5563)
    #dbg_value(i64 1, !5564, !DIExpression(), !5571)
    #dbg_value(i32 2, !5553, !DIExpression(), !5573)
    #dbg_value(ptr @24, !5444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5574)
    #dbg_value(i64 44, !5444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5574)
    #dbg_value(ptr @25, !5444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5575)
    #dbg_value(i64 30, !5444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5575)
    #dbg_declare(ptr poison, !5576, !DIExpression(), !5581)
  %.fr232 = freeze i24 %2                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5582), !dbg !5719
    #dbg_declare(ptr poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5274)
    #dbg_declare(ptr poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5277)
    #dbg_value(ptr %1, !2573, !DIExpression(), !5278)
    #dbg_value(i32 4, !2578, !DIExpression(), !5279)
    #dbg_value(ptr @24, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5280)
    #dbg_value(i64 44, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5280)
    #dbg_value(ptr @25, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5281)
    #dbg_value(i64 30, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5281)
    #dbg_value(ptr %1, !2575, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !5282)
    #dbg_value(ptr %1, !2582, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !5284)
    #dbg_value(ptr %1, !2587, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !5286)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2136, !dbg !5720
  %i.b = load i32, ptr %i.a, align 8, !dbg !5720, !range !2354, !alias.scope !5582, !noundef !1030
    #dbg_value(i64 poison, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5287)
    #dbg_value(i32 %i.b, !2567, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5287)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2144, !dbg !5721
  %i.d = load i64, ptr %i.c, align 8, !dbg !5721, !alias.scope !5582, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.d, !2577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5279)
    #dbg_value(i32 poison, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5279)
    #dbg_value(i64 %i.d, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5289)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5289)
    #dbg_value(i32 4, !2594, !DIExpression(), !5289)
    #dbg_value(i64 4, !2601, !DIExpression(), !5291)
    #dbg_value(i64 4, !2609, !DIExpression(), !5293)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !5294)
    #dbg_value(i64 poison, !2596, !DIExpression(), !5295)
    #dbg_value(i64 poison, !2618, !DIExpression(), !5297)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !5298)
    #dbg_value(i64 %i.d, !2605, !DIExpression(), !5291)
    #dbg_value(i64 %i.d, !2615, !DIExpression(), !5293)
  %i.e = icmp ugt i64 %i.d, 4611686018427387903, !dbg !5722
    #dbg_value(i64 poison, !2606, !DIExpression(), !5299)
    #dbg_value(i1 %i.e, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5299)
    #dbg_value(i1 %i.e, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5301)
  br i1 %i.e, label %select.unfold.i, label %bb.b, !dbg !5723, !prof !2357

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2128, !dbg !5720
  %i.g = load i64, ptr %i.f, align 8, !dbg !5720, !alias.scope !5582, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.g, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5287)
    #dbg_value(i32 poison, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5279)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5289)
    #dbg_value(i32 poison, !2595, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5294)
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !5298)
    #dbg_value(i64 %i.d, !2606, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !5299)
    #dbg_value(i32 poison, !2596, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5295)
    #dbg_value(i32 poison, !2618, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5297)
    #dbg_value(i64 %i.d, !2598, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !5302)
    #dbg_value(i64 %i.d, !2619, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !5297)
    #dbg_value(i1 false, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5304)
  %i.h = shl nuw i64 %i.d, 2, !dbg !5722
    #dbg_value(i64 %i.h, !2606, !DIExpression(), !5299)
    #dbg_value(i64 %i.h, !2598, !DIExpression(), !5302)
    #dbg_value(i64 %i.h, !2619, !DIExpression(), !5297)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2152, !dbg !5721
  %i.j = load i32, ptr %i.i, align 8, !dbg !5721, !range !2354, !alias.scope !5582, !noundef !1030 ; 2 uses
    #dbg_value(i32 %i.j, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5289)
    #dbg_value(i32 %i.j, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5279)
    #dbg_value(i32 %i.j, !2595, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5294)
  %i.k = udiv i32 %i.j, 250000000, !dbg !5724
    #dbg_value(i32 %i.k, !2618, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5297)
    #dbg_value(i32 %i.k, !2596, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5295)
  %.zext32.i = zext nneg i32 %i.k to i64, !dbg !5724
    #dbg_value(i64 %.zext32.i, !2596, !DIExpression(), !5295)
    #dbg_value(i64 %.zext32.i, !2618, !DIExpression(), !5297)
  %i.l = add nuw i64 %i.h, %.zext32.i, !dbg !5725 ; 2 uses
  %i.m = shl nuw i32 %i.j, 2, !dbg !5726
    #dbg_value(i32 %i.m, !2595, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5294)
  %i.n = urem i32 %i.m, 1000000000, !dbg !5727    ; 2 uses
    #dbg_value(i32 %i.n, !2597, !DIExpression(), !5298)
    #dbg_value(i32 %i.n, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5280)
    #dbg_value(i64 %i.l, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5280)
    #dbg_value(i64 %i.l, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5306)
    #dbg_value(i32 %i.n, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5306)
    #dbg_value(i64 0, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5306)
    #dbg_value(i32 1000000, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5306)
    #dbg_value(ptr poison, !2639, !DIExpression(), !5308)
    #dbg_value(ptr poison, !2642, !DIExpression(), !5308)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !5310)
    #dbg_value(ptr poison, !2650, !DIExpression(), !5312)
    #dbg_value(ptr poison, !2654, !DIExpression(), !5312)
    #dbg_value(ptr poison, !2656, !DIExpression(), !5314)
    #dbg_value(ptr poison, !2658, !DIExpression(), !5314)
  %i.o = icmp ne i64 %i.l, 0, !dbg !5728
    #dbg_value(i8 poison, !2647, !DIExpression(), !5315)
  %i.p = icmp samesign ugt i32 %i.n, 1000000, !dbg !5729
  %i.q = select i1 %i.o, i1 true, i1 %i.p, !dbg !5728 ; 2 uses
  %.2.i.i = select i1 %i.q, i64 %i.l, i64 0, !dbg !5730
    #dbg_value(i64 %.2.i.i, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5287)
    #dbg_value(i32 poison, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5287)
    #dbg_value(i64 %i.g, !2661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5317)
    #dbg_value(i32 %i.b, !2661, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5317)
    #dbg_value(i64 %.2.i.i, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5317)
    #dbg_value(i32 poison, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5317)
    #dbg_value(i64 1, !2670, !DIExpression(), !5319)
    #dbg_value(i64 %i.g, !2671, !DIExpression(), !5321)
    #dbg_value(i64 %.2.i.i, !2672, !DIExpression(), !5321)
  %i.r = add i64 %.2.i.i, %i.g, !dbg !5731        ; 4 uses
  %i.s = icmp ult i64 %i.r, %i.g, !dbg !5731
    #dbg_value(i1 %i.s, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5323)
  br i1 %i.s, label %bb.f, label %bb.c, !dbg !5732, !prof !2357

bb.c:                                             ; preds = %bb.b
  %..i.i = select i1 %i.q, i32 %i.n, i32 1000000, !dbg !5730
    #dbg_value(i32 %..i.i, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5287)
    #dbg_value(i32 %..i.i, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5317)
    #dbg_value(i64 %i.r, !2666, !DIExpression(), !5324)
    #dbg_value(i64 %i.r, !2671, !DIExpression(), !5319)
  %i.t = add nuw nsw i32 %..i.i, %i.b, !dbg !5733 ; 3 uses
    #dbg_value(i32 %i.t, !2667, !DIExpression(), !5325)
  %i.u = icmp samesign ugt i32 %i.t, 999999999, !dbg !5734
  br i1 %i.u, label %bb.d, label %_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit, !dbg !5734

bb.d:                                             ; preds = %bb.c
    #dbg_value(i32 %i.t, !2667, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !5325)
  %i.v = icmp eq i64 %i.r, -1, !dbg !5735
    #dbg_value(i1 %i.v, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5327)
  br i1 %i.v, label %bb.f, label %bb.e, !dbg !5736, !prof !2357

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.r, 1, !dbg !5735
  %i.x = add nsw i32 %i.t, -1000000000, !dbg !5737
    #dbg_value(i32 %i.x, !2667, !DIExpression(), !5325)
    #dbg_value(i64 %i.w, !2666, !DIExpression(), !5324)
    #dbg_value(i64 %i.w, !2671, !DIExpression(), !5319)
  br label %_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit, !dbg !5738

select.unfold.i:                                  ; preds = %bb.a
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5280)
    #dbg_value(i32 -1, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5280)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !5739, !noalias !5582
  unreachable, !dbg !5739

bb.f:                                             ; preds = %bb.d, %bb.b
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5281)
    #dbg_value(i32 -1, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5281)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !dbg !5740, !noalias !5582
  unreachable, !dbg !5740

_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit: ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i = phi i32 [ %i.x, %bb.e ], [ %i.t, %bb.c ], !dbg !5741
  %.sroa.0.0.i24.i = phi i64 [ %i.w, %bb.e ], [ %i.r, %bb.c ], !dbg !5741
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5281)
    #dbg_value(i32 %.sroa.4.0.i.i, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5281)
    #dbg_value(i64 %.sroa.0.0.i24.i, !5467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5583)
    #dbg_value(i32 %.sroa.4.0.i.i, !5467, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5583)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2416, !dbg !5742
  %i.z = load i32, ptr %i.y, align 8, !dbg !5742, !noundef !1030 ; 2 uses
    #dbg_value(i32 %i.z, !5557, !DIExpression(), !5562)
    #dbg_value(i32 2, !5584, !DIExpression(), !5339)
    #dbg_value(i32 2, !5588, !DIExpression(), !5340)
    #dbg_value(i32 %i.z, !5587, !DIExpression(), !5339)
    #dbg_value(i32 1, !5599, !DIExpression(), !5343)
    #dbg_value(i32 1, !5589, !DIExpression(), !5344)
    #dbg_value(i32 1, !5590, !DIExpression(), !5345)
    #dbg_value(i32 %i.z, !5591, !DIExpression(), !5346)
    #dbg_value(i32 %i.z, !5600, !DIExpression(), !5343)
  %i.aa = icmp ult i32 %i.z, 32, !dbg !5743
  %i.ab = shl nuw i32 1, %i.z, !dbg !5743
  %.sroa.03.0 = select i1 %i.aa, i32 %i.ab, i32 -1, !dbg !5744
    #dbg_value(i32 %.sroa.03.0, !5468, !DIExpression(), !5583)
    #dbg_value(i64 %.sroa.0.0.i24.i, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5348)
    #dbg_value(i32 %.sroa.4.0.i.i, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5348)
    #dbg_value(i32 %.sroa.03.0, !2594, !DIExpression(), !5348)
  %i.ac = zext i32 %.sroa.03.0 to i64, !dbg !5745 ; 4 uses
    #dbg_value(i64 %i.ac, !2601, !DIExpression(), !5350)
    #dbg_value(i64 %i.ac, !2609, !DIExpression(), !5352)
    #dbg_value(!DIArgList(i32 %.sroa.4.0.i.i, i64 %i.ac), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !5353)
    #dbg_value(i64 poison, !2596, !DIExpression(), !5354)
    #dbg_value(i64 poison, !2618, !DIExpression(), !5356)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !5357)
    #dbg_value(i64 %.sroa.0.0.i24.i, !2605, !DIExpression(), !5350)
    #dbg_value(i64 %.sroa.0.0.i24.i, !2615, !DIExpression(), !5352)
  %i.ad = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i24.i, i64 %i.ac), !dbg !5746 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1, !dbg !5746
    #dbg_value(i64 poison, !2606, !DIExpression(), !5358)
    #dbg_value(i1 %i.ae, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5358)
    #dbg_value(i1 %i.ae, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5360)
  br i1 %i.ae, label %select.unfold, label %bb.g, !dbg !5747, !prof !2357

bb.g:                                             ; preds = %_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit
  %i.af = zext nneg i32 %.sroa.4.0.i.i to i64, !dbg !5748
    #dbg_value(!DIArgList(i64 %i.af, i64 %i.ac), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !5353)
  %i.ag = mul nuw nsw i64 %i.ac, %i.af, !dbg !5748 ; 2 uses
    #dbg_value(i64 %i.ag, !2595, !DIExpression(), !5353)
  %i.ah = urem i64 %i.ag, 1000000000, !dbg !5749
    #dbg_value(i64 %i.ah, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !5357)
  %i.ai = trunc nuw nsw i64 %i.ah to i32, !dbg !5749 ; 6 uses
    #dbg_value(i32 %i.ai, !2597, !DIExpression(), !5357)
  %i.aj = extractvalue { i64, i1 } %i.ad, 0, !dbg !5746 ; 2 uses
    #dbg_value(i64 %i.aj, !2606, !DIExpression(), !5358)
  %i.ak = udiv i64 %i.ag, 1000000000, !dbg !5750
    #dbg_value(i64 %i.ak, !2596, !DIExpression(), !5354)
    #dbg_value(i64 %i.ak, !2618, !DIExpression(), !5356)
    #dbg_value(i64 %i.aj, !2598, !DIExpression(), !5361)
    #dbg_value(i64 %i.aj, !2619, !DIExpression(), !5356)
  %i.al = add i64 %i.aj, %i.ak, !dbg !5751        ; 7 uses
  %i.am = icmp ult i64 %i.al, %i.aj, !dbg !5751
    #dbg_value(i1 %i.am, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5363)
  br i1 %i.am, label %select.unfold, label %bb.h, !dbg !5752, !prof !2357

bb.h:                                             ; preds = %bb.g
    #dbg_value(i64 %i.al, !5443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5563)
    #dbg_value(i32 %i.ai, !5443, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5563)
    #dbg_value(i64 %i.al, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 %i.ai, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
    #dbg_value(ptr %1, !5603, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !5606)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2296, !dbg !5753
  %i.ao = load i64, ptr %i.an, align 8, !dbg !5753, !noundef !1030
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !5753
  br i1 %i.ap, label %bb.ae, label %bb.i, !dbg !5754

select.unfold:                                    ; preds = %bb.g, %_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit
    #dbg_value(i64 poison, !5443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5563)
    #dbg_value(i32 -1, !5443, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5563)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !5755
  unreachable, !dbg !5755

bb.i:                                             ; preds = %bb.h
    #dbg_value(i64 undef, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 -1, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 0, !5428, !DIExpression(), !5608)
  %i.aq = tail call { ptr, i64 } @_RNvMNtCs3f36owOmepS_6quiche6packetNtB2_5Epoch6epochs(i24 131072), !dbg !5618 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0, !dbg !5618 ; 6 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1, !dbg !5618 ; 3 uses
    #dbg_value(ptr %i.ar, !5609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5619)
    #dbg_value(ptr %i.ar, !5620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5623)
    #dbg_value(ptr %i.ar, !5624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5631)
    #dbg_value(i64 %i.as, !5609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5619)
    #dbg_value(i64 %i.as, !5620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5623)
    #dbg_value(i64 %i.as, !5624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5631)
    #dbg_value(i64 %i.as, !5626, !DIExpression(), !5632)
    #dbg_value(i64 %i.as, !5633, !DIExpression(), !5640)
    #dbg_value(ptr %i.ar, !5627, !DIExpression(), !5641)
    #dbg_value(ptr %i.ar, !5642, !DIExpression(), !5648)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ], !dbg !5756
    #dbg_value(ptr %i.ar, !5637, !DIExpression(), !5640)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as, !dbg !5757 ; 8 uses
    #dbg_value(ptr %i.ar, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
    #dbg_value(ptr %i.at, !5429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5649)
  %i.au = and i24 %.fr232, 65536
  %.not122 = icmp eq i24 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 2160
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aw, i64 %i.ac)
  %.fr233 = freeze { i64, i1 } %i.ax              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2168
  %i.az = load i32, ptr %i.ay, align 8, !range !2354
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ba, %i.ac
  %.fr = freeze i64 %i.bb                         ; 2 uses
  %i.bc = urem i64 %.fr, 1000000000
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = extractvalue { i64, i1 } %.fr233, 0     ; 2 uses
  %i.bf = udiv i64 %.fr, 1000000000
  %i.bg = add i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.be
  br i1 %.not122, label %.outer.us.preheader, label %.split

.outer.us.preheader:                              ; preds = %bb.i
    #dbg_value(i64 poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
    #dbg_value(i64 undef, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 -1, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 0, !5428, !DIExpression(), !5608)
    #dbg_value(ptr %i.ar, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
    #dbg_value(ptr undef, !5521, !DIExpression(), !5537)
    #dbg_value(ptr %i.ar, !5531, !DIExpression(), !5650)
    #dbg_value(ptr %i.ar, !5568, !DIExpression(), !5571)
    #dbg_value(ptr %i.at, !5532, !DIExpression(), !5651)
    #dbg_value(ptr poison, !5653, !DIExpression(), !5659)
    #dbg_value(ptr poison, !5656, !DIExpression(), !5660)
  %i.bi = icmp samesign eq i64 %i.as, 0, !dbg !5758
  br i1 %i.bi, label %.split166.us, label %.lr.ph376, !dbg !5658

.lr.ph376:                                        ; preds = %.outer.us.preheader, %.outer.us
  %.sroa.04.0.ph.us386 = phi i64 [ %.sroa.04.1.us, %.outer.us ], [ undef, %.outer.us.preheader ] ; 5 uses
  %.sroa.9.0.ph.us385 = phi i32 [ %.sroa.9.1.us, %.outer.us ], [ -1, %.outer.us.preheader ] ; 6 uses
  %.sroa.017.0.ph.us384 = phi i8 [ %.sroa.017.1.us, %.outer.us ], [ 0, %.outer.us.preheader ] ; 3 uses
  %.sroa.019.0.ph.us383 = phi ptr [ %i.bj, %.outer.us ], [ %i.ar, %.outer.us.preheader ]
    #dbg_value(i64 %.sroa.04.0.ph.us386, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 %.sroa.9.0.ph.us385, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %.sroa.017.0.ph.us384, !5428, !DIExpression(), !5608)
    #dbg_value(ptr %.sroa.019.0.ph.us383, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
  br label %bb.j, !dbg !5658

bb.j:                                             ; preds = %.lr.ph376, %bb.p
  %.sroa.019.0.us375 = phi ptr [ %.sroa.019.0.ph.us383, %.lr.ph376 ], [ %i.bj, %bb.p ] ; 2 uses
    #dbg_value(ptr %.sroa.019.0.us375, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.019.0.us375, i64 1, !dbg !5759 ; 4 uses
    #dbg_value(ptr %i.bj, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
  %i.bk = load i8, ptr %.sroa.019.0.us375, align 1, !dbg !5760, !range !2691, !noundef !1030 ; 5 uses
    #dbg_value(i8 %i.bk, !5430, !DIExpression(), !5661)
    #dbg_value(i8 %i.bk, !5662, !DIExpression(), !5666)
    #dbg_value(i8 %i.bk, !5667, !DIExpression(), !5671)
    #dbg_value(i8 %i.bk, !5672, !DIExpression(), !5675)
    #dbg_value(i8 %i.bk, !5662, !DIExpression(), !5677)
    #dbg_value(i8 %i.bk, !5667, !DIExpression(), !5680)
    #dbg_value(i8 %i.bk, !5672, !DIExpression(), !5683)
    #dbg_value(ptr %1, !5663, !DIExpression(), !5666)
    #dbg_value(ptr %1, !5668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5671)
    #dbg_value(ptr %1, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5688)
    #dbg_value(ptr %1, !5689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5693)
    #dbg_value(i64 3, !5668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5671)
    #dbg_value(i64 3, !5684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5688)
    #dbg_value(i64 3, !5689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5693)
    #dbg_value(i8 %i.bk, !5685, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5688)
    #dbg_value(i8 %i.bk, !5690, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5693)
    #dbg_value(i8 %i.bk, !5685, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5695)
    #dbg_value(i8 %i.bk, !5690, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5698)
  %i.bl = zext nneg i8 %i.bk to i64, !dbg !5761
    #dbg_value(i64 %i.bl, !5685, !DIExpression(), !5688)
    #dbg_value(i64 %i.bl, !5690, !DIExpression(), !5693)
    #dbg_value(i64 %i.bl, !5685, !DIExpression(), !5695)
    #dbg_value(i64 %i.bl, !5690, !DIExpression(), !5698)
  %i.bm = getelementptr inbounds nuw [208 x i8], ptr %1, i64 %i.bl, !dbg !5762 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 200, !dbg !5763
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !5763, !noundef !1030
  %i.bp = icmp eq i64 %i.bo, 0, !dbg !5763
  br i1 %i.bp, label %bb.p, label %bb.k, !dbg !5763

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp eq i8 %i.bk, 2, !dbg !5764
  br i1 %i.bq, label %.split162.us, label %bb.l, !dbg !5764

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
    #dbg_value(ptr %1, !5663, !DIExpression(), !5677)
    #dbg_value(ptr %1, !5668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5680)
    #dbg_value(ptr %1, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5695)
    #dbg_value(ptr %1, !5689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5698)
    #dbg_value(i64 3, !5668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5680)
    #dbg_value(i64 3, !5684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5695)
    #dbg_value(i64 3, !5689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5698)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 168, !dbg !5765
  %i.bs = load i32, ptr %i.br, align 8, !dbg !5765, !range !2325, !noundef !1030 ; 2 uses
    #dbg_value(i64 poison, !5473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5550)
    #dbg_value(i32 %i.bs, !5473, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5550)
    #dbg_value(ptr undef, !5484, !DIExpression(), !5550)
    #dbg_value(ptr poison, !5699, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5705)
  %.not125.us = icmp eq i32 %i.bs, -1, !dbg !5766
  br i1 %.not125.us, label %bb.o, label %bb.m, !dbg !5767

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 160, !dbg !5765
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !5765
    #dbg_value(i64 %i.bu, !5473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5550)
    #dbg_value(i64 %i.bu, !5485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5706)
    #dbg_value(i64 %i.bu, !5702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5705)
    #dbg_value(i32 %i.bs, !5485, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5706)
    #dbg_value(i32 %i.bs, !5702, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5705)
  %i.bv = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %i.bu, i32 noundef %i.bs, i64 noundef %i.al, i32 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28), !dbg !5768 ; 2 uses
  %i.bw = extractvalue { i64, i32 } %i.bv, 0, !dbg !5768 ; 4 uses
  %i.bx = extractvalue { i64, i32 } %i.bv, 1, !dbg !5768 ; 3 uses
    #dbg_value(i64 %i.bw, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 %i.bx, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(ptr undef, !5546, !DIExpression(), !5548)
    #dbg_value(ptr undef, !5541, !DIExpression(), !5545)
  %.not127.us = icmp eq i32 %.sroa.9.0.ph.us385, -1, !dbg !5769
  br i1 %.not127.us, label %.outer.us, label %bb.n, !dbg !5770

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr undef, !5500, !DIExpression(), !5519)
    #dbg_value(ptr undef, !5503, !DIExpression(), !5518)
    #dbg_value(ptr undef, !5501, !DIExpression(), !5540)
    #dbg_value(ptr undef, !5504, !DIExpression(), !5539)
    #dbg_value(ptr undef, !5505, !DIExpression(), !5517)
    #dbg_value(ptr undef, !5508, !DIExpression(), !5496)
    #dbg_value(ptr undef, !5511, !DIExpression(), !5497)
    #dbg_value(ptr undef, !5506, !DIExpression(), !5538)
    #dbg_value(ptr undef, !5509, !DIExpression(), !5496)
    #dbg_value(ptr undef, !5512, !DIExpression(), !5497)
    #dbg_value(ptr undef, !5514, !DIExpression(), !5498)
    #dbg_value(ptr undef, !5515, !DIExpression(), !5498)
    #dbg_value(ptr undef, !5489, !DIExpression(), !5499)
    #dbg_value(ptr undef, !5490, !DIExpression(), !5499)
  %i.by = icmp eq i64 %i.bw, %.sroa.04.0.ph.us386, !dbg !5499
  %i.bz = icmp slt i64 %i.bw, %.sroa.04.0.ph.us386, !dbg !5771
  %i.ca = icmp samesign ult i32 %i.bx, %.sroa.9.0.ph.us385
  %spec.select.us = select i1 %i.by, i1 %i.ca, i1 %i.bz, !dbg !5499
    #dbg_value(i8 poison, !5577, !DIExpression(), !5712)
    #dbg_value(i64 %i.bw, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 %i.bx, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(i8 poison, !5578, !DIExpression(), !5713)
    #dbg_value(i8 poison, !5708, !DIExpression(), !5714)
  br i1 %spec.select.us, label %.thread.us, label %.outer.us, !dbg !5493

bb.o:                                             ; preds = %bb.l
    #dbg_value(i64 undef, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 -1, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(ptr undef, !5546, !DIExpression(), !5548)
    #dbg_value(ptr undef, !5541, !DIExpression(), !5545)
  %.not126.us = icmp eq i32 %.sroa.9.0.ph.us385, -1, !dbg !5769
  br i1 %.not126.us, label %.outer.us, label %.thread.us, !dbg !5770

.thread.us:                                       ; preds = %bb.o, %bb.n
  %.sroa.023.1149.us = phi i64 [ %i.bw, %bb.n ], [ undef, %bb.o ]
  %.sroa.425.1148.us = phi i32 [ %i.bx, %bb.n ], [ -1, %bb.o ]
    #dbg_value(i64 poison, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 poison, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(i64 poison, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 poison, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %i.bk, !5428, !DIExpression(), !5608)
  br label %.outer.us, !dbg !5772

.outer.us:                                        ; preds = %.thread.us, %bb.o, %bb.n, %bb.m
  %.sroa.017.1.us = phi i8 [ %.sroa.017.0.ph.us384, %bb.n ], [ %i.bk, %bb.o ], [ %i.bk, %bb.m ], [ %i.bk, %.thread.us ], !dbg !5607 ; 2 uses
  %.sroa.9.1.us = phi i32 [ %.sroa.9.0.ph.us385, %bb.n ], [ -1, %bb.o ], [ %i.bx, %bb.m ], [ %.sroa.425.1148.us, %.thread.us ], !dbg !5602 ; 2 uses
  %.sroa.04.1.us = phi i64 [ %.sroa.04.0.ph.us386, %bb.n ], [ undef, %bb.o ], [ %i.bw, %bb.m ], [ %.sroa.023.1149.us, %.thread.us ], !dbg !5602 ; 2 uses
    #dbg_value(i64 poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
    #dbg_value(i64 %.sroa.04.1.us, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 %.sroa.9.1.us, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %.sroa.017.1.us, !5428, !DIExpression(), !5608)
    #dbg_value(ptr %i.bj, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery18pto_time_and_space:bb.a
.thread.us218:                                    ; preds = %bb.ad, %bb.ac
  %.sroa.023.1149.us219 = phi i64 [ %i.dn, %bb.ac ], [ undef, %bb.ad ]
  %.sroa.425.1148.us220 = phi i32 [ %i.do, %bb.ac ], [ -1, %bb.ad ]
    #dbg_value(i64 poison, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 poison, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(i64 poison, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 poison, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %i.db, !5428, !DIExpression(), !5608)
  br label %.outer.us201, !dbg !5772

.outer.us201:                                     ; preds = %.thread.us218, %bb.ad, %bb.ac, %bb.ab
  %.sroa.017.1.us221 = phi i8 [ %.sroa.017.0.ph.us205354, %bb.ac ], [ %i.db, %bb.ad ], [ %i.db, %bb.ab ], [ %i.db, %.thread.us218 ], !dbg !5607 ; 2 uses
  %.sroa.9.1.us222 = phi i32 [ %.sroa.9.0.ph.us206355, %bb.ac ], [ -1, %bb.ad ], [ %i.do, %bb.ab ], [ %.sroa.425.1148.us220, %.thread.us218 ], !dbg !5602 ; 2 uses
  %.sroa.04.1.us223 = phi i64 [ %.sroa.04.0.ph.us207356, %bb.ac ], [ undef, %bb.ad ], [ %i.dn, %bb.ab ], [ %.sroa.023.1149.us219, %.thread.us218 ], !dbg !5602 ; 2 uses
    #dbg_value(i64 poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 poison, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
    #dbg_value(i64 %.sroa.04.1.us223, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 %.sroa.9.1.us222, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %.sroa.017.1.us221, !5428, !DIExpression(), !5608)
    #dbg_value(ptr %i.da, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
    #dbg_value(ptr undef, !5521, !DIExpression(), !5537)
    #dbg_value(ptr %i.da, !5531, !DIExpression(), !5650)
    #dbg_value(ptr %i.da, !5568, !DIExpression(), !5571)
    #dbg_value(ptr %i.at, !5532, !DIExpression(), !5651)
    #dbg_value(ptr poison, !5653, !DIExpression(), !5659)
    #dbg_value(ptr poison, !5656, !DIExpression(), !5660)
  %i.ds = icmp eq ptr %i.da, %i.at, !dbg !5758
  br i1 %i.ds, label %.split166.us, label %.lr.ph346, !dbg !5658

.lr.ph:                                           ; preds = %.outer.preheader, %.outer
  %.sroa.04.0.ph341 = phi i64 [ %.sroa.04.1, %.outer ], [ undef, %.outer.preheader ] ; 4 uses
  %.sroa.9.0.ph340 = phi i32 [ %.sroa.9.1, %.outer ], [ -1, %.outer.preheader ] ; 5 uses
  %.sroa.017.0.ph339 = phi i8 [ %.sroa.017.1, %.outer ], [ 0, %.outer.preheader ] ; 2 uses
  %.sroa.019.0.ph338 = phi ptr [ %i.dx, %.outer ], [ %i.ar, %.outer.preheader ]
  %.sroa.0.0.ph337 = phi i64 [ %.sroa.0.1, %.outer ], [ %i.al, %.outer.preheader ] ; 3 uses
  %.sroa.9.0120.ph336 = phi i32 [ %.sroa.9.1121, %.outer ], [ %i.ai, %.outer.preheader ] ; 2 uses
    #dbg_value(i64 %.sroa.04.0.ph341, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 %.sroa.9.0.ph340, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %.sroa.017.0.ph339, !5428, !DIExpression(), !5608)
    #dbg_value(ptr %.sroa.019.0.ph338, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
    #dbg_value(i64 %.sroa.0.0.ph337, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 %.sroa.9.0120.ph336, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
  br label %bb.ag, !dbg !5658

bb.ae:                                            ; preds = %bb.h
  %i.dt = trunc i24 %.fr232 to i1, !dbg !5773
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5602 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5602 ; 2 uses
  br i1 %i.dt, label %bb.at, label %bb.as, !dbg !5773

bb.af:                                            ; preds = %bb.ag
    #dbg_value(i64 %.sroa.0.0.ph337, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 %.sroa.9.0120.ph336, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
    #dbg_value(i64 %.sroa.04.0.ph341, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 %.sroa.9.0.ph340, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %.sroa.017.0.ph339, !5428, !DIExpression(), !5608)
    #dbg_value(ptr %i.dx, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
    #dbg_value(ptr undef, !5521, !DIExpression(), !5537)
    #dbg_value(ptr %i.dx, !5531, !DIExpression(), !5650)
    #dbg_value(ptr %i.dx, !5568, !DIExpression(), !5571)
    #dbg_value(ptr %i.at, !5532, !DIExpression(), !5651)
    #dbg_value(ptr poison, !5653, !DIExpression(), !5659)
    #dbg_value(ptr poison, !5656, !DIExpression(), !5660)
  %i.dw = icmp eq ptr %i.dx, %i.at, !dbg !5758
  br i1 %i.dw, label %.split166.us, label %bb.ag, !dbg !5658

bb.ag:                                            ; preds = %.lr.ph, %bb.af
  %.sroa.019.0330 = phi ptr [ %.sroa.019.0.ph338, %.lr.ph ], [ %i.dx, %bb.af ] ; 2 uses
    #dbg_value(ptr %.sroa.019.0330, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.019.0330, i64 1, !dbg !5759 ; 4 uses
    #dbg_value(ptr %i.dx, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
  %i.dy = load i8, ptr %.sroa.019.0330, align 1, !dbg !5760, !range !2691, !noundef !1030 ; 5 uses
    #dbg_value(i8 %i.dy, !5430, !DIExpression(), !5661)
    #dbg_value(i8 %i.dy, !5662, !DIExpression(), !5666)
    #dbg_value(i8 %i.dy, !5667, !DIExpression(), !5671)
    #dbg_value(i8 %i.dy, !5672, !DIExpression(), !5675)
    #dbg_value(i8 %i.dy, !5662, !DIExpression(), !5677)
    #dbg_value(i8 %i.dy, !5667, !DIExpression(), !5680)
    #dbg_value(i8 %i.dy, !5672, !DIExpression(), !5683)
    #dbg_value(ptr %1, !5663, !DIExpression(), !5666)
    #dbg_value(ptr %1, !5668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5671)
    #dbg_value(ptr %1, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5688)
    #dbg_value(ptr %1, !5689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5693)
    #dbg_value(i64 3, !5668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5671)
    #dbg_value(i64 3, !5684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5688)
    #dbg_value(i64 3, !5689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5693)
    #dbg_value(i8 %i.dy, !5685, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5688)
    #dbg_value(i8 %i.dy, !5690, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5693)
    #dbg_value(i8 %i.dy, !5685, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5695)
    #dbg_value(i8 %i.dy, !5690, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5698)
  %i.dz = zext nneg i8 %i.dy to i64, !dbg !5761
    #dbg_value(i64 %i.dz, !5685, !DIExpression(), !5688)
    #dbg_value(i64 %i.dz, !5690, !DIExpression(), !5693)
    #dbg_value(i64 %i.dz, !5685, !DIExpression(), !5695)
    #dbg_value(i64 %i.dz, !5690, !DIExpression(), !5698)
  %i.ea = getelementptr inbounds nuw [208 x i8], ptr %1, i64 %i.dz, !dbg !5762 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 200, !dbg !5763
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !5763, !noundef !1030
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !5763
  br i1 %i.ed, label %bb.af, label %bb.ah, !dbg !5763

.split166.us:                                     ; preds = %.outer, %bb.af, %.outer.us201, %bb.x, %.outer.us173, %bb.q, %.outer.us, %bb.p, %.outer.preheader, %.outer.us201.preheader, %.outer.us173.preheader, %.outer.us.preheader
  %.us-phi167 = phi i8 [ %.sroa.017.0.ph.us205354, %bb.x ], [ %.sroa.017.0.ph.us384, %bb.p ], [ %.sroa.017.0.ph.us177369, %bb.q ], [ %.sroa.017.0.ph339, %bb.af ], [ 0, %.outer.us.preheader ], [ %.sroa.017.1.us, %.outer.us ], [ 0, %.outer.us173.preheader ], [ %.sroa.017.1.us193, %.outer.us173 ], [ 0, %.outer.us201.preheader ], [ %.sroa.017.1.us221, %.outer.us201 ], [ 0, %.outer.preheader ], [ %.sroa.017.1, %.outer ], !dbg !5774
  %.us-phi168 = phi i32 [ %.sroa.9.0.ph.us206355, %bb.x ], [ %.sroa.9.0.ph.us385, %bb.p ], [ %.sroa.9.0.ph.us178370, %bb.q ], [ %.sroa.9.0.ph340, %bb.af ], [ -1, %.outer.us.preheader ], [ %.sroa.9.1.us, %.outer.us ], [ -1, %.outer.us173.preheader ], [ %.sroa.9.1.us194, %.outer.us173 ], [ -1, %.outer.us201.preheader ], [ %.sroa.9.1.us222, %.outer.us201 ], [ -1, %.outer.preheader ], [ %.sroa.9.1, %.outer ], !dbg !5774
  %.us-phi169 = phi i64 [ %.sroa.04.0.ph.us207356, %bb.x ], [ %.sroa.04.0.ph.us386, %bb.p ], [ %.sroa.04.0.ph.us179371, %bb.q ], [ %.sroa.04.0.ph341, %bb.af ], [ undef, %.outer.us.preheader ], [ %.sroa.04.1.us, %.outer.us ], [ undef, %.outer.us173.preheader ], [ %.sroa.04.1.us195, %.outer.us173 ], [ undef, %.outer.us201.preheader ], [ %.sroa.04.1.us223, %.outer.us201 ], [ undef, %.outer.preheader ], [ %.sroa.04.1, %.outer ], !dbg !5774
  store i64 %.us-phi169, ptr %0, align 8, !dbg !5774
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5774
  store i32 %.us-phi168, ptr %i.ee, align 8, !dbg !5774
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5774
  store i8 %.us-phi167, ptr %i.ef, align 8, !dbg !5774
  br label %bb.ar, !dbg !5775

bb.ah:                                            ; preds = %bb.ag
  %i.eg = icmp eq i8 %i.dy, 2, !dbg !5764
  br i1 %i.eg, label %bb.ai, label %bb.an, !dbg !5764

bb.ai:                                            ; preds = %bb.ah
    #dbg_value(ptr undef, !5457, !DIExpression(), !5551)
    #dbg_value(i64 %i.aw, !5467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5715)
    #dbg_value(i32 %i.z, !5557, !DIExpression(), !5573)
    #dbg_value(i32 2, !5584, !DIExpression(), !5384)
    #dbg_value(i32 2, !5588, !DIExpression(), !5385)
    #dbg_value(i32 %i.z, !5587, !DIExpression(), !5384)
    #dbg_value(i32 1, !5599, !DIExpression(), !5387)
    #dbg_value(i32 1, !5589, !DIExpression(), !5388)
    #dbg_value(i32 1, !5590, !DIExpression(), !5389)
    #dbg_value(i32 %i.z, !5591, !DIExpression(), !5390)
    #dbg_value(i32 %i.z, !5600, !DIExpression(), !5387)
    #dbg_value(i32 %.sroa.03.0, !5468, !DIExpression(), !5715)
    #dbg_value(i64 %i.aw, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5392)
    #dbg_value(i32 %.sroa.03.0, !2594, !DIExpression(), !5392)
    #dbg_value(i64 %i.ac, !2601, !DIExpression(), !5394)
    #dbg_value(i64 %i.ac, !2609, !DIExpression(), !5396)
    #dbg_value(i64 %i.aw, !2605, !DIExpression(), !5394)
    #dbg_value(i64 %i.aw, !2615, !DIExpression(), !5396)
    #dbg_value(i1 %i.cd, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5397)
    #dbg_value(i1 %i.cd, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5399)
    #dbg_value(i32 %i.az, !5467, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5715)
    #dbg_value(i32 %i.az, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5392)
    #dbg_value(i64 %i.bb, !2595, !DIExpression(), !5400)
    #dbg_value(i32 %i.bd, !2597, !DIExpression(), !5401)
    #dbg_value(i64 %i.be, !2606, !DIExpression(), !5397)
    #dbg_value(i64 %i.bf, !2596, !DIExpression(), !5402)
    #dbg_value(i64 %i.bf, !2618, !DIExpression(), !5404)
    #dbg_value(i64 %i.be, !2598, !DIExpression(), !5405)
    #dbg_value(i64 %i.be, !2619, !DIExpression(), !5404)
    #dbg_value(i1 %i.bh, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5407)
    #dbg_value(i32 %i.bd, !5443, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5574)
    #dbg_value(i64 %i.bg, !5443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5574)
    #dbg_value(i64 %i.bg, !5458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5716)
    #dbg_value(i64 %i.bg, !5461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5717)
    #dbg_value(i32 %i.bd, !5458, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5716)
    #dbg_value(i32 %i.bd, !5461, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5717)
    #dbg_value(i64 %.sroa.0.0.ph337, !5460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5717)
    #dbg_value(i32 %.sroa.9.0120.ph336, !5460, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5717)
    #dbg_value(i64 %.sroa.0.0.ph337, !2661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5409)
    #dbg_value(i32 %.sroa.9.0120.ph336, !2661, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5409)
    #dbg_value(i64 %i.bg, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5409)
    #dbg_value(i32 %i.bd, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5409)
    #dbg_value(i64 1, !2670, !DIExpression(), !5411)
    #dbg_value(i64 %.sroa.0.0.ph337, !2671, !DIExpression(), !5413)
    #dbg_value(i64 %i.bg, !2672, !DIExpression(), !5413)
  %i.eh = add i64 %i.bg, %.sroa.0.0.ph337, !dbg !5776 ; 4 uses
  %i.ei = icmp ult i64 %i.eh, %.sroa.0.0.ph337, !dbg !5776
    #dbg_value(i1 %i.ei, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5415)
  br i1 %i.ei, label %bb.am, label %bb.aj, !dbg !5777, !prof !2357

.split162.us:                                     ; preds = %bb.k
  store i64 %.sroa.04.0.ph.us386, ptr %0, align 8, !dbg !5778
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5778
  store i32 %.sroa.9.0.ph.us385, ptr %i.ej, align 8, !dbg !5778
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5778
  store i8 %.sroa.017.0.ph.us384, ptr %i.ek, align 8, !dbg !5778
  br label %bb.ar, !dbg !5779

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(i64 %i.eh, !2666, !DIExpression(), !5416)
    #dbg_value(i64 %i.eh, !2671, !DIExpression(), !5411)
  %i.el = add nuw nsw i32 %.sroa.9.0120.ph336, %i.bd, !dbg !5780 ; 3 uses
    #dbg_value(i32 %i.el, !2667, !DIExpression(), !5417)
  %i.em = icmp samesign ugt i32 %i.el, 999999999, !dbg !5781
  br i1 %i.em, label %bb.ak, label %bb.an, !dbg !5781

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(i32 %i.el, !2667, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !5417)
  %i.en = icmp eq i64 %i.eh, -1, !dbg !5782
    #dbg_value(i1 %i.en, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5419)
  br i1 %i.en, label %bb.am, label %bb.al, !dbg !5783, !prof !2357

bb.al:                                            ; preds = %bb.ak
  %i.eo = add nuw i64 %i.eh, 1, !dbg !5782
  %i.ep = add nsw i32 %i.el, -1000000000, !dbg !5784
    #dbg_value(i32 %i.ep, !2667, !DIExpression(), !5417)
    #dbg_value(i64 %i.eo, !2666, !DIExpression(), !5416)
    #dbg_value(i64 %i.eo, !2671, !DIExpression(), !5411)
  br label %bb.an, !dbg !5785

select.unfold138:                                 ; preds = %bb.z, %bb.s
    #dbg_value(i64 poison, !5443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5574)
    #dbg_value(i32 -1, !5443, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5574)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !5786
  unreachable, !dbg !5786

bb.am:                                            ; preds = %bb.ak, %bb.ai
    #dbg_value(i64 poison, !5443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5575)
    #dbg_value(i32 -1, !5443, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5575)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !dbg !5787
  unreachable, !dbg !5787

bb.an:                                            ; preds = %bb.aj, %bb.al, %bb.ah
  %.sroa.9.1121 = phi i32 [ %.sroa.9.0120.ph336, %bb.ah ], [ %i.ep, %bb.al ], [ %i.el, %bb.aj ], !dbg !5552 ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.ph337, %bb.ah ], [ %i.eo, %bb.al ], [ %i.eh, %bb.aj ], !dbg !5552 ; 2 uses
    #dbg_value(i64 %.sroa.0.1, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 %.sroa.9.1121, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
    #dbg_value(ptr %1, !5663, !DIExpression(), !5677)
    #dbg_value(ptr %1, !5668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5680)
    #dbg_value(ptr %1, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5695)
    #dbg_value(ptr %1, !5689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5698)
    #dbg_value(i64 3, !5668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5680)
    #dbg_value(i64 3, !5684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5695)
    #dbg_value(i64 3, !5689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5698)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 168, !dbg !5765
  %i.er = load i32, ptr %i.eq, align 8, !dbg !5765, !range !2325, !noundef !1030 ; 2 uses
    #dbg_value(i64 poison, !5473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5550)
    #dbg_value(i32 %i.er, !5473, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5550)
    #dbg_value(ptr undef, !5484, !DIExpression(), !5550)
    #dbg_value(ptr poison, !5699, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5705)
  %.not125 = icmp eq i32 %i.er, -1, !dbg !5766
  br i1 %.not125, label %bb.ap, label %bb.ao, !dbg !5767

bb.ao:                                            ; preds = %bb.an
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 160, !dbg !5765
  %i.et = load i64, ptr %i.es, align 8, !dbg !5765
    #dbg_value(i64 %i.et, !5473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5550)
    #dbg_value(i64 %i.et, !5485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5706)
    #dbg_value(i64 %i.et, !5702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5705)
    #dbg_value(i32 %i.er, !5485, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5706)
    #dbg_value(i32 %i.er, !5702, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5705)
  %i.eu = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %i.et, i32 noundef %i.er, i64 noundef %.sroa.0.1, i32 noundef %.sroa.9.1121, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28), !dbg !5768 ; 2 uses
  %i.ev = extractvalue { i64, i32 } %i.eu, 0, !dbg !5768 ; 4 uses
  %i.ew = extractvalue { i64, i32 } %i.eu, 1, !dbg !5768 ; 3 uses
    #dbg_value(i64 %i.ev, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 %i.ew, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(ptr undef, !5546, !DIExpression(), !5548)
    #dbg_value(ptr undef, !5541, !DIExpression(), !5545)
  %.not127 = icmp eq i32 %.sroa.9.0.ph340, -1, !dbg !5769
  br i1 %.not127, label %.outer, label %bb.aq, !dbg !5770

bb.ap:                                            ; preds = %bb.an
    #dbg_value(i64 undef, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 -1, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(ptr undef, !5546, !DIExpression(), !5548)
    #dbg_value(ptr undef, !5541, !DIExpression(), !5545)
  %.not126 = icmp eq i32 %.sroa.9.0.ph340, -1, !dbg !5769
  br i1 %.not126, label %.outer, label %.thread, !dbg !5770

.thread:                                          ; preds = %bb.ap, %bb.aq
  %.sroa.023.1149 = phi i64 [ %i.ev, %bb.aq ], [ undef, %bb.ap ]
  %.sroa.425.1148 = phi i32 [ %i.ew, %bb.aq ], [ -1, %bb.ap ]
    #dbg_value(i64 poison, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 poison, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(i64 poison, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 poison, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %i.dy, !5428, !DIExpression(), !5608)
  br label %.outer, !dbg !5772

bb.aq:                                            ; preds = %bb.ao
    #dbg_value(ptr undef, !5500, !DIExpression(), !5519)
    #dbg_value(ptr undef, !5503, !DIExpression(), !5518)
    #dbg_value(ptr undef, !5501, !DIExpression(), !5540)
    #dbg_value(ptr undef, !5504, !DIExpression(), !5539)
    #dbg_value(ptr undef, !5505, !DIExpression(), !5517)
    #dbg_value(ptr undef, !5508, !DIExpression(), !5496)
    #dbg_value(ptr undef, !5511, !DIExpression(), !5497)
    #dbg_value(ptr undef, !5506, !DIExpression(), !5538)
    #dbg_value(ptr undef, !5509, !DIExpression(), !5496)
    #dbg_value(ptr undef, !5512, !DIExpression(), !5497)
    #dbg_value(ptr undef, !5514, !DIExpression(), !5498)
    #dbg_value(ptr undef, !5515, !DIExpression(), !5498)
    #dbg_value(ptr undef, !5489, !DIExpression(), !5499)
    #dbg_value(ptr undef, !5490, !DIExpression(), !5499)
  %i.ex = icmp eq i64 %i.ev, %.sroa.04.0.ph341, !dbg !5499
  %i.ey = icmp slt i64 %i.ev, %.sroa.04.0.ph341, !dbg !5771
  %i.ez = icmp samesign ult i32 %i.ew, %.sroa.9.0.ph340
  %spec.select = select i1 %i.ex, i1 %i.ez, i1 %i.ey, !dbg !5499
    #dbg_value(i8 poison, !5577, !DIExpression(), !5712)
    #dbg_value(i64 %i.ev, !5431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5707)
    #dbg_value(i32 %i.ew, !5431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5707)
    #dbg_value(i8 poison, !5578, !DIExpression(), !5713)
    #dbg_value(i8 poison, !5708, !DIExpression(), !5714)
  br i1 %spec.select, label %.thread, label %.outer, !dbg !5493

.outer:                                           ; preds = %bb.ao, %bb.ap, %bb.aq, %.thread
  %.sroa.017.1 = phi i8 [ %.sroa.017.0.ph339, %bb.aq ], [ %i.dy, %bb.ap ], [ %i.dy, %bb.ao ], [ %i.dy, %.thread ], !dbg !5607 ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.0.ph340, %bb.aq ], [ -1, %bb.ap ], [ %i.ew, %bb.ao ], [ %.sroa.425.1148, %.thread ], !dbg !5602 ; 2 uses
  %.sroa.04.1 = phi i64 [ %.sroa.04.0.ph341, %bb.aq ], [ undef, %bb.ap ], [ %i.ev, %bb.ao ], [ %.sroa.023.1149, %.thread ], !dbg !5602 ; 2 uses
    #dbg_value(i64 %.sroa.0.1, !5426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5602)
    #dbg_value(i32 %.sroa.9.1121, !5426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5602)
    #dbg_value(i64 %.sroa.04.1, !5427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5607)
    #dbg_value(i32 %.sroa.9.1, !5427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5607)
    #dbg_value(i8 %.sroa.017.1, !5428, !DIExpression(), !5608)
    #dbg_value(ptr %i.dx, !5429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
    #dbg_value(ptr undef, !5521, !DIExpression(), !5537)
    #dbg_value(ptr %i.dx, !5531, !DIExpression(), !5650)
    #dbg_value(ptr %i.dx, !5568, !DIExpression(), !5571)
    #dbg_value(ptr %i.at, !5532, !DIExpression(), !5651)
    #dbg_value(ptr poison, !5653, !DIExpression(), !5659)
    #dbg_value(ptr poison, !5656, !DIExpression(), !5660)
  %i.fa = icmp eq ptr %i.dx, %i.at, !dbg !5758
  br i1 %i.fa, label %.split166.us, label %.lr.ph, !dbg !5658

bb.ar:                                            ; preds = %.split162.us, %bb.at, %bb.as, %.split166.us
  ret void, !dbg !5775

bb.as:                                            ; preds = %bb.ae
  %i.fb = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %3, i32 noundef %4, i64 noundef %i.al, i32 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !dbg !5788 ; 2 uses
  %i.fc = extractvalue { i64, i32 } %i.fb, 0, !dbg !5788
  %i.fd = extractvalue { i64, i32 } %i.fb, 1, !dbg !5788 ; 2 uses
  %i.fe = icmp ult i32 %i.fd, 1000000000, !dbg !5789
  tail call void @llvm.assume(i1 %i.fe), !dbg !5789
  store i64 %i.fc, ptr %0, align 8, !dbg !5790
  store i32 %i.fd, ptr %i.du, align 8, !dbg !5790
  store i8 0, ptr %i.dv, align 8, !dbg !5790
  br label %bb.ar, !dbg !5791

bb.at:                                            ; preds = %bb.ae
  %i.ff = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %3, i32 noundef %4, i64 noundef %i.al, i32 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !dbg !5792 ; 2 uses
  %i.fg = extractvalue { i64, i32 } %i.ff, 0, !dbg !5792
  %i.fh = extractvalue { i64, i32 } %i.ff, 1, !dbg !5792 ; 2 uses
  %i.fi = icmp ult i32 %i.fh, 1000000000, !dbg !5793
  tail call void @llvm.assume(i1 %i.fi), !dbg !5793
  store i64 %i.fg, ptr %0, align 8, !dbg !5794
  store i32 %i.fh, ptr %i.du, align 8, !dbg !5794
  store i8 1, ptr %i.dv, align 8, !dbg !5794
  br label %bb.ar, !dbg !5795
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery30detect_and_remove_lost_packets(ptr noalias nofree noundef nonnull align 8 dereferenceable(2424) %0, i8 noundef range(i8 0, 3) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5801 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  %.sroa.6.i = alloca [136 x i8], align 8         ; 5 uses
    #dbg_value(ptr undef, !2738, !DIExpression(), !5819)
    #dbg_value(ptr undef, !2738, !DIExpression(), !5821)
    #dbg_value(ptr undef, !2776, !DIExpression(), !5822)
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
    #dbg_declare(ptr poison, !6190, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5826)
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [40 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !6146, !DIExpression(), !6196)
    #dbg_value(i8 %1, !6147, !DIExpression(), !6196)
    #dbg_value(i8 %1, !6197, !DIExpression(), !6201)
    #dbg_value(i8 %1, !6202, !DIExpression(), !6206)
    #dbg_value(i8 %1, !6207, !DIExpression(), !6210)
    #dbg_value(i64 %2, !6148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6196)
    #dbg_value(i32 %3, !6148, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6196)
    #dbg_declare(ptr %i.j, !6155, !DIExpression(), !6211)
    #dbg_declare(ptr %i.h, !6156, !DIExpression(), !6212)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2096, !dbg !6556
    #dbg_value(ptr %0, !6215, !DIExpression(DW_OP_plus_uconst, 624, DW_OP_stack_value), !6221)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 656, !dbg !6557
  %i.m = load double, ptr %i.l, align 8, !dbg !6557, !noundef !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6222), !dbg !6558
    #dbg_value(ptr %i.k, !6223, !DIExpression(), !5835)
    #dbg_value(double %i.m, !6227, !DIExpression(), !5835)
    #dbg_value(double %i.m, !6229, !DIExpression(), !5838)
  %i.n = load i64, ptr %i.k, align 8, !dbg !6559, !alias.scope !6222, !noundef !1030 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2104, !dbg !6559
  %i.p = load i32, ptr %i.o, align 8, !dbg !6559, !range !2354, !alias.scope !6222, !noundef !1030 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2128, !dbg !6560
  %i.r = load i64, ptr %i.q, align 8, !dbg !6560, !alias.scope !6222, !noundef !1030 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2136, !dbg !6560
  %i.t = load i32, ptr %i.s, align 8, !dbg !6560, !range !2354, !alias.scope !6222, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.n, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5840)
    #dbg_value(i32 %i.p, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5840)
    #dbg_value(i64 %i.r, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5840)
    #dbg_value(i32 %i.t, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5840)
    #dbg_value(ptr poison, !2639, !DIExpression(), !5842)
    #dbg_value(ptr poison, !2642, !DIExpression(), !5842)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !5844)
    #dbg_value(ptr poison, !2650, !DIExpression(), !5846)
    #dbg_value(ptr poison, !2654, !DIExpression(), !5846)
    #dbg_value(ptr poison, !2656, !DIExpression(), !5848)
    #dbg_value(ptr poison, !2658, !DIExpression(), !5848)
  %i.u = icmp eq i64 %i.r, %i.n, !dbg !6561
    #dbg_value(i8 poison, !2647, !DIExpression(), !5849)
  %i.v = icmp samesign ult i32 %i.t, %i.p, !dbg !6562
  %i.w = icmp ult i64 %i.r, %i.n, !dbg !6562
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w, !dbg !6561 ; 2 uses
  %..i.i = select i1 %i.x, i32 %i.p, i32 %i.t, !dbg !6563
  %.2.i.i = select i1 %i.x, i64 %i.n, i64 %i.r, !dbg !6563
    #dbg_value(i64 %.2.i.i, !6233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(i32 %..i.i, !6233, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5838)
    #dbg_value(ptr poison, !6235, !DIExpression(), !5852)
  %i.y = uitofp i64 %.2.i.i to double, !dbg !6564
  %i.z = uitofp nneg i32 %..i.i to double, !dbg !6565
  %i.aa = fdiv nnan double %i.z, 1.000000e+09, !dbg !6565
  %i.ab = fadd nnan double %i.aa, %i.y, !dbg !6564
  %i.ac = fmul double %i.m, %i.ab, !dbg !6566     ; 2 uses
    #dbg_value(double %i.ac, !6237, !DIExpression(), !5861)
    #dbg_declare(ptr %i.g, !6242, !DIExpression(), !5862)
    #dbg_value(double %i.ac, !6254, !DIExpression(), !5899)
    #dbg_value(double %i.ac, !6302, !DIExpression(), !5902)
    #dbg_value(i32 96, !6276, !DIExpression(), !5903)
    #dbg_value(i128 79228162514264337593543950335, !6279, !DIExpression(), !5904)
    #dbg_value(i128 39614081257132168796771975168, !6280, !DIExpression(), !5905)
    #dbg_value(i32 52, !6289, !DIExpression(), !5906)
    #dbg_value(i128 4503599627370495, !6292, !DIExpression(), !5907)
    #dbg_value(i128 2251799813685248, !6293, !DIExpression(), !5908)
  %i.ad = fcmp olt double %i.ac, 0.000000e+00, !dbg !6567
  br i1 %i.ad, label %_RNvMsc_NtCskKLDkoKarTP_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i.i, label %bb.b, !dbg !6567

bb.b:                                             ; preds = %bb.a
  %i.ae = bitcast double %i.ac to i64, !dbg !6568 ; 3 uses
    #dbg_value(i64 %i.ae, !6269, !DIExpression(), !5909)
  %i.af = and i64 %i.ae, 4503599627370495, !dbg !6569
  %i.ag = or disjoint i64 %i.af, 4503599627370496, !dbg !6569 ; 3 uses
    #dbg_value(i64 %i.ae, !6270, !DIExpression(DW_OP_constu, 4503599627370495, DW_OP_and, DW_OP_constu, 4503599627370496, DW_OP_or, DW_OP_stack_value), !5910)
    #dbg_value(i64 %i.ae, !6308, !DIExpression(DW_OP_constu, 4503599627370495, DW_OP_and, DW_OP_constu, 4503599627370496, DW_OP_or, DW_OP_stack_value), !5913)
  %i.ah = lshr i64 %i.ae, 52, !dbg !6570
  %i.ai = trunc nuw nsw i64 %i.ah to i16, !dbg !6571
  %i.aj = and i16 %i.ai, 2047, !dbg !6571         ; 8 uses
  %i.ak = add nsw i16 %i.aj, -1023, !dbg !6571
    #dbg_value(i16 %i.ak, !6272, !DIExpression(), !5914)
  %i.al = icmp samesign ult i16 %i.aj, 992, !dbg !6572
  br i1 %i.al, label %_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats10loss_delay.exit, label %bb.c, !dbg !6572

bb.c:                                             ; preds = %bb.b
  %i.am = icmp samesign ult i16 %i.aj, 1023, !dbg !6573
  br i1 %i.am, label %bb.e, label %bb.d, !dbg !6573

bb.d:                                             ; preds = %bb.c
  %i.an = icmp samesign ult i16 %i.aj, 1075, !dbg !6574
  br i1 %i.an, label %bb.g, label %bb.f, !dbg !6574

bb.e:                                             ; preds = %bb.c
  %i.ao = zext nneg i64 %i.ag to i128, !dbg !6575
  %i.ap = add nsw i16 %i.aj, -979, !dbg !6576
  %i.aq = zext nneg i16 %i.ap to i128, !dbg !6577
  %i.ar = shl nuw nsw i128 %i.ao, %i.aq, !dbg !6577
    #dbg_value(i128 %i.ar, !6275, !DIExpression(), !5915)
  %i.as = mul nuw nsw i128 %i.ar, 1000000000, !dbg !6578 ; 3 uses
    #dbg_value(i128 %i.as, !6277, !DIExpression(), !5916)
  %i.at = lshr i128 %i.as, 96, !dbg !6579         ; 2 uses
  %i.au = trunc nuw nsw i128 %i.at to i32, !dbg !6579
    #dbg_value(i32 %i.au, !6278, !DIExpression(), !5917)
    #dbg_value(i128 poison, !6281, !DIExpression(), !5918)
    #dbg_value(i1 poison, !6282, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5919)
    #dbg_value(i32 %i.au, !6283, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5920)
  %i.av = and i128 %i.as, 39614081257132168796771975168, !dbg !6580
  %i.aw = icmp eq i128 %i.av, 0, !dbg !6580
    #dbg_value(i1 %i.aw, !6284, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5921)
  br i1 %i.aw, label %bb.k, label %bb.j, !dbg !6581

bb.f:                                             ; preds = %bb.d
  %i.ax = icmp samesign ult i16 %i.aj, 1087, !dbg !6582
  br i1 %i.ax, label %.split32.thread.i, label %_RNvMsc_NtCskKLDkoKarTP_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i.i, !dbg !6582

bb.g:                                             ; preds = %bb.d
  %i.ay = sub nuw nsw i16 1075, %i.aj, !dbg !6583
  %i.az = zext nneg i16 %i.ay to i64, !dbg !6584
  %i.ba = lshr i64 %i.ag, %i.az, !dbg !6584
    #dbg_value(i64 %i.ba, !6287, !DIExpression(), !5922)
  %i.bb = zext nneg i16 %i.ak to i64, !dbg !6585
  %i.bc = shl i64 %i.ae, %i.bb, !dbg !6585
  %i.bd = and i64 %i.bc, 4503599627370495, !dbg !6585
    #dbg_value(i64 %i.bd, !6308, !DIExpression(), !5924)
  %i.be = zext nneg i64 %i.bd to i128, !dbg !6586
    #dbg_value(i128 %i.be, !6288, !DIExpression(), !5925)
  %i.bf = mul nuw nsw i128 %i.be, 1000000000, !dbg !6587 ; 3 uses
    #dbg_value(i128 %i.bf, !6290, !DIExpression(), !5926)
  %i.bg = lshr i128 %i.bf, 52, !dbg !6588         ; 2 uses
  %i.bh = trunc nuw nsw i128 %i.bg to i32, !dbg !6588
    #dbg_value(i32 %i.bh, !6291, !DIExpression(), !5927)
    #dbg_value(i128 poison, !6294, !DIExpression(), !5928)
    #dbg_value(i1 poison, !6295, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5929)
    #dbg_value(i32 %i.bh, !6296, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5930)
  %i.bi = and i128 %i.bf, 2251799813685248, !dbg !6589
  %i.bj = icmp eq i128 %i.bi, 0, !dbg !6589
    #dbg_value(i1 %i.bj, !6297, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5931)
  br i1 %i.bj, label %bb.i, label %bb.h, !dbg !6590

.split32.thread.i:                                ; preds = %bb.f
  %i.bk = add nsw i16 %i.aj, -1075, !dbg !6574
  %i.bl = zext nneg i16 %i.bk to i64, !dbg !6591
  %i.bm = shl nuw i64 %i.ag, %i.bl, !dbg !6591
    #dbg_value(i64 %i.bm, !6287, !DIExpression(), !5922)
    #dbg_value(i32 0, !6286, !DIExpression(), !5932)
    #dbg_value(i32 0, !6299, !DIExpression(), !5933)
    #dbg_value(i64 %i.bm, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5935)
    #dbg_value(i32 0, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5935)
    #dbg_value(i64 0, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5935)
    #dbg_value(i32 1000000, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5935)
    #dbg_value(ptr poison, !2639, !DIExpression(), !5937)
    #dbg_value(ptr poison, !2642, !DIExpression(), !5937)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !5939)
    #dbg_value(ptr poison, !2650, !DIExpression(), !5941)
    #dbg_value(ptr poison, !2654, !DIExpression(), !5941)
    #dbg_value(ptr poison, !2656, !DIExpression(), !5943)
    #dbg_value(ptr poison, !2658, !DIExpression(), !5943)
    #dbg_value(i8 poison, !2647, !DIExpression(), !5944)
  br label %_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats10loss_delay.exit, !dbg !6592

bb.h:                                             ; preds = %bb.g
    #dbg_value(i32 %i.bh, !6296, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5930)
  %i.bn = trunc i128 %i.bg to i1, !dbg !6593
    #dbg_value(i1 %i.bn, !6296, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5930)
  %i.bo = and i128 %i.bf, 4503599627369984, !dbg !6594
    #dbg_value(i128 %i.bo, !6294, !DIExpression(), !5928)
  %i.bp = icmp ne i128 %i.bo, 2251799813685248, !dbg !6595
    #dbg_value(i1 %i.bp, !6295, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5929)
  %spec.select.not.i.i.i = or i1 %i.bp, %i.bn, !dbg !6596
  %i.bq = zext i1 %spec.select.not.i.i.i to i32, !dbg !6597
  br label %bb.i, !dbg !6598

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i.i = phi i32 [ 0, %bb.g ], [ %i.bq, %bb.h ], !dbg !6599
    #dbg_value(i8 poison, !6295, !DIExpression(), !5929)
    #dbg_value(i32 %.sroa.01.0.i.i.i, !6298, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5945)
  %i.br = add nuw nsw i32 %.sroa.01.0.i.i.i, %i.bh, !dbg !6600 ; 2 uses
    #dbg_value(i32 %i.br, !6286, !DIExpression(), !5932)
    #dbg_value(i32 %i.br, !6299, !DIExpression(), !5933)
  %i.bs = icmp eq i32 %i.br, 1000000000, !dbg !6601 ; 2 uses
  %i.bt = zext i1 %i.bs to i64, !dbg !6601
  %spec.select42.i.i.i = add nuw nsw i64 %i.ba, %i.bt, !dbg !6601
  %spec.select43.i.i.i = select i1 %i.bs, i32 0, i32 %i.br, !dbg !6601
  br label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64.exit.i, !dbg !6601

bb.j:                                             ; preds = %bb.e
    #dbg_value(i32 %i.au, !6283, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5920)
  %i.bu = trunc i128 %i.at to i1, !dbg !6602
    #dbg_value(i1 %i.bu, !6283, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5920)
  %i.bv = and i128 %i.as, 79228162514264337593543949824, !dbg !6603
    #dbg_value(i128 %i.bv, !6281, !DIExpression(), !5918)
  %i.bw = icmp ne i128 %i.bv, 39614081257132168796771975168, !dbg !6604
    #dbg_value(i1 %i.bw, !6282, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5919)
  %spec.select39.not.i.i.i = or i1 %i.bw, %i.bu, !dbg !6605
  %i.bx = zext i1 %spec.select39.not.i.i.i to i32, !dbg !6606
  br label %bb.k, !dbg !6607

bb.k:                                             ; preds = %bb.j, %bb.e
  %.sroa.0.0.i.i.i = phi i32 [ 0, %bb.e ], [ %i.bx, %bb.j ], !dbg !6608
    #dbg_value(i8 poison, !6282, !DIExpression(), !5919)
    #dbg_value(i32 %.sroa.0.0.i.i.i, !6285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5946)
  %i.by = add nuw nsw i32 %.sroa.0.0.i.i.i, %i.au, !dbg !6609 ; 2 uses
    #dbg_value(i32 %i.by, !6286, !DIExpression(), !5932)
    #dbg_value(i32 %i.by, !6299, !DIExpression(), !5933)
  %i.bz = icmp eq i32 %i.by, 1000000000, !dbg !6610 ; 2 uses
  %spec.select44.i.i.i = zext i1 %i.bz to i64, !dbg !6611
  %spec.select45.i.i.i = select i1 %i.bz, i32 0, i32 %i.by, !dbg !6611
  br label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64.exit.i, !dbg !6611

_RNvMsc_NtCskKLDkoKarTP_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i.i: ; preds = %bb.f, %bb.a
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.a ], [ 1, %bb.f ], !dbg !6612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6613, !noalias !6222
  store i8 %.sroa.0.0.i.i, ptr %i.g, align 1, !dbg !6613, !noalias !6222
    #dbg_value(ptr %i.g, !6244, !DIExpression(), !5947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6614, !noalias !6222
  store ptr %i.g, ptr %i.f, align 8, !dbg !6614, !noalias !6222
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !6614
  store ptr @_RNvXsb_NtCskKLDkoKarTP_4core4timeNtB5_21TryFromFloatSecsErrorNtNtB7_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !6614, !noalias !6222
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21, !dbg !6615, !noalias !6222
  unreachable, !dbg !6615

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64.exit.i: ; preds = %bb.k, %bb.i
  %.sroa.0.0.ph.i.i = phi i64 [ %spec.select44.i.i.i, %bb.k ], [ %spec.select42.i.i.i, %bb.i ]
  %.sroa.02.0.sink.i.ph.i.i = phi i32 [ %spec.select45.i.i.i, %bb.k ], [ %spec.select43.i.i.i, %bb.i ]
    #dbg_value(i64 %.sroa.0.0.ph.i.i, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5935)
    #dbg_value(i32 %.sroa.02.0.sink.i.ph.i.i, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5935)
    #dbg_value(i64 0, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5935)
    #dbg_value(i32 1000000, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5935)
    #dbg_value(ptr poison, !2639, !DIExpression(), !5937)
    #dbg_value(ptr poison, !2642, !DIExpression(), !5937)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !5939)
    #dbg_value(ptr poison, !2650, !DIExpression(), !5941)
    #dbg_value(ptr poison, !2654, !DIExpression(), !5941)
    #dbg_value(ptr poison, !2656, !DIExpression(), !5943)
    #dbg_value(ptr poison, !2658, !DIExpression(), !5943)
  %.sroa.02.0.sink.i.ph.i.fr.i = freeze i32 %.sroa.02.0.sink.i.ph.i.i, !dbg !6616 ; 2 uses
  %.sroa.0.0.ph.i.fr.i = freeze i64 %.sroa.0.0.ph.i.i, !dbg !6617 ; 2 uses
  %i.ca = icmp eq i64 %.sroa.0.0.ph.i.fr.i, 0, !dbg !6617
    #dbg_value(i8 poison, !2647, !DIExpression(), !5944)
  br i1 %i.ca, label %.split.i, label %_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats10loss_delay.exit, !dbg !6617

.split.i:                                         ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64.exit.i
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.sroa.02.0.sink.i.ph.i.fr.i, i32 1000000), !dbg !6592
  br label %_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats10loss_delay.exit, !dbg !6592

_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats10loss_delay.exit: ; preds = %bb.b, %.split32.thread.i, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64.exit.i, %.split.i
  %i.cb = phi i32 [ %spec.select.i, %.split.i ], [ 1000000, %bb.b ], [ 0, %.split32.thread.i ], [ %.sroa.02.0.sink.i.ph.i.fr.i, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64.exit.i ] ; 2 uses
  %i.cc = phi i64 [ 0, %.split.i ], [ 0, %bb.b ], [ %i.bm, %.split32.thread.i ], [ %.sroa.0.0.ph.i.fr.i, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64.exit.i ], !dbg !6592 ; 2 uses
    #dbg_value(i64 poison, !6149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6316)
    #dbg_value(i32 poison, !6149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6316)
    #dbg_value(ptr %0, !6151, !DIExpression(DW_OP_plus_uconst, 2072, DW_OP_stack_value), !6318)
    #dbg_value(ptr %0, !6198, !DIExpression(), !6201)
    #dbg_value(ptr %0, !6203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6206)
    #dbg_value(ptr %0, !6319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6323)
    #dbg_value(ptr %0, !6324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6328)
    #dbg_value(i64 3, !6203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6206)
    #dbg_value(i64 3, !6319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6323)
    #dbg_value(i64 3, !6324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6328)
    #dbg_value(i8 %1, !6320, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !6323)
    #dbg_value(i8 %1, !6325, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !6328)
  %i.cd = zext nneg i8 %1 to i64, !dbg !6618
    #dbg_value(i64 %i.cd, !6320, !DIExpression(), !6323)
    #dbg_value(i64 %i.cd, !6325, !DIExpression(), !6328)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2072, !dbg !6619 ; 2 uses
    #dbg_value(ptr %i.ce, !6151, !DIExpression(), !6318)
    #dbg_value(i32 %i.cb, !6149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6316)
    #dbg_value(i64 %i.cc, !6149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6316)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !6557
  %i.cg = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %i.cd, !dbg !6620 ; 7 uses
    #dbg_value(ptr %0, !6329, !DIExpression(DW_OP_plus_uconst, 624, DW_OP_stack_value), !6335)
  %i.ch = load i64, ptr %i.cf, align 8, !dbg !6621, !range !2824, !noundef !1030
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !6621
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !6621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6336), !dbg !6622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6337), !dbg !6622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
    #dbg_value(i64 %i.ch, !6169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5954)
    #dbg_value(i64 %i.cj, !6169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5954)
  store i64 %2, ptr %i.e, align 8, !noalias !6338
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %3, ptr %i.ck, align 8, !noalias !6338
    #dbg_value(ptr %i.cg, !6167, !DIExpression(), !5954)
    #dbg_value(i64 %i.cc, !6168, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5954)
    #dbg_value(i32 %i.cb, !6168, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5954)
    #dbg_declare(ptr %i.e, !6170, !DIExpression(), !5956)
    #dbg_value(ptr %i.ce, !6171, !DIExpression(), !5954)
    #dbg_value(ptr %i.ce, !6339, !DIExpression(), !5961)
    #dbg_value(ptr %i.ce, !6348, !DIExpression(), !5965)
    #dbg_value(ptr %i.ce, !6356, !DIExpression(), !5968)
    #dbg_value(ptr %i.ce, !6362, !DIExpression(), !5971)
    #dbg_declare(ptr %i.d, !6176, !DIExpression(), !5972)
    #dbg_declare(ptr %i.b, !6187, !DIExpression(), !5973)
    #dbg_declare(ptr %i.b, !6367, !DIExpression(), !5976)
    #dbg_value(i64 0, !6370, !DIExpression(), !5980)
    #dbg_declare(ptr poison, !6374, !DIExpression(), !5986)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2088, !dbg !6623 ; 4 uses
    #dbg_value(ptr poison, !6343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5987)
    #dbg_value(i64 poison, !6343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5987)
  store i64 0, ptr %i.cl, align 8, !dbg !6624, !alias.scope !6337
    #dbg_value(i64 0, !6172, !DIExpression(), !5988)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 176, !dbg !6625
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 184, !dbg !6625 ; 2 uses
  store i32 -1, ptr %i.cn, align 8, !dbg !6625, !alias.scope !6336
  %i.co = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant11checked_sub(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %i.cc, i32 noundef range(i32 0, 1000000000) %i.cb), !dbg !6626, !noalias !6338 ; 2 uses
  %i.cp = extractvalue { i64, i32 } %i.co, 0, !dbg !6626 ; 2 uses
  %i.cq = extractvalue { i64, i32 } %i.co, 1, !dbg !6626 ; 2 uses
    #dbg_value(i64 %i.cp, !6190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5989)
    #dbg_value(i32 %i.cq, !6190, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5989)
  %.not.i = icmp eq i32 %i.cq, -1, !dbg !6627
  br i1 %.not.i, label %bb.m, label %bb.l, !dbg !6628, !prof !2357

bb.l:                                             ; preds = %_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats10loss_delay.exit
    #dbg_value(i64 %i.cp, !6173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5990)
    #dbg_value(i32 %i.cq, !6173, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5990)
  %i.cr = load i64, ptr %i.cg, align 8, !dbg !6629, !range !2824, !alias.scope !6336, !noundef !1030
    #dbg_value(i64 %i.cr, !6371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5980)
    #dbg_value(i64 poison, !6371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5980)
  %i.cs = trunc nuw i64 %i.cr to i1, !dbg !6630
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !6630
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !6630, !alias.scope !6336
  %.sroa.08.0.i = select i1 %i.cs, i64 %i.cu, i64 0, !dbg !6630 ; 2 uses
    #dbg_value(i64 %.sroa.08.0.i, !6174, !DIExpression(), !5991)
    #dbg_value(i64 0, !6175, !DIExpression(), !5992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6631, !noalias !6338
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !6632 ; 3 uses
  store i64 0, ptr %i.cv, align 8, !dbg !6632, !noalias !6338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6633, !noalias !6338
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 32, !dbg !6633
    #dbg_value(ptr %i.cw, !6385, !DIExpression(), !5997)
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE8iter_mutB1d_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %bb.n unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6634, !noalias !6390

bb.m:                                             ; preds = %_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats10loss_delay.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !dbg !6635, !noalias !6390
  unreachable, !dbg !6635

.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.ab, %bb.ae, %bb.ai, %bb.w, %bb.l
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !2239, !DIExpression(), !5999)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.al, !dbg !6636, !noalias !6391

bb.n:                                             ; preds = %bb.l
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !6633, !noalias !6338
    #dbg_value(ptr %.sroa.0.sroa.0.0.copyload.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6000)
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6633
  %.sroa.0.sroa.7.0.copyload.i = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !6633, !noalias !6338
    #dbg_value(ptr %.sroa.0.sroa.7.0.copyload.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6000)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6633
  %.sroa.9.sroa.0.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !6633, !noalias !6338
    #dbg_value(ptr %.sroa.9.sroa.0.0.copyload.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6000)
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !6633
  %.sroa.9.sroa.5.0.copyload.i = load ptr, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i, align 8, !dbg !6633, !noalias !6338
    #dbg_value(ptr %.sroa.9.sroa.5.0.copyload.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6000)
  %i.cx = trunc nuw i64 %i.ch to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 200 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br label %.outer.i, !dbg !6637

.outer.i:                                         ; preds = %bb.ak, %bb.n
  %.sroa.0.sroa.7.0.ph.i = phi ptr [ %.sroa.0.sroa.7.1.i, %bb.ak ], [ %.sroa.0.sroa.7.0.copyload.i, %bb.n ]
  %.sroa.0.sroa.0.0.ph.i = phi ptr [ %i.de, %bb.ak ], [ %.sroa.0.sroa.0.0.copyload.i, %bb.n ]
  %.sroa.9.sroa.5.0.ph.i = phi ptr [ %.sroa.9.sroa.5.1.i, %bb.ak ], [ %.sroa.9.sroa.5.0.copyload.i, %bb.n ]
  %.sroa.9.sroa.0.0.ph.i = phi ptr [ %.sroa.9.sroa.0.1.i, %bb.ak ], [ %.sroa.9.sroa.0.0.copyload.i, %bb.n ]
  %.sroa.012.0.ph.i = phi i64 [ %i.ey, %bb.ak ], [ 0, %bb.n ] ; 2 uses
  %.sroa.03.0.ph.i = phi i64 [ %.sroa.03.0.i.ph, %bb.ak ], [ 0, %bb.n ]
  br label %.outer, !dbg !6638

.outer:                                           ; preds = %bb.z, %.outer.i
  %.sroa.0.sroa.7.0.i.ph = phi ptr [ %.sroa.0.sroa.7.1.i, %bb.z ], [ %.sroa.0.sroa.7.0.ph.i, %.outer.i ]
  %.sroa.0.sroa.0.0.i.ph = phi ptr [ %i.de, %bb.z ], [ %.sroa.0.sroa.0.0.ph.i, %.outer.i ]
  %.sroa.9.sroa.5.0.i.ph = phi ptr [ %.sroa.9.sroa.5.1.i, %bb.z ], [ %.sroa.9.sroa.5.0.ph.i, %.outer.i ]
  %.sroa.9.sroa.0.0.i.ph = phi ptr [ %.sroa.9.sroa.0.1.i, %bb.z ], [ %.sroa.9.sroa.0.0.ph.i, %.outer.i ]
  %.sroa.03.0.i.ph = phi i64 [ %.sroa.03.2.i, %bb.z ], [ %.sroa.03.0.ph.i, %.outer.i ] ; 7 uses
  br label %bb.o, !dbg !6638

bb.o:                                             ; preds = %.outer, %bb.r
  %.sroa.0.sroa.7.0.i = phi ptr [ %.sroa.0.sroa.7.1.i, %bb.r ], [ %.sroa.0.sroa.7.0.i.ph, %.outer ], !dbg !6633 ; 3 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.de, %bb.r ], [ %.sroa.0.sroa.0.0.i.ph, %.outer ], !dbg !6633 ; 3 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %.sroa.9.sroa.5.1.i, %bb.r ], [ %.sroa.9.sroa.5.0.i.ph, %.outer ], !dbg !6633 ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %.sroa.9.sroa.0.1.i, %bb.r ], [ %.sroa.9.sroa.0.0.i.ph, %.outer ], !dbg !6633 ; 3 uses
    #dbg_value(ptr %.sroa.9.sroa.0.0.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6000)
    #dbg_value(ptr %.sroa.9.sroa.5.0.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6000)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6000)
    #dbg_value(ptr %.sroa.0.sroa.7.0.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6000)
    #dbg_value(i64 %.sroa.03.0.i.ph, !6172, !DIExpression(), !5988)
    #dbg_value(i64 %.sroa.012.0.ph.i, !6175, !DIExpression(), !5992)
    #dbg_value(ptr undef, !2776, !DIExpression(), !5822)
    #dbg_value(i64 1, !6392, !DIExpression(), !6003)
    #dbg_value(i64 1, !6392, !DIExpression(), !6005)
    #dbg_value(ptr undef, !2738, !DIExpression(), !5821)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !2760, !DIExpression(), !6006)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !6393, !DIExpression(), !6003)
    #dbg_value(ptr %.sroa.0.sroa.7.0.i, !2761, !DIExpression(), !6007)
    #dbg_value(ptr poison, !2848, !DIExpression(), !6009)
    #dbg_value(ptr poison, !2851, !DIExpression(), !6010)
  %i.dc = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i, !dbg !6639
  br i1 %i.dc, label %bb.p, label %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.i, !dbg !6638

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %.sroa.9.sroa.0.0.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6000)
    #dbg_value(ptr %.sroa.9.sroa.5.0.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6000)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6000)
    #dbg_value(ptr %.sroa.0.sroa.7.0.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6000)
    #dbg_value(ptr undef, !2738, !DIExpression(), !5819)
    #dbg_value(ptr %.sroa.9.sroa.0.0.i, !2763, !DIExpression(), !6011)
    #dbg_value(ptr %.sroa.9.sroa.0.0.i, !6393, !DIExpression(), !6005)
    #dbg_value(ptr %.sroa.9.sroa.5.0.i, !2764, !DIExpression(), !6012)
    #dbg_value(ptr poison, !2848, !DIExpression(), !6014)
    #dbg_value(ptr poison, !2851, !DIExpression(), !6015)
  %i.dd = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i, !dbg !6640
  br i1 %i.dd, label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch30detect_and_remove_lost_packets.exit, label %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.i, !dbg !6641

_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.i: ; preds = %bb.p, %bb.o
  %.sroa.0.sroa.7.1.i = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.p ], [ %.sroa.0.sroa.7.0.i, %bb.o ], !dbg !6633 ; 3 uses
  %.sroa.9.sroa.5.1.i = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.p ], [ %.sroa.9.sroa.5.0.i, %bb.o ], !dbg !6633 ; 3 uses
  %.sroa.9.sroa.0.1.i = phi ptr [ %.sroa.0.sroa.0.0.i, %bb.p ], [ %.sroa.9.sroa.0.0.i, %bb.o ], !dbg !6633 ; 3 uses
  %.sink16.i.i = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.p ], [ %.sroa.0.sroa.0.0.i, %bb.o ] ; 11 uses
    #dbg_value(ptr %.sroa.9.sroa.0.1.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6000)
    #dbg_value(ptr %.sroa.9.sroa.5.1.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6000)
    #dbg_value(ptr %.sroa.0.sroa.7.1.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6000)
  %i.de = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 176, !dbg !6642 ; 3 uses
    #dbg_value(ptr %.sroa.9.sroa.0.1.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6000)
    #dbg_value(ptr %.sroa.9.sroa.5.1.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6000)
    #dbg_value(ptr %i.de, !6177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6000)
    #dbg_value(ptr %.sroa.0.sroa.7.1.i, !6177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6000)
  %.not56.i = icmp eq ptr %.sink16.i.i, null, !dbg !6643
  br i1 %.not56.i, label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch30detect_and_remove_lost_packets.exit, label %bb.q, !dbg !6643

bb.q:                                             ; preds = %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.i
    #dbg_value(ptr %.sink16.i.i, !6178, !DIExpression(DW_OP_plus_uconst, 168, DW_OP_stack_value), !6018)
    #dbg_value(ptr %.sink16.i.i, !6179, !DIExpression(), !6019)
    #dbg_value(ptr %.sink16.i.i, !6395, !DIExpression(), !6022)
    #dbg_value(ptr %.sink16.i.i, !6398, !DIExpression(), !6025)
  %i.df = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 168, !dbg !6644
  %i.dg = load i64, ptr %i.df, align 8, !dbg !6644, !noalias !6391, !noundef !1030 ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, %.sroa.08.0.i, !dbg !6644
  br i1 %i.dh, label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch30detect_and_remove_lost_packets.exit, label %bb.r, !dbg !6644

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 8, !dbg !6645
  %i.dj = load i32, ptr %i.di, align 8, !dbg !6645, !range !2861, !noalias !6391, !noundef !1030 ; 3 uses
  %i.dk = icmp samesign ult i32 %i.dj, 1000000000, !dbg !6645
  br i1 %i.dk, label %bb.s, label %bb.o, !dbg !6646

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 168 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 8 ; 2 uses
    #dbg_value(ptr %.sink16.i.i, !6181, !DIExpression(), !6026)
    #dbg_value(ptr %.sink16.i.i, !6378, !DIExpression(), !6027)
    #dbg_value(ptr %.sink16.i.i, !6401, !DIExpression(), !6030)
    #dbg_value(ptr %.sink16.i.i, !6404, !DIExpression(), !6033)
    #dbg_value(ptr poison, !6379, !DIExpression(), !6034)
    #dbg_value(ptr poison, !6402, !DIExpression(), !6030)
    #dbg_value(ptr poison, !6405, !DIExpression(), !6033)
    #dbg_value(ptr %.sink16.i.i, !6407, !DIExpression(), !6037)
    #dbg_value(ptr poison, !6408, !DIExpression(), !6037)
    #dbg_value(ptr %.sink16.i.i, !6410, !DIExpression(), !6041)
    #dbg_value(ptr poison, !6411, !DIExpression(), !6041)
    #dbg_value(ptr %.sink16.i.i, !6415, !DIExpression(), !6044)
    #dbg_value(ptr poison, !6419, !DIExpression(), !6045)
  %i.dn = load i64, ptr %.sink16.i.i, align 8, !dbg !6647, !noalias !6391, !noundef !1030 ; 3 uses
  %i.do = icmp eq i64 %i.dn, %i.cp, !dbg !6648
  %i.dp = icmp sle i64 %i.dn, %i.cp, !dbg !6649
  %i.dq = icmp samesign ule i32 %i.dj, %i.cq
  %spec.select.i23 = select i1 %i.do, i1 %i.dq, i1 %i.dp, !dbg !6648 ; 2 uses
    #dbg_value(i8 poison, !6375, !DIExpression(), !6050)
    #dbg_value(i8 poison, !6376, !DIExpression(), !6051)
    #dbg_value(i8 poison, !6421, !DIExpression(), !6052)
    #dbg_value(i1 %spec.select.i23, !6182, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6053)
  br i1 %i.cx, label %bb.t, label %bb.u, !dbg !6650

bb.t:                                             ; preds = %bb.s
    #dbg_value(i64 %i.cj, !6184, !DIExpression(), !6054)
  %i.dr = add i64 %i.dg, %i.cj, !dbg !6651
  %i.ds = icmp uge i64 %.sroa.08.0.i, %i.dr, !dbg !6652
    #dbg_value(i1 %i.ds, !6183, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6055)
  %or.cond.i = select i1 %spec.select.i23, i1 true, i1 %i.ds, !dbg !6653
  br i1 %or.cond.i, label %bb.v, label %bb.w, !dbg !6653

bb.u:                                             ; preds = %bb.s
    #dbg_value(i8 0, !6183, !DIExpression(), !6055)
  br i1 %spec.select.i23, label %bb.v, label %bb.w, !dbg !6653

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !6654
  %i.dt = load i32, ptr %i.dm, align 8, !dbg !6655, !range !2861, !noalias !6391, !noundef !1030 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 1000000000, !dbg !6656
  br i1 %i.du, label %bb.z, label %bb.y, !dbg !6656

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.dv = invoke { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %i.dn, i32 noundef %i.dj, i64 noundef %i.cc, i32 noundef range(i32 0, 1000000000) %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34)
          to label %bb.x unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6657, !noalias !6391 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.dw = extractvalue { i64, i32 } %i.dv, 0, !dbg !6657
  %i.dx = extractvalue { i64, i32 } %i.dv, 1, !dbg !6657 ; 2 uses
  %i.dy = icmp ult i32 %i.dx, 1000000000, !dbg !6658
  call void @llvm.assume(i1 %i.dy), !dbg !6658
  store i64 %i.dw, ptr %i.cm, align 8, !dbg !6659, !alias.scope !6336
  store i32 %i.dx, ptr %i.cn, align 8, !dbg !6659, !alias.scope !6336
  br label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch30detect_and_remove_lost_packets.exit, !dbg !6660

bb.y:                                             ; preds = %bb.v
    #dbg_value(i32 1000000001, !6399, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6056)
  %.sroa.520.0..sroa.014.0.15.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 16, !dbg !6661
  %.sroa.520.0.copyload.i = load i64, ptr %.sroa.520.0..sroa.014.0.15.sroa_idx.i, align 8, !dbg !6661, !noalias !6391 ; 3 uses
  %.sroa.6.0..sroa.014.0.15.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 24, !dbg !6661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.0..sroa.014.0.15.sroa_idx.i, i64 136, i1 false), !dbg !6661, !noalias !6391
  %.sroa.721.0..sroa.014.0.15.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 161, !dbg !6661
  %.sroa.721.0.copyload.i = load i8, ptr %.sroa.721.0..sroa.014.0.15.sroa_idx.i, align 1, !dbg !6661, !noalias !6391
  %.sroa.823.0..sroa.014.0.15.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 163, !dbg !6661
  %.sroa.823.0.copyload.i = load i8, ptr %.sroa.823.0..sroa.014.0.15.sroa_idx.i, align 1, !dbg !6661, !noalias !6391
  store i32 1000000001, ptr %i.dm, align 8, !dbg !6662, !noalias !6391
  %i.dz = icmp samesign ult i32 %i.dt, 1000000000, !dbg !6654
  br i1 %i.dz, label %bb.aa, label %bb.z, !dbg !6663

bb.z:                                             ; preds = %bb.aj, %bb.y, %bb.v
  %.sroa.03.2.i = phi i64 [ %.sroa.03.0.i.ph, %bb.v ], [ %.sroa.03.3.i, %bb.aj ], [ %.sroa.03.0.i.ph, %bb.y ], !dbg !6664
    #dbg_value(i64 %.sroa.03.2.i, !6172, !DIExpression(), !5988)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !6665
  br label %.outer, !dbg !6666

bb.aa:                                            ; preds = %bb.y
  %i.ea = trunc nuw i8 %.sroa.721.0.copyload.i to i1, !dbg !6667
    #dbg_value(i1 %i.ea, !6185, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6057)
    #dbg_value(i64 %.sroa.520.0.copyload.i, !6186, !DIExpression(), !6057)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6668, !noalias !6338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.i, i64 136, i1 false), !dbg !6668, !noalias !6338
  %i.eb = trunc nuw i8 %.sroa.823.0.copyload.i to i1, !dbg !6669
    #dbg_value(i1 %i.eb, !6188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6057)
    #dbg_value(ptr %i.cg, !6368, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !6058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6670, !noalias !6338
  invoke void @_RNvXsM_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBM_(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.b)
          to label %bb.ab unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6671, !noalias !6391

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.cy, !6368, !DIExpression(), !6058)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB4_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEINtB2_10SpecExtendB1h_INtCs5kGgRUzsVpH_8smallvec8IntoIterAB1h_j1_EE11spec_extendB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
          to label %bb.ac unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6672, !noalias !6391

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6673, !noalias !6338
  br i1 %i.ea, label %bb.af, label %bb.ad, !dbg !6674

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %.sroa.03.3.i = phi i64 [ %i.ei, %bb.ag ], [ %.sroa.03.0.i.ph, %bb.ac ], !dbg !6664
    #dbg_value(i64 %.sroa.03.3.i, !6172, !DIExpression(), !5988)
  %i.ec = load i64, ptr %i.dl, align 8, !dbg !6675, !noalias !6391, !noundef !1030
    #dbg_value(i64 %i.ec, !6360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5968)
    #dbg_value(i64 %.sroa.520.0.copyload.i, !6360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5968)
    #dbg_value(ptr %i.ce, !6424, !DIExpression(), !6063)
    #dbg_value(ptr %i.ce, !6433, !DIExpression(), !6066)
    #dbg_value(i64 %i.ec, !6429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6063)
    #dbg_value(i64 %.sroa.520.0.copyload.i, !6429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6063)
    #dbg_value(i64 16, !6438, !DIExpression(), !6071)
  %i.ed = load i64, ptr %i.cl, align 8, !dbg !6676, !alias.scope !6446, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.ed, !6430, !DIExpression(), !6074)
    #dbg_value(i64 %i.ed, !6447, !DIExpression(), !6077)
    #dbg_value(ptr %i.ce, !6444, !DIExpression(), !6078)
  %i.ee = load i64, ptr %i.ce, align 8, !dbg !6677, !range !2871, !alias.scope !6446, !noundef !1030
  %i.ef = icmp eq i64 %i.ed, %i.ee, !dbg !6678
  br i1 %i.ef, label %bb.ae, label %bb.aj, !dbg !6678

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4LostE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce) #20
          to label %bb.aj unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6679, !noalias !6391

bb.af:                                            ; preds = %bb.ac
  %i.eg = load i64, ptr %i.cz, align 8, !dbg !6680, !alias.scope !6336, !noundef !1030
  %i.eh = add i64 %i.eg, -1, !dbg !6680
  store i64 %i.eh, ptr %i.cz, align 8, !dbg !6680, !alias.scope !6336
  br i1 %i.eb, label %bb.ah, label %bb.ag, !dbg !6681

bb.ag:                                            ; preds = %bb.af
  %i.ei = add i64 %.sroa.520.0.copyload.i, %.sroa.03.0.i.ph, !dbg !6682
    #dbg_value(i64 %i.ei, !6172, !DIExpression(), !5988)
  br label %bb.ad, !dbg !6683

bb.ah:                                            ; preds = %bb.af
    #dbg_value(!DIArgList(i64 %.sroa.012.0.ph.i, i64 %.sroa.520.0.copyload.i), !6175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !5992)
  %i.ej = load i64, ptr %i.dl, align 8, !dbg !6684, !noalias !6391, !noundef !1030
    #dbg_value(ptr %i.d, !6452, !DIExpression(), !6083)
    #dbg_value(i64 %i.ej, !6456, !DIExpression(), !6083)
    #dbg_value(ptr %i.d, !6463, !DIExpression(), !6088)
    #dbg_value(ptr %i.d, !6474, !DIExpression(), !6091)
  %i.ek = load i64, ptr %i.cv, align 8, !dbg !6685, !alias.scope !6480, !noalias !6338, !noundef !1030 ; 2 uses
  %i.el = icmp ugt i64 %i.ek, 1, !dbg !6685       ; 2 uses
  %i.em = load ptr, ptr %i.d, align 8, !dbg !6686, !alias.scope !6480, !noalias !6338, !nonnull !1030
  %.sink17.i.i.i = select i1 %i.el, ptr %i.em, ptr %i.d, !dbg !6686
  %.sink16.i.i.i = select i1 %i.el, ptr %i.db, ptr %i.cv, !dbg !6686 ; 2 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 1), !dbg !6686
    #dbg_value(ptr %.sink17.i.i.i, !6457, !DIExpression(), !6096)
    #dbg_value(ptr %.sink16.i.i.i, !6458, !DIExpression(), !6096)
    #dbg_value(i64 %.sink.i.i.i, !6459, !DIExpression(), !6096)
  %i.en = load i64, ptr %.sink16.i.i.i, align 8, !dbg !6687, !alias.scope !6481, !noalias !6338, !noundef !1030 ; 2 uses
  %i.eo = icmp eq i64 %i.en, %.sink.i.i.i, !dbg !6687
  br i1 %i.eo, label %bb.ai, label %bb.ak, !dbg !6687, !prof !2357

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_E21reserve_one_uncheckedCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc58.i unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6688, !noalias !6391

.noexc58.i:                                       ; preds = %bb.ai
    #dbg_value(ptr %i.d, !6483, !DIExpression(), !6101)
    #dbg_value(ptr %i.d, !6491, !DIExpression(), !6102)
  %i.ep = load ptr, ptr %i.d, align 8, !dbg !6689, !alias.scope !6481, !noalias !6338, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.ep, !6457, !DIExpression(), !6096)
    #dbg_value(ptr %i.db, !6458, !DIExpression(), !6096)
  %.pre.i.i = load i64, ptr %i.db, align 8, !dbg !6690, !alias.scope !6481, !noalias !6338
  br label %bb.ak, !dbg !6691

bb.aj:                                            ; preds = %bb.ae, %bb.ad
  %i.eq = load ptr, ptr %i.da, align 8, !dbg !6692, !alias.scope !6446, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.eq, !6450, !DIExpression(), !6077)
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.ed, !dbg !6693 ; 2 uses
    #dbg_value(ptr %i.er, !6431, !DIExpression(), !6109)
    #dbg_value(ptr %i.er, !6493, !DIExpression(), !6112)
    #dbg_value(i64 %i.ec, !6496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6112)
    #dbg_value(i64 %.sroa.520.0.copyload.i, !6496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6112)
  store i64 %i.ec, ptr %i.er, align 8, !dbg !6694, !noalias !6391
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !6694
  store i64 %.sroa.520.0.copyload.i, ptr %i.es, align 8, !dbg !6694, !noalias !6391
  %i.et = add i64 %i.ed, 1, !dbg !6695
  store i64 %i.et, ptr %i.cl, align 8, !dbg !6695, !alias.scope !6446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6696, !noalias !6338
  br label %bb.z, !dbg !6697

bb.ak:                                            ; preds = %.noexc58.i, %bb.ah
  %i.eu = phi i64 [ %.pre.i.i, %.noexc58.i ], [ %i.en, %bb.ah ], !dbg !6690
  %.sroa.01.0.i.i = phi ptr [ %i.db, %.noexc58.i ], [ %.sink16.i.i.i, %bb.ah ], !dbg !6698 ; 2 uses
  %.sroa.0.0.i57.i = phi ptr [ %i.ep, %.noexc58.i ], [ %.sink17.i.i.i, %bb.ah ], !dbg !6698
    #dbg_value(ptr %.sroa.0.0.i57.i, !6457, !DIExpression(), !6096)
    #dbg_value(ptr %.sroa.01.0.i.i, !6458, !DIExpression(), !6096)
    #dbg_value(ptr %.sroa.0.0.i57.i, !6499, !DIExpression(), !6115)
    #dbg_value(i64 %i.eu, !6502, !DIExpression(), !6115)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i57.i, i64 %i.eu, !dbg !6699
    #dbg_value(ptr %i.ev, !6504, !DIExpression(), !6118)
    #dbg_value(i64 %i.ej, !6507, !DIExpression(), !6118)
  store i64 %i.ej, ptr %i.ev, align 8, !dbg !6700, !noalias !6391
  %i.ew = load i64, ptr %.sroa.01.0.i.i, align 8, !dbg !6701, !alias.scope !6481, !noalias !6338, !noundef !1030
  %i.ex = add i64 %i.ew, 1, !dbg !6701
  store i64 %i.ex, ptr %.sroa.01.0.i.i, align 8, !dbg !6701, !alias.scope !6481, !noalias !6338
  %i.ey = add i64 %.sroa.520.0.copyload.i, %.sroa.012.0.ph.i, !dbg !6702
    #dbg_value(i64 %i.ey, !6175, !DIExpression(), !5992)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6696, !noalias !6338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !6665
  br label %.outer.i, !dbg !6703

bb.al:                                            ; preds = %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !6704, !noalias !6391
  unreachable, !dbg !6704

common.resume:                                    ; preds = %bb.ap, %bb.ar, %bb.au, %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp157, %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fl, %bb.ap ], [ %i.fp, %bb.ar ], [ %lpad.thr_comm.split-lp, %bb.au ]
  resume { ptr, i32 } %common.resume.op, !dbg !6196

_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch30detect_and_remove_lost_packets.exit: ; preds = %bb.p, %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.i, %bb.q, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6705, !noalias !6338
  %i.fa = load i64, ptr %i.cl, align 8, !dbg !6706, !alias.scope !6337, !noundef !1030 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 576460752303423488, !dbg !6707
  call void @llvm.assume(i1 %i.fb), !dbg !6708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !6709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !6710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6711, !noalias !6338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6712
    #dbg_value(i64 %.sroa.03.0.i.ph, !6152, !DIExpression(), !6510)
    #dbg_value(i64 %i.fa, !6153, !DIExpression(), !6510)
    #dbg_value(i64 %.sroa.012.0.ph.i, !6154, !DIExpression(), !6510)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 2280, !dbg !6713
  %i.fd = add i64 %.sroa.03.0.i.ph, %.sroa.012.0.ph.i, !dbg !6714
  invoke void @_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight19saturating_subtract(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fc, i64 noundef %i.fd, i64 noundef %2, i32 noundef %3)
          to label %bb.am unwind label %bb.au, !dbg !6715

bb.am:                                            ; preds = %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch30detect_and_remove_lost_packets.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !6716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !6716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !6716
  call void @_RNvXsM_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !dbg !6716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6717
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 864
  br label %bb.an, !dbg !6718

bb.an:                                            ; preds = %bb.as, %bb.am
    #dbg_value(ptr %i.h, !6511, !DIExpression(), !6517)
  %i.fi = load i64, ptr %i.fe, align 8, !dbg !6719, !noundef !1030 ; 3 uses
  %i.fj = load i64, ptr %i.ff, align 8, !dbg !6720, !noundef !1030
  %i.fk = icmp eq i64 %i.fi, %i.fj, !dbg !6719
  br i1 %i.fk, label %bb.ao, label %bb.as, !dbg !6719

bb.ao:                                            ; preds = %bb.an
    #dbg_value(ptr %i.h, !2234, !DIExpression(), !6122)
  invoke void @_RNvXsG_Cs5kGgRUzsVpH_8smallvecINtB5_8IntoIterAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8IntoIterAyj1_EECs3f36owOmepS_6quiche.exit unwind label %bb.ap, !dbg !6721

bb.ap:                                            ; preds = %bb.ao
  %i.fl = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !2239, !DIExpression(), !6124)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %common.resume unwind label %bb.aq, !dbg !6722

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8IntoIterAyj1_EECs3f36owOmepS_6quiche.exit: ; preds = %bb.ao
    #dbg_value(ptr %i.h, !2239, !DIExpression(), !6126)
  call void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h), !dbg !6723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !6725
  %i.fm = insertvalue { i64, i64 } poison, i64 %.sroa.03.0.i.ph, 0, !dbg !6726
  %i.fn = insertvalue { i64, i64 } %i.fm, i64 %i.fa, 1, !dbg !6726
  ret { i64, i64 } %i.fn, !dbg !6726

bb.aq:                                            ; preds = %bb.ap
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !6721
  unreachable, !dbg !6721

bb.ar:                                            ; preds = %bb.as
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8IntoIterAyj1_EECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #18
          to label %common.resume unwind label %bb.at, !dbg !6724

bb.as:                                            ; preds = %bb.an
    #dbg_value(i64 %i.fi, !6515, !DIExpression(), !6518)
    #dbg_value(i64 %i.fi, !6519, !DIExpression(), !6525)
  %i.fq = add i64 %i.fi, 1, !dbg !6727
  store i64 %i.fq, ptr %i.fe, align 8, !dbg !6727
    #dbg_value(ptr %i.h, !6526, !DIExpression(), !6532)
    #dbg_value(ptr %i.h, !6533, !DIExpression(), !6134)
    #dbg_value(ptr %i.h, !6546, !DIExpression(), !6137)
  %i.fr = load i64, ptr %i.fg, align 8, !dbg !6728, !alias.scope !6548, !noundef !1030
  %i.fs = icmp ugt i64 %i.fr, 1, !dbg !6728
  %i.ft = load ptr, ptr %i.h, align 8, !dbg !6729, !alias.scope !6548, !nonnull !1030
  %.sink22.i = select i1 %i.fs, ptr %i.ft, ptr %i.h, !dbg !6729
    #dbg_value(ptr %.sink22.i, !6522, !DIExpression(), !6525)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sink22.i, i64 %i.fi, !dbg !6730
    #dbg_value(ptr %i.fu, !6549, !DIExpression(), !6554)
  %i.fv = load i64, ptr %i.fu, align 8, !dbg !6731, !noundef !1030
    #dbg_value(i64 %i.fv, !6157, !DIExpression(), !6555)
  invoke void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer18on_packet_neutered(ptr noalias nofree noundef nonnull align 8 dereferenceable(1152) %i.fh, i64 noundef %i.fv)
          to label %bb.an unwind label %bb.ar, !dbg !6732

bb.at:                                            ; preds = %bb.au, %bb.ar
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !6733
  unreachable, !dbg !6733

bb.au:                                            ; preds = %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch30detect_and_remove_lost_packets.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !2239, !DIExpression(), !6142)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.at, !dbg !6734
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2424 x i8]) align 8 captures(none) dereferenceable(2424) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6750 {
bb.a:
  %i.a = alloca [624 x i8], align 8               ; 44 uses
  %i.b = alloca [1088 x i8], align 8              ; 6 uses
    #dbg_value(ptr %1, !6849, !DIExpression(), !6852)
    #dbg_value(ptr %1, !6853, !DIExpression(), !6860)
    #dbg_declare(ptr %i.b, !6850, !DIExpression(), !6861)
    #dbg_declare(ptr poison, !6862, !DIExpression(), !6870)
    #dbg_declare(ptr poison, !6872, !DIExpression(), !6883)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6921
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !6922
  %i.d = load i32, ptr %i.c, align 8, !dbg !6922, !range !6884, !noundef !1030
  %i.e = icmp eq i32 %i.d, 4, !dbg !6923
  br i1 %i.e, label %bb.d, label %bb.b, !dbg !6923

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !dbg !6924
  br label %bb.g, !dbg !6925

bb.c:                                             ; preds = %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr25BBRv2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1088) %i.b) #18
          to label %bb.i unwind label %bb.h, !dbg !6926

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248, !dbg !6927
  %i.g = load i64, ptr %i.f, align 8, !dbg !6927, !noundef !1030
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 240, !dbg !6928
  %i.i = load i64, ptr %i.h, align 8, !dbg !6928, !noundef !1030 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208, !dbg !6929
  %i.k = load i64, ptr %i.j, align 8, !dbg !6929, !noundef !1030 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216, !dbg !6929
  %i.m = load i32, ptr %i.l, align 8, !dbg !6929, !range !2354, !noundef !1030 ; 7 uses
    #dbg_value(ptr %1, !6886, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6903)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !6930
  %i.o = load i64, ptr %i.n, align 8, !dbg !6930, !range !6904, !noundef !1030
  %.not = icmp eq i64 %i.o, 2, !dbg !6930
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6931
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.p, !dbg !6931
  call void @_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv23new(ptr noalias nofree noundef nonnull sret([1088 x i8]) align 8 captures(none) dereferenceable(1088) %i.b, i64 noundef %i.g, i64 noundef 20000, i64 noundef %i.i, i64 noundef %i.k, i32 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) %.sroa.0.0), !dbg !6932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6933
  %.sroa.725.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.725.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6935, !alias.scope !6908
  %.sroa.927.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.927.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6935, !alias.scope !6908
  %.sroa.1129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1129.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6935, !alias.scope !6908
  %.sroa.1331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1331.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !6935, !alias.scope !6908
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.741.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6936, !alias.scope !6908
  %.sroa.943.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 288, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.943.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6936, !alias.scope !6908
  %.sroa.1145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 320, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1145.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6936, !alias.scope !6908
  %.sroa.1347.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 352, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1347.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !6936, !alias.scope !6908
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 464, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6937, !alias.scope !6908
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 496, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6937, !alias.scope !6908
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 528, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6937, !alias.scope !6908
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 560, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !6937, !alias.scope !6908
  store i64 0, ptr %i.a, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6934
  store i64 0, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !6934
  store i64 0, ptr %.sroa.523.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.6.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx24.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.8.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx26.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.10.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx28.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.12.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12.0..sroa_idx30.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.1432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !6934
  store i32 -1, ptr %.sroa.1432.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.1533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184, !dbg !6934
  store i32 -1, ptr %.sroa.1533.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 192, !dbg !6934
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224, !dbg !6934
  store i64 0, ptr %.sroa.437.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240, !dbg !6934
  store i64 0, ptr %.sroa.539.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.640.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !dbg !6934, !alias.scope !6908
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.640.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.842.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.842.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.1044.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 312, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1044.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.1246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 344, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1246.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.1449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 376, !dbg !6934
  store i32 -1, ptr %.sroa.1449.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.1551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 392, !dbg !6934
  store i32 -1, ptr %.sroa.1551.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 400, !dbg !6934
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 432, !dbg !6934
  store i64 0, ptr %.sroa.418.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 448, !dbg !6934
  store i64 0, ptr %.sroa.519.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 456, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !dbg !6934, !alias.scope !6908
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 488, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 520, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 552, !dbg !6934
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.1420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 584, !dbg !6934
  store i32 -1, ptr %.sroa.1420.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %.sroa.1521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 600, !dbg !6934
  store i32 -1, ptr %.sroa.1521.0..sroa_idx.i, align 8, !dbg !6934, !alias.scope !6908
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 608, !dbg !6934
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !dbg !6934, !alias.scope !6908
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !6938
  %i.u = load i64, ptr %i.t, align 8, !dbg !6938, !noundef !1030
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 232, !dbg !6938
  %i.w = load i32, ptr %i.v, align 8, !dbg !6938, !range !2354, !noundef !1030
    #dbg_value(i64 %i.k, !2913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6771)
    #dbg_value(i64 %i.k, !2920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6773)
    #dbg_value(i64 %i.k, !2925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6775)
    #dbg_value(i32 %i.m, !2913, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6771)
    #dbg_value(i32 %i.m, !2920, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6773)
    #dbg_value(i32 %i.m, !2925, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6775)
    #dbg_value(i64 %i.u, !2917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6771)
    #dbg_value(i32 %i.w, !2917, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6771)
    #dbg_value(i32 2, !2929, !DIExpression(), !6775)
  %i.x = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.f unwind label %bb.e, !dbg !6939 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery13RecoveryEpochj3_EBK_(ptr noalias nofree noundef align 8 dereferenceable(624) %i.a) #18
          to label %bb.c unwind label %bb.h, !dbg !6940

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %i.k, !2931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6777)
    #dbg_value(i32 %i.m, !2931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6777)
    #dbg_value(i32 2, !2933, !DIExpression(), !6777)
    #dbg_value(i64 %i.k, !2934, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !6778)
    #dbg_value(i64 %i.k, !2935, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !6778)
    #dbg_value(i32 undef, !2937, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !6779)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6779)
  %i.z = lshr i32 %i.m, 1, !dbg !6941
    #dbg_value(i32 %i.z, !2936, !DIExpression(), !6779)
  %i.aa = trunc i64 %i.k to i1, !dbg !6942
  %i.ab = select i1 %i.aa, i32 500000000, i32 0, !dbg !6942
    #dbg_value(!DIArgList(i32 %i.z, i32 %i.ab), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6779)
  %i.ac = add nuw nsw i32 %i.z, %i.ab, !dbg !6943
    #dbg_value(i32 %i.ac, !2936, !DIExpression(), !6779)
  %i.ad = lshr i64 %i.k, 1, !dbg !6944
    #dbg_value(i64 %i.ad, !2934, !DIExpression(), !6778)
  %i.ae = extractvalue { i64, i32 } %i.x, 1, !dbg !6939 ; 3 uses
  %i.af = extractvalue { i64, i32 } %i.x, 0, !dbg !6939 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 262, !dbg !6945
  %i.ah = load i8, ptr %i.ag, align 2, !dbg !6945, !range !2941, !noundef !1030
  %. = zext nneg i8 %i.ah to i64, !dbg !6945
    #dbg_value(ptr %i.b, !6912, !DIExpression(), !6918)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 201, !dbg !6946
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !6946, !range !2941, !noundef !1030
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 261, !dbg !6947
  %i.al = load i8, ptr %i.ak, align 1, !dbg !6947, !range !2941, !noundef !1030
    #dbg_value(i8 %i.al, !6866, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6919)
  %.sroa.01.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !6948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.01.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1088) %i.b, i64 1088, i1 false), !dbg !6949
  %i.am = load i64, ptr %1, align 8, !dbg !6950, !range !2824, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.am, !6879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6920)
    #dbg_value(i64 poison, !6879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6920)
  %i.an = trunc nuw i64 %i.am to i1, !dbg !6951
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6951
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !6951
  %i.aq = mul i64 %i.ap, 1000000, !dbg !6951
  %.sroa.549.0 = select i1 %i.an, i64 %i.aq, i64 undef, !dbg !6951
    #dbg_value(i64 %i.am, !6867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6919)
    #dbg_value(i64 %.sroa.549.0, !6867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6919)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 8 dereferenceable(624) %i.a, i64 624, i1 false), !dbg !6952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6940
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !6948
  store i64 1, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !6948
  store i64 3, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !6948
  store i64 %., ptr %.sroa.01.sroa.6.0..sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648, !dbg !6948
  store <2 x double> <double 1.250000e-01, double 1.125000e+00>, ptr %.sroa.01.sroa.7.0..sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 664, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.0..sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.5.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 680, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.5.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.7.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.7.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.9.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 712, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.9.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.11.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.11.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.13.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 744, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.13.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.15.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.15.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.17.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 776, !dbg !6948
  store i32 0, ptr %.sroa.01.sroa.9.sroa.17.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.19.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 784, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.19.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.20.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !6948
  store i32 0, ptr %.sroa.01.sroa.9.sroa.20.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.22.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 800, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.22.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.23.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !6948
  store i32 0, ptr %.sroa.01.sroa.9.sroa.23.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.25.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 816, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.25.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.26.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 824, !dbg !6948
  store i32 0, ptr %.sroa.01.sroa.9.sroa.26.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.28.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.9.sroa.28.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.29.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !6948
  store i32 0, ptr %.sroa.01.sroa.9.sroa.29.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.9.sroa.31.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 848, !dbg !6948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.9.sroa.31.0..sroa.01.sroa.9.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false), !dbg !6948
  %.sroa.01.sroa.10.sroa.4.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1952, !dbg !6948
  store i64 %i.am, ptr %.sroa.01.sroa.10.sroa.4.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.10.sroa.5.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1960, !dbg !6948
  store i64 %.sroa.549.0, ptr %.sroa.01.sroa.10.sroa.5.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.10.sroa.7.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1976, !dbg !6948
  store i32 -1, ptr %.sroa.01.sroa.10.sroa.7.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.10.sroa.9.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1984, !dbg !6948
  store i64 10, ptr %.sroa.01.sroa.10.sroa.9.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.10.sroa.10.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1992, !dbg !6948
  store i64 10, ptr %.sroa.01.sroa.10.sroa.10.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.10.sroa.11.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2000, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.10.sroa.11.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.10.sroa.12.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2008, !dbg !6948
  store i8 %i.al, ptr %.sroa.01.sroa.10.sroa.12.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.10.sroa.13.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2009, !dbg !6948
  store i8 0, ptr %.sroa.01.sroa.10.sroa.13.0..sroa.01.sroa.10.0..sroa_idx.sroa_idx, align 1, !dbg !6948
  %.sroa.01.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2016, !dbg !6948
  store i64 2, ptr %.sroa.01.sroa.11.0..sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2048, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.12.0..sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.12.sroa.4.0..sroa.01.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2056, !dbg !6948
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.12.sroa.4.0..sroa.01.sroa.12.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.12.sroa.5.0..sroa.01.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2064, !dbg !6948
  %.sroa.01.sroa.13.sroa.4.0..sroa.01.sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2080, !dbg !6948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.12.sroa.5.0..sroa.01.sroa.12.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false), !dbg !6948
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.13.sroa.4.0..sroa.01.sroa.13.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.13.sroa.5.0..sroa.01.sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2088, !dbg !6948
  %.sroa.01.sroa.14.sroa.6.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2112, !dbg !6948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.01.sroa.13.sroa.5.0..sroa.01.sroa.13.0..sroa_idx.sroa_idx, i8 0, i64 20, i1 false), !dbg !6948
  store i64 %i.k, ptr %.sroa.01.sroa.14.sroa.6.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.7.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2120, !dbg !6948
  store i32 %i.m, ptr %.sroa.01.sroa.14.sroa.7.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.9.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2128, !dbg !6948
  store i64 %i.k, ptr %.sroa.01.sroa.14.sroa.9.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.10.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2136, !dbg !6948
  store i32 %i.m, ptr %.sroa.01.sroa.14.sroa.10.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.12.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2144, !dbg !6948
  store i64 %i.ad, ptr %.sroa.01.sroa.14.sroa.12.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.13.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2152, !dbg !6948
  store i32 %i.ac, ptr %.sroa.01.sroa.14.sroa.13.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.15.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2160, !dbg !6948
  store i64 %i.u, ptr %.sroa.01.sroa.14.sroa.15.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.16.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2168, !dbg !6948
  store i32 %i.w, ptr %.sroa.01.sroa.14.sroa.16.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.18.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2176, !dbg !6948
  store i64 %i.af, ptr %.sroa.01.sroa.14.sroa.18.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.19.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2184, !dbg !6948
  store i32 %i.ae, ptr %.sroa.01.sroa.14.sroa.19.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.21.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2192, !dbg !6948
  store i64 %i.k, ptr %.sroa.01.sroa.14.sroa.21.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.22.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2200, !dbg !6948
  store i32 %i.m, ptr %.sroa.01.sroa.14.sroa.22.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.24.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2208, !dbg !6948
  store i64 %i.af, ptr %.sroa.01.sroa.14.sroa.24.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.25.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2216, !dbg !6948
  store i32 %i.ae, ptr %.sroa.01.sroa.14.sroa.25.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.27.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2224, !dbg !6948
  store i64 %i.k, ptr %.sroa.01.sroa.14.sroa.27.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.28.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2232, !dbg !6948
  store i32 %i.m, ptr %.sroa.01.sroa.14.sroa.28.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.30.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2240, !dbg !6948
  store i64 %i.af, ptr %.sroa.01.sroa.14.sroa.30.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.31.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2248, !dbg !6948
  store i32 %i.ae, ptr %.sroa.01.sroa.14.sroa.31.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.33.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2256, !dbg !6948
  store i64 %i.k, ptr %.sroa.01.sroa.14.sroa.33.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.34.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2264, !dbg !6948
  store i32 %i.m, ptr %.sroa.01.sroa.14.sroa.34.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.14.sroa.36.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2272, !dbg !6948
  store i8 0, ptr %.sroa.01.sroa.14.sroa.36.0..sroa.01.sroa.14.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.15.sroa.4.0..sroa.01.sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2288, !dbg !6948
  store i32 -1, ptr %.sroa.01.sroa.15.sroa.4.0..sroa.01.sroa.15.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.15.sroa.6.0..sroa.01.sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2296, !dbg !6948
  %.sroa.01.sroa.15.sroa.10.0..sroa.01.sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2320, !dbg !6948
  store i64 0, ptr %.sroa.01.sroa.15.sroa.10.0..sroa.01.sroa.15.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.01.sroa.15.sroa.11.0..sroa.01.sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2328, !dbg !6948
  store i32 0, ptr %.sroa.01.sroa.15.sroa.11.0..sroa.01.sroa.15.0..sroa_idx.sroa_idx, align 8, !dbg !6948
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2344, !dbg !6948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.01.sroa.15.sroa.6.0..sroa.01.sroa.15.0..sroa_idx.sroa_idx, i8 0, i64 20, i1 false), !dbg !6948
  store i32 -1, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !6948
  %.sroa.142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2352, !dbg !6948
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.142.0..sroa_idx, align 8, !dbg !6948
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2360, !dbg !6948
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2400, !dbg !6948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !6948
  store i64 %i.i, ptr %.sroa.20.0..sroa_idx, align 8, !dbg !6948
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2408, !dbg !6948
  store i64 0, ptr %.sroa.21.0..sroa_idx, align 8, !dbg !6948
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2416, !dbg !6948
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !6948
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2420, !dbg !6948
  store i8 %i.aj, ptr %.sroa.23.0..sroa_idx, align 4, !dbg !6948
  br label %bb.g, !dbg !6925

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6926
  ret void, !dbg !6925

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !6953
  unreachable, !dbg !6953

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.y, !dbg !6953
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats10update_rtt(ptr noalias nofree noundef align 8 dereferenceable(184) initializes((0, 12)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4, i64 noundef %5, i32 noundef range(i32 0, 1000000000) %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6955 {
bb.a:
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7191)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7198)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7206)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7210)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7217)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7221)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7224)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7227)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7234)
    #dbg_declare(ptr poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7237)
    #dbg_value(ptr poison, !7238, !DIExpression(), !7244)
    #dbg_value(i64 %3, !7169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7245)
    #dbg_value(i64 %3, !7230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7246)
    #dbg_value(i32 %4, !7169, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(i32 %4, !7230, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7246)
    #dbg_value(ptr %0, !7167, !DIExpression(), !7245)
    #dbg_value(i64 %1, !7168, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7245)
    #dbg_value(i64 %1, !7199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7247)
    #dbg_value(i64 %1, !7229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7246)
    #dbg_value(i32 %2, !7168, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(i32 %2, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7247)
    #dbg_value(i32 %2, !7229, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7246)
    #dbg_value(i64 %5, !7170, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7245)
    #dbg_value(i32 %6, !7170, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(i1 %7, !7171, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7245)
    #dbg_value(i32 2, !7200, !DIExpression(), !7247)
    #dbg_value(ptr poison, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7248)
    #dbg_value(i64 53, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7248)
    #dbg_value(ptr @25, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7249)
    #dbg_value(i64 30, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7249)
    #dbg_declare(ptr poison, !7250, !DIExpression(), !7257)
    #dbg_value(ptr @31, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7261)
    #dbg_value(i64 35, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7261)
    #dbg_value(i32 3, !7212, !DIExpression(), !7262)
    #dbg_value(ptr @24, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7263)
    #dbg_value(i64 44, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7263)
    #dbg_value(i32 4, !7200, !DIExpression(), !7264)
    #dbg_value(ptr poison, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7265)
    #dbg_value(i64 53, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7265)
    #dbg_value(ptr @25, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7266)
    #dbg_value(i64 30, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7266)
    #dbg_value(i32 7, !7212, !DIExpression(), !7267)
    #dbg_value(ptr @24, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7268)
    #dbg_value(i64 44, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7268)
    #dbg_value(i32 8, !7200, !DIExpression(), !7269)
    #dbg_value(ptr poison, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7270)
    #dbg_value(i64 53, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7270)
    #dbg_value(i32 8, !7200, !DIExpression(), !7271)
    #dbg_value(ptr poison, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7272)
    #dbg_value(i64 53, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7272)
    #dbg_value(ptr @25, !7175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7273)
    #dbg_value(i64 30, !7175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7273)
  store i64 %1, ptr %0, align 8, !dbg !7424
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7424
  store i32 %2, ptr %i.a, align 8, !dbg !7424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !7425 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !7425, !range !2941, !noundef !1030
  %i.d = trunc nuw i8 %i.c to i1, !dbg !7425
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !7245 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit, !dbg !7425

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit: ; preds = %bb.a
    #dbg_value(ptr %i.e, !7275, !DIExpression(), !6983)
    #dbg_value(i64 %5, !7279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6983)
    #dbg_value(i32 %6, !7279, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6983)
    #dbg_value(i64 %1, !7280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6983)
    #dbg_value(i32 %2, !7280, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6983)
    #dbg_value(i64 %5, !7281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6984)
    #dbg_value(i32 %6, !7281, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6984)
    #dbg_value(i64 %1, !7281, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6984)
    #dbg_value(i32 %2, !7281, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !6984)
    #dbg_value(ptr %i.e, !7282, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6985)
    #dbg_value(ptr undef, !7301, !DIExpression(), !6995)
    #dbg_value(ptr %i.e, !7312, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !6996)
    #dbg_value(ptr poison, !7317, !DIExpression(), !6999)
    #dbg_value(ptr poison, !7320, !DIExpression(), !7000)
    #dbg_value(ptr %i.e, !7311, !DIExpression(), !7001)
    #dbg_value(!DIArgList(ptr %i.e, i64 32), !7282, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6985)
    #dbg_value(ptr %i.e, !7284, !DIExpression(), !7002)
  store i64 %5, ptr %i.e, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7426
  store i32 %6, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7426
  store i64 %1, ptr %.sroa.51.0..sroa_idx.i, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7426
  store i32 %2, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !7426, !alias.scope !7323
    #dbg_value(!DIArgList(ptr %i.e, i64 32), !7311, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7001)
  %.sroa.02.0.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !7427
    #dbg_value(ptr %.sroa.02.0.ptr.1.i, !7311, !DIExpression(), !7001)
    #dbg_value(!DIArgList(ptr %i.e, i64 64), !7282, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6985)
    #dbg_value(ptr %.sroa.02.0.ptr.1.i, !7284, !DIExpression(), !7002)
  store i64 %5, ptr %.sroa.02.0.ptr.1.i, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.4.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !7426
  store i32 %6, ptr %.sroa.4.0..sroa_idx.1.i, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.51.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !7426
  store i64 %1, ptr %.sroa.51.0..sroa_idx.1.i, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.6.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !7426
  store i32 %2, ptr %.sroa.6.0..sroa_idx.1.i, align 8, !dbg !7426, !alias.scope !7323
    #dbg_value(!DIArgList(ptr %i.e, i64 64), !7311, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7001)
  %.sroa.02.0.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !7427
    #dbg_value(ptr %.sroa.02.0.ptr.2.i, !7311, !DIExpression(), !7001)
    #dbg_value(!DIArgList(ptr %i.e, i64 96), !7282, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6985)
    #dbg_value(ptr %.sroa.02.0.ptr.2.i, !7284, !DIExpression(), !7002)
  store i64 %5, ptr %.sroa.02.0.ptr.2.i, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.4.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !7426
  store i32 %6, ptr %.sroa.4.0..sroa_idx.2.i, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.51.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !7426
  store i64 %1, ptr %.sroa.51.0..sroa_idx.2.i, align 8, !dbg !7426, !alias.scope !7323
  %.sroa.6.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !7426
  store i32 %2, ptr %.sroa.6.0..sroa_idx.2.i, align 8, !dbg !7426, !alias.scope !7323
    #dbg_value(!DIArgList(ptr %i.e, i64 96), !7311, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7001)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7428
  store i64 %1, ptr %i.f, align 8, !dbg !7428
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7428
  store i32 %2, ptr %i.g, align 8, !dbg !7428
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7429
  store i64 %1, ptr %i.h, align 8, !dbg !7429
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7429
  store i32 %2, ptr %i.i, align 8, !dbg !7429
    #dbg_value(i64 %1, !2931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7006)
    #dbg_value(i32 %2, !2931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7006)
    #dbg_value(i32 2, !2933, !DIExpression(), !7006)
  %i.j = lshr i64 %1, 1, !dbg !7430
    #dbg_value(i64 %i.j, !2934, !DIExpression(), !7007)
    #dbg_value(i64 poison, !2935, !DIExpression(), !7007)
    #dbg_value(i32 poison, !2936, !DIExpression(), !7008)
    #dbg_value(i32 poison, !2937, !DIExpression(), !7008)
    #dbg_value(i64 %1, !2935, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !7007)
  %i.k = trunc i64 %1 to i1, !dbg !7431
    #dbg_value(i32 undef, !2937, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !7008)
  %i.l = lshr i32 %2, 1, !dbg !7432
    #dbg_value(i32 %i.l, !2936, !DIExpression(), !7008)
  %i.m = select i1 %i.k, i32 500000000, i32 0, !dbg !7431
  %i.n = add nuw nsw i32 %i.l, %i.m, !dbg !7433
    #dbg_value(i32 %i.n, !2936, !DIExpression(), !7008)
    #dbg_value(i64 %i.j, !7324, !DIExpression(), !7013)
    #dbg_value(i64 %i.j, !7332, !DIExpression(), !7016)
    #dbg_value(i32 %i.n, !7328, !DIExpression(), !7013)
    #dbg_value(i32 %i.n, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7248)
    #dbg_value(i64 %i.j, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7248)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7434
  store i64 %i.j, ptr %i.o, align 8, !dbg !7434
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7434
  store i32 %i.n, ptr %i.p, align 8, !dbg !7434
  store i8 1, ptr %i.b, align 8, !dbg !7435
  br label %bb.c, !dbg !7436

bb.b:                                             ; preds = %bb.a
  %i.q = tail call { i64, i32 } @_RNvMs_NtCs3f36owOmepS_6quiche6minmaxINtB4_6MinmaxNtNtCskKLDkoKarTP_4core4time8DurationE11running_minB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.e, i64 noundef 300, i32 noundef 0, i64 noundef %5, i32 noundef %6, i64 noundef %1, i32 noundef %2), !dbg !7437 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7438 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !7438, !noundef !1030 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7438 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !dbg !7438, !range !2354, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.s, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7018)
    #dbg_value(i32 %i.u, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7018)
    #dbg_value(i64 %1, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7018)
    #dbg_value(i32 %2, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7018)
    #dbg_value(ptr poison, !2639, !DIExpression(), !7020)
    #dbg_value(ptr poison, !2642, !DIExpression(), !7020)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !7022)
    #dbg_value(ptr poison, !2650, !DIExpression(), !7024)
    #dbg_value(ptr poison, !2654, !DIExpression(), !7024)
    #dbg_value(ptr poison, !2656, !DIExpression(), !7026)
    #dbg_value(ptr poison, !2658, !DIExpression(), !7026)
  %i.v = icmp eq i64 %1, %i.s, !dbg !7439
    #dbg_value(i8 poison, !2647, !DIExpression(), !7027)
  %i.w = icmp samesign ult i32 %2, %i.u, !dbg !7440
  %i.x = icmp ult i64 %1, %i.s, !dbg !7440
  %i.y = select i1 %i.v, i1 %i.w, i1 %i.x, !dbg !7439 ; 2 uses
  %..i = select i1 %i.y, i32 %i.u, i32 %2, !dbg !7441
  %.2.i = select i1 %i.y, i64 %i.s, i64 %1, !dbg !7441
  store i64 %.2.i, ptr %i.r, align 8, !dbg !7442
  store i32 %..i, ptr %i.t, align 8, !dbg !7442
  br i1 %7, label %bb.h, label %bb.d, !dbg !7443

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit150, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit
  ret void, !dbg !7436

bb.d:                                             ; preds = %bb.h, %bb.b
  %.sroa.5.0 = phi i32 [ %..i133, %bb.h ], [ %4, %bb.b ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.2.i134, %bb.h ], [ %3, %bb.b ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0, !7230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7246)
    #dbg_value(i64 %.sroa.0.0, !7169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7245)
    #dbg_value(i32 %.sroa.5.0, !7230, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7246)
    #dbg_value(i32 %.sroa.5.0, !7169, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(i64 %1, !7172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7335)
    #dbg_value(i64 %1, !7199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7271)
    #dbg_value(i32 %2, !7172, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7335)
    #dbg_value(i32 %2, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7271)
    #dbg_value(ptr poison, !7258, !DIExpression(), !7336)
    #dbg_value(ptr poison, !7337, !DIExpression(), !7341)
    #dbg_value(ptr poison, !7342, !DIExpression(), !7346)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7444
  %i.aa = load i64, ptr %i.z, align 8, !dbg !7444, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.aa, !7192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7347)
    #dbg_value(i32 poison, !7192, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7347)
    #dbg_value(i64 %.sroa.0.0, !7193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7347)
    #dbg_value(i32 %.sroa.5.0, !7193, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7347)
    #dbg_value(i64 %i.aa, !2661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7032)
    #dbg_value(i32 poison, !2661, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7032)
    #dbg_value(i64 %.sroa.0.0, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7032)
    #dbg_value(i32 %.sroa.5.0, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7032)
    #dbg_value(i64 1, !2670, !DIExpression(), !7034)
    #dbg_value(i64 %i.aa, !2671, !DIExpression(), !7036)
    #dbg_value(i64 %.sroa.0.0, !2672, !DIExpression(), !7036)
  %i.ab = add i64 %i.aa, %.sroa.0.0, !dbg !7445   ; 4 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa, !dbg !7445
    #dbg_value(i1 %i.ac, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7038)
  br i1 %i.ac, label %bb.j, label %bb.e, !dbg !7446, !prof !2357

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7444
  %i.ae = load i32, ptr %i.ad, align 8, !dbg !7444, !range !2354, !noundef !1030
    #dbg_value(i32 %i.ae, !7192, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7347)
    #dbg_value(i32 %i.ae, !2661, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7032)
    #dbg_value(i64 %i.ab, !2666, !DIExpression(), !7039)
    #dbg_value(i64 %i.ab, !2671, !DIExpression(), !7034)
  %i.af = add nuw nsw i32 %i.ae, %.sroa.5.0, !dbg !7447 ; 3 uses
    #dbg_value(i32 %i.af, !2667, !DIExpression(), !7040)
  %i.ag = icmp samesign ugt i32 %i.af, 999999999, !dbg !7448
  br i1 %i.ag, label %bb.f, label %bb.i, !dbg !7448

bb.f:                                             ; preds = %bb.e
    #dbg_value(i32 %i.af, !2667, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !7040)
  %i.ah = icmp eq i64 %i.ab, -1, !dbg !7449
    #dbg_value(i1 %i.ah, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7042)
  br i1 %i.ah, label %bb.j, label %bb.g, !dbg !7450, !prof !2357

bb.g:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.ab, 1, !dbg !7449
  %i.aj = add nsw i32 %i.af, -1000000000, !dbg !7451
    #dbg_value(i32 %i.aj, !2667, !DIExpression(), !7040)
    #dbg_value(i64 %i.ai, !2666, !DIExpression(), !7039)
    #dbg_value(i64 %i.ai, !2671, !DIExpression(), !7034)
  br label %bb.i, !dbg !7452

bb.h:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7453
  %i.al = load i64, ptr %i.ak, align 8, !dbg !7453, !noundef !1030 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7453
  %i.an = load i32, ptr %i.am, align 8, !dbg !7453, !range !2354, !noundef !1030 ; 2 uses
    #dbg_value(i64 %3, !7348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7045)
    #dbg_value(i32 %4, !7348, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7045)
    #dbg_value(i64 %i.al, !7349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7045)
    #dbg_value(i32 %i.an, !7349, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7045)
    #dbg_value(ptr poison, !2639, !DIExpression(), !7047)
    #dbg_value(ptr poison, !2642, !DIExpression(), !7047)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !7049)
    #dbg_value(ptr poison, !2650, !DIExpression(), !7051)
    #dbg_value(ptr poison, !2654, !DIExpression(), !7051)
    #dbg_value(ptr poison, !2656, !DIExpression(), !7053)
    #dbg_value(ptr poison, !2658, !DIExpression(), !7053)
  %i.ao = icmp eq i64 %i.al, %3, !dbg !7454
    #dbg_value(i8 poison, !2647, !DIExpression(), !7054)
  %i.ap = icmp samesign ult i32 %i.an, %4, !dbg !7455
  %i.aq = icmp ult i64 %i.al, %3, !dbg !7455
  %i.ar = select i1 %i.ao, i1 %i.ap, i1 %i.aq, !dbg !7454 ; 2 uses
  %..i133 = select i1 %i.ar, i32 %i.an, i32 %4, !dbg !7456
  %.2.i134 = select i1 %i.ar, i64 %i.al, i64 %3, !dbg !7456
    #dbg_value(i64 %.2.i134, !7169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7245)
    #dbg_value(i64 %.2.i134, !7230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7246)
    #dbg_value(i32 %..i133, !7169, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(i32 %..i133, !7230, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7246)
  br label %bb.d, !dbg !7457

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.i = phi i32 [ %i.aj, %bb.g ], [ %i.af, %bb.e ], !dbg !7458
  %.sroa.0.0.i = phi i64 [ %i.ai, %bb.g ], [ %i.ab, %bb.e ], !dbg !7458 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.i, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7249)
    #dbg_value(i64 %.sroa.0.0.i, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7249)
    #dbg_value(ptr poison, !7259, !DIExpression(), !7351)
    #dbg_value(ptr poison, !7338, !DIExpression(), !7341)
    #dbg_value(ptr poison, !7343, !DIExpression(), !7346)
  %i.as = icmp eq i64 %1, %.sroa.0.0.i, !dbg !7346
  %i.at = icmp uge i64 %1, %.sroa.0.0.i, !dbg !7459
  %i.au = icmp samesign uge i32 %2, %.sroa.4.0.i
  %spec.select = select i1 %i.as, i1 %i.au, i1 %i.at, !dbg !7346
    #dbg_value(i8 poison, !7252, !DIExpression(), !7357)
    #dbg_value(i8 poison, !7253, !DIExpression(), !7358)
    #dbg_value(i8 poison, !7353, !DIExpression(), !7359)
  br i1 %spec.select, label %bb.k, label %bb.s, !dbg !7255

bb.j:                                             ; preds = %bb.f, %bb.d
    #dbg_value(i64 poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7249)
    #dbg_value(i32 -1, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7249)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !dbg !7460
  unreachable, !dbg !7460

bb.k:                                             ; preds = %bb.i
    #dbg_value(i64 %1, !7360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7062)
    #dbg_value(i32 %2, !7360, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7062)
    #dbg_value(i64 %.sroa.0.0, !7362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7062)
    #dbg_value(i32 %.sroa.5.0, !7362, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7062)
    #dbg_value(i64 1, !7367, !DIExpression(), !7065)
    #dbg_value(i64 %1, !7368, !DIExpression(), !7067)
    #dbg_value(i64 %.sroa.0.0, !7369, !DIExpression(), !7067)
  %i.av = icmp ult i64 %1, %.sroa.0.0, !dbg !7461
  br i1 %i.av, label %bb.u, label %bb.l, !dbg !7461

bb.l:                                             ; preds = %bb.k
  %i.aw = sub nuw i64 %1, %.sroa.0.0, !dbg !7462  ; 3 uses
    #dbg_value(i64 %i.aw, !7363, !DIExpression(), !7068)
    #dbg_value(i64 %i.aw, !7365, !DIExpression(), !7069)
    #dbg_value(i64 %i.aw, !7368, !DIExpression(), !7065)
  %.not.i = icmp samesign ult i32 %2, %.sroa.5.0, !dbg !7463
  br i1 %.not.i, label %bb.m, label %bb.o, !dbg !7463

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !7464
  br i1 %i.ax, label %bb.u, label %bb.n, !dbg !7464

bb.n:                                             ; preds = %bb.m
  %i.ay = add i64 %i.aw, -1, !dbg !7465
    #dbg_value(i64 %i.ay, !7363, !DIExpression(), !7068)
    #dbg_value(i64 %i.ay, !7365, !DIExpression(), !7069)
    #dbg_value(i64 %i.ay, !7368, !DIExpression(), !7065)
  %i.az = add nuw nsw i32 %2, 1000000000, !dbg !7466
    #dbg_value(!DIArgList(i32 %i.az, i32 %.sroa.5.0), !7364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7070)
  br label %bb.o, !dbg !7467

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.05.0.i = phi i64 [ %i.ay, %bb.n ], [ %i.aw, %bb.l ], !dbg !7468 ; 3 uses
  %.pn.i = phi i32 [ %i.az, %bb.n ], [ %2, %bb.l ]
  %.sroa.02.0.i = sub nuw nsw i32 %.pn.i, %.sroa.5.0, !dbg !7468 ; 3 uses
    #dbg_value(i32 %.sroa.02.0.i, !7364, !DIExpression(), !7070)
    #dbg_value(i64 %.sroa.05.0.i, !7368, !DIExpression(), !7065)
    #dbg_value(i64 %.sroa.05.0.i, !7365, !DIExpression(), !7069)
    #dbg_value(i64 %.sroa.05.0.i, !7363, !DIExpression(), !7068)
    #dbg_value(i64 %.sroa.05.0.i, !7324, !DIExpression(), !7072)
    #dbg_value(i64 %.sroa.05.0.i, !7332, !DIExpression(), !7074)
    #dbg_value(i32 %.sroa.02.0.i, !7328, !DIExpression(), !7072)
    #dbg_value(ptr @13, !7371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7078)
    #dbg_value(i64 25, !7371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7078)
  %i.ba = icmp samesign ult i32 %.sroa.02.0.i, 1000000000, !dbg !7469
  br i1 %i.ba, label %bb.s, label %bb.p, !dbg !7469

bb.p:                                             ; preds = %bb.o
    #dbg_value(i64 1, !7333, !DIExpression(), !7074)
  %i.bb = icmp eq i64 %.sroa.05.0.i, -1, !dbg !7470
    #dbg_value(i1 %i.bb, !7375, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7081)
  br i1 %i.bb, label %bb.r, label %bb.q, !dbg !7471, !prof !2357

bb.q:                                             ; preds = %bb.p
  %i.bc = add nuw i64 %.sroa.05.0.i, 1, !dbg !7470
    #dbg_value(i64 %i.bc, !7372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7078)
    #dbg_value(i64 1, !7372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7078)
    #dbg_value(i64 %i.bc, !7329, !DIExpression(), !7082)
  %i.bd = add nsw i32 %.sroa.02.0.i, -1000000000, !dbg !7472
  br label %bb.s, !dbg !7473

bb.r:                                             ; preds = %bb.p
    #dbg_value(i64 poison, !7372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7078)
    #dbg_value(i64 poison, !7372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7078)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21, !dbg !7474
  unreachable, !dbg !7474

bb.s:                                             ; preds = %bb.o, %bb.q, %bb.i
  %.sroa.4.0 = phi i32 [ %2, %bb.i ], [ %i.bd, %bb.q ], [ %.sroa.02.0.i, %bb.o ], !dbg !7245 ; 2 uses
  %.sroa.05.0 = phi i64 [ %1, %bb.i ], [ %i.bc, %bb.q ], [ %.sroa.05.0.i, %bb.o ], !dbg !7245 ; 3 uses
    #dbg_value(i64 %.sroa.05.0, !7199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7271)
    #dbg_value(i64 %.sroa.05.0, !7172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7335)
    #dbg_value(i32 %.sroa.4.0, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7271)
    #dbg_value(i32 %.sroa.4.0, !7172, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7335)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7222 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !dbg !7222, !noundef !1030
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7222 ; 2 uses
    #dbg_value(i64 %i.bf, !7211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7262)
    #dbg_value(i32 poison, !7211, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7262)
    #dbg_value(i64 %i.bf, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7084)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7084)
    #dbg_value(i32 3, !2594, !DIExpression(), !7084)
    #dbg_value(i64 3, !2601, !DIExpression(), !7086)
    #dbg_value(i64 3, !2609, !DIExpression(), !7088)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !7089)
    #dbg_value(i64 poison, !2596, !DIExpression(), !7090)
    #dbg_value(i64 poison, !2618, !DIExpression(), !7092)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7093)
    #dbg_value(i64 %i.bf, !2605, !DIExpression(), !7086)
    #dbg_value(i64 %i.bf, !2615, !DIExpression(), !7088)
  %i.bh = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bf, i64 3), !dbg !7475 ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1, !dbg !7475
    #dbg_value(i64 poison, !2606, !DIExpression(), !7094)
    #dbg_value(i1 %i.bi, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7094)
    #dbg_value(i1 %i.bi, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7096)
  br i1 %i.bi, label %select.unfold, label %bb.t, !dbg !7476, !prof !2357

bb.t:                                             ; preds = %bb.s
  %i.bj = load i32, ptr %i.bg, align 8, !dbg !7222, !range !2354, !noundef !1030
    #dbg_value(!DIArgList(i32 %i.bj, i64 3), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !7089)
    #dbg_value(i32 %i.bj, !7211, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7262)
    #dbg_value(i32 %i.bj, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7084)
    #dbg_value(!DIArgList(i32 %i.bj, i64 3), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !7089)
  %narrow = mul nuw i32 %i.bj, 3, !dbg !7477      ; 2 uses
    #dbg_value(i32 %narrow, !2595, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7089)
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7093)
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7093)
  %i.bk = extractvalue { i64, i1 } %i.bh, 0, !dbg !7475 ; 2 uses
    #dbg_value(i64 %i.bk, !2606, !DIExpression(), !7094)
  %i.bl = udiv i32 %narrow, 1000000000, !dbg !7478
  %i.bm = urem i32 %narrow, 1000000000, !dbg !7479
  %.zext181 = zext nneg i32 %i.bl to i64, !dbg !7478
    #dbg_value(i64 %.zext181, !2596, !DIExpression(), !7090)
    #dbg_value(i64 %.zext181, !2618, !DIExpression(), !7092)
    #dbg_value(i64 %i.bk, !2598, !DIExpression(), !7097)
    #dbg_value(i64 %i.bk, !2619, !DIExpression(), !7092)
  %i.bn = add i64 %i.bk, %.zext181, !dbg !7480    ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.bk, !dbg !7480
    #dbg_value(i1 %i.bo, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7099)
  br i1 %i.bo, label %select.unfold, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit140, !dbg !7481, !prof !2357

bb.u:                                             ; preds = %bb.k, %bb.m
    #dbg_value(i64 poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7261)
    #dbg_value(i32 -1, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7261)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !dbg !7482
  unreachable, !dbg !7482

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit140: ; preds = %bb.t
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7093)
    #dbg_value(i32 poison, !2597, !DIExpression(), !7093)
    #dbg_value(i32 poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7263)
    #dbg_value(i64 %i.bn, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7263)
    #dbg_value(i64 %i.bn, !7199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7264)
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7264)
    #dbg_value(i64 %i.bn, !2931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7101)
    #dbg_value(i32 poison, !2931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7101)
    #dbg_value(i32 4, !2933, !DIExpression(), !7101)
    #dbg_value(i64 %i.bn, !2934, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !7102)
    #dbg_value(i64 poison, !2935, !DIExpression(), !7102)
    #dbg_value(i32 poison, !2936, !DIExpression(), !7103)
    #dbg_value(i32 poison, !2937, !DIExpression(), !7103)
    #dbg_value(i64 %i.bn, !2935, !DIExpression(DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !7102)
    #dbg_value(i32 undef, !2937, !DIExpression(DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !7103)
    #dbg_value(i32 poison, !2936, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !7103)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7103)
    #dbg_value(i64 %i.bn, !7324, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !7105)
    #dbg_value(i64 %i.bn, !7332, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !7107)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7105)
    #dbg_value(i64 %i.bn, !7174, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7265)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7265)
    #dbg_value(i64 %i.bn, !7192, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7382)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(ptr %0, !7238, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7384)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7483 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7484 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !dbg !7484, !range !2354, !noundef !1030 ; 2 uses
    #dbg_value(!DIArgList(i128 poison, i32 poison), !7386, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !7393)
    #dbg_value(ptr undef, !7238, !DIExpression(), !7244)
    #dbg_value(!DIArgList(i128 poison, i32 poison), !7390, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !7393)
    #dbg_value(i128 poison, !7395, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !7399)
    #dbg_value(i64 poison, !7193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7382)
    #dbg_value(i64 poison, !7193, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(i64 %i.bn, !2661, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7111)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7111)
    #dbg_value(i64 poison, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7111)
    #dbg_value(i64 poison, !2665, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7111)
    #dbg_value(i64 1, !2670, !DIExpression(), !7113)
    #dbg_value(i64 %i.bn, !2671, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !7115)
    #dbg_value(i64 poison, !2672, !DIExpression(), !7115)
    #dbg_value(i1 false, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7117)
  %i.bs = lshr i64 %i.bn, 2, !dbg !7485
    #dbg_value(i64 %i.bs, !2934, !DIExpression(), !7102)
    #dbg_value(i64 %i.bs, !7324, !DIExpression(), !7105)
    #dbg_value(i64 %i.bs, !7332, !DIExpression(), !7107)
    #dbg_value(i64 %i.bs, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7265)
    #dbg_value(i64 %i.bs, !7192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7382)
    #dbg_value(i64 %i.bs, !2661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7111)
    #dbg_value(i64 %i.bs, !2671, !DIExpression(), !7115)
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !7483, !noundef !1030 ; 2 uses
  %i.bu = zext i64 %i.bt to i128, !dbg !7483
  %8 = mul nuw nsw i128 %i.bu, 1000000000, !dbg !7483
    #dbg_value(!DIArgList(i128 %8, i32 %i.br), !7386, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !7393)
  %i.bv = zext nneg i32 %i.br to i128, !dbg !7484
    #dbg_value(!DIArgList(i128 %8, i128 %i.bv), !7386, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7393)
  %9 = add nuw nsw i128 %8, %i.bv, !dbg !7483     ; 3 uses
    #dbg_value(i128 %9, !7386, !DIExpression(), !7393)
  %i.bw = zext i64 %.sroa.05.0 to i128, !dbg !7486
  %10 = mul nuw nsw i128 %i.bw, 1000000000, !dbg !7486
    #dbg_value(!DIArgList(i128 %10, i32 %.sroa.4.0), !7390, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !7393)
  %i.bx = zext nneg i32 %.sroa.4.0 to i128, !dbg !7487
    #dbg_value(!DIArgList(i128 %10, i128 %i.bx), !7390, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7393)
  %11 = add nuw nsw i128 %10, %i.bx, !dbg !7486   ; 3 uses
    #dbg_value(i128 %11, !7390, !DIExpression(), !7393)
  %12 = icmp samesign ult i128 %9, %11, !dbg !7488
  %i.by = sub nuw nsw i128 %11, %9, !dbg !7488
  %13 = sub nuw nsw i128 %9, %11, !dbg !7488
  %.sroa.08.0.off0.v = select i1 %12, i128 %i.by, i128 %13, !dbg !7488
    #dbg_value(i128 %.sroa.08.0.off0.v, !7395, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !7399)
  %.sroa.08.0.off0 = trunc i128 %.sroa.08.0.off0.v to i64, !dbg !7488 ; 2 uses
    #dbg_value(i64 %.sroa.08.0.off0, !7395, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !7399)
  %i.bz = udiv i64 %.sroa.08.0.off0, 4000000000, !dbg !7489
    #dbg_value(i64 %i.bz, !7193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7382)
    #dbg_value(i64 %i.bz, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7111)
    #dbg_value(i64 %i.bz, !2672, !DIExpression(), !7115)
  %i.ca = add nuw nsw i64 %i.bz, %i.bs, !dbg !7490
  %i.cb = lshr i64 %.sroa.08.0.off0, 2, !dbg !7491
    #dbg_value(i64 %i.cb, !7395, !DIExpression(), !7399)
  %i.cc = urem i64 %i.cb, 1000000000, !dbg !7492
    #dbg_value(i64 %i.cc, !2665, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7111)
    #dbg_value(i64 %i.cc, !7193, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7382)
  %i.cd = trunc nuw nsw i64 %i.cc to i32, !dbg !7492
    #dbg_value(i32 %i.cd, !7193, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(i32 %i.cd, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7111)
    #dbg_value(i32 %i.bm, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7263)
    #dbg_value(i32 %i.bm, !2931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7101)
    #dbg_value(i32 %i.bm, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7264)
    #dbg_value(i32 %i.bm, !2597, !DIExpression(), !7093)
    #dbg_value(!DIArgList(i32 %i.bm, i64 %i.bn), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(!DIArgList(i32 %i.bm, i64 %i.bn), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7265)
    #dbg_value(!DIArgList(i32 %i.bm, i64 %i.bn), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7105)
    #dbg_value(!DIArgList(i32 %i.bm, i64 %i.bn), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7103)
    #dbg_value(!DIArgList(i32 %i.bm, i64 %i.bn), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7111)
  %i.ce = lshr i32 %i.bm, 2, !dbg !7493
    #dbg_value(!DIArgList(i32 %i.ce, i64 %i.bn), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7103)
    #dbg_value(!DIArgList(i32 %i.ce, i64 %i.bn), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7105)
    #dbg_value(!DIArgList(i32 %i.ce, i64 %i.bn), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7265)
    #dbg_value(!DIArgList(i32 %i.ce, i64 %i.bn), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(!DIArgList(i32 %i.ce, i64 %i.bn), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7111)
  %i.cf = trunc i64 %i.bn to i32, !dbg !7494
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cf), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cf), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7265)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cf), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7105)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cf), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7103)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cf), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_and, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7111)
  %i.cg = and i32 %i.cf, 3, !dbg !7494
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cg), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7103)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cg), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7105)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cg), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7265)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cg), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.cg), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 250000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7111)
  %i.ch = mul nuw nsw i32 %i.cg, 250000000, !dbg !7494
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.ch), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.ch), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7265)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.ch), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7105)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.ch), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7103)
    #dbg_value(!DIArgList(i32 %i.ce, i32 %i.ch), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7111)
  %i.ci = add nuw nsw i32 %i.ch, %i.ce, !dbg !7495
    #dbg_value(i32 %i.ci, !2936, !DIExpression(), !7103)
    #dbg_value(i32 %i.ci, !7328, !DIExpression(), !7105)
    #dbg_value(i32 %i.ci, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7265)
    #dbg_value(i32 %i.ci, !7192, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7382)
    #dbg_value(i32 %i.ci, !2661, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7111)
    #dbg_value(i64 %i.ca, !2666, !DIExpression(), !7118)
    #dbg_value(i64 %i.ca, !2671, !DIExpression(), !7113)
  %i.cj = add nuw nsw i32 %i.ci, %i.cd, !dbg !7496 ; 3 uses
    #dbg_value(i32 %i.cj, !2667, !DIExpression(), !7119)
  %i.ck = icmp samesign ugt i32 %i.cj, 999999999, !dbg !7497 ; 2 uses
  %i.cl = add nsw i32 %i.cj, -1000000000, !dbg !7497
  %.sroa.4.0.i141.ph = select i1 %i.ck, i32 %i.cl, i32 %i.cj, !dbg !7497
  %i.cm = zext i1 %i.ck to i64, !dbg !7497
  %.sroa.0.0.i142.ph = add nuw nsw i64 %i.ca, %i.cm, !dbg !7497
    #dbg_value(i32 %.sroa.4.0.i141.ph, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7266)
    #dbg_value(i64 %.sroa.0.0.i142.ph, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7266)
  store i64 %.sroa.0.0.i142.ph, ptr %i.be, align 8, !dbg !7498
  store i32 %.sroa.4.0.i141.ph, ptr %i.bg, align 8, !dbg !7498
    #dbg_value(i64 %i.bt, !7211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7267)
    #dbg_value(i32 %i.br, !7211, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7267)
    #dbg_value(i64 %i.bt, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7121)
    #dbg_value(i32 %i.br, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7121)
    #dbg_value(i32 7, !2594, !DIExpression(), !7121)
    #dbg_value(i64 7, !2601, !DIExpression(), !7123)
    #dbg_value(i64 7, !2609, !DIExpression(), !7125)
    #dbg_value(!DIArgList(i32 %i.br, i64 7), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !7126)
    #dbg_value(i64 poison, !2596, !DIExpression(), !7127)
    #dbg_value(i64 poison, !2618, !DIExpression(), !7129)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7130)
    #dbg_value(i64 %i.bt, !2605, !DIExpression(), !7123)
    #dbg_value(i64 %i.bt, !2615, !DIExpression(), !7125)
  %i.cn = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bt, i64 7), !dbg !7499 ; 2 uses
  %i.co = extractvalue { i64, i1 } %i.cn, 1, !dbg !7499
    #dbg_value(i64 poison, !2606, !DIExpression(), !7131)
    #dbg_value(i1 %i.co, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7131)
    #dbg_value(i1 %i.co, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7133)
  br i1 %i.co, label %select.unfold171, label %bb.v, !dbg !7500, !prof !2357

select.unfold:                                    ; preds = %bb.t, %bb.s
    #dbg_value(i64 poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7263)
    #dbg_value(i32 -1, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7263)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !7501
  unreachable, !dbg !7501

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit140
  %i.cp = zext nneg i32 %i.br to i64, !dbg !7502
    #dbg_value(!DIArgList(i64 %i.cp, i64 7), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !7126)
  %i.cq = mul nuw nsw i64 %i.cp, 7, !dbg !7502    ; 2 uses
    #dbg_value(i64 %i.cq, !2595, !DIExpression(), !7126)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7130)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7130)
  %i.cr = extractvalue { i64, i1 } %i.cn, 0, !dbg !7499 ; 2 uses
    #dbg_value(i64 %i.cr, !2606, !DIExpression(), !7131)
  %i.cs = udiv i64 %i.cq, 1000000000, !dbg !7503
  %i.ct = urem i64 %i.cq, 1000000000, !dbg !7504
    #dbg_value(i64 %i.cs, !2596, !DIExpression(), !7127)
    #dbg_value(i64 %i.cs, !2618, !DIExpression(), !7129)
    #dbg_value(i64 %i.cr, !2598, !DIExpression(), !7134)
    #dbg_value(i64 %i.cr, !2619, !DIExpression(), !7129)
  %i.cu = add i64 %i.cr, %i.cs, !dbg !7505        ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr, !dbg !7505
    #dbg_value(i1 %i.cv, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7136)
  br i1 %i.cv, label %select.unfold171, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit150, !dbg !7506, !prof !2357

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit150: ; preds = %bb.v
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7130)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7130)
    #dbg_value(i64 poison, !7174, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7268)
    #dbg_value(i64 %i.cu, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7268)
    #dbg_value(i64 %i.cu, !7199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7269)
    #dbg_value(i64 poison, !7199, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7269)
    #dbg_value(i64 %i.cu, !2931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7138)
    #dbg_value(i64 poison, !2931, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7138)
    #dbg_value(i32 8, !2933, !DIExpression(), !7138)
    #dbg_value(i64 %i.cu, !2934, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7139)
    #dbg_value(i64 poison, !2935, !DIExpression(), !7139)
    #dbg_value(i32 poison, !2936, !DIExpression(), !7140)
    #dbg_value(i32 poison, !2937, !DIExpression(), !7140)
    #dbg_value(i64 %i.cu, !2935, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !7139)
    #dbg_value(i64 undef, !2937, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !7140)
    #dbg_value(i64 poison, !2936, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7140)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7140)
    #dbg_value(i64 %i.cu, !7324, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7142)
    #dbg_value(i64 %i.cu, !7332, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7144)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7142)
    #dbg_value(i64 %i.cu, !7174, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7270)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7270)
    #dbg_value(i64 %i.cu, !7192, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7414)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(i64 %.sroa.05.0, !2931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7146)
    #dbg_value(i32 %.sroa.4.0, !2931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7146)
    #dbg_value(i32 8, !2933, !DIExpression(), !7146)
    #dbg_value(i64 %.sroa.05.0, !2934, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7147)
    #dbg_value(i64 poison, !2935, !DIExpression(), !7147)
    #dbg_value(i32 poison, !2936, !DIExpression(), !7148)
    #dbg_value(i32 poison, !2937, !DIExpression(), !7148)
    #dbg_value(i64 %.sroa.05.0, !2935, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !7147)
    #dbg_value(i32 undef, !2937, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !7148)
    #dbg_value(i32 %.sroa.4.0, !2936, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7148)
    #dbg_value(!DIArgList(i32 %.sroa.4.0, i64 %.sroa.05.0), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7148)
    #dbg_value(i64 %.sroa.05.0, !7324, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7150)
    #dbg_value(i64 %.sroa.05.0, !7332, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7152)
    #dbg_value(!DIArgList(i32 %.sroa.4.0, i64 %.sroa.05.0), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7150)
    #dbg_value(!DIArgList(i32 %.sroa.4.0, i64 %.sroa.05.0), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7272)
    #dbg_value(i64 %.sroa.05.0, !7174, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7272)
    #dbg_value(i64 %.sroa.05.0, !7193, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7414)
    #dbg_value(!DIArgList(i32 %.sroa.4.0, i64 %.sroa.05.0), !7193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(i64 %i.cu, !2661, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7154)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(i64 %.sroa.05.0, !2665, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7154)
    #dbg_value(!DIArgList(i32 %.sroa.4.0, i64 %.sroa.05.0), !2665, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(i64 1, !2670, !DIExpression(), !7156)
    #dbg_value(i64 %i.cu, !2671, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7158)
    #dbg_value(i64 %.sroa.05.0, !2672, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !7158)
    #dbg_value(i1 false, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7160)
  %i.cw = lshr i64 %i.cu, 3, !dbg !7507
    #dbg_value(i64 %i.cw, !2934, !DIExpression(), !7139)
    #dbg_value(i64 %i.cw, !7324, !DIExpression(), !7142)
    #dbg_value(i64 %i.cw, !7332, !DIExpression(), !7144)
    #dbg_value(i64 %i.cw, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7270)
    #dbg_value(i64 %i.cw, !7192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7414)
    #dbg_value(i64 %i.cw, !2661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7154)
    #dbg_value(i64 %i.cw, !2671, !DIExpression(), !7158)
  %i.cx = lshr i64 %.sroa.05.0, 3, !dbg !7508
    #dbg_value(i64 %i.cx, !2934, !DIExpression(), !7147)
    #dbg_value(i64 %i.cx, !7324, !DIExpression(), !7150)
    #dbg_value(i64 %i.cx, !7332, !DIExpression(), !7152)
    #dbg_value(i64 %i.cx, !7193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7414)
    #dbg_value(i64 %i.cx, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7272)
    #dbg_value(i64 %i.cx, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7154)
    #dbg_value(i64 %i.cx, !2672, !DIExpression(), !7158)
  %i.cy = add nuw nsw i64 %i.cw, %i.cx, !dbg !7509
  %i.cz = lshr i32 %.sroa.4.0, 3, !dbg !7510
    #dbg_value(!DIArgList(i32 %i.cz, i64 %.sroa.05.0), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7148)
    #dbg_value(!DIArgList(i32 %i.cz, i64 %.sroa.05.0), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7150)
    #dbg_value(!DIArgList(i32 %i.cz, i64 %.sroa.05.0), !7193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.cz, i64 %.sroa.05.0), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7272)
    #dbg_value(!DIArgList(i32 %i.cz, i64 %.sroa.05.0), !2665, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
  %i.da = trunc i64 %.sroa.05.0 to i32, !dbg !7511
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.da), !2665, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.da), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7272)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.da), !7193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.da), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7150)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.da), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7148)
  %i.db = and i32 %i.da, 7, !dbg !7511
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7148)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7150)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7272)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !2665, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !2665, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7272)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7150)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7148)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7148)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7150)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7272)
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.db), !2665, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(i64 %i.ct, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7130)
    #dbg_value(i64 %i.ct, !7199, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7269)
    #dbg_value(i64 %i.ct, !2931, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7138)
    #dbg_value(i64 %i.ct, !7174, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7268)
    #dbg_value(!DIArgList(i64 %i.ct, i64 %i.cu), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7140)
    #dbg_value(!DIArgList(i64 %i.ct, i64 %i.cu), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7142)
    #dbg_value(!DIArgList(i64 %i.ct, i64 %i.cu), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7270)
    #dbg_value(!DIArgList(i64 %i.ct, i64 %i.cu), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i64 %i.ct, i64 %i.cu), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
  %i.dc = trunc nuw nsw i64 %i.ct to i32, !dbg !7504
    #dbg_value(i32 %i.dc, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7268)
    #dbg_value(i32 %i.dc, !2931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7138)
    #dbg_value(i32 %i.dc, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7269)
    #dbg_value(i32 %i.dc, !2597, !DIExpression(), !7130)
    #dbg_value(!DIArgList(i32 %i.dc, i64 %i.cu), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.dc, i64 %i.cu), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7270)
    #dbg_value(!DIArgList(i32 %i.dc, i64 %i.cu), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7142)
    #dbg_value(!DIArgList(i32 %i.dc, i64 %i.cu), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7140)
    #dbg_value(!DIArgList(i32 %i.dc, i64 %i.cu), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
  %i.dd = lshr i32 %i.dc, 3, !dbg !7512
    #dbg_value(!DIArgList(i32 %i.dd, i64 %i.cu), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7140)
    #dbg_value(!DIArgList(i32 %i.dd, i64 %i.cu), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7142)
    #dbg_value(!DIArgList(i32 %i.dd, i64 %i.cu), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7270)
    #dbg_value(!DIArgList(i32 %i.dd, i64 %i.cu), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.dd, i64 %i.cu), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
  %i.de = trunc i64 %i.cu to i32, !dbg !7513
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.de), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.de), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7270)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.de), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7142)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.de), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7140)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.de), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
  %i.df = and i32 %i.de, 7, !dbg !7513
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7140)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7142)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7270)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7270)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7142)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7140)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7140)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7142)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7270)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !7192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7414)
    #dbg_value(!DIArgList(i32 %i.dd, i32 %i.df), !2661, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !7154)
    #dbg_value(i64 %i.cy, !2666, !DIExpression(), !7161)
    #dbg_value(i64 %i.cy, !2671, !DIExpression(), !7156)
  %reass.add.a = add nuw nsw i32 %i.df, %i.db, !dbg !7514
  %reass.mul.a = mul nuw nsw i32 %reass.add.a, 125000000, !dbg !7514
  %i.dg = add nuw nsw i32 %i.dd, %i.cz, !dbg !7515
  %i.dh = add nuw nsw i32 %i.dg, %reass.mul.a, !dbg !7514 ; 3 uses
    #dbg_value(!DIArgList(i32 %i.cz, i32 %i.dd, i32 %i.db, i32 %i.df), !2667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 125000000, DW_OP_mul, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !7162)
  %i.di = icmp samesign ugt i32 %i.dh, 999999999, !dbg !7516 ; 2 uses
  %i.dj = add nsw i32 %i.dh, -1000000000, !dbg !7516
  %.sroa.4.0.i154.ph = select i1 %i.di, i32 %i.dj, i32 %i.dh, !dbg !7516
  %i.dk = zext i1 %i.di to i64, !dbg !7516
  %.sroa.0.0.i155.ph = add nuw nsw i64 %i.cy, %i.dk, !dbg !7516
    #dbg_value(i32 %.sroa.4.0.i154.ph, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7273)
    #dbg_value(i64 %.sroa.0.0.i155.ph, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7273)
  store i64 %.sroa.0.0.i155.ph, ptr %i.bp, align 8, !dbg !7517
  store i32 %.sroa.4.0.i154.ph, ptr %i.bq, align 8, !dbg !7517
  br label %bb.c, !dbg !7436

select.unfold171:                                 ; preds = %bb.v, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit140
    #dbg_value(i64 poison, !7174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7268)
    #dbg_value(i32 -1, !7174, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7268)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !7518
  unreachable, !dbg !7518
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs3f36owOmepS_6quiche8recovery3rttNtB4_8RttStats3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) initializes((0, 12), (16, 28), (32, 44), (48, 60), (64, 76), (80, 92), (96, 108), (112, 124), (128, 140), (144, 156), (160, 172), (176, 177)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 !dbg !450 {
_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit:
    #dbg_value(i64 %1, !2913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7523)
    #dbg_value(i64 %1, !2920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7525)
    #dbg_value(i64 %1, !2925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7527)
    #dbg_value(i32 %2, !2913, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7523)
    #dbg_value(i32 %2, !2920, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7525)
    #dbg_value(i32 %2, !2925, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7527)
    #dbg_value(i64 %3, !2917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7523)
    #dbg_value(i32 %4, !2917, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7523)
    #dbg_value(i32 2, !2929, !DIExpression(), !7527)
  %i.a = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !dbg !7528 ; 2 uses
    #dbg_value(i64 %1, !2931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7520)
    #dbg_value(i32 %2, !2931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7520)
    #dbg_value(i32 2, !2933, !DIExpression(), !7520)
    #dbg_value(i64 %1, !2934, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !7521)
    #dbg_value(i64 %1, !2935, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !7521)
    #dbg_value(i32 undef, !2937, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !7522)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7522)
  %i.b = lshr i32 %2, 1, !dbg !7529
    #dbg_value(i32 %i.b, !2936, !DIExpression(), !7522)
  %i.c = trunc i64 %1 to i1, !dbg !7530
  %i.d = select i1 %i.c, i32 500000000, i32 0, !dbg !7530
    #dbg_value(!DIArgList(i32 %i.b, i32 %i.d), !2936, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7522)
  %i.e = add nuw nsw i32 %i.b, %i.d, !dbg !7531
    #dbg_value(i32 %i.e, !2936, !DIExpression(), !7522)
  %i.f = lshr i64 %1, 1, !dbg !7532
    #dbg_value(i64 %i.f, !2934, !DIExpression(), !7521)
  %i.g = extractvalue { i64, i32 } %i.a, 1, !dbg !7528 ; 3 uses
  %i.h = extractvalue { i64, i32 } %i.a, 0, !dbg !7528 ; 3 uses
  store i64 0, ptr %0, align 8, !dbg !7533
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7533
  store i32 0, ptr %i.i, align 8, !dbg !7533
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7533
  store i64 %1, ptr %i.j, align 8, !dbg !7533
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7533
  store i32 %2, ptr %i.k, align 8, !dbg !7533
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7533
  store i64 %1, ptr %i.l, align 8, !dbg !7533
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7533
  store i32 %2, ptr %i.m, align 8, !dbg !7533
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7533
  store i64 %i.f, ptr %i.n, align 8, !dbg !7533
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7533
  store i32 %i.e, ptr %i.o, align 8, !dbg !7533
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !7533
  store i64 %i.h, ptr %i.p, align 8, !dbg !7533
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7533
  store i32 %i.g, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !7533
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7533
  store i64 %1, ptr %.sroa.624.0..sroa_idx, align 8, !dbg !7533
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7533
  store i32 %2, ptr %.sroa.725.0..sroa_idx, align 8, !dbg !7533
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !7533
  store i64 %i.h, ptr %.sroa.927.0..sroa_idx, align 8, !dbg !7533
  %.sroa.1028.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !7533
  store i32 %i.g, ptr %.sroa.1028.0..sroa_idx, align 8, !dbg !7533
  %.sroa.1230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !7533
  store i64 %1, ptr %.sroa.1230.0..sroa_idx, align 8, !dbg !7533
  %.sroa.1331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !7533
  store i32 %2, ptr %.sroa.1331.0..sroa_idx, align 8, !dbg !7533
  %.sroa.1533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !7533
  store i64 %i.h, ptr %.sroa.1533.0..sroa_idx, align 8, !dbg !7533
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !7533
  store i32 %i.g, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !7533
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !7533
  store i64 %1, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !7533
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !7533
  store i32 %2, ptr %.sroa.19.0..sroa_idx, align 8, !dbg !7533
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7533
  store i64 %3, ptr %i.q, align 8, !dbg !7533
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7533
  store i32 %4, ptr %i.r, align 8, !dbg !7533
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !7533
  store i8 0, ptr %i.s, align 8, !dbg !7533
  ret void, !dbg !7534
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery10congestion13delivery_rateNtB4_4Rate18update_app_limited(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) initializes((8, 16)) %0, i1 noundef zeroext %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !458 {
bb.a:
    #dbg_value(ptr %0, !2978, !DIExpression(), !7535)
    #dbg_value(i1 %1, !2979, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7535)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7536
  %i.b = load i64, ptr %i.a, align 8, !dbg !7536
  %..i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1), !dbg !7536
  %.sroa.0.0 = select i1 %1, i64 %..i, i64 0, !dbg !7536
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7537
  store i64 %.sroa.0.0, ptr %i.c, align 8, !dbg !7537
  ret void, !dbg !7538
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery10congestion13delivery_rateNtB4_4Rate18update_rate_sample(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(176) initializes((144, 156)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7540 {
bb.a:
    #dbg_value(ptr %0, !7559, !DIExpression(), !7563)
    #dbg_value(ptr %1, !7560, !DIExpression(), !7563)
    #dbg_value(i64 %2, !7561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7563)
    #dbg_value(i32 %3, !7561, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7563)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !7572
  %i.b = load i64, ptr %i.a, align 8, !dbg !7572, !noundef !1030
  %i.c = load i64, ptr %0, align 8, !dbg !7573, !noundef !1030
  %i.d = add i64 %i.c, %i.b, !dbg !7573
  store i64 %i.d, ptr %0, align 8, !dbg !7573
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !7574 ; 2 uses
  store i64 %2, ptr %i.e, align 8, !dbg !7574
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !7574
  store i32 %3, ptr %i.f, align 8, !dbg !7574
    #dbg_value(ptr %0, !7564, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !7567)
    #dbg_value(ptr %0, !7568, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !7571)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7575 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !dbg !7575, !range !2325, !noundef !1030
  %.not = icmp ne i32 %i.h, -1, !dbg !7575
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !7563 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load i64, ptr %i.i, align 8
  %.not3 = icmp ult i64 %.pre, %i.j
  %or.cond = select i1 %.not, i1 %.not3, i1 false, !dbg !7576
  br i1 %or.cond, label %bb.b, label %._crit_edge, !dbg !7576

._crit_edge:                                      ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7575
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !7577
  store i64 %.pre, ptr %i.l, align 8, !dbg !7577
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !7578
  %i.n = load i64, ptr %i.m, align 8, !dbg !7578, !noundef !1030 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !7578
  %i.p = load i32, ptr %i.o, align 8, !dbg !7578, !range !2354, !noundef !1030 ; 2 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !7579
  store i32 %i.p, ptr %i.g, align 8, !dbg !7579
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !7580
  %i.r = load i8, ptr %i.q, align 8, !dbg !7580, !range !2941, !noundef !1030
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !7581
  store i8 %i.r, ptr %i.s, align 8, !dbg !7581
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !7582
  %i.u = load i64, ptr %i.t, align 8, !dbg !7582, !noundef !1030
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !7582
  %i.w = load i32, ptr %i.v, align 8, !dbg !7582, !range !2354, !noundef !1030
  %i.x = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef %i.u, i32 noundef %i.w), !dbg !7583 ; 2 uses
  %i.y = extractvalue { i64, i32 } %i.x, 0, !dbg !7583
  %i.z = extractvalue { i64, i32 } %i.x, 1, !dbg !7583
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7584
  store i64 %i.y, ptr %i.aa, align 8, !dbg !7584
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7584
  store i32 %i.z, ptr %i.ab, align 8, !dbg !7584
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7585
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !7585, !noundef !1030
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !7585
  %i.af = load i32, ptr %i.ae, align 8, !dbg !7585, !range !2354, !noundef !1030
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !7586
  store i64 %i.ad, ptr %i.ag, align 8, !dbg !7586
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7586
  store i32 %i.af, ptr %i.ah, align 8, !dbg !7586
  %i.ai = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %i.n, i32 noundef %i.p), !dbg !7587 ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0, !dbg !7587
  %i.ak = extractvalue { i64, i32 } %i.ai, 1, !dbg !7587
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7588
  store i64 %i.aj, ptr %i.al, align 8, !dbg !7588
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7588
  store i32 %i.ak, ptr %i.am, align 8, !dbg !7588
  %i.an = load i64, ptr %1, align 8, !dbg !7589, !noundef !1030
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7589
  %i.ap = load i32, ptr %i.ao, align 8, !dbg !7589, !range !2354, !noundef !1030
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !7590
  store i64 %i.an, ptr %i.aq, align 8, !dbg !7590
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !7590
  store i32 %i.ap, ptr %i.ar, align 8, !dbg !7590
  br label %bb.b, !dbg !7591

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7592 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !dbg !7592, !noundef !1030
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !7593
  %i.av = load i64, ptr %i.au, align 8, !dbg !7593, !noundef !1030
    #dbg_value(i64 %i.at, !2981, !DIExpression(), !7544)
    #dbg_value(i64 %i.at, !2981, !DIExpression(), !7544)
    #dbg_value(i64 %i.av, !2984, !DIExpression(), !7544)
    #dbg_value(i64 %i.av, !2984, !DIExpression(), !7544)
    #dbg_value(ptr undef, !2981, !DIExpression(DW_OP_deref), !7544)
    #dbg_value(ptr undef, !2984, !DIExpression(DW_OP_deref), !7544)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.av, i64 %i.at), !dbg !7594
  store i64 %..i, ptr %i.as, align 8, !dbg !7595
  ret void, !dbg !7596
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery10congestion13delivery_rateNtB4_4Rate20generate_rate_sample(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7600 {
bb.a:
    #dbg_value(ptr %0, !7633, !DIExpression(), !7639)
    #dbg_value(ptr %0, !7640, !DIExpression(), !7646)
    #dbg_value(ptr %0, !7647, !DIExpression(), !7654)
    #dbg_value(i64 %1, !7634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7639)
    #dbg_value(i32 %2, !7634, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7639)
    #dbg_declare(ptr poison, !7655, !DIExpression(), !7661)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7708 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !7708, !noundef !1030 ; 2 uses
  %.not = icmp ne i64 %i.b, 0, !dbg !7708
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ugt i64 %i.d, %i.b
  %or.cond = select i1 %.not, i1 %i.e, i1 false, !dbg !7709
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !7709

bb.b:                                             ; preds = %bb.a, %bb.c
    #dbg_value(ptr %0, !7665, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !7668)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7710 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7710
  %i.h = load i32, ptr %i.g, align 8, !dbg !7710, !range !2325, !noundef !1030
  %.not14 = icmp eq i32 %i.h, -1, !dbg !7710
  br i1 %.not14, label %bb.i, label %bb.d, !dbg !7711

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2978, !DIExpression(), !7608)
    #dbg_value(i1 false, !2979, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7608)
  store i64 0, ptr %i.a, align 8, !dbg !7712, !alias.scope !7669
  br label %bb.b, !dbg !7713

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7714
  %i.j = load i64, ptr %i.i, align 8, !dbg !7714, !noundef !1030 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7714
  %i.l = load i32, ptr %i.k, align 8, !dbg !7714, !range !2354, !noundef !1030 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7715
  %i.n = load i64, ptr %i.m, align 8, !dbg !7715, !noundef !1030 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7715
  %i.p = load i32, ptr %i.o, align 8, !dbg !7715, !range !2354, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.j, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7612)
    #dbg_value(i32 %i.l, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7612)
    #dbg_value(i64 %i.n, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7612)
    #dbg_value(i32 %i.p, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7612)
    #dbg_value(ptr poison, !2639, !DIExpression(), !7614)
    #dbg_value(ptr poison, !2642, !DIExpression(), !7614)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !7616)
    #dbg_value(ptr poison, !2650, !DIExpression(), !7618)
    #dbg_value(ptr poison, !2654, !DIExpression(), !7618)
    #dbg_value(ptr poison, !2656, !DIExpression(), !7620)
    #dbg_value(ptr poison, !2658, !DIExpression(), !7620)
  %i.q = icmp eq i64 %i.n, %i.j, !dbg !7716
    #dbg_value(i8 poison, !2647, !DIExpression(), !7621)
  %i.r = icmp samesign ult i32 %i.p, %i.l, !dbg !7717
  %i.s = icmp ult i64 %i.n, %i.j, !dbg !7717
  %i.t = select i1 %i.q, i1 %i.r, i1 %i.s, !dbg !7716 ; 2 uses
  %..i = select i1 %i.t, i32 %i.l, i32 %i.p, !dbg !7718 ; 4 uses
  %.2.i = select i1 %i.t, i64 %i.j, i64 %i.n, !dbg !7718 ; 5 uses
    #dbg_value(i64 %.2.i, !7635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7670)
    #dbg_value(i32 %..i, !7635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7670)
  %i.u = load i64, ptr %0, align 8, !dbg !7719, !noundef !1030
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !7720
  %i.w = load i64, ptr %i.v, align 8, !dbg !7720, !noundef !1030
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !7721
  %i.y = sub i64 %i.u, %i.w, !dbg !7721           ; 2 uses
  store i64 %i.y, ptr %i.x, align 8, !dbg !7721
  store i64 %.2.i, ptr %i.f, align 8, !dbg !7722
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7722 ; 2 uses
  store i32 %..i, ptr %i.z, align 8, !dbg !7722
    #dbg_value(ptr poison, !7662, !DIExpression(), !7671)
    #dbg_value(ptr poison, !7672, !DIExpression(), !7676)
    #dbg_value(ptr poison, !7677, !DIExpression(), !7681)
    #dbg_value(ptr poison, !7663, !DIExpression(), !7682)
    #dbg_value(ptr poison, !7673, !DIExpression(), !7676)
    #dbg_value(ptr poison, !7678, !DIExpression(), !7681)
  %i.aa = icmp eq i64 %.2.i, %1, !dbg !7681
  %i.ab = icmp ult i64 %.2.i, %1, !dbg !7723
  %i.ac = icmp samesign ult i32 %..i, %2
  %spec.select = select i1 %i.aa, i1 %i.ac, i1 %i.ab, !dbg !7681
    #dbg_value(i8 poison, !7656, !DIExpression(), !7687)
    #dbg_value(i8 poison, !7657, !DIExpression(), !7688)
    #dbg_value(i8 poison, !7683, !DIExpression(), !7689)
  br i1 %spec.select, label %bb.f, label %bb.e, !dbg !7659

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !7690, !DIExpression(), !7696)
  %i.ad = icmp eq i64 %.2.i, 0, !dbg !7724
  %i.ae = icmp eq i32 %..i, 0
  %or.cond17 = and i1 %i.ad, %i.ae, !dbg !7724
  br i1 %or.cond17, label %bb.i, label %bb.g, !dbg !7724

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %i.f, align 8, !dbg !7725
  store i32 0, ptr %i.z, align 8, !dbg !7725
  br label %bb.i, !dbg !7726

bb.g:                                             ; preds = %bb.e
  %i.af = uitofp i64 %i.y to double, !dbg !7727
    #dbg_value(ptr poison, !7697, !DIExpression(), !7700)
  %i.ag = uitofp i64 %.2.i to double, !dbg !7728
  %i.ah = uitofp nneg i32 %..i to double, !dbg !7729
  %i.ai = fdiv double %i.ah, 1.000000e+09, !dbg !7729
  %i.aj = fadd double %i.ai, %i.ag, !dbg !7728
  %i.ak = fdiv double %i.af, %i.aj, !dbg !7730
  %i.al = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !7730
    #dbg_value(i64 %i.al, !7637, !DIExpression(), !7701)
    #dbg_value(i64 %i.al, !7702, !DIExpression(), !7706)
  %i.am = shl i64 %i.al, 3, !dbg !7731            ; 2 uses
    #dbg_value(i64 %i.am, !7636, !DIExpression(), !7707)
    #dbg_value(i64 %i.am, !7651, !DIExpression(), !7654)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !7732
  %i.ao = load i8, ptr %i.an, align 8, !dbg !7732, !range !2941, !noundef !1030
  %i.ap = trunc nuw i8 %i.ao to i1, !dbg !7732
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp ule i64 %i.am, %i.ar
  %or.cond21.not = select i1 %i.ap, i1 %i.as, i1 false, !dbg !7732
  br i1 %or.cond21.not, label %bb.i, label %bb.h, !dbg !7732

bb.h:                                             ; preds = %bb.g
  store i64 %i.am, ptr %i.aq, align 8, !dbg !7733
  br label %bb.i, !dbg !7734

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h, %bb.b, %bb.f
  ret void, !dbg !7726
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvNtCs3f36owOmepS_6quiche3tls12flush_flight(ptr nofree readnone captures(none) %0) unnamed_addr #3 !dbg !7735 {
bb.a:
    #dbg_value(ptr poison, !7737, !DIExpression(), !7739)
  ret i32 1, !dbg !7740
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs3f36owOmepS_6quiche3tls9boringssl17get_session_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 !dbg !7750 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
    #dbg_value(ptr %1, !7790, !DIExpression(), !7796)
    #dbg_declare(ptr poison, !7798, !DIExpression(), !7810)
    #dbg_declare(ptr poison, !7815, !DIExpression(), !7823)
    #dbg_declare(ptr poison, !7824, !DIExpression(), !7831)
    #dbg_declare(ptr poison, !7832, !DIExpression(), !7839)
    #dbg_declare(ptr poison, !7840, !DIExpression(), !7867)
    #dbg_value(i64 0, !7868, !DIExpression(), !7877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7929
    #dbg_value(ptr null, !7792, !DIExpression(), !7878)
  store ptr null, ptr %i.c, align 8, !dbg !7930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7931
    #dbg_value(i64 0, !7793, !DIExpression(), !7890)
  store i64 0, ptr %i.b, align 8, !dbg !7932
    #dbg_value(ptr %i.c, !7792, !DIExpression(DW_OP_deref), !7878)
    #dbg_value(ptr %i.b, !7793, !DIExpression(DW_OP_deref), !7890)
  %i.d = call noundef i32 @SSL_SESSION_to_bytes(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #22, !dbg !7933
  %i.e = icmp eq i32 %i.d, 0, !dbg !7933
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !7933

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7934
  store i64 9, ptr %i.f, align 8, !dbg !7934
  store i64 -1, ptr %0, align 8, !dbg !7934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7936
  br label %bb.d, !dbg !7937

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !dbg !7938, !noundef !1030
    #dbg_value(ptr %i.g, !7792, !DIExpression(), !7878)
  %i.h = load i64, ptr %i.b, align 8, !dbg !7939, !noundef !1030 ; 5 uses
    #dbg_value(i64 %i.h, !7793, !DIExpression(), !7890)
    #dbg_value(i64 %i.h, !7819, !DIExpression(), !7891)
    #dbg_value(i64 %i.h, !7828, !DIExpression(), !7892)
    #dbg_value(i64 %i.h, !7836, !DIExpression(), !7893)
    #dbg_value(i64 %i.h, !7894, !DIExpression(), !7901)
    #dbg_value(i64 %i.h, !7902, !DIExpression(), !7909)
    #dbg_value(i64 %i.h, !7851, !DIExpression(), !7910)
    #dbg_value(i64 %i.h, !7873, !DIExpression(), !7877)
    #dbg_value(ptr %i.g, !7813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7911)
    #dbg_value(ptr %i.g, !7803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7912)
    #dbg_value(ptr %i.g, !7818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7913)
    #dbg_value(i64 %i.h, !7813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7911)
    #dbg_value(i64 %i.h, !7803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7912)
    #dbg_value(i64 %i.h, !7818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7913)
    #dbg_value(i64 1, !7852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7910)
    #dbg_value(i64 1, !7874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7877)
    #dbg_value(i64 1, !7852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7910)
    #dbg_value(i64 1, !7874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7940
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !7940
  %i.i = load i64, ptr %i.a, align 8, !dbg !7940, !range !2824, !noundef !1030
  %i.j = trunc nuw i64 %i.i to i1, !dbg !7941
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7910
  %i.l = load i64, ptr %i.k, align 8, !dbg !7910, !range !7914, !noundef !1030 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7910 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f, !dbg !7941, !prof !2357

bb.d:                                             ; preds = %bb.g, %bb.b
  ret void, !dbg !7937

bb.e:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.m, align 8, !dbg !7942
    #dbg_value(i64 %i.l, !7854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7915)
    #dbg_value(i64 %i.n, !7854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7915)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #23, !dbg !7943
  unreachable, !dbg !7943

bb.f:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.m, align 8, !dbg !7944, !nonnull !1030, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.l, !7853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7916)
    #dbg_value(ptr %i.o, !7853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7916)
    #dbg_value(ptr poison, !7872, !DIExpression(), !7917)
  %i.p = icmp ule i64 %i.h, %i.l, !dbg !7945
    #dbg_value(i1 true, !7919, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7925)
  call void @llvm.assume(i1 %i.p), !dbg !7946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7947
    #dbg_value(i64 %i.l, !7791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7926)
    #dbg_value(i64 %i.l, !7794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7927)
    #dbg_value(i64 %i.l, !7820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7928)
    #dbg_value(ptr %i.o, !7791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7926)
    #dbg_value(ptr %i.o, !7794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7927)
    #dbg_value(ptr %i.o, !7820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7928)
    #dbg_value(i64 0, !7791, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7926)
    #dbg_value(i64 0, !7794, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7927)
    #dbg_value(i64 0, !7820, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7928)
  %.not = icmp eq i64 %i.h, 0, !dbg !7948
  br i1 %.not, label %bb.g, label %bb.h, !dbg !7948

bb.g:                                             ; preds = %bb.h, %bb.f
    #dbg_value(i64 %i.h, !7820, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7928)
    #dbg_value(i64 %i.h, !7794, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7927)
    #dbg_value(i64 %i.h, !7791, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7926)
  %i.q = load ptr, ptr %i.c, align 8, !dbg !7949, !noundef !1030
    #dbg_value(ptr %i.q, !7792, !DIExpression(), !7878)
  call void @OPENSSL_free(ptr noundef %i.q) #22, !dbg !7950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7936
  store i64 %i.l, ptr %0, align 8, !dbg !7951
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7951
  store ptr %i.o, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !7951
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7951
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7951
  br label %bb.d, !dbg !7937

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.g, !7897, !DIExpression(), !7901)
    #dbg_value(ptr %i.g, !7905, !DIExpression(), !7909)
    #dbg_value(ptr %i.o, !7898, !DIExpression(), !7901)
    #dbg_value(ptr %i.o, !7906, !DIExpression(), !7909)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.h, i1 false), !dbg !7952
    #dbg_value(i64 %i.h, !7791, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7926)
    #dbg_value(i64 %i.h, !7794, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7927)
    #dbg_value(i64 %i.h, !7820, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7928)
  br label %bb.g, !dbg !7953
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs3f36owOmepS_6quiche8recovery3rttNtB2_8RttStatsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !7954 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !7959, !DIExpression(), !7962)
    #dbg_value(ptr %1, !7960, !DIExpression(), !7962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7972
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 8), !dbg !7973
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42), !dbg !7974
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7975
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42), !dbg !7976
    #dbg_value(ptr %0, !7965, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !7971)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7977
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 6, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42), !dbg !7978
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7979
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 6, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42), !dbg !7980
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !dbg !7981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7982
  ret i1 %i.i, !dbg !7983
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs3f36owOmepS_6quiche8recovery10congestion13delivery_rateNtB2_4RateNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) initializes((0, 44), (48, 60), (64, 76), (80, 92), (104, 108), (112, 137), (144, 156), (160, 172)) %0) unnamed_addr #0 !dbg !7985 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !dbg !7992 ; 2 uses
  %i.b = extractvalue { i64, i32 } %i.a, 0, !dbg !7992 ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.a, 1, !dbg !7992 ; 2 uses
    #dbg_value(i64 %i.b, !7989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7991)
    #dbg_value(i32 %i.c, !7989, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7991)
  store i64 0, ptr %0, align 8, !dbg !7993
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !7993
  store i64 %i.b, ptr %i.d, align 8, !dbg !7993
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !7993
  store i32 %i.c, ptr %i.e, align 8, !dbg !7993
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !7993
  store i64 %i.b, ptr %i.f, align 8, !dbg !7993
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !7993
  store i32 %i.c, ptr %i.g, align 8, !dbg !7993
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7993
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7993
  store i64 0, ptr %.sroa.51.0..sroa_idx, align 8, !dbg !7993
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7993
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7993
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7993
  store i64 0, ptr %.sroa.72.0..sroa_idx, align 8, !dbg !7993
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7993
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !7993
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !7993
  store i64 0, ptr %.sroa.93.0..sroa_idx, align 8, !dbg !7993
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7993
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !7993
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7993
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.h, i8 0, i64 36, i1 false), !dbg !7993
  store i32 -1, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !7993
  %.sroa.135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !7993
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.135.0..sroa_idx, i8 0, i64 25, i1 false), !dbg !7993
  ret void, !dbg !7994
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLocklENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !8007 {
bb.a:
    #dbg_value(ptr %0, !8065, !DIExpression(), !8067)
    #dbg_value(ptr %0, !8070, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8076)
    #dbg_value(ptr %0, !8079, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8085)
    #dbg_value(ptr %0, !8087, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8094)
    #dbg_value(ptr %0, !8095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8103)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8112
  %i.b = load i32, ptr %i.a, align 8, !dbg !8113, !noundef !1030
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 0, label %bb.c
  ], !dbg !8113, !prof !8111

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @47, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #21, !dbg !8114
  unreachable, !dbg !8114

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  ret void, !dbg !8115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtBW_9GRecoveryNtB10_11RecoveryOps25on_loss_detection_timeouts_0INtB7_5FnMutTRRNtNtB12_5frame5FrameEE8call_mutB12_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !dbg !8117 {
bb.a:
    #dbg_value(ptr %1, !8129, !DIExpression(), !8136)
    #dbg_value(ptr %0, !8128, !DIExpression(), !8136)
  %.val = load ptr, ptr %1, align 8, !dbg !8143, !nonnull !1030, !align !3029, !noundef !1030
    #dbg_value(ptr poison, !8137, !DIExpression(), !8120)
    #dbg_value(ptr poison, !8140, !DIExpression(), !8120)
  %i.a = load i64, ptr %.val, align 8, !dbg !8144, !range !8142, !noundef !1030 ; 2 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !8144
  tail call void @llvm.assume(i1 %i.b), !dbg !8144
  %i.c = icmp ne i64 %i.a, 28, !dbg !8145
  ret i1 %i.c, !dbg !8146
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr15windowed_filter6SampleNtNtBB_17bandwidth_sampler15ExtraAckedEventjENtB6_5Debug3fmtBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !8147 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !8156, !DIExpression(), !8159)
    #dbg_value(ptr %1, !8157, !DIExpression(), !8159)
  %i.b = load ptr, ptr %0, align 8, !dbg !8167, !nonnull !1030, !align !3029, !noundef !1030 ; 2 uses
    #dbg_value(ptr %i.b, !8160, !DIExpression(), !8150)
    #dbg_value(ptr %1, !8164, !DIExpression(), !8150)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8169, !noalias !8166
  store ptr %i.b, ptr %i.a, align 8, !dbg !8169, !noalias !8166
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78), !dbg !8170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8171, !noalias !8166
  ret i1 %i.d, !dbg !8172
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3f36owOmepS_6quiche8recovery10congestion13delivery_rate10RateSampleNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !8173 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 21 uses
    #dbg_value(ptr %0, !8188, !DIExpression(), !8193)
    #dbg_value(ptr %1, !8189, !DIExpression(), !8193)
  %i.c = load ptr, ptr %0, align 8, !dbg !8207, !nonnull !1030, !align !3029, !noundef !1030 ; 9 uses
    #dbg_value(ptr %i.c, !8194, !DIExpression(), !8178)
    #dbg_value(ptr %1, !8198, !DIExpression(), !8178)
    #dbg_value(ptr @59, !8203, !DIExpression(), !8179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8208, !noalias !8206
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !8209
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 104, !dbg !8210
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 88, !dbg !8211
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96, !dbg !8212
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !8213
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !8214
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !8215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8216, !noalias !8206
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !8216
  store ptr %i.k, ptr %i.a, align 8, !dbg !8216, !noalias !8206
  store ptr %i.d, ptr %i.b, align 8, !dbg !8208, !noalias !8206
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8208
  store ptr @60, ptr %i.l, align 8, !dbg !8208, !noalias !8206
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !8208
  store ptr %i.e, ptr %i.m, align 8, !dbg !8208, !noalias !8206
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8208
  store ptr @61, ptr %i.n, align 8, !dbg !8208, !noalias !8206
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !8208
  store ptr %i.c, ptr %i.o, align 8, !dbg !8208, !noalias !8206
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !8208
  store ptr @42, ptr %i.p, align 8, !dbg !8208, !noalias !8206
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !8208
  store ptr %i.f, ptr %i.q, align 8, !dbg !8208, !noalias !8206
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !8208
  store ptr @62, ptr %i.r, align 8, !dbg !8208, !noalias !8206
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !8208
  store ptr %i.g, ptr %i.s, align 8, !dbg !8208, !noalias !8206
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !8208
  store ptr @62, ptr %i.t, align 8, !dbg !8208, !noalias !8206
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !8208
  store ptr %i.h, ptr %i.u, align 8, !dbg !8208, !noalias !8206
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !8208
  store ptr @63, ptr %i.v, align 8, !dbg !8208, !noalias !8206
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !8208
  store ptr %i.i, ptr %i.w, align 8, !dbg !8208, !noalias !8206
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !8208
  store ptr @42, ptr %i.x, align 8, !dbg !8208, !noalias !8206
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !8208
  store ptr %i.j, ptr %i.y, align 8, !dbg !8208, !noalias !8206
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !8208
  store ptr @42, ptr %i.z, align 8, !dbg !8208, !noalias !8206
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !8208
  store ptr %i.a, ptr %i.aa, align 8, !dbg !8208, !noalias !8206
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !8208
  store ptr @64, ptr %i.ab, align 8, !dbg !8208, !noalias !8206
    #dbg_value(ptr %i.b, !8204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8183)
    #dbg_value(i64 9, !8204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8183)
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @59, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 9), !dbg !8217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8218, !noalias !8206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8218, !noalias !8206
  ret i1 %i.ac, !dbg !8219
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1h_NtCskKLDkoKarTP_4core3fmtQNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery9GRecoveryNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !8220 {
bb.a:
    #dbg_value(ptr %0, !8224, !DIExpression(), !8227)
    #dbg_value(ptr %1, !8225, !DIExpression(), !8227)
  %i.a = load ptr, ptr %0, align 8, !dbg !8228, !nonnull !1030, !align !3029, !noundef !1030
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2424) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8229
  ret i1 %i.b, !dbg !8230
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps12send_quantum(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8233 {
bb.a:
    #dbg_value(ptr %0, !8244, !DIExpression(), !8248)
    #dbg_declare(ptr poison, !8249, !DIExpression(), !8255)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !8279
    #dbg_value(ptr %0, !8264, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !8267)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2296, !dbg !8280
  %i.c = load i64, ptr %i.b, align 8, !dbg !8280, !noundef !1030
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2096, !dbg !8281
  %i.e = tail call noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer11pacing_rate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.d), !dbg !8282 ; 2 uses
    #dbg_value(i64 %i.e, !8245, !DIExpression(), !8268)
    #dbg_value(ptr poison, !8258, !DIExpression(), !8269)
    #dbg_value(ptr poison, !8259, !DIExpression(), !8270)
    #dbg_value(i8 poison, !8251, !DIExpression(), !8271)
    #dbg_value(i8 poison, !8272, !DIExpression(), !8276)
    #dbg_value(i8 poison, !8250, !DIExpression(), !8277)
  %i.f = icmp ugt i64 %i.e, 1199999, !dbg !8283
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2400, !dbg !8253
  %i.h = load i64, ptr %i.g, align 8, !dbg !8253
  %i.i = zext i1 %i.f to i64, !dbg !8253
  %.sroa.0.0 = shl i64 %i.h, %i.i, !dbg !8253
    #dbg_value(i64 %.sroa.0.0, !8246, !DIExpression(), !8278)
  %i.j = tail call noundef i64 @_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period(i64 noundef %i.e, i64 noundef 0, i32 noundef 50000), !dbg !8284
    #dbg_value(i64 %i.j, !3048, !DIExpression(), !8241)
    #dbg_value(i64 %i.j, !3048, !DIExpression(), !8241)
    #dbg_value(i64 65536, !3049, !DIExpression(), !8241)
    #dbg_value(i64 65536, !3049, !DIExpression(), !8241)
    #dbg_value(ptr undef, !3048, !DIExpression(DW_OP_deref), !8241)
    #dbg_value(ptr undef, !3049, !DIExpression(DW_OP_deref), !8241)
  %..i = tail call noundef range(i64 0, 65537) i64 @llvm.umin.i64(i64 %i.j, i64 65536), !dbg !8285
    #dbg_value(i64 %..i, !2981, !DIExpression(), !8243)
    #dbg_value(i64 %..i, !2981, !DIExpression(), !8243)
    #dbg_value(i64 %.sroa.0.0, !2984, !DIExpression(), !8243)
    #dbg_value(i64 %.sroa.0.0, !2984, !DIExpression(), !8243)
    #dbg_value(ptr undef, !2981, !DIExpression(DW_OP_deref), !8243)
    #dbg_value(ptr undef, !2984, !DIExpression(DW_OP_deref), !8243)
  %..i6 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0, i64 %..i), !dbg !8286
  ret i64 %..i6, !dbg !8287
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps13delivery_rate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0) unnamed_addr #0 !dbg !491 {
bb.a:
    #dbg_value(ptr %0, !3053, !DIExpression(), !8288)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !8289
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2096, !dbg !8290
  %i.c = tail call noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer18bandwidth_estimate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.b), !dbg !8291
  ret i64 %i.c, !dbg !8292
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps13max_bandwidth(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0) unnamed_addr #0 !dbg !8293 {
bb.a:
    #dbg_value(ptr %0, !8296, !DIExpression(), !8298)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !8299
  %i.b = tail call noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.a), !dbg !8300
  %i.c = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.b, 1, !dbg !8301
  ret { i64, i64 } %i.c, !dbg !8301
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps14cwnd_available(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(2424) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8302 {
bb.a:
    #dbg_value(ptr %0, !8323, !DIExpression(), !8325)
    #dbg_value(ptr %0, !8326, !DIExpression(), !8329)
    #dbg_value(ptr undef, !8331, !DIExpression(), !8311)
    #dbg_declare(ptr poison, !8344, !DIExpression(), !8312)
    #dbg_value(ptr %0, !8345, !DIExpression(), !8313)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !8375
  %.val.i = load i64, ptr %i.a, align 8, !dbg !8375, !noalias !8349, !noundef !1030
    #dbg_value(ptr poison, !8351, !DIExpression(), !8318)
    #dbg_value(ptr poison, !8354, !DIExpression(), !8318)
  %.not.i = icmp eq i64 %.val.i, 0, !dbg !8376
    #dbg_value(ptr %0, !8345, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !8313)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !8375
  %.val.i.1 = load i64, ptr %i.b, align 8, !dbg !8375
    #dbg_value(ptr poison, !8351, !DIExpression(), !8318)
    #dbg_value(ptr poison, !8354, !DIExpression(), !8318)
  %.not.i.1 = icmp eq i64 %.val.i.1, 0
  %or.cond = select i1 %.not.i, i1 %.not.i.1, i1 false, !dbg !8375
    #dbg_value(ptr %0, !8345, !DIExpression(DW_OP_plus_uconst, 416, DW_OP_stack_value), !8313)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !8375
  %.val.i.2 = load i64, ptr %i.c, align 8, !dbg !8375
    #dbg_value(ptr poison, !8351, !DIExpression(), !8318)
    #dbg_value(ptr poison, !8354, !DIExpression(), !8318)
  %.not.i.2 = icmp eq i64 %.val.i.2, 0
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps14on_packet_sent:bb.a
  store i64 %7, ptr %i.g, align 8
    #dbg_declare(ptr %1, !8536, !DIExpression(), !8579)
    #dbg_value(i8 %2, !8537, !DIExpression(), !8572)
    #dbg_value(i8 %2, !8580, !DIExpression(), !8584)
    #dbg_value(i8 %2, !8585, !DIExpression(), !8589)
    #dbg_value(i8 %2, !8590, !DIExpression(), !8593)
    #dbg_value(i64 %4, !8539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8572)
    #dbg_value(i32 %5, !8539, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8572)
    #dbg_declare(ptr %i.e, !8540, !DIExpression(), !8594)
    #dbg_declare(ptr %i.d, !8595, !DIExpression(), !8602)
    #dbg_declare(ptr poison, !8603, !DIExpression(), !8609)
    #dbg_value(i64 1, !8613, !DIExpression(), !8618)
    #dbg_value(i64 176, !8622, !DIExpression(), !8631)
    #dbg_value(ptr poison, !8647, !DIExpression(), !8652)
    #dbg_value(i8 0, !8653, !DIExpression(), !8660)
    #dbg_declare(ptr poison, !8654, !DIExpression(), !8661)
    #dbg_value(i8 0, !8662, !DIExpression(), !8669)
    #dbg_value(i8 0, !8670, !DIExpression(), !8676)
    #dbg_declare(ptr poison, !8654, !DIExpression(), !8681)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2420, !dbg !8807
  %i.i = load i8, ptr %i.h, align 4, !dbg !8807, !range !2941, !noundef !1030
  %i.j = trunc nuw i8 %i.i to i1, !dbg !8807
  %.not = xor i1 %i.j, true, !dbg !8807
    #dbg_value(ptr %i.f, !8683, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 864), !8690)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.l = load i8, ptr %i.k, align 8, !range !2941
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %.not, i1 %i.m, i1 false, !dbg !8807
  br i1 %or.cond, label %bb.b, label %bb.d, !dbg !8807

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 poison, !8687, !DIExpression(), !8691)
    #dbg_value(ptr %0, !8573, !DIExpression(), !8578)
    #dbg_value(ptr %0, !8535, !DIExpression(), !8572)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1976, !dbg !8808
  %i.o = load i32, ptr %i.n, align 8, !dbg !8808, !range !2325, !noundef !1030 ; 3 uses
    #dbg_value(ptr undef, !8560, !DIExpression(), !8571)
    #dbg_value(i64 %4, !8567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8692)
    #dbg_value(i32 %5, !8567, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8692)
  %.not93 = icmp eq i32 %i.o, -1, !dbg !8809
  br i1 %.not93, label %bb.d, label %bb.c, !dbg !8810

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1968, !dbg !8808
  %i.q = load i64, ptr %i.p, align 8, !dbg !8808  ; 3 uses
    #dbg_value(i64 %i.q, !8568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8693)
    #dbg_value(i64 %i.q, !8695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8703)
    #dbg_value(i32 %i.o, !8568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8693)
    #dbg_value(i32 %i.o, !8695, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8703)
    #dbg_value(ptr poison, !8610, !DIExpression(), !8704)
    #dbg_value(ptr poison, !8705, !DIExpression(), !8709)
    #dbg_value(ptr poison, !8710, !DIExpression(), !8713)
    #dbg_value(ptr poison, !8611, !DIExpression(), !8714)
    #dbg_value(ptr poison, !8706, !DIExpression(), !8709)
    #dbg_value(ptr poison, !8711, !DIExpression(), !8713)
    #dbg_value(ptr poison, !8715, !DIExpression(), !8718)
    #dbg_value(ptr poison, !8716, !DIExpression(), !8718)
    #dbg_value(ptr poison, !8719, !DIExpression(), !8723)
    #dbg_value(ptr poison, !8720, !DIExpression(), !8723)
  %i.r = icmp eq i64 %i.q, %4, !dbg !8723
  %i.s = icmp sgt i64 %i.q, %4, !dbg !8811
  %i.t = icmp samesign ugt i32 %i.o, %5
  %spec.select = select i1 %i.r, i1 %i.t, i1 %i.s, !dbg !8723 ; 2 uses
    #dbg_value(i8 poison, !8604, !DIExpression(), !8729)
    #dbg_value(i8 poison, !8605, !DIExpression(), !8730)
    #dbg_value(i8 poison, !8725, !DIExpression(), !8731)
    #dbg_value(i1 %spec.select, !8700, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8703)
  %spec.select98 = select i1 %spec.select, i32 %i.o, i32 %5, !dbg !8812
  %spec.select99 = select i1 %spec.select, i64 %i.q, i64 %4, !dbg !8812
  br label %bb.d, !dbg !8812

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.7.1 = phi i32 [ %5, %bb.a ], [ %spec.select98, %bb.c ], [ %5, %bb.b ], !dbg !8572 ; 4 uses
  %.sroa.02.1 = phi i64 [ %4, %bb.a ], [ %spec.select99, %bb.c ], [ %4, %bb.b ], !dbg !8572 ; 4 uses
    #dbg_value(i64 %.sroa.02.1, !8541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8732)
    #dbg_value(i32 %.sroa.7.1, !8541, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8732)
    #dbg_value(ptr poison, !8573, !DIExpression(), !8578)
    #dbg_value(ptr poison, !8535, !DIExpression(), !8572)
    #dbg_value(ptr poison, !8581, !DIExpression(), !8584)
    #dbg_value(ptr poison, !8586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8589)
    #dbg_value(ptr poison, !8733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8737)
    #dbg_value(ptr poison, !8738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8742)
    #dbg_value(i64 3, !8586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8589)
    #dbg_value(i64 3, !8733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8737)
    #dbg_value(i64 3, !8738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8742)
    #dbg_value(i8 %2, !8734, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !8737)
    #dbg_value(i8 %2, !8739, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !8742)
  %i.u = zext nneg i8 %2 to i64, !dbg !8813
    #dbg_value(i64 %i.u, !8734, !DIExpression(), !8737)
    #dbg_value(i64 %i.u, !8739, !DIExpression(), !8742)
    #dbg_value(ptr %0, !8586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8589)
    #dbg_value(ptr %0, !8733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8737)
    #dbg_value(ptr %0, !8738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8742)
    #dbg_value(ptr %0, !8581, !DIExpression(), !8584)
    #dbg_value(ptr %0, !8535, !DIExpression(), !8572)
    #dbg_value(ptr %0, !8573, !DIExpression(), !8578)
  %i.v = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %i.u, !dbg !8814 ; 7 uses
    #dbg_value(ptr %i.v, !8542, !DIExpression(), !8743)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !8815
  %i.x = load i8, ptr %i.w, align 8, !dbg !8815, !range !2941, !noundef !1030 ; 2 uses
  %i.y = trunc nuw i8 %i.x to i1, !dbg !8815
    #dbg_value(i1 %i.y, !8543, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8744)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 257, !dbg !8816
  %i.aa = load i8, ptr %i.z, align 1, !dbg !8816, !range !2941, !noundef !1030 ; 2 uses
  %i.ab = trunc nuw i8 %i.aa to i1, !dbg !8816
    #dbg_value(i1 %i.ab, !8544, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8745)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 260, !dbg !8817
  %i.ad = load i8, ptr %i.ac, align 4, !dbg !8817, !range !2941, !noundef !1030
    #dbg_value(i8 %i.ad, !8545, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8746)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !8818
  %i.af = load i64, ptr %i.ae, align 8, !dbg !8818, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.af, !8546, !DIExpression(), !8747)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !8819
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !8819, !noundef !1030 ; 4 uses
    #dbg_value(i64 %i.ah, !8547, !DIExpression(), !8748)
    #dbg_value(ptr %i.v, !8620, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8749)
    #dbg_value(ptr %i.v, !8632, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8750)
    #dbg_value(ptr %i.v, !8636, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8751)
    #dbg_value(ptr %i.v, !8639, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8752)
    #dbg_value(ptr %i.v, !8643, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8753)
    #dbg_value(ptr %i.v, !8754, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8757)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !8820 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 56, !dbg !8820
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !8820, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.ak, !8614, !DIExpression(), !8618)
    #dbg_value(i64 %i.ak, !8633, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8759)
    #dbg_value(i64 %i.ak, !8637, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8760)
    #dbg_value(i64 %i.ak, !8641, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8761)
    #dbg_value(i64 %i.ak, !8762, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8766)
  %.not94 = icmp eq i64 %i.ak, 0, !dbg !8821
  br i1 %.not94, label %bb.g, label %bb.f, !dbg !8821

bb.e:                                             ; preds = %bb.h
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.al = add i64 %i.ak, -1, !dbg !8822
    #dbg_value(i64 %i.al, !8633, !DIExpression(), !8759)
    #dbg_value(i64 %i.al, !8637, !DIExpression(), !8760)
    #dbg_value(i64 %i.al, !8641, !DIExpression(), !8761)
    #dbg_value(i64 %i.al, !8762, !DIExpression(), !8766)
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 48, !dbg !8823
  %i.an = load i64, ptr %i.am, align 8, !dbg !8823, !noundef !1030
    #dbg_value(i64 %i.an, !8640, !DIExpression(), !8761)
    #dbg_value(i64 %i.an, !8763, !DIExpression(), !8766)
  %i.ao = add i64 %i.al, %i.an, !dbg !8824        ; 2 uses
    #dbg_value(i64 %i.ao, !8767, !DIExpression(), !8771)
    #dbg_value(ptr %i.v, !8645, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8772)
  %i.ap = load i64, ptr %i.ai, align 8, !dbg !8825, !range !2871, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.ap, !8768, !DIExpression(), !8771)
  %.not95 = icmp ult i64 %i.ao, %i.ap, !dbg !8826
  %i.aq = select i1 %.not95, i64 0, i64 %i.ap, !dbg !8826
  %.sroa.032.0 = sub nuw i64 %i.ao, %i.aq, !dbg !8826
    #dbg_value(i64 %.sroa.032.0, !8773, !DIExpression(), !8777)
    #dbg_value(i64 %.sroa.032.0, !8634, !DIExpression(), !8778)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 40, !dbg !8827
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !8827, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.as, !8774, !DIExpression(), !8777)
  %i.at = getelementptr inbounds nuw [176 x i8], ptr %i.as, i64 %.sroa.032.0, !dbg !8828
    #dbg_value(ptr %i.at, !8548, !DIExpression(DW_OP_plus_uconst, 168, DW_OP_stack_value), !8782)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 168, !dbg !8829
  %i.av = load i64, ptr %i.au, align 8, !dbg !8829, !noundef !1030
  %i.aw = icmp ult i64 %i.av, %i.af, !dbg !8829
  br i1 %i.aw, label %bb.g, label %bb.h, !dbg !8829, !prof !3132

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 259, !dbg !8830
  %i.ay = load i8, ptr %i.ax, align 1, !dbg !8830, !range !2941, !noundef !1030 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !8831
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !8832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.622.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %i.az, i64 136, i1 false), !dbg !8831
    #dbg_value(i64 %.sroa.02.1, !8549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8783)
    #dbg_value(i32 %.sroa.7.1, !8549, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8783)
    #dbg_value(i8 %i.x, !8549, !DIExpression(DW_OP_LLVM_fragment, 1280, 8), !8783)
    #dbg_value(i8 %i.aa, !8549, !DIExpression(DW_OP_LLVM_fragment, 1288, 8), !8783)
    #dbg_value(i8 %i.ay, !8549, !DIExpression(DW_OP_LLVM_fragment, 1296, 8), !8783)
    #dbg_value(i8 %i.ad, !8549, !DIExpression(DW_OP_LLVM_fragment, 1304, 8), !8783)
    #dbg_value(i64 %i.ah, !8549, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8783)
    #dbg_value(ptr %i.ai, !8599, !DIExpression(), !8788)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 168, !dbg !8832
  store i64 %i.af, ptr %i.ba, align 8, !dbg !8832
  store i64 %.sroa.02.1, ptr %i.d, align 8, !dbg !8832
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8832
  store i32 %.sroa.7.1, ptr %.sroa.419.0..sroa_idx, align 8, !dbg !8832
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8832
  store i64 %i.ah, ptr %.sroa.521.0..sroa_idx, align 8, !dbg !8832
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 160, !dbg !8832
  store i8 %i.x, ptr %.sroa.723.0..sroa_idx, align 8, !dbg !8832
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 161, !dbg !8832
  store i8 %i.aa, ptr %.sroa.824.0..sroa_idx, align 1, !dbg !8832
  %.sroa.925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 162, !dbg !8832
  store i8 %i.ay, ptr %.sroa.925.0..sroa_idx, align 2, !dbg !8832
  %.sroa.1026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 163, !dbg !8832
  store i8 %i.ad, ptr %.sroa.1026.0..sroa_idx, align 1, !dbg !8832
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE13push_back_mutB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.d), !dbg !8833 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8834
  br i1 %i.y, label %bb.j, label %bb.i, !dbg !8835

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @67, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #23
          to label %bb.e unwind label %bb.w, !dbg !8836

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr %0, !8573, !DIExpression(), !8578)
    #dbg_value(ptr %0, !8535, !DIExpression(), !8572)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2408, !dbg !8837 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !8837, !noundef !1030
  %i.be = add i64 %i.bd, 1, !dbg !8837
  store i64 %i.be, ptr %i.bc, align 8, !dbg !8837
  br label %bb.k, !dbg !8838

bb.j:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !8839
  store i64 %.sroa.02.1, ptr %i.bf, align 8, !dbg !8839
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 168, !dbg !8839
  store i32 %.sroa.7.1, ptr %i.bg, align 8, !dbg !8839
    #dbg_value(ptr %0, !8573, !DIExpression(), !8578)
    #dbg_value(ptr %0, !8535, !DIExpression(), !8572)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2408, !dbg !8840
  store i64 0, ptr %i.bh, align 8, !dbg !8840
  br label %bb.k, !dbg !8838

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.ab, label %bb.l, label %bb.t, !dbg !8841

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %0, !8573, !DIExpression(), !8578)
    #dbg_value(ptr %0, !8535, !DIExpression(), !8572)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !8842
    #dbg_value(ptr %i.f, !8789, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2280), !8792)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2296, !dbg !8843 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !8843, !noundef !1030
  %i.bl = trunc nuw i8 %i.ay to i1, !dbg !8844
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2096, !dbg !8845
  call void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer14on_packet_sent(ptr noalias nofree noundef nonnull align 8 dereferenceable(1152) %i.bi, i64 noundef %.sroa.02.1, i32 noundef %.sroa.7.1, i64 noundef %i.bk, i64 noundef %i.af, i64 noundef %i.ah, i1 noundef zeroext %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.bm), !dbg !8846
    #dbg_value(ptr %0, !8573, !DIExpression(), !8578)
    #dbg_value(ptr %0, !8535, !DIExpression(), !8572)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2280, !dbg !8847
  call void @_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bn, i64 noundef %i.ah, i64 noundef %4, i32 noundef %5), !dbg !8848
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 200, !dbg !8849 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !8849, !noundef !1030
  %i.bq = add i64 %i.bp, 1, !dbg !8849
  store i64 %i.bq, ptr %i.bo, align 8, !dbg !8849
    #dbg_value(ptr %0, !8573, !DIExpression(), !8578)
    #dbg_value(ptr %0, !8535, !DIExpression(), !8572)
  call void @llvm.experimental.noalias.scope.decl(metadata !8793), !dbg !8850
    #dbg_value(i24 %3, !3134, !DIExpression(DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !8461)
    #dbg_value(i24 %3, !3134, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !8461)
    #dbg_value(i24 %3, !3134, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !8461)
    #dbg_value(ptr %0, !3138, !DIExpression(), !8461)
    #dbg_value(i64 %.sroa.02.1, !3139, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8461)
    #dbg_value(i32 %.sroa.7.1, !3139, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8461)
    #dbg_declare(ptr poison, !3143, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !8463)
    #dbg_value(ptr poison, !3184, !DIExpression(), !8470)
    #dbg_value(ptr poison, !3188, !DIExpression(), !8471)
    #dbg_value(ptr poison, !3191, !DIExpression(), !8472)
    #dbg_value(ptr poison, !3194, !DIExpression(), !8473)
    #dbg_value(ptr poison, !3199, !DIExpression(), !8474)
    #dbg_value(ptr poison, !3197, !DIExpression(), !8475)
    #dbg_value(ptr poison, !3202, !DIExpression(), !8476)
    #dbg_declare(ptr poison, !3150, !DIExpression(DW_OP_LLVM_fragment, 144, 48), !8477)
    #dbg_value(ptr poison, !3185, !DIExpression(), !8470)
    #dbg_value(ptr poison, !3189, !DIExpression(), !8471)
    #dbg_value(ptr poison, !3192, !DIExpression(), !8472)
    #dbg_value(ptr poison, !3195, !DIExpression(), !8473)
    #dbg_value(ptr poison, !3200, !DIExpression(), !8478)
    #dbg_value(ptr poison, !3198, !DIExpression(), !8479)
    #dbg_value(ptr poison, !3203, !DIExpression(), !8480)
    #dbg_value(ptr poison, !3206, !DIExpression(), !8483)
    #dbg_value(ptr poison, !3208, !DIExpression(), !8484)
    #dbg_value(ptr %0, !3147, !DIExpression(), !8485)
    #dbg_declare(ptr poison, !3210, !DIExpression(), !8487)
    #dbg_value(i8 0, !3148, !DIExpression(), !8488)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !8851
  %i.bs = load i32, ptr %i.br, align 8, !dbg !8851, !range !2325, !alias.scope !8794, !noundef !1030 ; 3 uses
    #dbg_value(i64 0, !3150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8491)
    #dbg_value(i64 2, !3150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8491)
    #dbg_value(i8 1, !3150, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !8491)
    #dbg_value(i8 2, !3150, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !8491)
    #dbg_value(i64 poison, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i32 %i.bs, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8492)
    #dbg_value(i8 1, !3151, !DIExpression(), !8493)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !8852
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !8852, !alias.scope !8794 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !8852
  %i.bw = load i32, ptr %i.bv, align 8, !dbg !8852, !range !2325, !alias.scope !8794, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.bu, !3143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8494)
    #dbg_value(i32 %i.bw, !3143, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8494)
    #dbg_value(ptr undef, !3208, !DIExpression(), !8484)
    #dbg_value(ptr undef, !3206, !DIExpression(), !8483)
  %.not59.i.i = icmp eq i32 %i.bs, -1, !dbg !8853
    #dbg_value(ptr undef, !3202, !DIExpression(), !8476)
    #dbg_value(ptr undef, !3197, !DIExpression(), !8475)
    #dbg_value(ptr undef, !3203, !DIExpression(), !8480)
    #dbg_value(ptr undef, !3198, !DIExpression(), !8479)
  %.not58.i.i = icmp eq i32 %i.bw, -1
  %or.cond.i.i = or i1 %.not59.i.i, %.not58.i.i, !dbg !8854
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.m, !dbg !8854

.critedge.i.i:                                    ; preds = %bb.m, %bb.l
    #dbg_value(i64 %i.bu, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i32 %i.bw, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8492)
    #dbg_value(i8 1, !3148, !DIExpression(), !8488)
  br label %bb.n, !dbg !8855

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !8851
  %i.by = load i64, ptr %i.bx, align 8, !dbg !8851, !alias.scope !8794 ; 3 uses
    #dbg_value(i64 %i.by, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(ptr undef, !3199, !DIExpression(), !8474)
    #dbg_value(ptr undef, !3194, !DIExpression(), !8473)
    #dbg_value(ptr undef, !3191, !DIExpression(), !8472)
    #dbg_value(ptr undef, !3200, !DIExpression(), !8478)
    #dbg_value(ptr undef, !3195, !DIExpression(), !8473)
    #dbg_value(ptr undef, !3192, !DIExpression(), !8472)
    #dbg_value(ptr undef, !3188, !DIExpression(), !8471)
    #dbg_value(ptr undef, !3189, !DIExpression(), !8471)
    #dbg_value(ptr undef, !3184, !DIExpression(), !8470)
    #dbg_value(ptr undef, !3185, !DIExpression(), !8470)
  %i.bz = icmp eq i64 %i.bu, %i.by, !dbg !8856
  %i.ca = icmp slt i64 %i.bu, %i.by, !dbg !8857
  %i.cb = icmp samesign ult i32 %i.bw, %i.bs
  %spec.select.i.i = select i1 %i.bz, i1 %i.cb, i1 %i.ca, !dbg !8856
    #dbg_value(i8 poison, !3211, !DIExpression(), !8497)
    #dbg_value(i8 poison, !3212, !DIExpression(), !8498)
    #dbg_value(i8 poison, !3216, !DIExpression(), !8499)
  br i1 %spec.select.i.i, label %.critedge.i.i, label %bb.n, !dbg !8858

bb.n:                                             ; preds = %bb.m, %.critedge.i.i
  %.sroa.7.1.i.i = phi i32 [ %i.bw, %.critedge.i.i ], [ %i.bs, %bb.m ], !dbg !8859 ; 3 uses
  %.sroa.02.1.i.i = phi i64 [ %i.bu, %.critedge.i.i ], [ %i.by, %bb.m ], !dbg !8859 ; 3 uses
    #dbg_value(i8 poison, !3148, !DIExpression(), !8488)
    #dbg_value(i64 %.sroa.02.1.i.i, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i32 %.sroa.7.1.i.i, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8492)
    #dbg_value(i8 2, !3151, !DIExpression(), !8493)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !8852
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !8852, !alias.scope !8794 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 600, !dbg !8852
  %i.cf = load i32, ptr %i.ce, align 8, !dbg !8852, !range !2325, !alias.scope !8794, !noundef !1030 ; 4 uses
    #dbg_value(i64 %i.cd, !3143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8494)
    #dbg_value(i32 %i.cf, !3143, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8494)
    #dbg_value(ptr undef, !3208, !DIExpression(), !8484)
    #dbg_value(ptr undef, !3206, !DIExpression(), !8483)
  %.not59.1.i.i = icmp eq i32 %.sroa.7.1.i.i, -1, !dbg !8853
    #dbg_value(ptr undef, !3202, !DIExpression(), !8476)
    #dbg_value(ptr undef, !3197, !DIExpression(), !8475)
    #dbg_value(ptr undef, !3203, !DIExpression(), !8480)
    #dbg_value(ptr undef, !3198, !DIExpression(), !8479)
  %.not58.1.i.i = icmp eq i32 %i.cf, -1           ; 2 uses
  %or.cond.1.i.i = or i1 %.not59.1.i.i, %.not58.1.i.i, !dbg !8854
  br i1 %or.cond.1.i.i, label %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i, label %bb.o, !dbg !8854

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr undef, !3199, !DIExpression(), !8474)
    #dbg_value(ptr undef, !3194, !DIExpression(), !8473)
    #dbg_value(ptr undef, !3191, !DIExpression(), !8472)
    #dbg_value(ptr undef, !3200, !DIExpression(), !8478)
    #dbg_value(ptr undef, !3195, !DIExpression(), !8473)
    #dbg_value(ptr undef, !3192, !DIExpression(), !8472)
    #dbg_value(ptr undef, !3188, !DIExpression(), !8471)
    #dbg_value(ptr undef, !3189, !DIExpression(), !8471)
    #dbg_value(ptr undef, !3184, !DIExpression(), !8470)
    #dbg_value(ptr undef, !3185, !DIExpression(), !8470)
  %i.cg = icmp eq i64 %i.cd, %.sroa.02.1.i.i, !dbg !8856
  %i.ch = icmp slt i64 %i.cd, %.sroa.02.1.i.i, !dbg !8857
  %i.ci = icmp samesign ult i32 %i.cf, %.sroa.7.1.i.i
  %spec.select.1.i.i = select i1 %i.cg, i1 %i.ci, i1 %i.ch, !dbg !8856 ; 2 uses
    #dbg_value(i8 poison, !3211, !DIExpression(), !8497)
    #dbg_value(i8 poison, !3212, !DIExpression(), !8498)
    #dbg_value(i8 poison, !3216, !DIExpression(), !8499)
  %spec.select.i = select i1 %spec.select.1.i.i, i64 %i.cd, i64 %.sroa.02.1.i.i, !dbg !8858
  %spec.select26.i = select i1 %spec.select.1.i.i, i32 %i.cf, i32 %.sroa.7.1.i.i, !dbg !8858
  br label %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.thread24.i, !dbg !8858

_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i: ; preds = %bb.n
    #dbg_value(i8 poison, !3148, !DIExpression(), !8488)
    #dbg_value(i64 %i.cd, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i32 %i.cf, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8492)
    #dbg_value(i64 2, !3150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8491)
  br i1 %.not58.1.i.i, label %bb.p, label %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.thread24.i, !dbg !8860

_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.thread24.i: ; preds = %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i, %bb.o
  %.sroa.02.1.1.i23.i = phi i64 [ %spec.select.i, %bb.o ], [ %i.cd, %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i ]
  %.sroa.7.1.1.i22.i = phi i32 [ %spec.select26.i, %bb.o ], [ %i.cf, %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i ]
    #dbg_value(i64 poison, !3140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8500)
    #dbg_value(i64 poison, !3218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8502)
    #dbg_value(i32 poison, !3140, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8500)
    #dbg_value(i32 poison, !3218, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8502)
    #dbg_value(ptr %0, !3223, !DIExpression(DW_OP_plus_uconst, 2336, DW_OP_stack_value), !8503)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2336, !dbg !8861
  store i64 %.sroa.02.1.1.i23.i, ptr %i.cj, align 8, !dbg !8861, !alias.scope !8793
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2344, !dbg !8861
  store i32 %.sroa.7.1.1.i22.i, ptr %i.ck, align 8, !dbg !8861, !alias.scope !8793
  br label %bb.t, !dbg !8862

bb.p:                                             ; preds = %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i
    #dbg_value(ptr %0, !3227, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !8505)
  %i.cl = load i64, ptr %i.bj, align 8, !dbg !8863, !alias.scope !8793, !noundef !1030
  %i.cm = icmp eq i64 %i.cl, 0, !dbg !8863
  %i.cn = and i24 %3, 256
  %i.co = icmp ne i24 %i.cn, 0
  %or.cond.i = select i1 %i.cm, i1 %i.co, i1 false, !dbg !8864
  br i1 %or.cond.i, label %bb.q, label %.noexc, !dbg !8864

.noexc:                                           ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8865, !noalias !8793
  call fastcc void @_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery18pto_time_and_space(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0, i24 %3, i64 noundef %.sroa.02.1, i32 noundef range(i32 0, 1000000000) %.sroa.7.1), !dbg !8866
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8865
  %i.cq = load i32, ptr %i.cp, align 8, !dbg !8865, !range !2325, !noalias !8793, !noundef !1030 ; 2 uses
  %.not17.i = icmp eq i32 %i.cq, -1, !dbg !8865
  br i1 %.not17.i, label %bb.s, label %bb.r, !dbg !8867

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %0, !3229, !DIExpression(DW_OP_plus_uconst, 2336, DW_OP_stack_value), !8507)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2344, !dbg !8868
  store i32 -1, ptr %i.cr, align 8, !dbg !8868, !alias.scope !8793
  br label %bb.t, !dbg !8862

bb.r:                                             ; preds = %.noexc
    #dbg_value(i64 poison, !3141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8508)
    #dbg_value(i64 poison, !3218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8510)
    #dbg_value(i32 poison, !3141, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8508)
    #dbg_value(i32 poison, !3218, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8510)
    #dbg_value(ptr %0, !3223, !DIExpression(DW_OP_plus_uconst, 2336, DW_OP_stack_value), !8511)
  %i.cs = load i64, ptr %i.a, align 8, !dbg !8869, !noalias !8793
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2336, !dbg !8870
  store i64 %i.cs, ptr %i.ct, align 8, !dbg !8870, !alias.scope !8793
  br label %bb.s, !dbg !8871

bb.s:                                             ; preds = %bb.r, %.noexc
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2344, !dbg !8872
  store i32 %i.cq, ptr %i.cu, align 8, !dbg !8872, !alias.scope !8793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8873, !noalias !8793
  br label %bb.t, !dbg !8874

bb.t:                                             ; preds = %bb.k, %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.thread24.i, %bb.q, %bb.s
    #dbg_value(ptr %0, !8573, !DIExpression(), !8578)
    #dbg_value(ptr %0, !8535, !DIExpression(), !8572)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2384, !dbg !8875 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !8875, !noundef !1030
  %i.cx = add i64 %i.cw, %i.ah, !dbg !8875
  store i64 %i.cx, ptr %i.cv, align 8, !dbg !8875
    #dbg_value(i64 5, !8551, !DIExpression(), !8795)
    #dbg_value(ptr poison, !8648, !DIExpression(), !8796)
    #dbg_value(ptr poison, !8648, !DIExpression(), !8797)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !8671, !DIExpression(), !8676)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !3235, !DIExpression(), !8513)
    #dbg_value(i8 0, !3238, !DIExpression(), !8513)
  %i.cy = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8876 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 6, !dbg !8877
  call void @llvm.assume(i1 %i.cz), !dbg !8877
    #dbg_value(ptr poison, !8649, !DIExpression(), !8798)
    #dbg_value(i8 poison, !8657, !DIExpression(), !8799)
    #dbg_value(i8 poison, !8663, !DIExpression(), !8804)
    #dbg_value(i8 poison, !8656, !DIExpression(), !8805)
  %i.da = icmp samesign ugt i64 %i.cy, 4, !dbg !8878
  br i1 %i.da, label %bb.u, label %bb.v, !dbg !8651

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %i.e, !8553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8806)
    #dbg_value(ptr %i.f, !8553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8806)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8879
  store ptr %i.e, ptr %i.c, align 8, !dbg !8879
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !8879
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs3f36owOmepS_6quiche, ptr %.sroa.436.0..sroa_idx, align 8, !dbg !8879
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !8879
  store ptr %i.f, ptr %i.db, align 8, !dbg !8879
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !8879
  store ptr @_RNvXs1h_NtCskKLDkoKarTP_4core3fmtQNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery9GRecoveryNtB6_5Debug3fmtBE_, ptr %.sroa.440.0..sroa_idx, align 8, !dbg !8879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8651
  store ptr @38, ptr %i.b, align 8, !dbg !8651
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8651
  store i64 39, ptr %i.dc, align 8, !dbg !8651
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !8651
  store ptr @38, ptr %i.dd, align 8, !dbg !8651
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8651
  store i64 39, ptr %i.de, align 8, !dbg !8651
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !8651
  store ptr @69, ptr %i.df, align 8, !dbg !8651
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECs3f36owOmepS_6quiche(ptr noundef nonnull @66, ptr noundef nonnull %i.c, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b), !dbg !8651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8651
  br label %bb.v, !dbg !8651

bb.v:                                             ; preds = %bb.t, %bb.u
  ret void, !dbg !8880

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_EEB1f_.exit: ; preds = %bb.w
  resume { ptr, i32 } %lpad.thr_comm.split-lp, !dbg !8881

bb.w:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !8882
    #dbg_value(ptr %i.dg, !3241, !DIExpression(), !8515)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_EEB1f_.exit unwind label %bb.x, !dbg !8883

bb.x:                                             ; preds = %bb.w
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !8881
  unreachable, !dbg !8881
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps14on_path_change(ptr noalias nofree noundef align 8 dereferenceable(2424) %0, i8 noundef range(i8 0, 3) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5) unnamed_addr #0 !dbg !8885 {
bb.a:
    #dbg_value(ptr %0, !8888, !DIExpression(), !8895)
    #dbg_value(i8 %1, !8889, !DIExpression(), !8895)
    #dbg_value(i64 %2, !8890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8895)
    #dbg_value(i32 %3, !8890, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8895)
    #dbg_value(ptr %4, !8891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8895)
    #dbg_value(i64 %5, !8891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8895)
  %i.a = tail call fastcc { i64, i64 } @_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery30detect_and_remove_lost_packets(ptr noalias nofree noundef align 8 dereferenceable(2424) %0, i8 noundef %1, i64 noundef %2, i32 noundef %3), !dbg !8896 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0, !dbg !8896
  %i.c = extractvalue { i64, i64 } %i.a, 1, !dbg !8896
  %i.d = insertvalue { i64, i64 } poison, i64 %i.c, 0, !dbg !8897
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.b, 1, !dbg !8897
  ret { i64, i64 } %i.e, !dbg !8897
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps15next_lost_frame(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(2424) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8898 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
    #dbg_value(ptr %1, !8922, !DIExpression(), !8925)
    #dbg_value(i8 %2, !8923, !DIExpression(), !8925)
    #dbg_value(i8 %2, !8926, !DIExpression(), !8930)
    #dbg_value(i8 %2, !8931, !DIExpression(), !8935)
    #dbg_value(i8 %2, !8936, !DIExpression(), !8939)
    #dbg_value(ptr %1, !8927, !DIExpression(), !8930)
    #dbg_value(ptr %1, !8932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8935)
    #dbg_value(ptr %1, !8940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8944)
    #dbg_value(ptr %1, !8945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8949)
    #dbg_value(i64 3, !8932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8935)
    #dbg_value(i64 3, !8940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8944)
    #dbg_value(i64 3, !8945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8949)
    #dbg_value(i8 %2, !8941, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !8944)
    #dbg_value(i8 %2, !8946, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !8949)
  %i.b = zext nneg i8 %2 to i64, !dbg !8978
    #dbg_value(i64 %i.b, !8941, !DIExpression(), !8944)
    #dbg_value(i64 %i.b, !8946, !DIExpression(), !8949)
  %i.c = getelementptr inbounds nuw [208 x i8], ptr %1, i64 %i.b, !dbg !8979 ; 2 uses
    #dbg_value(ptr %i.c, !8950, !DIExpression(), !8906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8980, !noalias !8955
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96, !dbg !8980
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameE9pop_frontB19_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !8981, !noalias !8956
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8957), !dbg !8982
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8958), !dbg !8982
    #dbg_declare(ptr %i.a, !8959, !DIExpression(), !8917)
    #dbg_value(ptr %i.c, !8968, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !8918)
  %i.e = load i64, ptr %i.a, align 8, !dbg !8983, !range !2252, !alias.scope !8958, !noalias !8955, !noundef !1030
  %.not.i.i = icmp eq i64 %i.e, -1, !dbg !8983
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !8984

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !8985, !alias.scope !8971, !noalias !8972
  br label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch15next_lost_frame.exit, !dbg !8986

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128, !dbg !8987
    #dbg_value(ptr %i.f, !8968, !DIExpression(), !8918)
    #dbg_value(ptr poison, !8973, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8921)
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameE9pop_frontB19_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RNCNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB6_13RecoveryEpoch15next_lost_frame0Bc_.exit.i.i unwind label %bb.d, !dbg !8988, !noalias !8958

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche5frame5FrameEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.a) #18
          to label %bb.e unwind label %bb.f, !dbg !8986, !noalias !8977

_RNCNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB6_13RecoveryEpoch15next_lost_frame0Bc_.exit.i.i: ; preds = %bb.c
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche5frame5FrameEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.a), !dbg !8986, !noalias !8977
  br label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch15next_lost_frame.exit, !dbg !8986

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g, !dbg !8989

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !8989, !noalias !8977
  unreachable, !dbg !8989

_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch15next_lost_frame.exit: ; preds = %bb.b, %_RNCNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB6_13RecoveryEpoch15next_lost_frame0Bc_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8990, !noalias !8955
  ret void, !dbg !8991
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps15on_ack_received(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(2424) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, i64 noundef %3, i8 noundef range(i8 0, 3) %4, i24 %5, i64 noundef %6, i32 noundef range(i32 0, 1000000000) %7, i64 noundef range(i64 0, 2) %8, i64 %9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %10, i64 noundef %11) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9015 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [176 x i8], align 8               ; 5 uses
  %i.f = alloca [152 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !9668, !DIExpression(), !9077)
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [136 x i8], align 8               ; 4 uses
  %i.j = alloca [136 x i8], align 8               ; 4 uses
  %.sroa.7.i = alloca [136 x i8], align 8         ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr undef, !2738, !DIExpression(), !9080)
    #dbg_value(ptr undef, !2738, !DIExpression(), !9082)
    #dbg_value(ptr undef, !2776, !DIExpression(), !9083)
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !9829, !DIExpression(), !9089)
    #dbg_value(ptr poison, !9844, !DIExpression(), !9090)
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 3 uses
  %i.t = alloca [8 x i8], align 8                 ; 2 uses
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  store ptr %1, ptr %i.t, align 8
    #dbg_value(i24 %5, !9627, !DIExpression(DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !9847)
    #dbg_value(i24 %5, !9627, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !9847)
  store ptr %10, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %11, ptr %i.u, align 8
    #dbg_value(ptr %2, !9624, !DIExpression(), !9847)
    #dbg_value(i64 %3, !9625, !DIExpression(), !9847)
    #dbg_value(i64 %3, !9849, !DIExpression(), !9853)
    #dbg_value(i8 %4, !9626, !DIExpression(), !9847)
    #dbg_value(i8 %4, !9854, !DIExpression(), !9858)
    #dbg_value(i8 %4, !9859, !DIExpression(), !9863)
    #dbg_value(i8 %4, !9864, !DIExpression(), !9867)
    #dbg_value(i8 %4, !9864, !DIExpression(), !9871)
    #dbg_value(i8 %4, !9854, !DIExpression(), !9879)
    #dbg_value(i8 %4, !9859, !DIExpression(), !9882)
    #dbg_value(i8 %4, !9864, !DIExpression(), !9885)
    #dbg_value(i8 %4, !9864, !DIExpression(), !9891)
    #dbg_value(i64 %6, !9628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9847)
    #dbg_value(i32 %7, !9628, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9847)
    #dbg_value(i64 %8, !9629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9847)
    #dbg_value(i64 %9, !9629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9847)
    #dbg_declare(ptr %i.s, !9630, !DIExpression(), !9892)
    #dbg_value(i64 0, !9893, !DIExpression(), !9898)
    #dbg_value(ptr poison, !9899, !DIExpression(), !9904)
    #dbg_value(i8 0, !9905, !DIExpression(), !9912)
    #dbg_declare(ptr poison, !9906, !DIExpression(), !9913)
    #dbg_value(i8 0, !9914, !DIExpression(), !9919)
    #dbg_value(i8 0, !9920, !DIExpression(), !9926)
    #dbg_declare(ptr poison, !9906, !DIExpression(), !9931)
    #dbg_value(ptr %i.t, !9932, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2280), !9935)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2296, !dbg !10468 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !10468, !noundef !1030
    #dbg_value(i64 %i.w, !9631, !DIExpression(), !9936)
    #dbg_value(ptr poison, !9623, !DIExpression(), !9847)
    #dbg_value(ptr poison, !9855, !DIExpression(), !9858)
    #dbg_value(ptr poison, !9860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(ptr poison, !9937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9941)
    #dbg_value(ptr poison, !9942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9946)
    #dbg_value(i64 3, !9860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(i64 3, !9937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9941)
    #dbg_value(i64 3, !9942, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9946)
  %i.x = zext nneg i8 %4 to i64, !dbg !10469
    #dbg_value(i64 %i.x, !9938, !DIExpression(), !9941)
    #dbg_value(i64 %i.x, !9943, !DIExpression(), !9946)
    #dbg_value(i64 %i.x, !9938, !DIExpression(), !9948)
    #dbg_value(i64 %i.x, !9943, !DIExpression(), !9951)
    #dbg_value(ptr %1, !9860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(ptr %1, !9937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9941)
    #dbg_value(ptr %1, !9942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9946)
    #dbg_value(ptr %1, !9855, !DIExpression(), !9858)
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  %i.y = getelementptr inbounds nuw [208 x i8], ptr %1, i64 %i.x, !dbg !10470 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2048, !dbg !10471 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9952), !dbg !10472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9953), !dbg !10472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
    #dbg_value(i64 %8, !9711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9113)
    #dbg_value(i64 %8, !9689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9114)
    #dbg_value(i64 %9, !9711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9113)
    #dbg_value(i64 %9, !9689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9114)
  store ptr %10, ptr %i.p, align 8, !noalias !9954
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %11, ptr %i.aa, align 8, !noalias !9954
    #dbg_value(ptr %i.y, !9708, !DIExpression(), !9113)
    #dbg_value(ptr %2, !9709, !DIExpression(), !9113)
    #dbg_value(ptr %i.z, !9710, !DIExpression(), !9113)
    #dbg_value(ptr %i.z, !9955, !DIExpression(), !9122)
    #dbg_value(ptr %i.z, !9964, !DIExpression(), !9126)
    #dbg_value(ptr %i.z, !9972, !DIExpression(), !9129)
    #dbg_declare(ptr %i.p, !9712, !DIExpression(), !9130)
    #dbg_declare(ptr %i.n, !9719, !DIExpression(), !9131)
    #dbg_declare(ptr %i.l, !9720, !DIExpression(), !9132)
    #dbg_declare(ptr %i.j, !9728, !DIExpression(), !9133)
    #dbg_declare(ptr %i.i, !9978, !DIExpression(), !9136)
    #dbg_value(i64 0, !9981, !DIExpression(), !9140)
    #dbg_value(i64 0, !9985, !DIExpression(), !9146)
    #dbg_value(i64 0, !9992, !DIExpression(), !9149)
    #dbg_value(i64 0, !9995, !DIExpression(), !9152)
    #dbg_value(i64 176, !9999, !DIExpression(), !9159)
    #dbg_value(ptr poison, !10006, !DIExpression(), !9162)
    #dbg_value(i8 0, !10010, !DIExpression(), !9167)
    #dbg_declare(ptr poison, !10011, !DIExpression(), !9168)
    #dbg_value(i8 0, !10016, !DIExpression(), !9173)
    #dbg_value(i8 0, !10020, !DIExpression(), !9178)
    #dbg_declare(ptr poison, !10011, !DIExpression(), !9181)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2064, !dbg !10473 ; 6 uses
    #dbg_value(ptr poison, !9959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9182)
    #dbg_value(i64 poison, !9959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9182)
  store i64 0, ptr %i.ab, align 8, !dbg !10474, !alias.scope !9953
    #dbg_value(i64 0, !9713, !DIExpression(), !9183)
    #dbg_value(i64 0, !9714, !DIExpression(), !9184)
    #dbg_value(i64 0, !9715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9185)
    #dbg_value(i8 0, !9716, !DIExpression(), !9186)
  %i.ac = tail call { i64, i64 } @_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet4last(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2), !dbg !10475, !noalias !10026 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0, !dbg !10475
    #dbg_value(i64 %i.ad, !10027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9190)
    #dbg_value(i64 poison, !10027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9190)
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !10476
  br i1 %i.ae, label %bb.b, label %bb.c, !dbg !10476, !prof !3132

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 poison, !10027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9190)
    #dbg_value(i64 poison, !9717, !DIExpression(), !9191)
  %i.af = load i64, ptr %i.y, align 8, !dbg !10477, !range !2824, !alias.scope !9952, !noundef !1030
    #dbg_value(i64 %i.af, !9982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9140)
    #dbg_value(i64 poison, !9982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9140)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !10478 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !10478, !alias.scope !9952
    #dbg_value(ptr undef, !2981, !DIExpression(DW_OP_deref), !9193)
    #dbg_value(ptr undef, !2984, !DIExpression(DW_OP_deref), !9193)
    #dbg_value(i64 poison, !9718, !DIExpression(), !9194)
  call void @_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet4iter(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2), !dbg !10479, !noalias !10033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10480, !noalias !9954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !10480, !noalias !9954
    #dbg_value(i64 0, !9715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9185)
    #dbg_value(i64 undef, !9715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9185)
    #dbg_value(i64 0, !9713, !DIExpression(), !9183)
    #dbg_value(i64 0, !9714, !DIExpression(), !9184)
    #dbg_value(i8 0, !9716, !DIExpression(), !9186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10481, !noalias !9954
  call void @_RNvXs2_NtCsgrXZMxzLG8J_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryyENCNvMNtCs3f36owOmepS_6quiche6rangesNtB2F_8RangeSet4iter0EIBP_INtNtNtBX_5slice4iter4IterTyyEENCB2C_s_0EENtNtNtBV_6traits8iterator8Iterator4nextB2H_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n), !dbg !10481, !noalias !10033
  %i.ai = load i64, ptr %i.m, align 8, !dbg !10481, !range !2824, !noalias !9954, !noundef !1030
  %i.aj = trunc nuw i64 %i.ai to i1, !dbg !10481
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !dbg !10481

.lr.ph.i:                                         ; preds = %bb.b
  %i.ak = trunc nuw i64 %i.af to i1, !dbg !10478
  %i.al = extractvalue { i64, i64 } %i.ac, 1, !dbg !10475 ; 2 uses
    #dbg_value(i64 %i.al, !9717, !DIExpression(), !9191)
    #dbg_value(i64 %i.al, !10027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9190)
  %i.am = call i64 @llvm.umax.i64(i64 %i.al, i64 %i.ah), !dbg !10482
  %..i.i = select i1 %i.ak, i64 %i.am, i64 %i.al, !dbg !10478
    #dbg_value(i64 %..i.i, !9718, !DIExpression(), !9194)
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aq = trunc nuw i64 %8 to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ay = add i64 %..i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 200 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.d, !dbg !10481

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #21, !dbg !10483, !noalias !10033
  unreachable, !dbg !10483

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i, %.lr.ph.i
  %.sroa.02.0173.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.02.1.i, %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i ]
  %.sroa.04.0172.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.04.1.i, %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i ]
  %.sroa.06.0171.i = phi i8 [ 0, %.lr.ph.i ], [ %.sroa.06.1.i, %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i ]
  %.sroa.0.0170.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i ]
  %.sroa.798.0169.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.798.1.i, %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i ]
    #dbg_value(i64 %.sroa.02.0173.i, !9713, !DIExpression(), !9183)
    #dbg_value(i64 %.sroa.04.0172.i, !9714, !DIExpression(), !9184)
    #dbg_value(i8 %.sroa.06.0171.i, !9716, !DIExpression(), !9186)
    #dbg_value(i64 %.sroa.0.0170.i, !9715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9185)
    #dbg_value(i64 %.sroa.798.0169.i, !9715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !10484, !noalias !9954
  %i.bh = load i64, ptr %i.an, align 8, !dbg !10484, !noalias !9954, !noundef !1030 ; 3 uses
  %i.bi = load i64, ptr %i.ao, align 8, !dbg !10484, !noalias !9954, !noundef !1030 ; 3 uses
  store i64 %i.bh, ptr %i.l, align 8, !dbg !10484, !noalias !9954
  store i64 %i.bi, ptr %i.ap, align 8, !dbg !10484, !noalias !9954
    #dbg_value(ptr %i.l, !9690, !DIExpression(), !9114)
    #dbg_value(ptr poison, !9682, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9195)
    #dbg_value(ptr %i.l, !9674, !DIExpression(), !9077)
  br i1 %i.aq, label %bb.h, label %bb.i, !dbg !10485

._crit_edge.i.loopexit:                           ; preds = %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i
  %i.bj = trunc i8 %.sroa.06.1.i to i1, !dbg !10486
  %i.bk = trunc nuw i64 %.sroa.0.1.i to i1, !dbg !10487
  %i.bl = call range(i64 0, 65537) i64 @llvm.umin.i64(i64 %.sroa.798.1.i, i64 20), !dbg !10488
  br label %._crit_edge.i, !dbg !10489

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.b
  %.sroa.798.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bl, %._crit_edge.i.loopexit ], !dbg !10490
  %.sroa.0.0.lcssa.i = phi i1 [ false, %bb.b ], [ %i.bk, %._crit_edge.i.loopexit ], !dbg !10491
  %.sroa.06.0.lcssa.i = phi i1 [ false, %bb.b ], [ %i.bj, %._crit_edge.i.loopexit ], !dbg !10492
  %.sroa.04.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %.sroa.04.1.i, %._crit_edge.i.loopexit ], !dbg !10493 ; 3 uses
  %.sroa.02.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %.sroa.02.1.i, %._crit_edge.i.loopexit ], !dbg !10494 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10489, !noalias !9954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10495, !noalias !9954
  call void @llvm.experimental.noalias.scope.decl(metadata !10044), !dbg !10496
    #dbg_value(ptr %i.y, !10045, !DIExpression(), !9205)
    #dbg_value(i64 0, !10048, !DIExpression(), !9211)
    #dbg_value(i64 0, !10054, !DIExpression(), !9214)
    #dbg_value(i64 0, !10057, !DIExpression(), !9217)
    #dbg_value(i64 176, !10061, !DIExpression(), !9224)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 48, !dbg !10497
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
    #dbg_value(ptr %i.y, !10052, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9225)
    #dbg_value(ptr %i.y, !10049, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9226)
    #dbg_value(ptr %i.y, !10055, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9227)
    #dbg_value(ptr %i.y, !10058, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9228)
    #dbg_value(ptr %i.y, !10066, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9229)
    #dbg_value(ptr %i.y, !10068, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9232)
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !10498, !alias.scope !10070, !noundef !1030
  %.not14.i.i = icmp eq i64 %i.bp, 0, !dbg !10499
  br i1 %.not14.i.i, label %.loopexit, label %.lr.ph.i.i, !dbg !10499

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e, !dbg !10499

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB15_.exit.i.i, %.lr.ph.i.i
  %i.bt = load i64, ptr %i.bm, align 8, !dbg !10497, !alias.scope !10070, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.bt, !10059, !DIExpression(), !9217)
    #dbg_value(i64 %i.bt, !10071, !DIExpression(), !9235)
    #dbg_value(ptr %i.y, !10064, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9236)
  %i.bu = load i64, ptr %i.bn, align 8, !dbg !10500, !range !2871, !alias.scope !10070, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.bu, !10072, !DIExpression(), !9235)
  %.not13.i.i = icmp ult i64 %i.bt, %i.bu, !dbg !10501
  %i.bv = select i1 %.not13.i.i, i64 0, i64 %i.bu, !dbg !10501
  %.sroa.01.0.i.i = sub nuw i64 %i.bt, %i.bv, !dbg !10501
    #dbg_value(i64 %.sroa.01.0.i.i, !10074, !DIExpression(), !9239)
    #dbg_value(i64 %.sroa.01.0.i.i, !10050, !DIExpression(), !9240)
  %i.bw = load ptr, ptr %i.bq, align 8, !dbg !10502, !alias.scope !10070, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.bw, !10075, !DIExpression(), !9239)
  %i.bx = getelementptr inbounds nuw [176 x i8], ptr %i.bw, i64 %.sroa.01.0.i.i, !dbg !10503
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !10504
  %i.bz = load i32, ptr %i.by, align 8, !dbg !10504, !range !2861, !noalias !10033, !noundef !1030
  %i.ca = icmp samesign ult i32 %i.bz, 1000000000, !dbg !10504
  br i1 %i.ca, label %.loopexit, label %bb.f, !dbg !10505

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10506, !noalias !10077
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE9pop_frontB1d_(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bn), !dbg !10507, !noalias !10033
    #dbg_value(ptr %i.e, !10079, !DIExpression(), !9249)
  %i.cb = load i32, ptr %i.br, align 8, !dbg !10508, !range !10085, !alias.scope !10086, !noalias !10077, !noundef !1030
    #dbg_value(ptr %i.e, !3263, !DIExpression(), !9253)
    #dbg_value(ptr %i.e, !3267, !DIExpression(), !9255)
  %or.cond.i.i.i = icmp ult i32 %i.cb, 1000000000, !dbg !10508
  br i1 %or.cond.i.i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB15_.exit.i.i, !dbg !10508

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.bs, !3241, !DIExpression(), !9257)
  call void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bs), !dbg !10509, !noalias !10033
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB15_.exit.i.i, !dbg !10510

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB15_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10511, !noalias !10077
    #dbg_value(ptr %i.y, !10052, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9225)
    #dbg_value(ptr %i.y, !10049, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9226)
    #dbg_value(ptr %i.y, !10055, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9227)
    #dbg_value(ptr %i.y, !10058, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9228)
    #dbg_value(ptr %i.y, !10066, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9229)
    #dbg_value(ptr %i.y, !10068, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9232)
  %i.cc = load i64, ptr %i.bo, align 8, !dbg !10498, !alias.scope !10070, !noundef !1030
  %.not.i.i = icmp eq i64 %i.cc, 0, !dbg !10499
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !dbg !10499

bb.h:                                             ; preds = %bb.d
    #dbg_value(i64 %9, !9691, !DIExpression(), !9258)
    #dbg_value(ptr undef, !9668, !DIExpression(), !9077)
    #dbg_value(ptr undef, !9681, !DIExpression(DW_OP_deref), !9195)
    #dbg_value(ptr %i.l, !10087, !DIExpression(), !9265)
    #dbg_value(ptr poison, !10090, !DIExpression(), !9265)
    #dbg_value(ptr %i.l, !10091, !DIExpression(), !9266)
    #dbg_value(ptr poison, !10099, !DIExpression(), !9269)
    #dbg_value(ptr poison, !10103, !DIExpression(), !9270)
    #dbg_value(ptr %i.l, !10108, !DIExpression(), !9273)
    #dbg_value(ptr poison, !10112, !DIExpression(), !9273)
  %.not.i92.i = icmp ule i64 %i.bh, %9, !dbg !10512
  %i.cd = icmp ult i64 %9, %i.bi, !dbg !10513
  %.sroa.0.0.i.i = and i1 %.not.i92.i, %i.cd, !dbg !10513
  br i1 %.sroa.0.0.i.i, label %bb.z, label %bb.i, !dbg !10514

bb.i:                                             ; preds = %bb.h, %bb.d
    #dbg_value(ptr %i.y, !9990, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9274)
    #dbg_value(ptr %i.y, !9986, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9275)
    #dbg_value(ptr %i.y, !9993, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9276)
    #dbg_value(ptr %i.y, !9996, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9277)
    #dbg_value(ptr %i.y, !10004, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9278)
    #dbg_value(ptr %i.y, !10114, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9281)
  %i.ce = load i64, ptr %i.as, align 8, !dbg !10515, !alias.scope !9952, !noundef !1030 ; 2 uses
  %.not.i = icmp eq i64 %i.ce, 0, !dbg !10516
  br i1 %.not.i, label %select.unfold.i, label %bb.j, !dbg !10516

bb.j:                                             ; preds = %bb.i
  %i.cf = load i64, ptr %i.at, align 8, !dbg !10517, !alias.scope !9952, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.cf, !9997, !DIExpression(), !9152)
    #dbg_value(i64 %i.cf, !10116, !DIExpression(), !9284)
    #dbg_value(ptr %i.y, !10002, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9285)
  %i.cg = load i64, ptr %i.ar, align 8, !dbg !10518, !range !2871, !alias.scope !9952, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.cg, !10117, !DIExpression(), !9284)
  %.not88.i = icmp ult i64 %i.cf, %i.cg, !dbg !10519
  %i.ch = select i1 %.not88.i, i64 0, i64 %i.cg, !dbg !10519
  %.sroa.031.0.i = sub nuw i64 %i.cf, %i.ch, !dbg !10519
    #dbg_value(i64 %.sroa.031.0.i, !10119, !DIExpression(), !9288)
    #dbg_value(i64 %.sroa.031.0.i, !9987, !DIExpression(), !9289)
  %i.ci = load ptr, ptr %i.au, align 8, !dbg !10520, !alias.scope !9952, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.ci, !10120, !DIExpression(), !9288)
  %i.cj = getelementptr inbounds nuw [176 x i8], ptr %i.ci, i64 %.sroa.031.0.i, !dbg !10521
    #dbg_value(ptr %i.cj, !10124, !DIExpression(), !9300)
    #dbg_value(ptr poison, !10133, !DIExpression(), !9300)
    #dbg_value(ptr undef, !10134, !DIExpression(DW_OP_deref), !9301)
    #dbg_value(ptr poison, !10136, !DIExpression(DW_OP_deref), !9304)
    #dbg_value(ptr poison, !10140, !DIExpression(), !9304)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 168, !dbg !10522
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !10522, !alias.scope !10142, !noalias !10033, !noundef !1030
  %.not1.i.i = icmp ult i64 %i.cl, %i.bh, !dbg !10522
  br i1 %.not1.i.i, label %select.unfold.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i, !dbg !10523

select.unfold.i:                                  ; preds = %bb.j, %bb.i
    #dbg_value(ptr %i.ar, !10143, !DIExpression(), !9314)
    #dbg_value(ptr %i.l, !10160, !DIExpression(), !9314)
    #dbg_declare(ptr %i.a, !10161, !DIExpression(), !9315)
  %i.cm = call { i64, i64 } @_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE16binary_search_byNCINvB2_20binary_search_by_keyyNCNvMs_B18_NtB18_13RecoveryEpoch31detect_and_remove_acked_packetss0_0E0EB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !10524, !noalias !10033
  %i.cn = extractvalue { i64, i64 } %i.cm, 1, !dbg !10525
    #dbg_value(i64 %i.cn, !9721, !DIExpression(), !9316)
  %.pre.i = load i64, ptr %i.as, align 8, !dbg !10526, !alias.scope !10163
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i, !dbg !10527

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i: ; preds = %select.unfold.i, %bb.j
  %i.co = phi i64 [ %.pre.i, %select.unfold.i ], [ %i.ce, %bb.j ], !dbg !10526
  %.sroa.032.1.i = phi i64 [ %i.cn, %select.unfold.i ], [ 0, %bb.j ], !dbg !10528
    #dbg_value(i64 %.sroa.032.1.i, !9721, !DIExpression(), !9316)
  call void @llvm.experimental.noalias.scope.decl(metadata !10187), !dbg !10529
    #dbg_value(ptr %i.ar, !10173, !DIExpression(), !9327)
    #dbg_value(ptr %i.ar, !10188, !DIExpression(), !9331)
    #dbg_value(ptr %i.ar, !10197, !DIExpression(), !9334)
    #dbg_value(ptr %i.ar, !10188, !DIExpression(), !9336)
    #dbg_value(ptr %i.ar, !10197, !DIExpression(), !9338)
    #dbg_value(i64 %.sroa.032.1.i, !10174, !DIExpression(), !9327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10530, !noalias !10200
  call void @_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE12slice_rangesINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEEB1e_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, i64 noundef %.sroa.032.1.i, i64 noundef %i.co), !dbg !10531, !noalias !10201
  %i.cp = load i64, ptr %i.d, align 8, !dbg !10532, !noalias !10200, !noundef !1030
    #dbg_value(i64 %i.cp, !10175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9340)
    #dbg_value(i64 %i.cp, !10195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9331)
  %i.cq = load i64, ptr %i.av, align 8, !dbg !10532, !noalias !10200, !noundef !1030
    #dbg_value(i64 %i.cq, !10175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9340)
    #dbg_value(i64 %i.cq, !10195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9331)
  %i.cr = load i64, ptr %i.aw, align 8, !dbg !10533, !noalias !10200, !noundef !1030
    #dbg_value(i64 %i.cr, !10176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9340)
    #dbg_value(i64 %i.cr, !10195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9336)
  %i.cs = load i64, ptr %i.ax, align 8, !dbg !10533, !noalias !10200, !noundef !1030
    #dbg_value(i64 %i.cs, !10176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9340)
    #dbg_value(i64 %i.cs, !10195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9336)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10534, !noalias !10200
  %i.ct = load ptr, ptr %i.au, align 8, !dbg !10535, !alias.scope !10163, !nonnull !1030, !noundef !1030 ; 4 uses
  %i.cu = getelementptr inbounds nuw [176 x i8], ptr %i.ct, i64 %i.cp, !dbg !10536
    #dbg_value(!DIArgList(i64 %i.cq, i64 %i.cp), !10205, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9359)
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps15on_ack_received:bb.a
    #dbg_value(ptr %i.cu, !10216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9363)
    #dbg_value(ptr %i.cu, !10209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9364)
    #dbg_value(!DIArgList(i64 %i.cq, i64 %i.cp), !10177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9362)
    #dbg_value(!DIArgList(i64 %i.cq, i64 %i.cp), !10216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9363)
    #dbg_value(!DIArgList(i64 %i.cq, i64 %i.cp), !10209, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9364)
  %i.cv = getelementptr inbounds nuw [176 x i8], ptr %i.ct, i64 %i.cr, !dbg !10537
    #dbg_value(!DIArgList(i64 %i.cs, i64 %i.cr), !10212, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9368)
    #dbg_value(!DIArgList(i64 %i.cs, i64 %i.cr), !10203, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9370)
    #dbg_value(ptr %i.cv, !10178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9371)
    #dbg_value(ptr %i.cv, !10216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9372)
    #dbg_value(ptr %i.cv, !10209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9373)
    #dbg_value(!DIArgList(i64 %i.cs, i64 %i.cr), !10178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9371)
    #dbg_value(!DIArgList(i64 %i.cs, i64 %i.cr), !10216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9372)
    #dbg_value(!DIArgList(i64 %i.cs, i64 %i.cr), !10209, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9373)
    #dbg_value(ptr %i.cu, !10210, !DIExpression(), !9374)
    #dbg_value(ptr %i.cu, !10202, !DIExpression(), !9361)
  %i.cw = getelementptr inbounds nuw [176 x i8], ptr %i.ct, i64 %i.cq, !dbg !10538
    #dbg_value(ptr %i.cv, !10213, !DIExpression(), !9375)
    #dbg_value(ptr %i.cv, !10202, !DIExpression(), !9370)
  %i.cx = getelementptr inbounds nuw [176 x i8], ptr %i.ct, i64 %i.cs, !dbg !10539
    #dbg_value(ptr %i.cu, !9722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9376)
    #dbg_value(ptr %i.cw, !9722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9376)
    #dbg_value(ptr %i.cv, !9722, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9376)
    #dbg_value(ptr %i.cx, !9722, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9376)
  br label %bb.k, !dbg !10540

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i
  %.sroa.0100.sroa.7.0.i = phi ptr [ %i.cw, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %.sroa.0100.sroa.7.1126.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10541 ; 4 uses
  %.sroa.0100.sroa.0.0.i = phi ptr [ %i.cu, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %i.da, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10541 ; 2 uses
  %.sroa.10.sroa.5.0.i = phi ptr [ %i.cx, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %.sroa.10.sroa.5.1127.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10541 ; 3 uses
  %.sroa.10.sroa.0.0.i = phi ptr [ %i.cv, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %.sroa.10.sroa.0.1128.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10541 ; 3 uses
  %.sroa.798.1.i = phi i64 [ %.sroa.798.0169.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %.sroa.798.2.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10490 ; 5 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0170.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %.sroa.0.2.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10491 ; 5 uses
  %.sroa.06.1.i = phi i8 [ %.sroa.06.0171.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %.sroa.06.2.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10542 ; 5 uses
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0172.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %.sroa.04.2.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10493 ; 5 uses
  %.sroa.02.1.i = phi i64 [ %.sroa.02.0173.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE6filterNCNvMs_BL_NtBL_13RecoveryEpoch31detect_and_remove_acked_packetss_0EBR_.exit.i ], [ %.sroa.02.2.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i ], !dbg !10543 ; 6 uses
    #dbg_value(i64 %.sroa.0.1.i, !9715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9185)
    #dbg_value(i64 %.sroa.798.1.i, !9715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9185)
    #dbg_value(ptr %.sroa.10.sroa.0.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9376)
    #dbg_value(ptr %.sroa.10.sroa.5.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9376)
    #dbg_value(ptr %.sroa.0100.sroa.0.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9376)
    #dbg_value(ptr %.sroa.0100.sroa.7.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9376)
    #dbg_value(i64 %.sroa.02.1.i, !9713, !DIExpression(), !9183)
    #dbg_value(i64 %.sroa.04.1.i, !9714, !DIExpression(), !9184)
    #dbg_value(i8 %.sroa.06.1.i, !9716, !DIExpression(), !9186)
    #dbg_value(ptr undef, !2776, !DIExpression(), !9083)
    #dbg_value(ptr undef, !2738, !DIExpression(), !9082)
    #dbg_value(ptr %.sroa.0100.sroa.0.0.i, !2760, !DIExpression(), !9377)
    #dbg_value(ptr %.sroa.0100.sroa.7.0.i, !2761, !DIExpression(), !9378)
    #dbg_value(ptr poison, !2848, !DIExpression(), !9380)
    #dbg_value(ptr poison, !2851, !DIExpression(), !9381)
  %i.cy = icmp eq ptr %.sroa.0100.sroa.0.0.i, %.sroa.0100.sroa.7.0.i, !dbg !10544
  br i1 %i.cy, label %bb.l, label %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread120.i, !dbg !10545

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %.sroa.10.sroa.0.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9376)
    #dbg_value(ptr %.sroa.10.sroa.5.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9376)
    #dbg_value(ptr %.sroa.0100.sroa.0.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9376)
    #dbg_value(ptr %.sroa.0100.sroa.7.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9376)
    #dbg_value(ptr undef, !2738, !DIExpression(), !9080)
    #dbg_value(ptr %.sroa.10.sroa.0.0.i, !2763, !DIExpression(), !9382)
    #dbg_value(ptr %.sroa.10.sroa.5.0.i, !2764, !DIExpression(), !9383)
    #dbg_value(ptr poison, !2848, !DIExpression(), !9385)
    #dbg_value(ptr poison, !2851, !DIExpression(), !9386)
  %i.cz = icmp eq ptr %.sroa.10.sroa.0.0.i, %.sroa.10.sroa.5.0.i, !dbg !10546
    #dbg_value(ptr %.sroa.0100.sroa.0.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9376)
    #dbg_value(ptr %.sroa.0100.sroa.7.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9376)
    #dbg_value(ptr %.sroa.10.sroa.0.0.i, !9722, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9376)
    #dbg_value(ptr %.sroa.10.sroa.5.0.i, !9722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9376)
  br i1 %i.cz, label %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i, label %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread120.i, !dbg !10547

_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread120.i: ; preds = %bb.l, %bb.k
  %.sink16.i129.i = phi ptr [ %.sroa.10.sroa.0.0.i, %bb.l ], [ %.sroa.0100.sroa.0.0.i, %bb.k ] ; 8 uses
  %.sroa.10.sroa.0.1128.i = phi ptr [ %.sroa.0100.sroa.7.0.i, %bb.l ], [ %.sroa.10.sroa.0.0.i, %bb.k ]
  %.sroa.10.sroa.5.1127.i = phi ptr [ %.sroa.0100.sroa.7.0.i, %bb.l ], [ %.sroa.10.sroa.5.0.i, %bb.k ]
  %.sroa.0100.sroa.7.1126.i = phi ptr [ %.sroa.10.sroa.5.0.i, %bb.l ], [ %.sroa.0100.sroa.7.0.i, %bb.k ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sink16.i129.i, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10548, !noalias !9954
  %i.db = getelementptr inbounds nuw i8, ptr %.sink16.i129.i, i64 168, !dbg !10548 ; 3 uses
    #dbg_value(ptr %i.db, !9723, !DIExpression(), !9387)
  store ptr %i.db, ptr %i.k, align 8, !dbg !10548, !noalias !9954
    #dbg_value(ptr %.sink16.i129.i, !9724, !DIExpression(), !9388)
    #dbg_value(ptr %.sink16.i129.i, !10221, !DIExpression(), !9391)
    #dbg_value(ptr %.sink16.i129.i, !10224, !DIExpression(), !9394)
  %i.dc = load i64, ptr %i.db, align 8, !dbg !10549, !noalias !10033, !noundef !1030 ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.bi, !dbg !10549
  br i1 %i.dd, label %bb.n, label %bb.m, !dbg !10549

_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10489, !noalias !9954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10489, !noalias !9954
    #dbg_value(i64 %.sroa.0.1.i, !9715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9185)
    #dbg_value(i64 %.sroa.798.1.i, !9715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9185)
    #dbg_value(i64 %.sroa.02.1.i, !9713, !DIExpression(), !9183)
    #dbg_value(i64 %.sroa.04.1.i, !9714, !DIExpression(), !9184)
    #dbg_value(i8 %.sroa.06.1.i, !9716, !DIExpression(), !9186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10481, !noalias !9954
  call void @_RNvXs2_NtCsgrXZMxzLG8J_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryyENCNvMNtCs3f36owOmepS_6quiche6rangesNtB2F_8RangeSet4iter0EIBP_INtNtNtBX_5slice4iter4IterTyyEENCB2C_s_0EENtNtNtBV_6traits8iterator8Iterator4nextB2H_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n), !dbg !10481, !noalias !10033
  %i.de = load i64, ptr %i.m, align 8, !dbg !10481, !range !2824, !noalias !9954, !noundef !1030
  %i.df = trunc nuw i64 %i.de to i1, !dbg !10481
  br i1 %i.df, label %bb.d, label %._crit_edge.i.loopexit, !dbg !10481

bb.m:                                             ; preds = %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread120.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10550, !noalias !9954
  br label %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread.i, !dbg !10551

bb.n:                                             ; preds = %_RNvXs1_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread120.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !10552
    #dbg_value(i32 1000000000, !10225, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9395)
  %.sroa.021.0.copyload.i = load i64, ptr %.sink16.i129.i, align 8, !dbg !10553, !noalias !10033
  %.sroa.422.0..sroa.019.0.20.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i129.i, i64 8, !dbg !10553 ; 2 uses
  %.sroa.422.0.copyload.i = load i32, ptr %.sroa.422.0..sroa.019.0.20.sroa_idx.i, align 8, !dbg !10553, !noalias !10033 ; 3 uses
  %.sroa.624.0..sroa.019.0.20.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i129.i, i64 16, !dbg !10553
  %.sroa.624.0.copyload.i = load i64, ptr %.sroa.624.0..sroa.019.0.20.sroa_idx.i, align 8, !dbg !10553, !noalias !10033
  %.sroa.7.0..sroa.019.0.20.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i129.i, i64 24, !dbg !10553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa.019.0.20.sroa_idx.i, i64 136, i1 false), !dbg !10553, !noalias !10033
  %.sroa.8.0..sroa.019.0.20.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i129.i, i64 160, !dbg !10553
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa.019.0.20.sroa_idx.i, align 8, !dbg !10553, !noalias !10033
  %.sroa.9.0..sroa.019.0.20.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink16.i129.i, i64 161, !dbg !10553
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa.019.0.20.sroa_idx.i, align 1, !dbg !10553, !noalias !10033
  store i32 1000000000, ptr %.sroa.422.0..sroa.019.0.20.sroa_idx.i, align 8, !dbg !10554, !noalias !10033
  %i.dg = add i32 %.sroa.422.0.copyload.i, -1000000000, !dbg !10552
  %i.dh = zext i32 %i.dg to i64, !dbg !10552
  %i.di = icmp ugt i32 %.sroa.422.0.copyload.i, 999999999, !dbg !10552
  %i.dj = add nuw nsw i64 %i.dh, 1, !dbg !10552
  %i.dk = select i1 %i.di, i64 %i.dj, i64 0, !dbg !10552
  switch i64 %i.dk, label %bb.o [
    i64 0, label %bb.p
    i64 1, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i
    i64 2, label %bb.q
  ], !dbg !10555

bb.o:                                             ; preds = %bb.n
  unreachable, !dbg !10556

bb.p:                                             ; preds = %bb.n
    #dbg_value(i64 %.sroa.021.0.copyload.i, !9725, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9396)
    #dbg_value(i32 %.sroa.422.0.copyload.i, !9725, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9396)
  %i.dl = trunc nuw i8 %.sroa.9.0.copyload.i to i1, !dbg !10557
    #dbg_value(i1 %i.dl, !9726, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9396)
    #dbg_value(i64 %.sroa.624.0.copyload.i, !9727, !DIExpression(), !9396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10558, !noalias !9954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i, i64 136, i1 false), !dbg !10558, !noalias !9954
    #dbg_value(i8 %.sroa.8.0.copyload.i, !9729, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9396)
  br i1 %i.dl, label %bb.t, label %bb.r, !dbg !10559

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i: ; preds = %bb.w, %bb.q, %bb.n
  %.sroa.798.2.i = phi i64 [ %.sroa.798.1.i, %bb.w ], [ %.sroa.798.1.i, %bb.n ], [ %spec.select.i, %bb.q ], !dbg !10490
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.w ], [ %.sroa.0.1.i, %bb.n ], [ 1, %bb.q ], !dbg !10491
  %.sroa.06.2.i = phi i8 [ %i.dz, %bb.w ], [ %.sroa.06.1.i, %bb.n ], [ %.sroa.06.1.i, %bb.q ], !dbg !10542
  %.sroa.04.2.i = phi i64 [ %.sroa.04.1.i, %bb.w ], [ %.sroa.04.1.i, %bb.n ], [ %i.dm, %bb.q ], !dbg !10560
  %.sroa.02.2.i = phi i64 [ %.sroa.02.3.i, %bb.w ], [ %.sroa.02.1.i, %bb.n ], [ %.sroa.02.1.i, %bb.q ], !dbg !10543
    #dbg_value(i64 %.sroa.0.2.i, !9715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9185)
    #dbg_value(i64 %.sroa.798.2.i, !9715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9185)
    #dbg_value(i64 %.sroa.02.2.i, !9713, !DIExpression(), !9183)
    #dbg_value(i64 %.sroa.04.2.i, !9714, !DIExpression(), !9184)
    #dbg_value(i8 %.sroa.06.2.i, !9716, !DIExpression(), !9186)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i), !dbg !10561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10550, !noalias !9954
  br label %bb.k, !dbg !10540

bb.q:                                             ; preds = %bb.n
  %i.dm = add i64 %.sroa.04.1.i, 1, !dbg !10562
    #dbg_value(i64 %i.dm, !9714, !DIExpression(), !9184)
    #dbg_value(ptr undef, !9844, !DIExpression(), !9090)
    #dbg_value(ptr %i.db, !9723, !DIExpression(), !9387)
  %i.dn = sub i64 %i.ay, %i.dc, !dbg !10563
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9090)
    #dbg_value(ptr undef, !9829, !DIExpression(), !9089)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9089)
  %i.do = trunc nuw i64 %.sroa.0.1.i to i1, !dbg !10564
  %spec.select.i = select i1 %i.do, i64 %.sroa.798.1.i, i64 %i.dn, !dbg !10564
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i, !dbg !10564

bb.r:                                             ; preds = %bb.t, %bb.p
  %.sroa.02.3.i = phi i64 [ %i.dv, %bb.t ], [ %.sroa.02.1.i, %bb.p ], !dbg !10543
    #dbg_value(i64 %.sroa.02.3.i, !9713, !DIExpression(), !9183)
    #dbg_value(ptr %i.db, !9723, !DIExpression(), !9387)
  %i.dp = load i64, ptr %i.db, align 8, !dbg !10565, !noalias !10033, !noundef !1030
    #dbg_value(i64 %i.dp, !9976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9129)
    #dbg_value(i64 %i.dp, !10230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9401)
    #dbg_value(i64 %i.dp, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9404)
    #dbg_value(i64 %.sroa.021.0.copyload.i, !9976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9129)
    #dbg_value(i64 %.sroa.021.0.copyload.i, !10230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9401)
    #dbg_value(i64 %.sroa.021.0.copyload.i, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9404)
    #dbg_value(i32 %.sroa.422.0.copyload.i, !9976, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !9129)
    #dbg_value(i32 %.sroa.422.0.copyload.i, !10230, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !9401)
    #dbg_value(i32 %.sroa.422.0.copyload.i, !10240, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !9404)
    #dbg_value(ptr %i.z, !10235, !DIExpression(), !9405)
    #dbg_value(ptr %i.z, !10246, !DIExpression(), !9408)
    #dbg_value(i64 24, !10251, !DIExpression(), !9413)
  %i.dq = load i64, ptr %i.ab, align 8, !dbg !10566, !alias.scope !10260, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.dq, !10236, !DIExpression(), !9416)
    #dbg_value(i64 %i.dq, !10261, !DIExpression(), !9419)
    #dbg_value(ptr %i.z, !10258, !DIExpression(), !9420)
  %i.dr = load i64, ptr %i.z, align 8, !dbg !10567, !range !2871, !alias.scope !10260, !noundef !1030
  %i.ds = icmp eq i64 %i.dq, %i.dr, !dbg !10568
  br i1 %i.ds, label %bb.s, label %bb.u, !dbg !10568

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5AckedE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #20
          to label %bb.u unwind label %bb.x, !dbg !10569, !noalias !10033

bb.t:                                             ; preds = %bb.p
  %i.dt = load i64, ptr %i.az, align 8, !dbg !10570, !alias.scope !9952, !noundef !1030
  %i.du = add i64 %i.dt, -1, !dbg !10570
  store i64 %i.du, ptr %i.az, align 8, !dbg !10570, !alias.scope !9952
  %i.dv = add i64 %.sroa.624.0.copyload.i, %.sroa.02.1.i, !dbg !10571
    #dbg_value(i64 %i.dv, !9713, !DIExpression(), !9183)
  br label %bb.r, !dbg !10572

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.dw = load ptr, ptr %i.ba, align 8, !dbg !10573, !alias.scope !10260, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.dw, !10264, !DIExpression(), !9419)
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dq, !dbg !10574 ; 3 uses
    #dbg_value(ptr %i.dx, !10238, !DIExpression(), !9428)
    #dbg_value(ptr %i.dx, !10243, !DIExpression(), !9429)
  store i64 %i.dp, ptr %i.dx, align 8, !dbg !10575, !noalias !10033
  %.sroa.4107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8, !dbg !10575
  store i64 %.sroa.021.0.copyload.i, ptr %.sroa.4107.0..sroa_idx.i, align 8, !dbg !10575, !noalias !10033
  %.sroa.5.0..sroa_idx108.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16, !dbg !10575
  store i32 %.sroa.422.0.copyload.i, ptr %.sroa.5.0..sroa_idx108.i, align 8, !dbg !10575, !noalias !10033
  %i.dy = add i64 %i.dq, 1, !dbg !10576
  store i64 %i.dy, ptr %i.ab, align 8, !dbg !10576, !alias.scope !10260
    #dbg_value(ptr %i.y, !9979, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !9430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10577, !noalias !9954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.i, i64 136, i1 false), !dbg !10577, !noalias !9954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10578, !noalias !9954
  call void @_RNvXsM_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBM_(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.i), !dbg !10579, !noalias !10033
    #dbg_value(ptr %i.bb, !9979, !DIExpression(), !9430)
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB4_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEINtB2_10SpecExtendB1h_INtCs5kGgRUzsVpH_8smallvec8IntoIterAB1h_j1_EE11spec_extendB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.f), !dbg !10580, !noalias !10033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10581, !noalias !9954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10582, !noalias !9954
  %i.dz = or i8 %.sroa.8.0.copyload.i, %.sroa.06.1.i, !dbg !10583
    #dbg_value(i8 %i.dz, !9716, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !9186)
    #dbg_value(i64 5, !9731, !DIExpression(), !9431)
    #dbg_value(ptr poison, !10007, !DIExpression(), !9432)
    #dbg_value(ptr poison, !10007, !DIExpression(), !9433)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !10021, !DIExpression(), !9178)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !3235, !DIExpression(), !9435)
    #dbg_value(i8 0, !3238, !DIExpression(), !9435)
  %i.ea = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !10584, !noalias !9954 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 6, !dbg !10585
  call void @llvm.assume(i1 %i.eb), !dbg !10585
    #dbg_value(ptr poison, !10008, !DIExpression(), !9436)
    #dbg_value(i8 poison, !10014, !DIExpression(), !9437)
    #dbg_value(i8 poison, !10017, !DIExpression(), !9440)
    #dbg_value(i8 poison, !10013, !DIExpression(), !9441)
  %i.ec = icmp samesign ugt i64 %i.ea, 4, !dbg !10586
  br i1 %i.ec, label %bb.v, label %bb.w, !dbg !10587

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.p, !9733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9442)
    #dbg_value(ptr %i.k, !9733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10588, !noalias !9954
  store ptr %i.p, ptr %i.h, align 8, !dbg !10588, !noalias !9954
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs3f36owOmepS_6quiche, ptr %.sroa.438.0..sroa_idx.i, align 8, !dbg !10588, !noalias !9954
  store ptr %i.k, ptr %i.bc, align 8, !dbg !10588, !noalias !9954
  store ptr @_RNvXs1j_NtCskKLDkoKarTP_4core3fmtQyNtB6_7Display3fmtCs3f36owOmepS_6quiche, ptr %.sroa.442.0..sroa_idx.i, align 8, !dbg !10588, !noalias !9954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10587, !noalias !9954
  store ptr @38, ptr %i.g, align 8, !dbg !10587, !noalias !9954
  store i64 39, ptr %i.bd, align 8, !dbg !10587, !noalias !9954
  store ptr @38, ptr %i.be, align 8, !dbg !10587, !noalias !9954
  store i64 39, ptr %i.bf, align 8, !dbg !10587, !noalias !9954
  store ptr @37, ptr %i.bg, align 8, !dbg !10587, !noalias !9954
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECs3f36owOmepS_6quiche(ptr noundef nonnull @35, ptr noundef nonnull %i.h, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g), !dbg !10587, !noalias !10033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10587, !noalias !9954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10587, !noalias !9954
  br label %bb.w, !dbg !10587

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10589, !noalias !9954
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE18get_or_insert_withNCNvB2_13get_or_insert0ECs3f36owOmepS_6quiche.exit.i, !dbg !10589

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_EEB1f_.exit.i: ; preds = %bb.x
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i, !dbg !10590

bb.x:                                             ; preds = %bb.s
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !3241, !DIExpression(), !9444)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_EEB1f_.exit.i unwind label %bb.y, !dbg !10591, !noalias !10033

bb.y:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !10590, !noalias !10033
  unreachable, !dbg !10590

bb.z:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10489, !noalias !9954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10489, !noalias !9954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10495, !noalias !9954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !10592
    #dbg_value(i64 21, !9636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10281)
    #dbg_value(i64 21, !10282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10292)
    #dbg_value(i64 undef, !9636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10281)
    #dbg_value(i64 undef, !10282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10292)
    #dbg_value(i64 21, !10286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10293)
    #dbg_value(i64 undef, !10286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10293)
  br label %bb.bh, !dbg !10593

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB15_.exit.i.i, %bb.e, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !10592
    #dbg_value(i64 %.sroa.02.0.lcssa.i, !9632, !DIExpression(), !10295)
    #dbg_value(i64 %.sroa.04.0.lcssa.i, !9633, !DIExpression(), !10295)
    #dbg_value(i64 poison, !9634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10295)
    #dbg_value(i64 %.sroa.798.0.lcssa.i, !9634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10295)
    #dbg_value(i8 poison, !9635, !DIExpression(), !10295)
    #dbg_value(i8 poison, !9642, !DIExpression(), !10296)
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 2376, !dbg !10594 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !10594, !noundef !1030
  %i.eg = add i64 %i.ef, %.sroa.04.0.lcssa.i, !dbg !10594
  store i64 %i.eg, ptr %i.ee, align 8, !dbg !10594
  br i1 %.sroa.0.0.lcssa.i, label %bb.aa, label %_RNvMs0_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_13LossThreshold16on_spurious_loss.exit, !dbg !10487

bb.aa:                                            ; preds = %.loopexit
    #dbg_value(i64 %.sroa.798.0.lcssa.i, !9638, !DIExpression(), !10297)
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 624, !dbg !10595 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10298), !dbg !10596
    #dbg_value(ptr %i.eh, !10038, !DIExpression(), !9449)
    #dbg_value(i64 %.sroa.798.0.lcssa.i, !10039, !DIExpression(), !9449)
    #dbg_value(ptr @21, !10299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9453)
    #dbg_value(i64 84, !10299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9453)
    #dbg_value(double 1.000000e+00, !10303, !DIExpression(), !9456)
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 640, !dbg !10597
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !10597, !range !2824, !alias.scope !10298, !noundef !1030
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 648, !dbg !10597 ; 2 uses
  %i.el = trunc nuw i64 %i.ej to i1, !dbg !10598
  %i.em = load i64, ptr %i.eh, align 8, !dbg !10599, !range !2824, !alias.scope !10298, !noundef !1030 ; 2 uses
  br i1 %i.el, label %bb.ab, label %bb.ac, !dbg !10598

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.eh, !10041, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9457)
    #dbg_value(ptr %i.eh, !10309, !DIExpression(), !9460)
  %.not.i95 = icmp eq i64 %i.em, 0, !dbg !10600
  br i1 %.not.i95, label %bb.af, label %bb.ag, !dbg !10601

bb.ac:                                            ; preds = %bb.aa
    #dbg_value(i64 %i.em, !10300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9453)
    #dbg_value(i64 poison, !10300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9453)
  %i.en = trunc nuw i64 %i.em to i1, !dbg !10602
  br i1 %i.en, label %bb.ad, label %bb.ae, !dbg !10602, !prof !3132

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 632, !dbg !10603 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !10603, !alias.scope !10298
    #dbg_value(i64 %i.ep, !10300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9453)
    #dbg_value(ptr undef, !3048, !DIExpression(DW_OP_deref), !9461)
    #dbg_value(ptr undef, !3049, !DIExpression(DW_OP_deref), !9461)
    #dbg_value(ptr undef, !2981, !DIExpression(DW_OP_deref), !9463)
    #dbg_value(ptr undef, !2984, !DIExpression(DW_OP_deref), !9463)
  %..i9.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.798.0.lcssa.i, i64 %i.ep), !dbg !10604
    #dbg_value(i64 %..i9.i, !10042, !DIExpression(), !9464)
  store i64 1, ptr %i.eh, align 8, !dbg !10605, !alias.scope !10298
  store i64 %..i9.i, ptr %i.eo, align 8, !dbg !10605, !alias.scope !10298
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 656, !dbg !10606
  store double 1.250000e+00, ptr %i.eq, align 8, !dbg !10606, !alias.scope !10298
  br label %_RNvMs0_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_13LossThreshold16on_spurious_loss.exit, !dbg !10607

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21, !dbg !10608, !noalias !10298
  unreachable, !dbg !10608

bb.af:                                            ; preds = %bb.ab
  %i.er = load double, ptr %i.ek, align 8, !dbg !10609, !alias.scope !10298, !noundef !1030
  %i.es = fmul double %i.er, 2.000000e+00, !dbg !10609
    #dbg_value(double %i.es, !10306, !DIExpression(), !9456)
  %i.et = call nsz double @llvm.minimumnum.f64(double %i.es, double 1.000000e+00), !dbg !10610 ; 2 uses
  store double %i.et, ptr %i.ek, align 8, !dbg !10611, !alias.scope !10298
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 656, !dbg !10612
  %i.ev = fadd double %i.et, 1.000000e+00, !dbg !10612
  store double %i.ev, ptr %i.eu, align 8, !dbg !10612, !alias.scope !10298
  br label %_RNvMs0_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_13LossThreshold16on_spurious_loss.exit, !dbg !10613

bb.ag:                                            ; preds = %bb.ab
  store i64 0, ptr %i.eh, align 8, !dbg !10614, !alias.scope !10298
  br label %_RNvMs0_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_13LossThreshold16on_spurious_loss.exit, !dbg !10613

_RNvMs0_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_13LossThreshold16on_spurious_loss.exit: ; preds = %bb.ag, %bb.af, %bb.ad, %.loopexit
    #dbg_value(ptr %i.t, !10317, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2048), !10323)
    #dbg_value(ptr %i.t, !10324, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2048), !10330)
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  %i.ew = load i64, ptr %i.ab, align 8, !dbg !10615, !noundef !1030 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, 384307168202282326, !dbg !10616
  call void @llvm.assume(i1 %i.ex), !dbg !10617
  %i.ey = icmp eq i64 %i.ew, 0, !dbg !10618
  br i1 %i.ey, label %bb.ai, label %bb.ah, !dbg !10619

bb.ah:                                            ; preds = %_RNvMs0_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_13LossThreshold16on_spurious_loss.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 2280, !dbg !10620
  call void @_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight19saturating_subtract(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ez, i64 noundef %.sroa.02.0.lcssa.i, i64 noundef %6, i32 noundef %7), !dbg !10621
    #dbg_value(ptr %i.t, !10331, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2048), !10336)
    #dbg_value(ptr %i.t, !10337, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2048), !10341)
    #dbg_value(ptr %i.t, !10342, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2048), !10348)
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  %i.fa = load i64, ptr %i.ab, align 8, !dbg !10622, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !10349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10367)
    #dbg_value(i64 %i.fa, !10349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10367)
  %.not = icmp eq i64 %i.fa, 0, !dbg !10623
  br i1 %.not, label %bb.aj, label %bb.ak, !dbg !10623, !prof !2357

bb.ai:                                            ; preds = %_RNvMs0_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_13LossThreshold16on_spurious_loss.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10624
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false), !dbg !10624
  store i64 %.sroa.02.0.lcssa.i, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !10624
  br label %bb.bh, !dbg !10593

bb.aj:                                            ; preds = %bb.ah
    #dbg_value(ptr null, !10368, !DIExpression(), !10375)
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #21, !dbg !10625
  unreachable, !dbg !10625

bb.ak:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 2056, !dbg !10626 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !dbg !10626, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.fd, !10349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10367)
  %i.fe = getelementptr [24 x i8], ptr %i.fd, i64 %i.fa, !dbg !10627 ; 3 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 -24, !dbg !10627
    #dbg_value(ptr %i.ff, !10364, !DIExpression(), !10379)
    #dbg_value(ptr %i.ff, !10368, !DIExpression(), !10375)
    #dbg_value(ptr %i.ff, !9640, !DIExpression(), !10380)
  %i.fg = load i64, ptr %i.y, align 8, !dbg !10628, !range !2824, !noundef !1030
    #dbg_value(i64 %i.fg, !9894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9898)
    #dbg_value(i64 poison, !9894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9898)
  %i.fh = trunc nuw i64 %i.fg to i1, !dbg !10629
  br i1 %i.fh, label %bb.al, label %bb.am, !dbg !10629

bb.al:                                            ; preds = %bb.ak
  %i.fi = load i64, ptr %i.ag, align 8, !dbg !10628
    #dbg_value(i64 %i.fi, !9894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9898)
  br label %bb.am, !dbg !10630

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.012.0 = phi i64 [ %i.fi, %bb.al ], [ 0, %bb.ak ], !dbg !9898 ; 2 uses
  %i.fj = load i64, ptr %i.ff, align 8, !dbg !10631, !noundef !1030 ; 2 uses
    #dbg_value(ptr undef, !2981, !DIExpression(DW_OP_deref), !9483)
    #dbg_value(ptr undef, !2984, !DIExpression(DW_OP_deref), !9483)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.fj, i64 %.sroa.012.0), !dbg !10632
    #dbg_value(i64 %..i, !9641, !DIExpression(), !10381)
    #dbg_value(i64 3, !9860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9882)
    #dbg_value(i64 3, !9937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9948)
    #dbg_value(i64 3, !9942, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9951)
    #dbg_value(ptr %1, !9860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9882)
    #dbg_value(ptr %1, !9937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9948)
    #dbg_value(ptr %1, !9942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9951)
    #dbg_value(ptr %1, !9855, !DIExpression(), !9879)
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  store i64 1, ptr %i.y, align 8, !dbg !10633
  store i64 %..i, ptr %i.ag, align 8, !dbg !10633
  %.not109 = icmp uge i64 %i.fj, %.sroa.012.0, !dbg !10634
  %brmerge.not = select i1 %.not109, i1 %.sroa.06.0.lcssa.i, i1 false, !dbg !10634 ; 3 uses
  br i1 %brmerge.not, label %bb.be, label %bb.an, !dbg !10634

bb.an:                                            ; preds = %bb.am, %bb.be
    #dbg_value(i8 poison, !9642, !DIExpression(), !10296)
    #dbg_value(i8 poison, !9635, !DIExpression(), !10295)
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  %i.fk = call fastcc { i64, i64 } @_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery30detect_and_remove_lost_packets(ptr noalias nofree noundef align 8 dereferenceable(2424) %1, i8 noundef %4, i64 noundef %6, i32 noundef %7), !dbg !10635 ; 2 uses
  %i.fl = extractvalue { i64, i64 } %i.fk, 0, !dbg !10635
  %i.fm = extractvalue { i64, i64 } %i.fk, 1, !dbg !10635 ; 2 uses
    #dbg_value(i64 %i.fl, !9644, !DIExpression(), !10382)
    #dbg_value(i64 %i.fm, !9645, !DIExpression(), !10382)
    #dbg_value(ptr %i.t, !9932, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2280), !10384)
    #dbg_value(ptr %i.t, !10331, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2048), !10386)
    #dbg_value(ptr %i.t, !10337, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2048), !10389)
    #dbg_value(ptr %i.t, !10342, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2048), !10392)
    #dbg_value(ptr %i.t, !10393, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2072), !10396)
    #dbg_value(ptr %i.t, !10397, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2072), !10401)
    #dbg_value(ptr %i.t, !10402, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 2072), !10406)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 2088, !dbg !10636
  %i.fo = load i64, ptr %i.fn, align 8, !dbg !10636, !noundef !1030 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 2080, !dbg !10637
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !10637, !nonnull !1030, !noundef !1030
  %i.fr = load i64, ptr %i.ab, align 8, !dbg !10638, !noundef !1030
  %i.fs = load ptr, ptr %i.fc, align 8, !dbg !10639, !nonnull !1030, !noundef !1030
  %i.ft = load i64, ptr %i.v, align 8, !dbg !10640, !noundef !1030
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 864, !dbg !10641
  call void @llvm.experimental.noalias.scope.decl(metadata !10419), !dbg !10642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10643
    #dbg_value(ptr undef, !3305, !DIExpression(), !9495)
    #dbg_value(ptr undef, !3305, !DIExpression(), !9497)
    #dbg_value(ptr undef, !3318, !DIExpression(), !9498)
    #dbg_value(ptr %i.y, !3292, !DIExpression(), !9499)
    #dbg_value(i64 0, !3321, !DIExpression(), !9501)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE4iterB1d_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn), !dbg !10644
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !10643, !noalias !10419
    #dbg_value(ptr %.sroa.0.sroa.0.0.copyload.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9502)
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10643
  %.sroa.0.sroa.8.0.copyload.i = load ptr, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 8, !dbg !10643, !noalias !10419
    #dbg_value(ptr %.sroa.0.sroa.8.0.copyload.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9502)
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10643
  %.sroa.10.sroa.0.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !10643, !noalias !10419
    #dbg_value(ptr %.sroa.10.sroa.0.0.copyload.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9502)
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !10643
  %.sroa.10.sroa.6.0.copyload.i = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx.i, align 8, !dbg !10643, !noalias !10419
    #dbg_value(ptr %.sroa.10.sroa.6.0.copyload.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9502)
  br label %bb.ao, !dbg !10645

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %.sroa.0.sroa.8.0.i = phi ptr [ %.sroa.0.sroa.8.0.copyload.i, %bb.an ], [ %.sroa.0.sroa.8.1.i, %bb.aq ], !dbg !10643 ; 3 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %.sroa.0.sroa.0.0.copyload.i, %bb.an ], [ %i.fx, %bb.aq ], !dbg !10643 ; 3 uses
  %.sroa.10.sroa.6.0.i = phi ptr [ %.sroa.10.sroa.6.0.copyload.i, %bb.an ], [ %.sroa.10.sroa.6.1.i, %bb.aq ], !dbg !10643 ; 3 uses
  %.sroa.10.sroa.0.0.i96 = phi ptr [ %.sroa.10.sroa.0.0.copyload.i, %bb.an ], [ %.sroa.10.sroa.0.1.i, %bb.aq ], !dbg !10643 ; 3 uses
    #dbg_value(ptr %.sroa.10.sroa.0.0.i96, !3293, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9502)
    #dbg_value(ptr %.sroa.10.sroa.6.0.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9502)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9502)
    #dbg_value(ptr %.sroa.0.sroa.8.0.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9502)
    #dbg_value(ptr undef, !3318, !DIExpression(), !9498)
    #dbg_value(i64 1, !3325, !DIExpression(), !9504)
    #dbg_value(i64 1, !3325, !DIExpression(), !9506)
    #dbg_value(ptr undef, !3305, !DIExpression(), !9497)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !3308, !DIExpression(), !9507)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !3326, !DIExpression(), !9504)
    #dbg_value(ptr %.sroa.0.sroa.8.0.i, !3309, !DIExpression(), !9508)
    #dbg_value(ptr poison, !3329, !DIExpression(), !9510)
    #dbg_value(ptr poison, !3330, !DIExpression(), !9511)
  %i.fv = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.8.0.i, !dbg !10646
  br i1 %i.fv, label %bb.ap, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i, !dbg !10647

bb.ap:                                            ; preds = %bb.ao
    #dbg_value(ptr %.sroa.10.sroa.0.0.i96, !3293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9502)
    #dbg_value(ptr %.sroa.10.sroa.6.0.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9502)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9502)
    #dbg_value(ptr %.sroa.0.sroa.8.0.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9502)
    #dbg_value(ptr undef, !3305, !DIExpression(), !9495)
    #dbg_value(ptr %.sroa.10.sroa.0.0.i96, !3311, !DIExpression(), !9512)
    #dbg_value(ptr %.sroa.10.sroa.0.0.i96, !3326, !DIExpression(), !9506)
    #dbg_value(ptr %.sroa.10.sroa.6.0.i, !3312, !DIExpression(), !9513)
    #dbg_value(ptr poison, !3329, !DIExpression(), !9515)
    #dbg_value(ptr poison, !3330, !DIExpression(), !9516)
  %i.fw = icmp eq ptr %.sroa.10.sroa.0.0.i96, %.sroa.10.sroa.6.0.i, !dbg !10648
  br i1 %i.fw, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread.i, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i, !dbg !10649

_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i: ; preds = %bb.ap, %bb.ao
  %.sroa.0.sroa.8.1.i = phi ptr [ %.sroa.10.sroa.6.0.i, %bb.ap ], [ %.sroa.0.sroa.8.0.i, %bb.ao ], !dbg !10643
  %.sroa.10.sroa.6.1.i = phi ptr [ %.sroa.0.sroa.8.0.i, %bb.ap ], [ %.sroa.10.sroa.6.0.i, %bb.ao ], !dbg !10643
  %.sroa.10.sroa.0.1.i = phi ptr [ %.sroa.0.sroa.0.0.i, %bb.ap ], [ %.sroa.10.sroa.0.0.i96, %bb.ao ], !dbg !10643
  %.sink16.i.i = phi ptr [ %.sroa.10.sroa.0.0.i96, %bb.ap ], [ %.sroa.0.sroa.0.0.i, %bb.ao ] ; 4 uses
    #dbg_value(ptr %.sroa.10.sroa.0.1.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9502)
    #dbg_value(ptr %.sroa.10.sroa.6.1.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9502)
    #dbg_value(ptr %.sink16.i.i, !3293, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9502)
    #dbg_value(ptr %.sroa.0.sroa.8.1.i, !3293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9502)
  %.not.i97 = icmp eq ptr %.sink16.i.i, null, !dbg !10650
  br i1 %.not.i97, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread.i, label %bb.aq, !dbg !10650

bb.aq:                                            ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 176, !dbg !10651
    #dbg_value(ptr %i.fx, !3293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9502)
    #dbg_value(ptr %.sink16.i.i, !3294, !DIExpression(), !9519)
  %i.fy = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 8, !dbg !10652
  %i.fz = load i32, ptr %i.fy, align 8, !dbg !10652, !range !2861, !noundef !1030
  %i.ga = icmp samesign ult i32 %i.fz, 1000000000, !dbg !10652
  br i1 %i.ga, label %bb.ar, label %bb.ao, !dbg !10653

_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread.i: ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i, %bb.ap
  %i.gb = load i64, ptr %i.y, align 8, !dbg !10654, !range !2824, !alias.scope !10419, !noundef !1030
    #dbg_value(i64 %i.gb, !3322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9501)
    #dbg_value(i64 poison, !3322, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9501)
  %i.gc = trunc nuw i64 %i.gb to i1, !dbg !10655
  %i.gd = load i64, ptr %i.ag, align 8, !dbg !10655, !alias.scope !10419
  %i.ge = add i64 %i.gd, 1, !dbg !10655
  %.sroa.03.0.i = select i1 %i.gc, i64 %i.ge, i64 1, !dbg !10655
  br label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch13least_unacked.exit, !dbg !10656

bb.ar:                                            ; preds = %bb.aq
    #dbg_value(ptr %.sink16.i.i, !3295, !DIExpression(DW_OP_plus_uconst, 168, DW_OP_stack_value), !9520)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 168, !dbg !10657
  %i.gg = load i64, ptr %i.gf, align 8, !dbg !10657, !noundef !1030
  br label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch13least_unacked.exit, !dbg !10656

_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch13least_unacked.exit: ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread.i, %bb.ar
  %.sroa.0.0.i = phi i64 [ %i.gg, %bb.ar ], [ %.sroa.03.0.i, %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread.i ], !dbg !10658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10656
    #dbg_value(ptr %1, !9623, !DIExpression(), !9847)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 2096, !dbg !10659
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 2016, !dbg !10660
  call void @llvm.experimental.noalias.scope.decl(metadata !10420), !dbg !10661
  call void @llvm.experimental.noalias.scope.decl(metadata !10421), !dbg !10661
    #dbg_value(ptr %i.fu, !3333, !DIExpression(), !9525)
    #dbg_value(i1 %brmerge.not, !3338, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9525)
    #dbg_value(i64 %i.w, !3339, !DIExpression(), !9525)
    #dbg_value(i64 %i.ft, !3340, !DIExpression(), !9525)
    #dbg_value(i64 %6, !3341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9525)
    #dbg_value(i32 %7, !3341, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9525)
    #dbg_value(ptr %i.fs, !3342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9525)
    #dbg_value(i64 %i.fr, !3342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9525)
    #dbg_value(ptr %i.fq, !3343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9525)
    #dbg_value(ptr %i.fq, !10422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9528)
    #dbg_value(i64 %i.fo, !3343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9525)
    #dbg_value(i64 %i.fo, !10422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9528)
    #dbg_value(i64 %.sroa.0.0.i, !3344, !DIExpression(), !9525)
    #dbg_value(ptr %i.gh, !3345, !DIExpression(), !9525)
    #dbg_value(ptr %i.gi, !3346, !DIExpression(), !9525)
    #dbg_value(float 1.250000e+00, !10426, !DIExpression(), !9531)
    #dbg_value(double 1.250000e+00, !10432, !DIExpression(), !9534)
  call void @_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl19on_congestion_event(ptr noalias nofree noundef nonnull align 8 dereferenceable(1152) %i.fu, i1 noundef zeroext %brmerge.not, i64 noundef %i.w, i64 noundef %i.ft, i64 noundef %6, i32 noundef range(i32 0, 1000000000) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fs, i64 noundef range(i64 0, 384307168202282326) %i.fr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fq, i64 noundef range(i64 0, 576460752303423488) %i.fo, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.gh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gi), !dbg !10662
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 2008, !dbg !10663
  %i.gk = load i8, ptr %i.gj, align 8, !dbg !10663, !range !2941, !alias.scope !10420, !noundef !1030
  %i.gl = trunc nuw i8 %i.gk to i1, !dbg !10663
  br i1 %i.gl, label %bb.as, label %_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer19on_congestion_event.exit, !dbg !10663

bb.as:                                            ; preds = %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch13least_unacked.exit
  %i.gm = icmp eq i64 %i.fo, 0, !dbg !10664
  br i1 %i.gm, label %bb.au, label %bb.at, !dbg !10665

bb.at:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 1984, !dbg !10666
  store i64 0, ptr %i.gn, align 8, !dbg !10666, !alias.scope !10420
  br label %bb.au, !dbg !10667

end_hunk_3
begin_hunk_4_@_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps25on_loss_detection_timeout:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11346
  br label %bb.ae, !dbg !11346
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps26on_pkt_num_space_discarded(ptr noalias nofree noundef align 8 dereferenceable(2424) %0, i8 noundef range(i8 0, 3) %1, i24 %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11666 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 9 uses
  %.sroa.6.i.i = alloca [164 x i8], align 4       ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
    #dbg_value(i24 %2, !11898, !DIExpression(), !11902)
    #dbg_value(ptr %0, !11896, !DIExpression(), !11902)
    #dbg_value(i8 %1, !11897, !DIExpression(), !11902)
    #dbg_value(i8 %1, !11903, !DIExpression(), !11907)
    #dbg_value(i8 %1, !11908, !DIExpression(), !11912)
    #dbg_value(i8 %1, !11913, !DIExpression(), !11916)
    #dbg_value(i64 %3, !11899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11902)
    #dbg_value(i32 %4, !11899, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11902)
    #dbg_value(ptr %0, !11904, !DIExpression(), !11907)
    #dbg_value(ptr %0, !11909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11912)
    #dbg_value(ptr %0, !11917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11921)
    #dbg_value(ptr %0, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11926)
    #dbg_value(i64 3, !11909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11912)
    #dbg_value(i64 3, !11917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11921)
    #dbg_value(i64 3, !11922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11926)
    #dbg_value(i8 %1, !11918, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11921)
    #dbg_value(i8 %1, !11923, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11926)
  %i.f = zext nneg i8 %1 to i64, !dbg !12133
    #dbg_value(i64 %i.f, !11918, !DIExpression(), !11921)
    #dbg_value(i64 %i.f, !11923, !DIExpression(), !11926)
  %i.g = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %i.f, !dbg !12134 ; 16 uses
    #dbg_value(ptr %i.g, !11900, !DIExpression(), !11927)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2280, !dbg !12135
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !12136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11928), !dbg !12137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12138
    #dbg_value(ptr %i.g, !11955, !DIExpression(), !11685)
    #dbg_value(ptr %i.i, !11956, !DIExpression(), !11685)
    #dbg_declare(ptr %i.e, !11960, !DIExpression(DW_OP_LLVM_fragment, 0, 320), !11690)
    #dbg_declare(ptr %i.e, !11977, !DIExpression(DW_OP_LLVM_fragment, 0, 320), !11693)
    #dbg_declare(ptr %i.e, !11984, !DIExpression(DW_OP_LLVM_fragment, 0, 320), !11697)
    #dbg_declare(ptr poison, !11946, !DIExpression(), !11698)
    #dbg_value(i64 0, !11989, !DIExpression(), !11699)
    #dbg_declare(ptr poison, !11990, !DIExpression(), !11700)
    #dbg_value(ptr %i.g, !11945, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11701)
    #dbg_value(ptr %i.g, !11997, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11704)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !12138 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !12138 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !12138, !alias.scope !11928, !noundef !1030 ; 2 uses
  %i.m = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs3f36owOmepS_6quiche(i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40), !dbg !12139, !noalias !12004 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0, !dbg !12139 ; 4 uses
  %i.o = extractvalue { i64, i64 } %i.m, 1, !dbg !12139 ; 3 uses
    #dbg_value(i64 %i.n, !11947, !DIExpression(), !11706)
    #dbg_value(i64 %i.n, !11949, !DIExpression(), !11707)
    #dbg_value(i64 %i.n, !12001, !DIExpression(), !11708)
    #dbg_value(i64 %i.o, !11948, !DIExpression(), !11706)
  %i.p = sub i64 %i.o, %i.n, !dbg !12140          ; 4 uses
    #dbg_value(i64 %i.p, !11950, !DIExpression(), !11709)
    #dbg_value(i64 %i.p, !12002, !DIExpression(), !11708)
  store i64 %i.n, ptr %i.k, align 8, !dbg !12141, !alias.scope !11928
  %i.q = sub i64 %i.l, %i.o, !dbg !12142
  store ptr %i.j, ptr %i.e, align 8, !dbg !12143, !noalias !12004
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12143
  store i64 %i.p, ptr %i.r, align 8, !dbg !12143, !noalias !12004
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !12143 ; 4 uses
  store i64 %i.n, ptr %i.s, align 8, !dbg !12143, !noalias !12004
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !12143
  store i64 %i.q, ptr %i.t, align 8, !dbg !12143, !noalias !12004
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !12143 ; 4 uses
  store i64 %i.p, ptr %i.u, align 8, !dbg !12143, !noalias !12004
    #dbg_value(ptr %i.i, !11960, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !11712)
    #dbg_value(ptr %i.i, !11977, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !11713)
    #dbg_value(ptr %i.i, !11984, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !11699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12007), !dbg !12144
    #dbg_declare(ptr poison, !12009, !DIExpression(DW_OP_LLVM_fragment, 96, 1312), !11721)
    #dbg_value(ptr %i.i, !12018, !DIExpression(), !11722)
    #dbg_declare(ptr %i.e, !12016, !DIExpression(), !11723)
    #dbg_value(i64 0, !12017, !DIExpression(), !11722)
    #dbg_value(i64 0, !12019, !DIExpression(), !11724)
  %i.v = icmp eq i64 %i.p, 0, !dbg !12145
  br i1 %i.v, label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.i, label %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.lr.ph.i.i, !dbg !12145

_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.lr.ph.i.i: ; preds = %bb.a
  %.sroa.513.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 161
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.i, !dbg !12145

bb.b:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 %i.aj, ptr %i.s, align 8, !dbg !12146, !alias.scope !12031, !noalias !12004
  store i64 %i.ak, ptr %i.u, align 8, !dbg !12147, !alias.scope !12031, !noalias !12004
  br label %.body.i.i, !dbg !12148

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ac, %bb.b ], [ %i.ar, %bb.e ]
    #dbg_value(ptr %i.e, !12032, !DIExpression(), !11732)
  invoke void @_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %common.resume.i unwind label %bb.i, !dbg !12149

_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.i: ; preds = %bb.h, %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.lr.ph.i.i
  %i.ad = phi i64 [ %i.n, %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.lr.ph.i.i ], [ %i.aj, %bb.h ], !dbg !12150 ; 2 uses
  %i.ae = phi i64 [ %i.p, %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.lr.ph.i.i ], [ %i.ak, %bb.h ]
  %.sroa.0.019.i.i = phi i64 [ 0, %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.lr.ph.i.i ], [ %i.au, %bb.h ] ; 2 uses
    #dbg_value(i64 %.sroa.0.019.i.i, !12019, !DIExpression(), !11724)
  call void @llvm.experimental.noalias.scope.decl(metadata !12038), !dbg !12150
    #dbg_value(ptr %i.j, !12039, !DIExpression(), !11735)
    #dbg_value(ptr %i.j, !12042, !DIExpression(), !11738)
    #dbg_value(ptr %i.j, !12046, !DIExpression(), !11741)
    #dbg_value(i64 %i.ad, !12040, !DIExpression(), !11735)
    #dbg_value(i64 %i.ad, !12044, !DIExpression(), !11738)
    #dbg_value(i64 %i.ad, !12048, !DIExpression(), !11744)
  %i.af = load i64, ptr %i.aa, align 8, !dbg !12151, !alias.scope !11928, !noalias !12051, !noundef !1030
    #dbg_value(i64 %i.af, !12043, !DIExpression(), !11738)
    #dbg_value(i64 %i.af, !12049, !DIExpression(), !11744)
  %i.ag = add i64 %i.af, %i.ad, !dbg !12152       ; 2 uses
    #dbg_value(i64 %i.ag, !12052, !DIExpression(), !11748)
    #dbg_value(ptr %i.j, !12055, !DIExpression(), !11751)
  %i.ah = load i64, ptr %i.j, align 8, !dbg !12153, !range !2871, !alias.scope !11928, !noalias !12051, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.ah, !12053, !DIExpression(), !11748)
  %.not.i.i.i = icmp ult i64 %i.ag, %i.ah, !dbg !12154
  %i.ai = select i1 %.not.i.i.i, i64 0, i64 %i.ah, !dbg !12154
  %.sroa.02.0.i.i.i = sub nuw i64 %i.ag, %i.ai, !dbg !12154
    #dbg_value(i64 %.sroa.02.0.i.i.i, !12060, !DIExpression(), !11756)
    #dbg_value(i64 %.sroa.02.0.i.i.i, !12029, !DIExpression(), !11757)
  %i.aj = add i64 %i.ad, 1, !dbg !12155           ; 4 uses
  %i.ak = add i64 %i.ae, -1, !dbg !12147          ; 5 uses
    #dbg_value(ptr %i.j, !12065, !DIExpression(), !11756)
    #dbg_value(ptr %i.j, !12067, !DIExpression(), !11760)
  %i.al = load ptr, ptr %i.ab, align 8, !dbg !12156, !alias.scope !11928, !noalias !12051, !nonnull !1030, !noundef !1030
  %i.am = getelementptr inbounds nuw [176 x i8], ptr %i.al, i64 %.sroa.02.0.i.i.i, !dbg !12157 ; 3 uses
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !12158
  %.sroa.5.0.copyload8.i.i = load i32, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !dbg !12158, !noalias !12031 ; 3 uses
  %.not.i.i = icmp eq i32 %.sroa.5.0.copyload8.i.i, -1, !dbg !12159
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.loopexit.i, label %bb.c, !dbg !12160

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.i
  %.sroa.7.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12, !dbg !12158
  %.sroa.05.0.copyload6.i.i = load i64, ptr %i.am, align 8, !dbg !12158, !noalias !12031
    #dbg_value(i64 %.sroa.05.0.copyload6.i.i, !12009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11771)
    #dbg_value(i32 %.sroa.5.0.copyload8.i.i, !12009, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11771)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !12161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %.sroa.6.i.i, ptr noundef nonnull align 4 dereferenceable(164) %.sroa.7.0..sroa_idx9.i.i, i64 164, i1 false), !dbg !12162, !noalias !12007
    #dbg_value(ptr poison, !12071, !DIExpression(DW_OP_deref), !11774)
    #dbg_value(i64 %.sroa.0.019.i.i, !12075, !DIExpression(), !11774)
    #dbg_declare(ptr undef, !12076, !DIExpression(), !11775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12163, !noalias !12082
  store i64 %.sroa.05.0.copyload6.i.i, ptr %i.b, align 8, !dbg !12163, !noalias !12083
  store i32 %.sroa.5.0.copyload8.i.i, ptr %.sroa.513.8..sroa_idx.i.i, align 8, !dbg !12163, !noalias !12083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %.sroa.6.8..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(164) %.sroa.6.i.i, i64 164, i1 false), !dbg !12163, !noalias !12083
  call void @llvm.experimental.noalias.scope.decl(metadata !12084), !dbg !12163
    #dbg_value(ptr poison, !12086, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11784)
    #dbg_declare(ptr %i.b, !12090, !DIExpression(), !11785)
  %i.an = icmp samesign ult i32 %.sroa.5.0.copyload8.i.i, 1000000000, !dbg !12164
  br i1 %i.an, label %bb.d, label %bb.h, !dbg !12165

bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.w, align 1, !dbg !12166, !range !2941, !alias.scope !12084, !noalias !12082, !noundef !1030
    #dbg_value(i8 %i.ao, !12091, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11786)
  %i.ap = load i64, ptr %i.x, align 8, !dbg !12167, !alias.scope !12084, !noalias !12082, !noundef !1030
    #dbg_value(i64 %i.ap, !12092, !DIExpression(), !11786)
  %i.aq = load i64, ptr %i.y, align 8, !dbg !12168, !alias.scope !12084, !noalias !12082, !noundef !1030
    #dbg_value(i64 %i.aq, !12093, !DIExpression(), !11786)
  invoke void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer18on_packet_neutered(ptr noalias nofree noundef nonnull align 8 dereferenceable(1152) %i.i, i64 noundef %i.aq)
          to label %bb.f unwind label %bb.e, !dbg !12169, !noalias !12095

bb.e:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store i64 %i.aj, ptr %i.s, align 8, !dbg !12146, !alias.scope !12031, !noalias !12004
  store i64 %i.ak, ptr %i.u, align 8, !dbg !12147, !alias.scope !12031, !noalias !12004
    #dbg_value(ptr %i.b, !3263, !DIExpression(), !11788)
    #dbg_value(ptr %i.b, !3267, !DIExpression(), !11790)
    #dbg_value(ptr %i.z, !3241, !DIExpression(), !11792)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.z)
          to label %.body.i.i unwind label %bb.g, !dbg !12170, !noalias !12096

bb.f:                                             ; preds = %bb.d
    #dbg_value(i8 %i.ao, !12091, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11786)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.z)
          to label %.noexc.i.i unwind label %bb.b, !dbg !12171, !noalias !12007

.noexc.i.i:                                       ; preds = %bb.f
  %i.as = trunc nuw i8 %i.ao to i1, !dbg !12166
    #dbg_value(i1 %i.as, !12091, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11786)
  %..i.i.i.i = select i1 %i.as, i64 %i.ap, i64 0, !dbg !12172
  br label %bb.h, !dbg !12172

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12173, !noalias !12096
  unreachable, !dbg !12173

bb.h:                                             ; preds = %.noexc.i.i, %bb.c
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %..i.i.i.i, %.noexc.i.i ], !dbg !12174
    #dbg_value(i64 %.sroa.0.0.i.i.i.i, !12092, !DIExpression(), !11786)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12175, !noalias !12082
    #dbg_value(ptr poison, !12098, !DIExpression(), !11798)
    #dbg_value(i64 %.sroa.0.019.i.i, !12101, !DIExpression(), !11798)
    #dbg_value(i64 %.sroa.0.0.i.i.i.i, !12102, !DIExpression(), !11798)
  %i.au = add i64 %.sroa.0.0.i.i.i.i, %.sroa.0.019.i.i, !dbg !12176 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !12177
    #dbg_value(i64 %i.au, !12019, !DIExpression(), !11724)
    #dbg_value(ptr %i.e, !12028, !DIExpression(), !11799)
    #dbg_value(i64 176, !12058, !DIExpression(), !11800)
  %i.av = icmp eq i64 %i.ak, 0, !dbg !12145
  br i1 %i.av, label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.loopexit.i, label %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.i, !dbg !12145

bb.i:                                             ; preds = %.body.i.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12178
  unreachable, !dbg !12178

common.resume.i:                                  ; preds = %bb.l, %bb.j, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.be, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !12179

_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.loopexit.i: ; preds = %bb.h, %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.i
  %.lcssa19 = phi i64 [ %i.o, %bb.h ], [ %i.aj, %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.i ], !dbg !12155
  %.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.ak, %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.i ], !dbg !12147
  %.sroa.0.0.lcssa.i.ph.i = phi i64 [ %i.au, %bb.h ], [ %.sroa.0.019.i.i, %_RNvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.i ]
  store i64 %.lcssa19, ptr %i.s, align 8, !dbg !12146, !alias.scope !12031, !noalias !12004
  store i64 %.lcssa.i, ptr %i.u, align 8, !dbg !12147, !alias.scope !12031, !noalias !12004
  br label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.i, !dbg !12180

_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.i: ; preds = %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.loopexit.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.lcssa.i.ph.i, %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.loopexit.i ], !dbg !12181
    #dbg_value(ptr %i.e, !12032, !DIExpression(), !11802)
  call void @_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !dbg !12180
    #dbg_value(i64 %.sroa.0.0.lcssa.i.i, !11957, !DIExpression(), !11803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12182, !noalias !12004
    #dbg_value(ptr %i.g, !12104, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11806)
    #dbg_value(ptr %i.g, !12108, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11809)
    #dbg_value(i64 0, !12111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11810)
    #dbg_value(i64 0, !12111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11810)
    #dbg_value(i64 0, !12111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11810)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11810)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !12183, !noalias !12113
  store i64 0, ptr %i.j, align 8, !dbg !12184, !alias.scope !11928
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !12184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12184, !alias.scope !11928
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !12184
    #dbg_value(ptr %i.d, !2306, !DIExpression(), !11812)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !12184, !alias.scope !11928
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB1G_.exit.i unwind label %bb.j, !dbg !12185

bb.j:                                             ; preds = %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !2313, !DIExpression(), !11814)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume.i unwind label %bb.k, !dbg !12186

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12185
  unreachable, !dbg !12185

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB1G_.exit.i: ; preds = %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drain5DrainNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2m_8adapters3map8map_foldB15_jjNCNvMs_B17_NtB17_13RecoveryEpoch7discard0NCINvXsK_NtB2k_5accumjNtB4K_3Sum3sumINtB3m_3MapB3_B3W_EE0E0EB1d_.exit.i
    #dbg_value(ptr %i.d, !2313, !DIExpression(), !11816)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !12187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12188, !noalias !12004
    #dbg_value(ptr %i.g, !12114, !DIExpression(), !11819)
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 96, !dbg !12189
    #dbg_value(ptr %i.az, !12117, !DIExpression(), !11822)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameE8truncateB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef 0), !dbg !12190
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 112, !dbg !12191
  store i64 0, ptr %i.ba, align 8, !dbg !12191, !alias.scope !12120
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !12192
    #dbg_value(ptr %i.bb, !12117, !DIExpression(), !11826)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameE8truncateB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb, i64 noundef 0), !dbg !12193
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !12194
  store i64 0, ptr %i.bc, align 8, !dbg !12194, !alias.scope !12120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12195, !noalias !12004
    #dbg_value(ptr %i.g, !12121, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !11829)
    #dbg_value(ptr %i.g, !12125, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !11832)
    #dbg_value(i64 0, !12128, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11833)
    #dbg_value(i64 0, !12128, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11833)
    #dbg_value(i64 0, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11833)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11833)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !12196 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false), !dbg !12196, !noalias !12113
  store i64 0, ptr %i.bd, align 8, !dbg !12197, !alias.scope !11928
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72, !dbg !12197
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !12197, !alias.scope !11928
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80, !dbg !12197
    #dbg_value(ptr %i.c, !2259, !DIExpression(), !11835)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !12197, !alias.scope !11928
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch7discard.exit unwind label %bb.l, !dbg !12198

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB1G_.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !2264, !DIExpression(), !11837)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume.i unwind label %bb.m, !dbg !12199

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12198
  unreachable, !dbg !12198

_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch7discard.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEEB1G_.exit.i
    #dbg_value(ptr %i.c, !2264, !DIExpression(), !11839)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !12200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12201, !noalias !12004
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 168, !dbg !12202
  store i32 -1, ptr %i.bg, align 8, !dbg !12202, !alias.scope !11928
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !12203
  store i32 -1, ptr %i.bh, align 8, !dbg !12203, !alias.scope !11928
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 192, !dbg !12204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !dbg !12205, !alias.scope !11928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12206
  call void @_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight19saturating_subtract(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %.sroa.0.0.lcssa.i.i, i64 noundef %3, i32 noundef %4), !dbg !12207
  call void @llvm.experimental.noalias.scope.decl(metadata !12131), !dbg !12208
    #dbg_value(i24 %2, !3134, !DIExpression(DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11843)
    #dbg_value(i24 %2, !3134, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !11843)
    #dbg_value(i24 %2, !3134, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !11843)
    #dbg_value(ptr %0, !3138, !DIExpression(), !11843)
    #dbg_value(i64 %3, !3139, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11843)
    #dbg_value(i32 %4, !3139, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11843)
    #dbg_declare(ptr poison, !3143, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !11845)
    #dbg_value(ptr poison, !3184, !DIExpression(), !11852)
    #dbg_value(ptr poison, !3188, !DIExpression(), !11853)
    #dbg_value(ptr poison, !3191, !DIExpression(), !11854)
    #dbg_value(ptr poison, !3194, !DIExpression(), !11855)
    #dbg_value(ptr poison, !3199, !DIExpression(), !11856)
    #dbg_value(ptr poison, !3197, !DIExpression(), !11857)
    #dbg_value(ptr poison, !3202, !DIExpression(), !11858)
    #dbg_declare(ptr poison, !3150, !DIExpression(DW_OP_LLVM_fragment, 144, 48), !11859)
    #dbg_value(ptr poison, !3185, !DIExpression(), !11852)
    #dbg_value(ptr poison, !3189, !DIExpression(), !11853)
    #dbg_value(ptr poison, !3192, !DIExpression(), !11854)
    #dbg_value(ptr poison, !3195, !DIExpression(), !11855)
    #dbg_value(ptr poison, !3200, !DIExpression(), !11860)
    #dbg_value(ptr poison, !3198, !DIExpression(), !11861)
    #dbg_value(ptr poison, !3203, !DIExpression(), !11862)
    #dbg_value(ptr poison, !3206, !DIExpression(), !11865)
    #dbg_value(ptr poison, !3208, !DIExpression(), !11866)
    #dbg_value(ptr %0, !3147, !DIExpression(), !11867)
    #dbg_declare(ptr poison, !3210, !DIExpression(), !11869)
    #dbg_value(i8 0, !3148, !DIExpression(), !11870)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !12209
  %i.bk = load i32, ptr %i.bj, align 8, !dbg !12209, !range !2325, !alias.scope !12132, !noundef !1030 ; 3 uses
    #dbg_value(i64 0, !3150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11873)
    #dbg_value(i64 2, !3150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11873)
    #dbg_value(i8 1, !3150, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !11873)
    #dbg_value(i8 2, !3150, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !11873)
    #dbg_value(i64 poison, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11874)
    #dbg_value(i32 %i.bk, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11874)
    #dbg_value(i8 1, !3151, !DIExpression(), !11875)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !12210
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !12210, !alias.scope !12132 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !12210
  %i.bo = load i32, ptr %i.bn, align 8, !dbg !12210, !range !2325, !alias.scope !12132, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.bm, !3143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11876)
    #dbg_value(i32 %i.bo, !3143, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11876)
    #dbg_value(ptr undef, !3208, !DIExpression(), !11866)
    #dbg_value(ptr undef, !3206, !DIExpression(), !11865)
  %.not59.i.i = icmp eq i32 %i.bk, -1, !dbg !12211
    #dbg_value(ptr undef, !3202, !DIExpression(), !11858)
    #dbg_value(ptr undef, !3197, !DIExpression(), !11857)
    #dbg_value(ptr undef, !3203, !DIExpression(), !11862)
    #dbg_value(ptr undef, !3198, !DIExpression(), !11861)
  %.not58.i.i = icmp eq i32 %i.bo, -1
  %or.cond.i.i = or i1 %.not59.i.i, %.not58.i.i, !dbg !12212
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.n, !dbg !12212

.critedge.i.i:                                    ; preds = %bb.n, %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch7discard.exit
    #dbg_value(i64 %i.bm, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11874)
    #dbg_value(i32 %i.bo, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11874)
    #dbg_value(i8 1, !3148, !DIExpression(), !11870)
  br label %bb.o, !dbg !12213

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB4_13RecoveryEpoch7discard.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !12209
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !12209, !alias.scope !12132 ; 3 uses
    #dbg_value(i64 %i.bq, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11874)
    #dbg_value(ptr undef, !3199, !DIExpression(), !11856)
    #dbg_value(ptr undef, !3194, !DIExpression(), !11855)
    #dbg_value(ptr undef, !3191, !DIExpression(), !11854)
    #dbg_value(ptr undef, !3200, !DIExpression(), !11860)
    #dbg_value(ptr undef, !3195, !DIExpression(), !11855)
    #dbg_value(ptr undef, !3192, !DIExpression(), !11854)
    #dbg_value(ptr undef, !3188, !DIExpression(), !11853)
    #dbg_value(ptr undef, !3189, !DIExpression(), !11853)
    #dbg_value(ptr undef, !3184, !DIExpression(), !11852)
    #dbg_value(ptr undef, !3185, !DIExpression(), !11852)
  %i.br = icmp eq i64 %i.bm, %i.bq, !dbg !12214
  %i.bs = icmp slt i64 %i.bm, %i.bq, !dbg !12215
  %i.bt = icmp samesign ult i32 %i.bo, %i.bk
  %spec.select.i.i = select i1 %i.br, i1 %i.bt, i1 %i.bs, !dbg !12214
    #dbg_value(i8 poison, !3211, !DIExpression(), !11879)
    #dbg_value(i8 poison, !3212, !DIExpression(), !11880)
    #dbg_value(i8 poison, !3216, !DIExpression(), !11881)
  br i1 %spec.select.i.i, label %.critedge.i.i, label %bb.o, !dbg !12216

bb.o:                                             ; preds = %bb.n, %.critedge.i.i
  %.sroa.7.1.i.i = phi i32 [ %i.bo, %.critedge.i.i ], [ %i.bk, %bb.n ], !dbg !12217 ; 3 uses
  %.sroa.02.1.i.i = phi i64 [ %i.bm, %.critedge.i.i ], [ %i.bq, %bb.n ], !dbg !12217 ; 3 uses
    #dbg_value(i8 poison, !3148, !DIExpression(), !11870)
    #dbg_value(i64 %.sroa.02.1.i.i, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11874)
    #dbg_value(i32 %.sroa.7.1.i.i, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11874)
    #dbg_value(i8 2, !3151, !DIExpression(), !11875)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !12210
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !12210, !alias.scope !12132 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 600, !dbg !12210
  %i.bx = load i32, ptr %i.bw, align 8, !dbg !12210, !range !2325, !alias.scope !12132, !noundef !1030 ; 4 uses
    #dbg_value(i64 %i.bv, !3143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11876)
    #dbg_value(i32 %i.bx, !3143, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11876)
    #dbg_value(ptr undef, !3208, !DIExpression(), !11866)
    #dbg_value(ptr undef, !3206, !DIExpression(), !11865)
  %.not59.1.i.i = icmp eq i32 %.sroa.7.1.i.i, -1, !dbg !12211
    #dbg_value(ptr undef, !3202, !DIExpression(), !11858)
    #dbg_value(ptr undef, !3197, !DIExpression(), !11857)
    #dbg_value(ptr undef, !3203, !DIExpression(), !11862)
    #dbg_value(ptr undef, !3198, !DIExpression(), !11861)
  %.not58.1.i.i = icmp eq i32 %i.bx, -1           ; 2 uses
  %or.cond.1.i.i = or i1 %.not59.1.i.i, %.not58.1.i.i, !dbg !12212
  br i1 %or.cond.1.i.i, label %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i, label %bb.p, !dbg !12212

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr undef, !3199, !DIExpression(), !11856)
    #dbg_value(ptr undef, !3194, !DIExpression(), !11855)
    #dbg_value(ptr undef, !3191, !DIExpression(), !11854)
    #dbg_value(ptr undef, !3200, !DIExpression(), !11860)
    #dbg_value(ptr undef, !3195, !DIExpression(), !11855)
    #dbg_value(ptr undef, !3192, !DIExpression(), !11854)
    #dbg_value(ptr undef, !3188, !DIExpression(), !11853)
    #dbg_value(ptr undef, !3189, !DIExpression(), !11853)
    #dbg_value(ptr undef, !3184, !DIExpression(), !11852)
    #dbg_value(ptr undef, !3185, !DIExpression(), !11852)
  %i.by = icmp eq i64 %i.bv, %.sroa.02.1.i.i, !dbg !12214
  %i.bz = icmp slt i64 %i.bv, %.sroa.02.1.i.i, !dbg !12215
  %i.ca = icmp samesign ult i32 %i.bx, %.sroa.7.1.i.i
  %spec.select.1.i.i = select i1 %i.by, i1 %i.ca, i1 %i.bz, !dbg !12214 ; 2 uses
    #dbg_value(i8 poison, !3211, !DIExpression(), !11879)
    #dbg_value(i8 poison, !3212, !DIExpression(), !11880)
    #dbg_value(i8 poison, !3216, !DIExpression(), !11881)
  %spec.select.i = select i1 %spec.select.1.i.i, i64 %i.bv, i64 %.sroa.02.1.i.i, !dbg !12216
  %spec.select26.i = select i1 %spec.select.1.i.i, i32 %i.bx, i32 %.sroa.7.1.i.i, !dbg !12216
  br label %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.thread24.i, !dbg !12216

_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i: ; preds = %bb.o
    #dbg_value(i8 poison, !3148, !DIExpression(), !11870)
    #dbg_value(i64 %i.bv, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11874)
    #dbg_value(i32 %i.bx, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11874)
    #dbg_value(i64 2, !3150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11873)
  br i1 %.not58.1.i.i, label %bb.q, label %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.thread24.i, !dbg !12218

_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.thread24.i: ; preds = %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i, %bb.p
  %.sroa.02.1.1.i23.i = phi i64 [ %spec.select.i, %bb.p ], [ %i.bv, %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i ]
  %.sroa.7.1.1.i22.i = phi i32 [ %spec.select26.i, %bb.p ], [ %i.bx, %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i ]
    #dbg_value(i64 poison, !3140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11882)
    #dbg_value(i64 poison, !3218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11884)
    #dbg_value(i32 poison, !3140, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11882)
    #dbg_value(i32 poison, !3218, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11884)
    #dbg_value(ptr %0, !3223, !DIExpression(DW_OP_plus_uconst, 2336, DW_OP_stack_value), !11885)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2336, !dbg !12219
  store i64 %.sroa.02.1.1.i23.i, ptr %i.cb, align 8, !dbg !12219, !alias.scope !12131
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2344, !dbg !12219
  store i32 %.sroa.7.1.1.i22.i, ptr %i.cc, align 8, !dbg !12219, !alias.scope !12131
  br label %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery24set_loss_detection_timer.exit, !dbg !12220

bb.q:                                             ; preds = %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery19loss_time_and_space.exit.i
    #dbg_value(ptr %0, !3227, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !11887)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2296, !dbg !12221
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !12221, !alias.scope !12131, !noundef !1030
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !12221
  %i.cg = and i24 %2, 256
  %i.ch = icmp ne i24 %i.cg, 0
  %or.cond.i = select i1 %i.cf, i1 %i.ch, i1 false, !dbg !12222
  br i1 %or.cond.i, label %bb.s, label %bb.r, !dbg !12222

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12223, !noalias !12131
  call fastcc void @_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery18pto_time_and_space(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0, i24 %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4), !dbg !12224
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12223
  %i.cj = load i32, ptr %i.ci, align 8, !dbg !12223, !range !2325, !noalias !12131, !noundef !1030 ; 2 uses
  %.not17.i = icmp eq i32 %i.cj, -1, !dbg !12223
  br i1 %.not17.i, label %bb.u, label %bb.t, !dbg !12225

bb.s:                                             ; preds = %bb.q
    #dbg_value(ptr %0, !3229, !DIExpression(DW_OP_plus_uconst, 2336, DW_OP_stack_value), !11889)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2344, !dbg !12226
  store i32 -1, ptr %i.ck, align 8, !dbg !12226, !alias.scope !12131
  br label %_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery24set_loss_detection_timer.exit, !dbg !12220

bb.t:                                             ; preds = %bb.r
    #dbg_value(i64 poison, !3141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11890)
    #dbg_value(i64 poison, !3218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11892)
    #dbg_value(i32 poison, !3141, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11890)
    #dbg_value(i32 poison, !3218, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11892)
    #dbg_value(ptr %0, !3223, !DIExpression(DW_OP_plus_uconst, 2336, DW_OP_stack_value), !11893)
  %i.cl = load i64, ptr %i.a, align 8, !dbg !12227, !noalias !12131
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2336, !dbg !12228
  store i64 %i.cl, ptr %i.cm, align 8, !dbg !12228, !alias.scope !12131
  br label %bb.u, !dbg !12229

bb.u:                                             ; preds = %bb.t, %bb.r
end_hunk_4
begin_hunk_5_@_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps27get_updated_qlog_event_data:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !14164
  store i64 %i.h, ptr %i.au, align 8, !dbg !14164
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !14164
  store i32 %i.j, ptr %i.av, align 8, !dbg !14164
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !14164
  store i64 %i.k, ptr %i.aw, align 8, !dbg !14164
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !14164
  store i32 %i.m, ptr %i.ax, align 8, !dbg !14164
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !14164
  store i64 %i.o, ptr %i.ay, align 8, !dbg !14164
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 176, !dbg !14164
  store i32 %i.q, ptr %i.az, align 8, !dbg !14164
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 184, !dbg !14164
  store i64 %i.t, ptr %i.ba, align 8, !dbg !14164
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 192, !dbg !14164
  store i64 %i.v, ptr %i.bb, align 8, !dbg !14164
  store i64 0, ptr %i.a, align 8, !dbg !14164
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14164
  store i64 1, ptr %i.bc, align 8, !dbg !14164
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14164
  store i64 %i.x, ptr %i.bd, align 8, !dbg !14164
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !14164
  store i64 1, ptr %i.be, align 8, !dbg !14164
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !14164
  store i64 %i.z, ptr %i.bf, align 8, !dbg !14164
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !14164
  store i64 1, ptr %i.bg, align 8, !dbg !14164
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !14164
  store i64 %i.af, ptr %i.bh, align 8, !dbg !14164
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !14164
  store i64 1, ptr %i.bi, align 8, !dbg !14164
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !14164
  store i64 %i.al, ptr %i.bj, align 8, !dbg !14164
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !14164
  store i64 1, ptr %i.bk, align 8, !dbg !14164
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !14164
  store i64 %i.an, ptr %i.bl, align 8, !dbg !14164
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !14164
  store i64 1, ptr %i.bm, align 8, !dbg !14164
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 104, !dbg !14164
  store i64 %i.ap, ptr %i.bn, align 8, !dbg !14164
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !14164
  store i32 1, ptr %i.bo, align 8, !dbg !14164
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 116, !dbg !14164
  store i32 %i.ar, ptr %i.bp, align 4, !dbg !14164
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 664, !dbg !14165
  call void @_RNvMs7_NtCs3f36owOmepS_6quiche8recoveryNtB5_11QlogMetrics12maybe_update(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.a), !dbg !14166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14167
  ret void, !dbg !14168
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps30pmtud_update_max_datagram_size(ptr noalias nofree noundef align 8 dereferenceable(2424) initializes((2400, 2408)) %0, i64 noundef %1) unnamed_addr #0 !dbg !566 {
bb.a:
    #dbg_value(ptr %0, !3358, !DIExpression(), !14169)
    #dbg_value(i64 %1, !3359, !DIExpression(), !14169)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2400, !dbg !14170
  store i64 %1, ptr %i.a, align 8, !dbg !14170
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !14171
  tail call void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer10update_mss(ptr noalias nofree noundef nonnull align 8 dereferenceable(1152) %i.b, i64 noundef %1), !dbg !14172
  ret void, !dbg !14173
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(2424) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !383 {
bb.a:
    #dbg_declare(ptr poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !14216)
    #dbg_declare(ptr poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !14219)
    #dbg_value(ptr %0, !2573, !DIExpression(), !14220)
    #dbg_value(i32 4, !2578, !DIExpression(), !14221)
    #dbg_value(ptr @24, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14222)
    #dbg_value(i64 44, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14222)
    #dbg_value(ptr @25, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14223)
    #dbg_value(i64 30, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14223)
    #dbg_value(ptr %0, !2575, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14224)
    #dbg_value(ptr %0, !2582, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14226)
    #dbg_value(ptr %0, !2587, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14228)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136, !dbg !14230
  %i.b = load i32, ptr %i.a, align 8, !dbg !14230, !range !2354, !noundef !1030
    #dbg_value(i64 poison, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14229)
    #dbg_value(i32 %i.b, !2567, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14229)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2144, !dbg !14231
  %i.d = load i64, ptr %i.c, align 8, !dbg !14231, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.d, !2577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14221)
    #dbg_value(i32 poison, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14221)
    #dbg_value(i64 %i.d, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14175)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14175)
    #dbg_value(i32 4, !2594, !DIExpression(), !14175)
    #dbg_value(i64 4, !2601, !DIExpression(), !14177)
    #dbg_value(i64 4, !2609, !DIExpression(), !14179)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14180)
    #dbg_value(i64 poison, !2596, !DIExpression(), !14181)
    #dbg_value(i64 poison, !2618, !DIExpression(), !14183)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14184)
    #dbg_value(i64 %i.d, !2605, !DIExpression(), !14177)
    #dbg_value(i64 %i.d, !2615, !DIExpression(), !14179)
  %i.e = icmp ugt i64 %i.d, 4611686018427387903, !dbg !14232
    #dbg_value(i64 poison, !2606, !DIExpression(), !14185)
    #dbg_value(i1 %i.e, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14185)
    #dbg_value(i1 %i.e, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14187)
  br i1 %i.e, label %select.unfold, label %bb.b, !dbg !14233, !prof !2357

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2128, !dbg !14230
  %i.g = load i64, ptr %i.f, align 8, !dbg !14230, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.g, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14229)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14180)
    #dbg_value(i32 poison, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14221)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14175)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14180)
    #dbg_value(i32 poison, !2595, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14180)
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14184)
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14184)
    #dbg_value(i64 %i.d, !2606, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !14185)
    #dbg_value(i32 poison, !2596, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14181)
    #dbg_value(i32 poison, !2618, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14183)
    #dbg_value(i64 %i.d, !2598, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !14188)
    #dbg_value(i64 %i.d, !2619, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !14183)
    #dbg_value(i1 false, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14190)
  %i.h = shl nuw i64 %i.d, 2, !dbg !14232
    #dbg_value(i64 %i.h, !2606, !DIExpression(), !14185)
    #dbg_value(i64 %i.h, !2598, !DIExpression(), !14188)
    #dbg_value(i64 %i.h, !2619, !DIExpression(), !14183)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2152, !dbg !14231
  %i.j = load i32, ptr %i.i, align 8, !dbg !14231, !range !2354, !noundef !1030 ; 2 uses
    #dbg_value(i32 %i.j, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14175)
    #dbg_value(i32 %i.j, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14221)
    #dbg_value(i32 %i.j, !2595, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14180)
  %i.k = udiv i32 %i.j, 250000000, !dbg !14234
    #dbg_value(i32 %i.k, !2618, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14183)
    #dbg_value(i32 %i.k, !2596, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14181)
  %.zext32 = zext nneg i32 %i.k to i64, !dbg !14234
    #dbg_value(i64 %.zext32, !2596, !DIExpression(), !14181)
    #dbg_value(i64 %.zext32, !2618, !DIExpression(), !14183)
  %i.l = add nuw i64 %i.h, %.zext32, !dbg !14235  ; 2 uses
  %i.m = shl nuw i32 %i.j, 2, !dbg !14236
    #dbg_value(i32 %i.m, !2595, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14180)
  %i.n = urem i32 %i.m, 1000000000, !dbg !14237   ; 2 uses
    #dbg_value(i32 %i.n, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14184)
    #dbg_value(i32 %i.n, !2597, !DIExpression(), !14184)
    #dbg_value(i32 %i.n, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14222)
    #dbg_value(i64 %i.l, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14222)
    #dbg_value(i64 %i.l, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14192)
    #dbg_value(i32 %i.n, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14192)
    #dbg_value(i64 0, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14192)
    #dbg_value(i32 1000000, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14192)
    #dbg_value(ptr poison, !2639, !DIExpression(), !14194)
    #dbg_value(ptr poison, !2642, !DIExpression(), !14194)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !14196)
    #dbg_value(ptr poison, !2650, !DIExpression(), !14198)
    #dbg_value(ptr poison, !2654, !DIExpression(), !14198)
    #dbg_value(ptr poison, !2656, !DIExpression(), !14200)
    #dbg_value(ptr poison, !2658, !DIExpression(), !14200)
  %i.o = icmp ne i64 %i.l, 0, !dbg !14238
    #dbg_value(i8 poison, !2647, !DIExpression(), !14201)
  %i.p = icmp samesign ugt i32 %i.n, 1000000, !dbg !14239
  %i.q = select i1 %i.o, i1 true, i1 %i.p, !dbg !14238 ; 2 uses
  %.2.i = select i1 %i.q, i64 %i.l, i64 0, !dbg !14240
    #dbg_value(i64 %.2.i, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14229)
    #dbg_value(i32 poison, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14229)
    #dbg_value(i64 %i.g, !2661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14203)
    #dbg_value(i32 %i.b, !2661, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14203)
    #dbg_value(i64 %.2.i, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14203)
    #dbg_value(i32 poison, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14203)
    #dbg_value(i64 1, !2670, !DIExpression(), !14205)
    #dbg_value(i64 %i.g, !2671, !DIExpression(), !14207)
    #dbg_value(i64 %.2.i, !2672, !DIExpression(), !14207)
  %i.r = add i64 %.2.i, %i.g, !dbg !14241         ; 4 uses
  %i.s = icmp ult i64 %i.r, %i.g, !dbg !14241
    #dbg_value(i1 %i.s, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14209)
  br i1 %i.s, label %bb.g, label %bb.c, !dbg !14242, !prof !2357

bb.c:                                             ; preds = %bb.b
  %..i = select i1 %i.q, i32 %i.n, i32 1000000, !dbg !14240
    #dbg_value(i32 %..i, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14229)
    #dbg_value(i32 %..i, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14203)
    #dbg_value(i64 %i.r, !2666, !DIExpression(), !14210)
    #dbg_value(i64 %i.r, !2671, !DIExpression(), !14205)
  %i.t = add nuw nsw i32 %..i, %i.b, !dbg !14243  ; 3 uses
    #dbg_value(i32 %i.t, !2667, !DIExpression(), !14211)
  %i.u = icmp samesign ugt i32 %i.t, 999999999, !dbg !14244
  br i1 %i.u, label %bb.d, label %bb.f, !dbg !14244

bb.d:                                             ; preds = %bb.c
    #dbg_value(i32 %i.t, !2667, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !14211)
  %i.v = icmp eq i64 %i.r, -1, !dbg !14245
    #dbg_value(i1 %i.v, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14213)
  br i1 %i.v, label %bb.g, label %bb.e, !dbg !14246, !prof !2357

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.r, 1, !dbg !14245
  %i.x = add nsw i32 %i.t, -1000000000, !dbg !14247
    #dbg_value(i32 %i.x, !2667, !DIExpression(), !14211)
    #dbg_value(i64 %i.w, !2666, !DIExpression(), !14210)
    #dbg_value(i64 %i.w, !2671, !DIExpression(), !14205)
  br label %bb.f, !dbg !14248

select.unfold:                                    ; preds = %bb.a
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14222)
    #dbg_value(i32 -1, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14222)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !14249
  unreachable, !dbg !14249

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.i = phi i32 [ %i.x, %bb.e ], [ %i.t, %bb.c ], !dbg !14250
  %.sroa.0.0.i24 = phi i64 [ %i.w, %bb.e ], [ %i.r, %bb.c ], !dbg !14250
  %i.y = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i24, 0, !dbg !14251
  %i.z = insertvalue { i64, i32 } %i.y, i32 %.sroa.4.0.i, 1, !dbg !14251
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14223)
    #dbg_value(i32 %.sroa.4.0.i, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14223)
  ret { i64, i32 } %i.z, !dbg !14252

bb.g:                                             ; preds = %bb.d, %bb.b
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14223)
    #dbg_value(i32 -1, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14223)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !dbg !14253
  unreachable, !dbg !14253
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps9state_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 !dbg !567 {
bb.a:
    #dbg_value(ptr %0, !3361, !DIExpression(), !14254)
    #dbg_value(i64 %1, !3364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14254)
    #dbg_value(i32 %2, !3364, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14254)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !14255
  %i.b = tail call { ptr, i64 } @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer9state_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.a), !dbg !14256
  ret { ptr, i64 } %i.b, !dbg !14257
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !14282 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !14308, !DIExpression(), !14352)
    #dbg_value(ptr %0, !14353, !DIExpression(), !14358)
    #dbg_value(ptr %1, !14309, !DIExpression(), !14352)
    #dbg_value(ptr %1, !14359, !DIExpression(), !14379)
    #dbg_value(ptr %1, !14359, !DIExpression(), !14381)
    #dbg_value(ptr %1, !14359, !DIExpression(), !14383)
    #dbg_value(ptr %1, !14359, !DIExpression(), !14385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14429
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2336, !dbg !14430
  %i.h = load i64, ptr %i.g, align 8, !dbg !14430
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2344, !dbg !14430
  %i.j = load i32, ptr %i.i, align 8, !dbg !14430, !range !2325, !noundef !1030
  store i64 %i.h, ptr %i.f, align 8, !dbg !14430
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14430
  store i32 %i.j, ptr %i.k, align 8, !dbg !14430
    #dbg_value(ptr %i.f, !14311, !DIExpression(), !14386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14431
  store ptr %i.f, ptr %i.e, align 8, !dbg !14431
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14431
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std4time7InstantENtNtB7_3fmt5Debug3fmtCs3f36owOmepS_6quiche, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !14431
    #dbg_value(ptr @74, !14371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14379)
    #dbg_value(ptr %i.e, !14371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14379)
  %i.l = load ptr, ptr %1, align 8, !dbg !14432, !nonnull !1030, !noundef !1030 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14432
  %i.n = load ptr, ptr %i.m, align 8, !dbg !14432, !nonnull !1030, !align !3029, !noundef !1030 ; 4 uses
  %i.o = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @74, ptr noundef nonnull %i.e), !dbg !14433
    #dbg_value(i1 %i.o, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14415)
    #dbg_value(i1 %i.o, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14415)
    #dbg_value(i1 %i.o, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14415)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14434
  br i1 %i.o, label %bb.e, label %bb.b, !dbg !14435

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2096, !dbg !14436
    #dbg_value(ptr %i.p, !14317, !DIExpression(), !14416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14437
  store ptr %i.p, ptr %i.d, align 8, !dbg !14437
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14437
  store ptr @_RNvXNtNtCs3f36owOmepS_6quiche8recovery3rttNtB2_8RttStatsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !14437
    #dbg_value(ptr @75, !14371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14381)
    #dbg_value(ptr %i.d, !14371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14381)
  %i.q = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @75, ptr noundef nonnull %i.d), !dbg !14438
    #dbg_value(i1 %i.q, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14418)
    #dbg_value(i1 %i.q, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14418)
    #dbg_value(i1 %i.q, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14418)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14439
  br i1 %i.q, label %bb.e, label %bb.c, !dbg !14440

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14441
    #dbg_value(ptr %0, !14419, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !14422)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2296, !dbg !14442
  %i.s = load i64, ptr %i.r, align 8, !dbg !14442, !noundef !1030
  store i64 %i.s, ptr %i.c, align 8, !dbg !14442
    #dbg_value(ptr %i.c, !14323, !DIExpression(), !14423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14443
  store ptr %i.c, ptr %i.b, align 8, !dbg !14443
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14443
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8, !dbg !14443
    #dbg_value(ptr @76, !14371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14383)
    #dbg_value(ptr %i.b, !14371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14383)
  %i.t = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @76, ptr noundef nonnull %i.b), !dbg !14444
    #dbg_value(i1 %i.t, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14425)
    #dbg_value(i1 %i.t, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14425)
    #dbg_value(i1 %i.t, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14425)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14445
  br i1 %i.t, label %bb.e, label %bb.d, !dbg !14446

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !14447
    #dbg_value(ptr %i.u, !14329, !DIExpression(), !14426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14448
  store ptr %i.u, ptr %i.a, align 8, !dbg !14448
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14448
  store ptr @_RNvXs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB4_5PacerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !14448
    #dbg_value(ptr @77, !14371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14385)
    #dbg_value(ptr %i.a, !14371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14385)
  %i.v = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @77, ptr noundef nonnull %i.a), !dbg !14449
    #dbg_value(i1 %i.v, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14428)
    #dbg_value(i1 %i.v, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14428)
    #dbg_value(i1 %i.v, !14387, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14428)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14450
  br label %bb.e, !dbg !14451

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ %i.v, %bb.d ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], !dbg !14352
  ret i1 %.sroa.0.0, !dbg !14452
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14457 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
    #dbg_declare(ptr %i.b, !14481, !DIExpression(), !14485)
    #dbg_declare(ptr %i.a, !14482, !DIExpression(), !14486)
  %i.e = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !14493
    #dbg_value(i64 %i.e, !14487, !DIExpression(), !14491)
  %i.f = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !14494
    #dbg_value(i64 %i.f, !14488, !DIExpression(), !14491)
    #dbg_value(i64 %i.e, !3353, !DIExpression(), !14460)
    #dbg_value(i64 %i.e, !3353, !DIExpression(), !14460)
    #dbg_value(i64 %i.f, !3354, !DIExpression(), !14460)
    #dbg_value(i64 %i.f, !3354, !DIExpression(), !14460)
    #dbg_value(ptr undef, !3353, !DIExpression(DW_OP_deref), !14460)
    #dbg_value(ptr undef, !3354, !DIExpression(DW_OP_deref), !14460)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e), !dbg !14495
    #dbg_value(i64 %..i, !14483, !DIExpression(), !14492)
  store ptr %1, ptr %0, align 8, !dbg !14496
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14496
  store ptr %2, ptr %i.g, align 8, !dbg !14496
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14496
  store ptr %3, ptr %i.h, align 8, !dbg !14496
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14496
  store ptr %4, ptr %i.i, align 8, !dbg !14496
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14496
  store i64 0, ptr %i.j, align 8, !dbg !14496
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14496
  store i64 %..i, ptr %i.k, align 8, !dbg !14496
  ret void, !dbg !14497
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2INtB5_6LimitsjENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtBb_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !14498 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !14503, !DIExpression(), !14506)
    #dbg_value(ptr %1, !14504, !DIExpression(), !14506)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14507
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14507
  store ptr %i.b, ptr %i.a, align 8, !dbg !14507
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 2, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78), !dbg !14508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14509
  ret i1 %i.c, !dbg !14510
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsH_NtCs3f36owOmepS_6quiche8recoveryNtB5_11ReleaseTimeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !14512 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !14517, !DIExpression(), !14521)
    #dbg_value(ptr %1, !14518, !DIExpression(), !14521)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14523
  %i.c = load i32, ptr %i.b, align 8, !dbg !14523, !range !2325, !noundef !1030
  %.not = icmp eq i32 %i.c, -1, !dbg !14523
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14523

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14524
    #dbg_value(ptr %0, !14519, !DIExpression(), !14522)
  store ptr %0, ptr %i.a, align 8, !dbg !14524
    #dbg_value(ptr %i.a, !14519, !DIExpression(DW_OP_deref), !14522)
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83), !dbg !14525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14526
  br label %bb.d, !dbg !14526

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 9), !dbg !14523
  br label %bb.d, !dbg !14523

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !14527
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std4time7InstantENtNtB7_3fmt5Debug3fmtCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !14529 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_5
begin_hunk_6_@_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameE8truncateB19_
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameE8truncateB19_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE9pop_frontB1d_(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant11checked_sub(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE8iter_mutB1d_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsM_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBM_(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB4_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEINtB2_10SpecExtendB1h_INtCs5kGgRUzsVpH_8smallvec8IntoIterAB1h_j1_EE11spec_extendB1l_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet4last(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet4iter(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsgrXZMxzLG8J_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryyENCNvMNtCs3f36owOmepS_6quiche6rangesNtB2F_8RangeSet4iter0EIBP_INtNtNtBX_5slice4iter4IterTyyEENCB2C_s_0EENtNtNtBV_6traits8iterator8Iterator4nextB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1j_NtCskKLDkoKarTP_4core3fmtQyNtB6_7Display3fmtCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECs3f36owOmepS_6quiche(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs3f36owOmepS_6quiche(i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_E21reserve_one_uncheckedCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @SSL_SESSION_to_bytes(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @OPENSSL_free(ptr noundef) unnamed_addr #6

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef i32 @_RNvNtCs3f36owOmepS_6quiche3tls15set_read_secret(ptr noundef, i32 noundef range(i32 0, 4), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef i32 @_RNvNtCs3f36owOmepS_6quiche3tls16set_write_secret(ptr noundef, i32 noundef range(i32 0, 4), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef i32 @_RNvNtCs3f36owOmepS_6quiche3tls18add_handshake_data(ptr noundef, i32 noundef range(i32 0, 4), ptr noundef, i64 noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef i32 @_RNvNtCs3f36owOmepS_6quiche3tls10send_alert(ptr noundef, i32 noundef range(i32 0, 4), i8 noundef zeroext) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9BandwidthNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer11pacing_rate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer18bandwidth_estimate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer13max_bandwidth(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer14on_app_limited(ptr noalias nofree noundef align 8 dereferenceable(1152), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketE13push_back_mutB1d_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer14on_packet_sent(ptr noalias nofree noundef align 8 dereferenceable(1152), i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight3add(ptr noalias nofree noundef align 8 dereferenceable(56), i64 noundef, i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i32 } @_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight12get_duration(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB4_8VecDequeNtNtCs3f36owOmepS_6quiche5frame5FrameEINtB2_10SpecExtendB1h_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterINtNtB2k_7flatten7FlattenINtNtB2k_4take4TakeINtNtB2k_10filter_map9FilterMapIB3W_INtNtB4_4iter4IterNtNtNtNtB1l_8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B58_NtB58_9GRecoveryNtB5c_11RecoveryOps25on_loss_detection_timeout0EEENCB63_s_0EEE11spec_extendB1l_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtCs3f36owOmepS_6quiche8recoveryNtB5_11QlogMetrics12maybe_update(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(none) dereferenceable(272), ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer10update_mss(ptr noalias nofree noundef align 8 dereferenceable(1152), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer9state_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4time7InstantNtB6_5Debug3fmtCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr26ParamsNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startup7StartupNtB6_5Debug3fmtBG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr25drain5DrainNtB6_5Debug3fmtBG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr28probe_bw7ProbeBWNtB6_5Debug3fmtBG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr29probe_rtt8ProbeRTTNtB6_5Debug3fmtBG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24mode11PlaceholderNtB6_5Debug3fmtBG_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { noinline }
attributes #21 = { noinline noreturn }
attributes #22 = { nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!568, !569, !570, !571, !572}
!llvm.ident = !{!573}
!llvm.dbg.cu = !{!181}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Placeholder", scope: !587, file: !575, align: 8, flags: DIFlagProtected, elements: !1030, identifier: "2aa37c879e0be280d8f7193dd787aa15")
!1 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::recovery::gcongestion::bbr2::mode::Placeholder as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1028, vtableHolder: !1029, templateParams: !1030, identifier: "64fc6bf2b75524ef11624a438e42dbfb")
!2 = distinct !DIGlobalVariable(name: "<&quiche::recovery::gcongestion::bbr2::mode::Placeholder as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !1, isLocal: true, isDefinition: true)
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Nanoseconds", scope: !1065, file: !575, size: 32, align: 32, flags: DIFlagPublic, elements: !1067, templateParams: !1030, identifier: "2c20f755f1f73a459820d90ba3a1de36")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Timespec", scope: !1059, file: !575, size: 128, align: 64, flags: DIFlagProtected, elements: !1063, templateParams: !1030, identifier: "f1ca7d2161c6e470a90a194db97d682c")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Instant", scope: !1054, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1056, templateParams: !1030, identifier: "234cca82568a389a2853b85213cd1ada")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Instant", scope: !1049, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1051, templateParams: !1030, identifier: "8ed6faaf05eedb1edce12ce4cbff4c7e")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !10, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1048, templateParams: !1069, identifier: "727778c925209e5451e394e62f96a4ca")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !10, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1069, identifier: "bf2fe96473c0ae50b39888e5d875b51a")
!9 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !10, file: !575, size: 128, align: 64, elements: !1046, templateParams: !1030, identifier: "859013fff419456b33bcb813184a2d3e", discriminator: !1070)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<std::time::Instant>", scope: !1042, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1043, templateParams: !1030, identifier: "70a0f3cd73596d5458c99f07e67ea1b")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !14, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1092, templateParams: !1094, identifier: "907bfc07165e8d2d532021e71490c00")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !14, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1094, identifier: "58388a3cc09aba51619a08a5bcdf3c60")
!13 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !14, file: !575, size: 128, align: 64, elements: !1090, templateParams: !1030, identifier: "c83f0f17ca7acef11e768772796c4f06", discriminator: !1095)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !1042, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1087, templateParams: !1030, identifier: "4c7bbebe318ff5197d2eba51c77368a3")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Duration", scope: !611, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1104, templateParams: !1030, identifier: "f89ddc1203d65acf90fb7898b7b52914")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !19, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1101, templateParams: !1106, identifier: "f7c9207c76a04c99107b05e49d26ab77")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !19, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1106, identifier: "6f5cc3a791818fde43d2845d1d0b4cc")
!18 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19, file: !575, size: 128, align: 64, elements: !1099, templateParams: !1030, identifier: "b037be4a30fd536c35fbcdeafa460c96", discriminator: !1107)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::time::Duration>", scope: !1042, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1096, templateParams: !1030, identifier: "f0bb41727310f8174f724bd1de3fc14")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Cycle", scope: !587, file: !575, size: 832, align: 64, flags: DIFlagProtected, elements: !1086, templateParams: !1030, identifier: "8fc3e1820d3ead2e00764525cf682bc")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !24, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1141, templateParams: !1143, identifier: "46efd38869fc6905dd2980bf364e33a3")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !24, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1143, identifier: "85221e3c8a0b978888093889cb1d40ee")
!23 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !24, file: !575, size: 128, align: 64, elements: !1139, templateParams: !1030, identifier: "c9b1f93c70af2b53d8c34bd60e31546e", discriminator: !1144)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quiche::recovery::bandwidth::Bandwidth>", scope: !1042, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1136, templateParams: !1030, identifier: "9a1a72dc4a1760e7df458d9627bf390c")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Bandwidth", scope: !1145, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1147, templateParams: !1030, identifier: "99d1239801b77361fb1c66a499cfc6b")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MinRttFilter", scope: !1108, file: !575, size: 256, align: 64, flags: DIFlagPrivate, elements: !1150, templateParams: !1030, identifier: "8b522a5493c405d2c76277da7c1cc01c")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxBandwidthFilter", scope: !1108, file: !575, size: 128, align: 64, flags: DIFlagPrivate, elements: !1155, templateParams: !1030, identifier: "a0f012691576241d462138eacd1d1a2e")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !31, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1183, templateParams: !1185, identifier: "f8537dc9e136e1868f7865f055807cda")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !31, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1185, identifier: "272d7ff70eb3295084fee5c1f803fd34")
!30 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !31, file: !575, size: 128, align: 64, elements: !1181, templateParams: !1030, identifier: "e3f00a8a830b07ea699c2184a532d7de", discriminator: !1186)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<u64>", scope: !1042, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1178, templateParams: !1030, identifier: "2216fc064ceed50c1c7ef8d103c270be")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ExtraAckedEvent", scope: !1157, file: !575, size: 320, align: 64, flags: DIFlagPrivate, elements: !1217, templateParams: !1030, identifier: "516d982d57437ff1d68490febde03f55")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Sample<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ExtraAckedEvent, usize>", scope: !1197, file: !575, size: 384, align: 64, flags: DIFlagPrivate, elements: !1212, templateParams: !1220, identifier: "d10196328c579015b140c640168b9e3f")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !37, file: !575, size: 384, align: 64, flags: DIFlagPublic, elements: !1209, templateParams: !1222, identifier: "b9de3895194c6f5743c48b9b4cc9ff92")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !37, file: !575, size: 384, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1222, identifier: "5aa109ba6e44b9a310a4a9c93024407d")
!36 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !37, file: !575, size: 384, align: 64, elements: !1207, templateParams: !1030, identifier: "3ccb7ded5762d667ab72705db75cc55", discriminator: !1223)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quiche::recovery::gcongestion::bbr::windowed_filter::Sample<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ExtraAckedEvent, usize>>", scope: !1042, file: !575, size: 384, align: 64, flags: DIFlagPublic, elements: !1204, templateParams: !1030, identifier: "686082c1cd39b83c406ddf79ad66a55b")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WindowedFilter<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ExtraAckedEvent, usize, usize>", scope: !1197, file: !575, size: 1216, align: 64, flags: DIFlagPublic, elements: !1203, templateParams: !1225, identifier: "3349ad162850d89efb871cac9a6b1949")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxAckHeightTracker", scope: !1157, file: !575, size: 1664, align: 64, flags: DIFlagPrivate, elements: !1196, templateParams: !1030, identifier: "7a540a7b39e1808a5b6fe082fb82351e")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SendTimeState", scope: !1157, file: !575, size: 320, align: 64, flags: DIFlagPublic, elements: !1264, templateParams: !1030, identifier: "e5faffe47b73aabdc44f3f1e16a75138")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionStateOnSentPacket", scope: !1157, file: !575, size: 832, align: 64, flags: DIFlagPrivate, elements: !1257, templateParams: !1030, identifier: "a4666799713d8d153eada6c8585d3a70")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !45, file: !575, size: 832, align: 64, flags: DIFlagPublic, elements: !1250, templateParams: !1266, identifier: "bc10b3420894846cccfee0bc5341af4b")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !45, file: !575, size: 832, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1266, identifier: "3eb1083a420d5026107cfd98a7bff325")
!44 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !45, file: !575, size: 832, align: 64, elements: !1248, templateParams: !1030, identifier: "81ea5d2cbfffe2347e4aebf0e7c96b4a", discriminator: !1267)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ConnectionStateOnSentPacket>", scope: !1042, file: !575, size: 832, align: 64, flags: DIFlagPublic, elements: !1245, templateParams: !1030, identifier: "89088b6ed08b402dcbbe2c27d7fa4f")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, core::option::Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ConnectionStateOnSentPacket>)", file: !575, size: 896, align: 64, elements: !1244, templateParams: !1030, identifier: "a74469ce9a0b24637673da0bef6465f3")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(u64, core::option::Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ConnectionStateOnSentPacket>)>", scope: !1239, file: !575, align: 8, flags: DIFlagPublic, elements: !1030, templateParams: !1241, identifier: "fd432776bb6164ed86ba2372f5685fda")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !1272, file: !575, align: 8, flags: DIFlagPublic, elements: !1030, identifier: "8460d4266e4993ec9914e3baad45ea18")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UsizeNoHighBit", scope: !1065, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1274, templateParams: !1030, identifier: "de2a7f83086bb66b1d84717ca15ed153")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !1239, file: !575, align: 8, flags: DIFlagPublic, elements: !1030, templateParams: !1281, identifier: "146b3aeda1c45f24e2166b366592181")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !1282, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1285, templateParams: !1281, identifier: "c31d4ef568cfbefd99aa13b8883a7b70")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !1276, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1279, templateParams: !1281, identifier: "29b6b6df28c88bc2c540a8e9e6174ec0")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVecInner<alloc::alloc::Global>", scope: !1235, file: !575, size: 128, align: 64, flags: DIFlagPrivate, elements: !1271, templateParams: !1287, identifier: "df99d7c016703de7881c5c4f5cc3291d")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(u64, core::option::Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ConnectionStateOnSentPacket>), alloc::alloc::Global>", scope: !1235, file: !575, size: 128, align: 64, flags: DIFlagProtected, elements: !1238, templateParams: !1288, identifier: "a474cabd44f590e1c0795babe2dc3eeb")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WrappedIndex", scope: !1289, file: !575, size: 64, align: 64, flags: DIFlagProtected, elements: !1291, templateParams: !1030, identifier: "bbf55ef5168a8ebf95fef81f70fd826a")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VecDeque<(u64, core::option::Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ConnectionStateOnSentPacket>), alloc::alloc::Global>", scope: !1230, file: !575, size: 256, align: 64, flags: DIFlagPublic, elements: !1234, templateParams: !1288, identifier: "9df905fa8b0cd2ea8dc8244ef24d4b2b")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionStateMap<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ConnectionStateOnSentPacket>", scope: !1157, file: !575, size: 256, align: 64, flags: DIFlagPrivate, elements: !1227, templateParams: !1266, identifier: "511a3e52fa83cb5716ad6815806e8ec1")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AckPoint", scope: !1157, file: !575, size: 192, align: 64, flags: DIFlagPrivate, elements: !1303, templateParams: !1030, identifier: "ed1c60b91e871f75476c46df1775644")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<quiche::recovery::gcongestion::bbr::bandwidth_sampler::AckPoint>", scope: !1239, file: !575, align: 8, flags: DIFlagPublic, elements: !1030, templateParams: !1300, identifier: "a1eeceefa4a8537cd2c1251dad202689")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<quiche::recovery::gcongestion::bbr::bandwidth_sampler::AckPoint, alloc::alloc::Global>", scope: !1235, file: !575, size: 128, align: 64, flags: DIFlagProtected, elements: !1298, templateParams: !1304, identifier: "bb8b186761516f5f8bd4761383899c0e")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VecDeque<quiche::recovery::gcongestion::bbr::bandwidth_sampler::AckPoint, alloc::alloc::Global>", scope: !1230, file: !575, size: 256, align: 64, flags: DIFlagPublic, elements: !1295, templateParams: !1304, identifier: "447d8ffdf3f91bf847ab12d913b6a2af")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !65, file: !575, size: 192, align: 64, flags: DIFlagPublic, elements: !1313, templateParams: !1300, identifier: "6dbc3fd44d59acb7d5afc13c998f2a73")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !65, file: !575, size: 192, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1300, identifier: "e5ccdb7413c5e14fec316e23d7220747")
!64 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !65, file: !575, size: 192, align: 64, elements: !1311, templateParams: !1030, identifier: "cba3971ee31f4ca874b050045f8b91f0", discriminator: !1314)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::AckPoint>", scope: !1042, file: !575, size: 192, align: 64, flags: DIFlagPublic, elements: !1308, templateParams: !1030, identifier: "38d18387c199e35ef21d6de9b6744a1c")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RecentAckPoints", scope: !1157, file: !575, size: 384, align: 64, flags: DIFlagPrivate, elements: !1307, templateParams: !1030, identifier: "aa1d845947c09a3f7ac69ec412e5f0c1")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BandwidthSampler", scope: !1157, file: !575, size: 3520, align: 64, flags: DIFlagPublic, elements: !1177, templateParams: !1030, identifier: "ea4790824db70b86ee4825970299fae2")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RoundTripCounter", scope: !1108, file: !575, size: 256, align: 64, flags: DIFlagPrivate, elements: !1318, templateParams: !1030, identifier: "bc6354b7593105a1c21e3c38fc30bf20")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BBRv2NetworkModel", scope: !1108, file: !575, size: 5504, align: 64, flags: DIFlagProtected, elements: !1135, templateParams: !1030, identifier: "bcd46b9e3b351c51b4b71502b1228600")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProbeRTT", scope: !1037, file: !575, size: 6464, align: 64, flags: DIFlagProtected, elements: !1041, templateParams: !1030, identifier: "808f2276f74b17326b051110c9669f87")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::recovery::gcongestion::bbr2::probe_rtt::ProbeRTT as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1035, vtableHolder: !1036, templateParams: !1030, identifier: "f2994ec85d8954df3726f36bd1a57c1b")
!72 = distinct !DIGlobalVariable(name: "<&quiche::recovery::gcongestion::bbr2::probe_rtt::ProbeRTT as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !71, isLocal: true, isDefinition: true)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProbeBW", scope: !1325, file: !575, size: 6336, align: 64, flags: DIFlagProtected, elements: !1328, templateParams: !1030, identifier: "c7e427b8b363a674c5c519ea6ebe3d6")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::recovery::gcongestion::bbr2::probe_bw::ProbeBW as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1323, vtableHolder: !1324, templateParams: !1030, identifier: "9419fd65b66122d52e43eed8d558b837")
!75 = distinct !DIGlobalVariable(name: "<&quiche::recovery::gcongestion::bbr2::probe_bw::ProbeBW as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !74, isLocal: true, isDefinition: true)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Drain", scope: !1335, file: !575, size: 6336, align: 64, flags: DIFlagProtected, elements: !1338, templateParams: !1030, identifier: "cc79e53bfb8b11e2e0a65ebc3739bd50")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::recovery::gcongestion::bbr2::drain::Drain as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1333, vtableHolder: !1334, templateParams: !1030, identifier: "6f100d5d8eb223c583858c00232d9d7b")
!78 = distinct !DIGlobalVariable(name: "<&quiche::recovery::gcongestion::bbr2::drain::Drain as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !77, isLocal: true, isDefinition: true)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Startup", scope: !1345, file: !575, size: 5504, align: 64, flags: DIFlagProtected, elements: !1347, templateParams: !1030, identifier: "7b4ae24ba720acb25c2bd89dfc122a03")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::recovery::gcongestion::bbr2::startup::Startup as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1343, vtableHolder: !1344, templateParams: !1030, identifier: "6dd253380e201757fe941c7ffb32e5aa")
!81 = distinct !DIGlobalVariable(name: "<&quiche::recovery::gcongestion::bbr2::startup::Startup as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !80, isLocal: true, isDefinition: true)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Params", scope: !586, file: !575, size: 1664, align: 64, flags: DIFlagPrivate, elements: !1397, templateParams: !1030, identifier: "9d8f4a2dbb77c7447c10065a8c8fb2a")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::recovery::gcongestion::bbr2::Params as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1352, vtableHolder: !1353, templateParams: !1030, identifier: "bf57351444546ae67b76a063cd52d93e")
!84 = distinct !DIGlobalVariable(name: "<&quiche::recovery::gcongestion::bbr2::Params as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !83, isLocal: true, isDefinition: true)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Limits<usize>", scope: !586, file: !575, size: 128, align: 64, flags: DIFlagPrivate, elements: !1405, templateParams: !1094, identifier: "8755600bf6f9acfedcd69167eba89ee8")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<quiche::recovery::gcongestion::bbr2::Limits<usize> as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1402, vtableHolder: !85, templateParams: !1030, identifier: "2f0d89a31b4e62eebf274227aecd48e7")
!87 = distinct !DIGlobalVariable(name: "<quiche::recovery::gcongestion::bbr2::Limits<usize> as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !86, isLocal: true, isDefinition: true)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Placheolder", scope: !94, file: !575, size: 6464, align: 64, flags: DIFlagProtected, elements: !1419, templateParams: !1030, identifier: "a0516c9c124c8ad751afc0d0a540b82b")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProbeRTT", scope: !94, file: !575, size: 6464, align: 64, flags: DIFlagProtected, elements: !1421, templateParams: !1030, identifier: "ab80d51133b82e6ef2e6069323d4ec0b")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProbeBW", scope: !94, file: !575, size: 6464, align: 64, flags: DIFlagProtected, elements: !1423, templateParams: !1030, identifier: "aff44a026a019665f17ee4ffb3379607")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Drain", scope: !94, file: !575, size: 6464, align: 64, flags: DIFlagProtected, elements: !1425, templateParams: !1030, identifier: "f62b19b6bf406deefc012aaa3afa0f29")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Startup", scope: !94, file: !575, size: 6464, align: 64, flags: DIFlagProtected, elements: !1427, templateParams: !1030, identifier: "44530c8b98680fd18a4dd7c6dbfae06a")
!93 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !94, file: !575, size: 6464, align: 64, elements: !1417, templateParams: !1030, identifier: "b0b29cf70c44dbfd1bd873e822fe14ca", discriminator: !1428)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mode", scope: !587, file: !575, size: 6464, align: 64, flags: DIFlagProtected, elements: !1411, templateParams: !1030, identifier: "241d4f862a651fd138d4135801cef35")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<quiche::recovery::gcongestion::bbr2::mode::Mode as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1410, vtableHolder: !94, templateParams: !1030, identifier: "1dbc0c8bd1ec07aceee711b667c81822")
!96 = distinct !DIGlobalVariable(name: "<quiche::recovery::gcongestion::bbr2::mode::Mode as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !95, isLocal: true, isDefinition: true)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ExtraAckedEvent as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1433, vtableHolder: !32, templateParams: !1030, identifier: "33f6e4ef735acf3bea33c9379d023dc5")
!98 = distinct !DIGlobalVariable(name: "<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ExtraAckedEvent as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !97, isLocal: true, isDefinition: true)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&bool as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1438, vtableHolder: !1439, templateParams: !1030, identifier: "786e43bbb09ddd31f121d32d5671aafc")
!100 = distinct !DIGlobalVariable(name: "<&bool as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !99, isLocal: true, isDefinition: true)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "At", scope: !104, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1450, templateParams: !1030, identifier: "50dc07def407bea07cbd2335e209ab2c")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Immediate", scope: !104, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1030, identifier: "8acfb28f6b81ecc3d3a0c39b71e5e1f")
!103 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !104, file: !575, size: 128, align: 64, elements: !1448, templateParams: !1030, identifier: "3b7d9389eb3bacdfc019fef3d46647a3", discriminator: !1451)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ReleaseTime", scope: !584, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1445, templateParams: !1030, identifier: "8afc23a2fcfab3809643a3c771d7109a")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<quiche::recovery::ReleaseTime as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1444, vtableHolder: !104, templateParams: !1030, identifier: "bcec1a2bab278e9ccd6585b193a70e4")
!106 = distinct !DIGlobalVariable(name: "<quiche::recovery::ReleaseTime as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !105, isLocal: true, isDefinition: true)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<quiche::recovery::bandwidth::Bandwidth> as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1456, vtableHolder: !24, templateParams: !1030, identifier: "a42e3eb27c892b8ad8ba6c46d0025191")
!108 = distinct !DIGlobalVariable(name: "<core::option::Option<quiche::recovery::bandwidth::Bandwidth> as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !107, isLocal: true, isDefinition: true)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BBRv2", scope: !586, file: !575, size: 8704, align: 64, flags: DIFlagProtected, elements: !1472, templateParams: !1030, identifier: "c7e9b4fa52651e9ce29390b90a67647a")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<quiche::recovery::gcongestion::bbr2::BBRv2 as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1461, vtableHolder: !109, templateParams: !1030, identifier: "c6f2bfe96ff385396c4d2c95883414d0")
!111 = distinct !DIGlobalVariable(name: "<quiche::recovery::gcongestion::bbr2::BBRv2 as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !110, isLocal: true, isDefinition: true)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&std::time::Instant as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1477, vtableHolder: !1478, templateParams: !1030, identifier: "77644a4636dc13cd3e4d473975fd621")
!113 = distinct !DIGlobalVariable(name: "<&std::time::Instant as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !112, isLocal: true, isDefinition: true)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&usize as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1483, vtableHolder: !1484, templateParams: !1030, identifier: "4f475f32bb376a57871f596dc1c8efef")
!115 = distinct !DIGlobalVariable(name: "<&usize as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !114, isLocal: true, isDefinition: true)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::time::Duration as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1489, vtableHolder: !1490, templateParams: !1030, identifier: "7839d39a2b6b0eb31d28b1263421648b")
!117 = distinct !DIGlobalVariable(name: "<&core::time::Duration as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !116, isLocal: true, isDefinition: true)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<std::time::Instant> as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1495, vtableHolder: !10, templateParams: !1030, identifier: "69e8f39225e417634521162ef0c7f3a8")
!119 = distinct !DIGlobalVariable(name: "<core::option::Option<std::time::Instant> as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !118, isLocal: true, isDefinition: true)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<usize as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1500, vtableHolder: !1024, templateParams: !1030, identifier: "9686fa5a12a9e5321ecf9e0ff3e08a8e")
!121 = distinct !DIGlobalVariable(name: "<usize as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !120, isLocal: true, isDefinition: true)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<bool as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1505, vtableHolder: !1080, templateParams: !1030, identifier: "98984e627734faf4d73cb94bac105386")
!123 = distinct !DIGlobalVariable(name: "<bool as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !122, isLocal: true, isDefinition: true)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<quiche::recovery::bandwidth::Bandwidth as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1510, vtableHolder: !25, templateParams: !1030, identifier: "7d22f8a332461245251aba5bd5359cf5")
!125 = distinct !DIGlobalVariable(name: "<quiche::recovery::bandwidth::Bandwidth as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !124, isLocal: true, isDefinition: true)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::time::Duration as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1515, vtableHolder: !15, templateParams: !1030, identifier: "6d9456d82759f691b2fe24c06117a25a")
!127 = distinct !DIGlobalVariable(name: "<core::time::Duration as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !126, isLocal: true, isDefinition: true)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SSL", scope: !1516, file: !575, size: 8, align: 8, flags: DIFlagPrivate, elements: !1537, templateParams: !1030, identifier: "6eae35e925c92f7f585730daae4f9dfc")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !132, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1535, templateParams: !1539, identifier: "e53b6125bb2f2e94b46cd09a83700a1")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !132, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1539, identifier: "a2ffdf20a9864a5b25ac39957291a055")
!131 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !132, file: !575, size: 64, align: 64, elements: !1528, templateParams: !1030, identifier: "e7437c6baf476a73edd9ad59ddfa03a1", discriminator: !1540)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<extern \22C\22 fn(*mut quiche::tls::SSL, quiche::crypto::Level, u8) -> i32>", scope: !1042, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1525, templateParams: !1030, identifier: "95771719fd600627df6584888c84411e")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !136, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1549, templateParams: !1551, identifier: "1e7eccdf3b4692d09f1e749ab47fc6f5")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !136, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1551, identifier: "465a127296dad32067d50bd26812a844")
!135 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !136, file: !575, size: 64, align: 64, elements: !1544, templateParams: !1030, identifier: "b5f8dd77de4bc92694b18aca2697c507", discriminator: !1552)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<extern \22C\22 fn(*mut quiche::tls::SSL) -> i32>", scope: !1042, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1541, templateParams: !1030, identifier: "3d862de75c7a5cd5871fa204b85fb311")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !140, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1561, templateParams: !1563, identifier: "7f1401a6b1fc69f8ac8cfba555e76b33")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !140, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1563, identifier: "d6a7deb8332590a7a0859436ea26324d")
!139 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !140, file: !575, size: 64, align: 64, elements: !1556, templateParams: !1030, identifier: "46edecf6f59f7cd4240187f73ee6a2a1", discriminator: !1564)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<unsafe extern \22C\22 fn(*mut quiche::tls::SSL, quiche::crypto::Level, *const u8, usize) -> i32>", scope: !1042, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1553, templateParams: !1030, identifier: "b368c95207b0c30e49b9f722650f1120")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SSL_CIPHER", scope: !1516, file: !575, size: 8, align: 8, flags: DIFlagPrivate, elements: !1576, templateParams: !1030, identifier: "5f5b4cae445ec95519e5fa159d57ce17")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !145, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1574, templateParams: !1578, identifier: "f5ebbd2c204b6f65b4e11ace8456bce8")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !145, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1030, templateParams: !1578, identifier: "e38ab350267808fc1ee9ff21c528f9f1")
!144 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !145, file: !575, size: 64, align: 64, elements: !1568, templateParams: !1030, identifier: "8302a0a7202997971ecc68095f5ee9b8", discriminator: !1579)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<unsafe extern \22C\22 fn(*mut quiche::tls::SSL, quiche::crypto::Level, *const quiche::tls::SSL_CIPHER, *const u8, usize) -> i32>", scope: !1042, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1565, templateParams: !1030, identifier: "d016f1665fda2be2739a2fc3f92feeb")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SSL_QUIC_METHOD", scope: !1517, file: !575, size: 320, align: 64, flags: DIFlagProtected, elements: !1524, templateParams: !1030, identifier: "58a34c9f555f84fd9fad549ba7971f88")
!147 = distinct !DIGlobalVariable(name: "QUICHE_STREAM_METHOD", linkageName: "_RNvNtNtCs3f36owOmepS_6quiche3tls9boringssl20QUICHE_STREAM_METHOD", scope: !1517, file: !1518, line: 87, type: !146, isLocal: true, isDefinition: true, align: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&u32 as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1584, vtableHolder: !1585, templateParams: !1030, identifier: "fcecbaf967bbbf2636f7ec9a1c84093e")
!149 = distinct !DIGlobalVariable(name: "<&u32 as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !148, isLocal: true, isDefinition: true)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&u8 as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1590, vtableHolder: !1591, templateParams: !1030, identifier: "ce623a742c3328d735cda3a951e3a8e1")
!151 = distinct !DIGlobalVariable(name: "<&u8 as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !150, isLocal: true, isDefinition: true)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, u64)", file: !575, size: 128, align: 64, elements: !1600, templateParams: !1030, identifier: "7891b4bdc2158a166fd4174a50224f9b")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&(u64, u64) as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1596, vtableHolder: !1597, templateParams: !1030, identifier: "2d9ac1e1117b0afeafc77afb6eec32a0")
!154 = distinct !DIGlobalVariable(name: "<&(u64, u64) as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !153, isLocal: true, isDefinition: true)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&(u64, core::option::Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ConnectionStateOnSentPacket>) as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1605, vtableHolder: !1606, templateParams: !1030, identifier: "4381a532b32f7b65a57e5c004a30317d")
!156 = distinct !DIGlobalVariable(name: "<&(u64, core::option::Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ConnectionStateOnSentPacket>) as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !155, isLocal: true, isDefinition: true)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::recovery::gcongestion::bbr::bandwidth_sampler::AckPoint as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1611, vtableHolder: !1612, templateParams: !1030, identifier: "ffae4a2002574742a5ac7513f2a2260d")
!158 = distinct !DIGlobalVariable(name: "<&quiche::recovery::gcongestion::bbr::bandwidth_sampler::AckPoint as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !157, isLocal: true, isDefinition: true)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::recovery::bandwidth::Bandwidth as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1617, vtableHolder: !1618, templateParams: !1030, identifier: "14a0b9ad6ce94ecbf9f7cb3a1eb93343")
!160 = distinct !DIGlobalVariable(name: "<&quiche::recovery::bandwidth::Bandwidth as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !159, isLocal: true, isDefinition: true)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<u8, alloc::alloc::Global>", scope: !1235, file: !575, size: 128, align: 64, flags: DIFlagProtected, elements: !1649, templateParams: !1650, identifier: "812d0db64fea1b7464457f30f154f4")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<u8, alloc::alloc::Global>", scope: !1643, file: !575, size: 192, align: 64, flags: DIFlagPublic, elements: !1646, templateParams: !1650, identifier: "1bd6b564d1f00359fe3d0a71aed88d28")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "String", scope: !1640, file: !575, size: 192, align: 64, flags: DIFlagPublic, elements: !1642, templateParams: !1030, identifier: "51b7c7fa002dfe22f308b08f97dca5f2")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "String", scope: !170, file: !575, size: 192, align: 64, flags: DIFlagPrivate, elements: !1639, templateParams: !1030, identifier: "c4b52507a62b51629dab5199485ffdb")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc::boxed::Box<[u8], alloc::alloc::Global>", file: !575, size: 128, align: 64, elements: !1660, templateParams: !1030, identifier: "738bc4ca6a0fc925a7a4096d3eb83ea4")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CString", scope: !1654, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1656, templateParams: !1030, identifier: "9369f94a92e4b516a2e4d8c27fec15fd")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CString", scope: !170, file: !575, size: 192, align: 64, flags: DIFlagPrivate, elements: !1652, templateParams: !1030, identifier: "68cf56d01cf35b42114cbf2295cee16")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !170, file: !575, size: 192, align: 64, flags: DIFlagPrivate, elements: !1030, identifier: "ab78018e1273820e47976720c07458")
!169 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !170, file: !575, size: 192, align: 64, elements: !1637, templateParams: !1030, identifier: "6154be24dd4876f63c43f29a6bf968bc", discriminator: !1661)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Data", scope: !1626, file: !575, size: 192, align: 64, flags: DIFlagPrivate, elements: !1633, templateParams: !1030, identifier: "7f8e3f1e409ee51cd03f43f715af562b")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !1626, file: !575, size: 320, align: 64, flags: DIFlagPublic, elements: !1632, templateParams: !1030, identifier: "f1637fde87f32da316ca6076147eda04")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&boring::error::Error as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1623, vtableHolder: !1624, templateParams: !1030, identifier: "c9cdb52a27c6ac138265fd0689d03ddc")
!173 = distinct !DIGlobalVariable(name: "<&boring::error::Error as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !172, isLocal: true, isDefinition: true)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<u64>", scope: !1669, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1672, templateParams: !1674, identifier: "b06ee8d56c4c0907ace049e7eed5ad33")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::ops::range::Range<u64> as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1666, vtableHolder: !1667, templateParams: !1030, identifier: "ec648c2143961cdf18464f6d50bdbba1")
!176 = distinct !DIGlobalVariable(name: "<&core::ops::range::Range<u64> as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !175, isLocal: true, isDefinition: true)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::option::Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::AckPoint> as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1679, vtableHolder: !1680, templateParams: !1030, identifier: "c73845b53c767e90e9a3551f0571b0a4")
!178 = distinct !DIGlobalVariable(name: "<&core::option::Option<quiche::recovery::gcongestion::bbr::bandwidth_sampler::AckPoint> as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !177, isLocal: true, isDefinition: true)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::option::Option<quiche::recovery::gcongestion::bbr::windowed_filter::Sample<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ExtraAckedEvent, usize>> as core::fmt::Debug>::{vtable_type}", file: !575, size: 256, align: 64, flags: DIFlagArtificial, elements: !1685, vtableHolder: !1686, templateParams: !1030, identifier: "37d7b12994862d2dfffa10c184827341")
!180 = distinct !DIGlobalVariable(name: "<&core::option::Option<quiche::recovery::gcongestion::bbr::windowed_filter::Sample<quiche::recovery::gcongestion::bbr::bandwidth_sampler::ExtraAckedEvent, usize>> as core::fmt::Debug>::{vtable}", scope: null, file: !575, type: !179, isLocal: true, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !574, producer: "clang LLVM (rustc version 1.100.0-nightly (bff8e12ff 2026-08-26))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !986, globals: !1020, splitDebugInlining: false, nameTableKind: None)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !1688, file: !575, align: 8, flags: DIFlagPublic, elements: !1030, identifier: "24df7d89e71f74cc6f0b410796226394")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !186, file: !575, size: 8, align: 8, flags: DIFlagPublic, elements: !1703, templateParams: !1706, identifier: "f13361a86bb426615625b353d17a4da4")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !186, file: !575, size: 8, align: 8, flags: DIFlagPublic, elements: !1708, templateParams: !1706, identifier: "4e4fb4a69ae9de1d694252f2b620264a")
!185 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !186, file: !575, size: 8, align: 8, elements: !1701, templateParams: !1030, identifier: "ba711c6f3b55bb8e3b33c32c68cebe72", discriminator: !1709)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), core::fmt::Error>", scope: !1697, file: !575, size: 8, align: 8, flags: DIFlagPublic, elements: !1698, templateParams: !1030, identifier: "c8f65f3dc88215367650f7204ea92d0a")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::fmt::Write", file: !575, align: 8, elements: !1030, identifier: "7522c7300abed790cb78364eb689deba")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !575, size: 128, align: 64, elements: !1720, templateParams: !1030, identifier: "8bf9c5b4af2f4eb5d538f580c8dd320c")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FormattingOptions", scope: !1688, file: !575, size: 64, align: 32, flags: DIFlagPublic, elements: !1725, templateParams: !1030, identifier: "72ecd823616a2aeb1c2529557e1ca21b")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !1688, file: !575, size: 192, align: 64, flags: DIFlagPublic, elements: !1712, templateParams: !1030, identifier: "2b167547650a33fb39fa5583cd111ae")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DebugInner", scope: !1689, file: !575, size: 128, align: 64, flags: DIFlagPrivate, elements: !1696, templateParams: !1030, identifier: "165cf480f72fa03e590ef8a7afc6a260")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DebugList", scope: !1689, file: !575, size: 128, align: 64, flags: DIFlagPublic, elements: !1691, templateParams: !1030, identifier: "eda19e6ced1db296200764ff35b5c39a")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&(u64, u64)>", scope: !1239, file: !575, align: 8, flags: DIFlagPublic, elements: !1030, templateParams: !1753, identifier: "14441ebe1523f7c39fa02e58473f2a46")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<(u64, u64)>", scope: !1282, file: !575, size: 64, align: 64, flags: DIFlagPublic, elements: !1755, templateParams: !1757, identifier: "9c924c1940085d6673923ee5664246f5")
end_hunk_6
