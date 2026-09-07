Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.11?download=true
inline.NumInlined: 391
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEBH_:bb.a
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces15ThinRetransmitsEBH_.exit, !dbg !19872

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces15ThinRetransmitsEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces11RetransmitsEEB1g_.exit.i.i, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !19871 ; 3 uses
    #dbg_value(ptr %i.aj, !4106, !DIExpression(), !19866)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !19897
  %i.al = load i8, ptr %i.ak, align 8, !dbg !19897, !range !4110, !alias.scope !19867, !noundef !982
  %.not.i = icmp eq i8 %i.al, 2, !dbg !19897
  br i1 %.not.i, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslrs821VbQCb_7tinyvec7tinyvec7TinyVecANtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaj1_EEB1n_.exit, !dbg !19897

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces15ThinRetransmitsEBH_.exit
    #dbg_value(ptr %i.aj, !4112, !DIExpression(), !19868)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaEEB1c_.exit.i unwind label %bb.ac, !dbg !19898

bb.ac:                                            ; preds = %bb.ab
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.aj, !4119, !DIExpression(), !19869)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %common.resume unwind label %bb.ad, !dbg !19899

bb.ad:                                            ; preds = %bb.ac
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !19898
  unreachable, !dbg !19898

common.resume:                                    ; preds = %.body, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.ac ], [ %eh.lpad-body.i.i.i, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !19871

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaEEB1c_.exit.i: ; preds = %bb.ab
    #dbg_value(ptr %i.aj, !4119, !DIExpression(), !19870)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj), !dbg !19900
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslrs821VbQCb_7tinyvec7tinyvec7TinyVecANtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaj1_EEB1n_.exit, !dbg !19897

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslrs821VbQCb_7tinyvec7tinyvec7TinyVecANtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaj1_EEB1n_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces15ThinRetransmitsEBH_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaEEB1c_.exit.i
  ret void, !dbg !19871

bb.ae:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !19871
  unreachable, !dbg !19871
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs5_NtCs7l6voRMtb7S_9fastbloom10bit_vectorNtB6_6BitVecINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19905 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr %0, !19966, !DIExpression(), !19971)
    #dbg_declare(ptr %i.c, !19967, !DIExpression(), !19972)
    #dbg_declare(ptr %i.b, !19973, !DIExpression(), !20024)
    #dbg_declare(ptr %i.b, !20026, !DIExpression(), !20032)
    #dbg_declare(ptr %i.a, !20034, !DIExpression(), !20042)
    #dbg_declare(ptr %i.a, !20043, !DIExpression(), !20049)
    #dbg_value(i64 8, !20051, !DIExpression(), !20062)
    #dbg_value(i64 8, !20078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20099)
    #dbg_value(i64 8, !20078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20144
    #dbg_declare(ptr %0, !20106, !DIExpression(), !20113)
    #dbg_declare(ptr poison, !20109, !DIExpression(), !20114)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !20145, !alias.scope !20115
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecyEINtNtB6_14spec_from_iter12SpecFromIteryINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENvMNtCs7l6voRMtb7S_9fastbloom10bit_vectorNtB2X_6BitVec3newEE9from_iterCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !20146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20147
    #dbg_value(ptr %i.c, !20064, !DIExpression(), !20118)
    #dbg_value(ptr %i.c, !20070, !DIExpression(), !20119)
  %i.d = load i64, ptr %i.c, align 8, !dbg !20148, !range !20120, !noundef !982
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !20149
  %i.f = load i64, ptr %i.e, align 8, !dbg !20149, !noundef !982 ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f, !dbg !20150
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !20150

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !20103, !DIExpression(), !20121)
    #dbg_value(i64 %i.f, !20104, !DIExpression(), !20122)
    #dbg_value(i64 %i.f, !20084, !DIExpression(), !20099)
    #dbg_value(ptr %i.c, !20083, !DIExpression(), !20099)
    #dbg_value(ptr %i.c, !20123, !DIExpression(), !20141)
    #dbg_value(i64 %i.f, !20138, !DIExpression(), !20141)
    #dbg_value(i64 8, !20139, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20141)
    #dbg_value(i64 8, !20139, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20141)
  %i.h = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef range(i64 0, 9223372036854775807) %i.f, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit unwind label %bb.g, !dbg !20151 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !20152
  %i.i = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE16into_boxed_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !20153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20155
  ret { ptr, i64 } %i.i, !dbg !20156

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.h, 0, !dbg !20157 ; 2 uses
  %.not = icmp eq i64 %i.j, -1, !dbg !20158
  br i1 %.not, label %bb.c, label %bb.d, !dbg !20159, !prof !2137

bb.d:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit
  %i.k = extractvalue { i64, i64 } %i.h, 1, !dbg !20157
    #dbg_value(i64 %i.j, !20085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20142)
    #dbg_value(i64 %i.k, !20085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20142)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.e unwind label %bb.g, !dbg !20160

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm, !dbg !20161

bb.g:                                             ; preds = %bb.d, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #24
          to label %bb.f unwind label %bb.h, !dbg !20155

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !20161
  unreachable, !dbg !20161
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE15bulk_steal_leftB1p_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20172 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !20306, !DIExpression(), !20310)
    #dbg_value(ptr poison, !20306, !DIExpression(), !20312)
  %i.b = alloca [96 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !20291, !DIExpression(), !20313)
    #dbg_value(i64 %1, !20292, !DIExpression(), !20313)
    #dbg_value(i64 %1, !20307, !DIExpression(), !20314)
    #dbg_value(i64 %1, !20315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20327)
    #dbg_value(i64 %1, !20334, !DIExpression(), !20341)
    #dbg_declare(ptr %i.b, !20300, !DIExpression(), !20342)
    #dbg_declare(ptr poison, !20302, !DIExpression(), !20343)
    #dbg_declare(ptr poison, !20344, !DIExpression(), !20348)
    #dbg_declare(ptr poison, !20349, !DIExpression(), !20353)
    #dbg_value(i64 0, !20354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20364)
    #dbg_value(i64 0, !20374, !DIExpression(), !20380)
    #dbg_value(i64 0, !20381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20393)
    #dbg_value(i64 0, !20403, !DIExpression(), !20410)
    #dbg_value(i64 0, !20354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20418)
    #dbg_value(i64 0, !20374, !DIExpression(), !20421)
    #dbg_value(i64 0, !20381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(i64 0, !20403, !DIExpression(), !20432)
    #dbg_value(i64 0, !20315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20438)
    #dbg_value(i64 0, !20336, !DIExpression(), !20441)
    #dbg_value(i64 0, !20315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20327)
    #dbg_value(i64 0, !20336, !DIExpression(), !20341)
    #dbg_value(ptr %0, !20293, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20442)
    #dbg_value(ptr %0, !20443, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20446)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20450)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20454)
    #dbg_value(ptr %0, !20459, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20463)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20468)
    #dbg_value(ptr %0, !20469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20473)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20478)
    #dbg_value(ptr %0, !20479, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20483)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20488)
    #dbg_value(ptr %0, !20489, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20493)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20498)
    #dbg_value(ptr %0, !20499, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20502)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !20766
  %i.d = load ptr, ptr %i.c, align 8, !dbg !20766, !nonnull !982, !noundef !982 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1154, !dbg !20767 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !dbg !20767, !noundef !982
  %i.g = zext i16 %i.f to i64, !dbg !20768        ; 3 uses
    #dbg_value(i64 %i.g, !20294, !DIExpression(), !20504)
    #dbg_value(i64 %i.g, !20460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20505)
    #dbg_value(i64 %i.g, !20506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20510)
    #dbg_value(i64 %i.g, !20354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20513)
    #dbg_value(i64 %i.g, !20470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20514)
    #dbg_value(i64 %i.g, !20515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20519)
    #dbg_value(i64 %i.g, !20381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20522)
    #dbg_value(ptr %0, !20295, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20523)
    #dbg_value(ptr %0, !20443, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20525)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20528)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20534)
    #dbg_value(ptr %0, !20365, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20535)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20539)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20543)
    #dbg_value(ptr %0, !20365, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20544)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20548)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20552)
    #dbg_value(ptr %0, !20479, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20554)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20559)
    #dbg_value(ptr %0, !20489, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20561)
    #dbg_value(ptr %0, !20447, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20566)
    #dbg_value(ptr %0, !20499, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20568)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !20769
  %i.i = load ptr, ptr %i.h, align 8, !dbg !20769, !nonnull !982, !noundef !982 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1154, !dbg !20770 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !dbg !20770, !noundef !982
  %i.l = zext i16 %i.k to i64, !dbg !20771        ; 4 uses
    #dbg_value(i64 %i.l, !20296, !DIExpression(), !20570)
  %i.m = add nuw nsw i64 %1, %i.l, !dbg !20772    ; 3 uses
    #dbg_value(i64 %i.m, !20298, !DIExpression(), !20571)
    #dbg_value(i64 %i.m, !20366, !DIExpression(), !20572)
    #dbg_value(i64 %i.m, !20354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20364)
    #dbg_value(i64 %i.m, !20376, !DIExpression(), !20380)
    #dbg_value(i64 %i.m, !20381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20393)
    #dbg_value(i64 %i.m, !20405, !DIExpression(), !20410)
  %i.n = icmp samesign ult i64 %i.m, 12, !dbg !20772
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !20772, !prof !2137

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #21, !dbg !20773
  unreachable, !dbg !20773

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.g, !dbg !20774
  br i1 %.not, label %bb.d, label %bb.e, !dbg !20774, !prof !2027

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21, !dbg !20775
  unreachable, !dbg !20775

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.g, %1, !dbg !20776    ; 4 uses
    #dbg_value(i64 %i.o, !20297, !DIExpression(), !20573)
    #dbg_value(i64 %i.o, !20480, !DIExpression(), !20574)
    #dbg_value(i64 %i.o, !20575, !DIExpression(), !20579)
    #dbg_value(i64 %i.o, !20580, !DIExpression(), !20585)
    #dbg_value(i64 %i.o, !20490, !DIExpression(), !20586)
    #dbg_value(i64 %i.o, !20587, !DIExpression(), !20591)
    #dbg_value(i64 %i.o, !20592, !DIExpression(), !20597)
  %i.p = trunc nuw i64 %i.o to i16, !dbg !20777
  store i16 %i.p, ptr %i.e, align 2, !dbg !20777
  %i.q = trunc nuw nsw i64 %i.m to i16, !dbg !20778
  store i16 %i.q, ptr %i.j, align 2, !dbg !20778
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 1064, !dbg !20779 ; 4 uses
    #dbg_value(ptr %i.r, !20355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20364)
    #dbg_value(ptr %i.r, !20375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20380)
    #dbg_value(i64 11, !20355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20364)
    #dbg_value(i64 11, !20375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20380)
    #dbg_value(ptr %i.r, !4188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20598)
    #dbg_value(i64 %i.m, !4188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20598)
    #dbg_value(i64 %1, !4191, !DIExpression(), !20598)
    #dbg_value(i64 %1, !4194, !DIExpression(), !20599)
    #dbg_value(ptr %i.r, !4192, !DIExpression(), !20600)
    #dbg_value(ptr %i.r, !4195, !DIExpression(), !20599)
    #dbg_value(ptr %i.r, !4197, !DIExpression(), !20601)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %1, !dbg !20780
    #dbg_value(ptr %i.s, !4198, !DIExpression(), !20601)
    #dbg_value(i64 %i.l, !4199, !DIExpression(), !20601)
  %i.t = shl nuw nsw i64 %i.l, 3, !dbg !20781     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.r, i64 %i.t, i1 false), !dbg !20781, !alias.scope !20602
    #dbg_value(ptr %i.i, !20382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20393)
    #dbg_value(ptr %i.i, !20404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20410)
    #dbg_value(i64 11, !20382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20393)
    #dbg_value(i64 11, !20404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20410)
    #dbg_value(ptr %i.i, !20603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20607)
    #dbg_value(i64 %i.m, !20603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20607)
    #dbg_value(i64 %1, !20604, !DIExpression(), !20607)
    #dbg_value(i64 %1, !20608, !DIExpression(), !20611)
    #dbg_value(ptr %i.i, !20605, !DIExpression(), !20612)
    #dbg_value(ptr %i.i, !20609, !DIExpression(), !20611)
    #dbg_value(ptr %i.i, !20613, !DIExpression(), !20617)
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %1, !dbg !20782
    #dbg_value(ptr %i.u, !20614, !DIExpression(), !20617)
    #dbg_value(i64 %i.l, !20615, !DIExpression(), !20617)
  %i.v = mul nuw nsw i64 %i.l, 96, !dbg !20783
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.i, i64 %i.v, i1 false), !dbg !20783, !alias.scope !20618
  %i.w = add nuw nsw i64 %i.o, 1, !dbg !20784     ; 4 uses
    #dbg_value(i64 %i.w, !20460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20505)
    #dbg_value(i64 %i.w, !20506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20510)
    #dbg_value(i64 %i.w, !20354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20513)
    #dbg_value(i64 %i.w, !20377, !DIExpression(), !20621)
    #dbg_value(i64 %i.w, !20470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20514)
    #dbg_value(i64 %i.w, !20515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20519)
    #dbg_value(i64 %i.w, !20381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20522)
    #dbg_value(i64 %i.w, !20406, !DIExpression(), !20624)
    #dbg_value(i64 %i.w, !20625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20629)
    #dbg_value(i64 %i.w, !20630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20635)
    #dbg_value(i64 %i.w, !20315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20638)
    #dbg_value(i64 %i.w, !20337, !DIExpression(), !20641)
    #dbg_value(ptr %i.d, !20507, !DIExpression(DW_OP_plus_uconst, 1064, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20510)
    #dbg_value(i64 11, !20507, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20510)
    #dbg_value(ptr %i.d, !20355, !DIExpression(DW_OP_plus_uconst, 1064, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20513)
    #dbg_value(ptr %i.d, !20375, !DIExpression(DW_OP_plus_uconst, 1064, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20621)
    #dbg_value(i64 11, !20355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20513)
    #dbg_value(i64 11, !20375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20621)
  %i.x = sub nuw nsw i64 %i.g, %i.w, !dbg !20785  ; 5 uses
    #dbg_value(i64 %i.x, !20357, !DIExpression(), !20642)
    #dbg_value(i64 %i.x, !20376, !DIExpression(), !20621)
    #dbg_value(i64 %i.x, !20384, !DIExpression(), !20643)
    #dbg_value(i64 %i.x, !20405, !DIExpression(), !20624)
  %i.y = add nsw i64 %1, -1, !dbg !20786
    #dbg_value(i64 %i.y, !20366, !DIExpression(), !20644)
    #dbg_value(i64 %i.y, !20354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20418)
    #dbg_value(i64 %i.y, !20376, !DIExpression(), !20421)
    #dbg_value(i64 %i.y, !20381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 %i.y, !20405, !DIExpression(), !20432)
    #dbg_value(i64 %i.y, !20480, !DIExpression(), !20645)
    #dbg_value(i64 %i.y, !20575, !DIExpression(), !20647)
    #dbg_value(i64 %i.y, !20580, !DIExpression(), !20650)
    #dbg_value(i64 %i.y, !20490, !DIExpression(), !20651)
    #dbg_value(i64 %i.y, !20587, !DIExpression(), !20653)
    #dbg_value(i64 %i.y, !20592, !DIExpression(), !20656)
    #dbg_value(ptr %i.r, !20355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20418)
    #dbg_value(ptr %i.r, !20375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20421)
    #dbg_value(i64 11, !20355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20418)
    #dbg_value(i64 11, !20375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20657), !dbg !20787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20658), !dbg !20787
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.w), !2177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1064, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20660)
    #dbg_value(i64 %i.x, !2177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20660)
    #dbg_value(ptr %i.r, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20660)
    #dbg_value(i64 %i.y, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20660)
    #dbg_value(i64 %i.x, !2182, !DIExpression(), !20661)
  %i.z = icmp eq i64 %i.x, %i.y, !dbg !20788
  br i1 %i.z, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEB1b_.exit, label %bb.f, !dbg !20788, !prof !2137

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21, !dbg !20789, !noalias !20662
  unreachable, !dbg !20789

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEB1b_.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 1064, !dbg !20790 ; 2 uses
    #dbg_value(ptr %i.aa, !20355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20513)
    #dbg_value(ptr %i.aa, !20375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20621)
    #dbg_value(ptr %i.aa, !20507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20510)
    #dbg_value(!DIArgList(ptr %i.aa, i64 %i.w), !2177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20660)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w, !dbg !20791
    #dbg_value(ptr %i.ab, !2177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20660)
    #dbg_value(ptr %i.ab, !2183, !DIExpression(), !20661)
    #dbg_value(ptr %i.r, !2184, !DIExpression(), !20661)
  %i.ac = shl nuw nsw i64 %i.x, 3, !dbg !20792
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 8 %i.ab, i64 %i.ac, i1 false), !dbg !20792, !alias.scope !20662
    #dbg_value(ptr %i.d, !20516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20519)
    #dbg_value(i64 11, !20516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20519)
    #dbg_value(ptr %i.d, !20382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20522)
    #dbg_value(ptr %i.d, !20404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20624)
    #dbg_value(i64 11, !20382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20522)
    #dbg_value(i64 11, !20404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20624)
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.w, !dbg !20793
    #dbg_value(ptr %i.i, !20382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20429)
    #dbg_value(ptr %i.i, !20404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20432)
    #dbg_value(i64 11, !20382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20429)
    #dbg_value(i64 11, !20404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20432)
    #dbg_value(ptr %i.ad, !2219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20663)
    #dbg_value(i64 %i.x, !2219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20663)
    #dbg_value(ptr %i.i, !2222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20663)
    #dbg_value(i64 %i.y, !2222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20663)
    #dbg_value(i64 %i.x, !2224, !DIExpression(), !20664)
    #dbg_value(ptr %i.ad, !2225, !DIExpression(), !20664)
    #dbg_value(ptr %i.i, !2226, !DIExpression(), !20664)
  %i.ae = mul nuw nsw i64 %i.x, 96, !dbg !20794
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull readonly align 8 %i.ad, i64 %i.ae, i1 false), !dbg !20794, !alias.scope !20665
    #dbg_value(ptr %i.aa, !20576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20579)
    #dbg_value(i64 11, !20576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20579)
    #dbg_value(ptr %i.aa, !20581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20585)
    #dbg_value(i64 11, !20581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20585)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.o, !dbg !20795
    #dbg_value(ptr %i.af, !20666, !DIExpression(), !20669)
    #dbg_value(ptr %i.af, !20670, !DIExpression(), !20673)
    #dbg_value(ptr %i.af, !20674, !DIExpression(), !20677)
  %i.ag = load i64, ptr %i.af, align 8, !dbg !20796, !noundef !982
    #dbg_value(i64 %i.ag, !20299, !DIExpression(), !20678)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20797
    #dbg_value(ptr %i.d, !20588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20591)
    #dbg_value(i64 11, !20588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20591)
    #dbg_value(ptr %i.d, !20593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20597)
    #dbg_value(i64 11, !20593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20597)
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.o, !dbg !20798
    #dbg_value(ptr %i.ah, !20679, !DIExpression(), !20682)
    #dbg_value(ptr %i.ah, !20683, !DIExpression(), !20687)
    #dbg_value(ptr %i.ah, !20688, !DIExpression(), !20692)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, i64 96, i1 false), !dbg !20799
  %.val = load ptr, ptr %0, align 8, !dbg !20800, !nonnull !982, !noundef !982 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20800
  %.val118 = load i64, ptr %i.ai, align 8, !dbg !20800, !noundef !982 ; 2 uses
    #dbg_value(ptr poison, !4203, !DIExpression(), !20693)
    #dbg_value(i64 %i.ag, !4208, !DIExpression(), !20693)
    #dbg_declare(ptr %i.b, !4209, !DIExpression(), !20694)
    #dbg_declare(ptr poison, !4213, !DIExpression(), !20695)
    #dbg_value(ptr poison, !4216, !DIExpression(), !20696)
    #dbg_value(ptr %.val, !4221, !DIExpression(), !20697)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 1064, !dbg !20801
    #dbg_value(ptr %i.aj, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20698)
    #dbg_value(i64 11, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20698)
    #dbg_value(i64 %.val118, !4226, !DIExpression(), !20698)
    #dbg_value(i64 %.val118, !4228, !DIExpression(), !20699)
    #dbg_value(ptr %i.aj, !4229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20699)
    #dbg_value(i64 11, !4229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20699)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.val118, !dbg !20802 ; 2 uses
    #dbg_value(ptr %i.ak, !4222, !DIExpression(), !20700)
    #dbg_value(ptr %.val, !4231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20701)
    #dbg_value(i64 11, !4231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20701)
    #dbg_value(i64 %.val118, !4232, !DIExpression(), !20701)
    #dbg_value(i64 %.val118, !4234, !DIExpression(), !20702)
    #dbg_value(ptr %.val, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20702)
    #dbg_value(i64 11, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20702)
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.val118, !dbg !20803 ; 2 uses
    #dbg_value(ptr %i.ak, !4210, !DIExpression(), !20703)
    #dbg_value(ptr %i.ak, !4238, !DIExpression(), !20704)
    #dbg_value(ptr %i.al, !4211, !DIExpression(), !20703)
    #dbg_value(ptr %i.al, !4214, !DIExpression(), !20705)
    #dbg_value(i64 %i.ag, !4239, !DIExpression(), !20704)
  %i.am = load i64, ptr %i.ak, align 8, !dbg !20804, !noalias !20706, !noundef !982
  store i64 %i.ag, ptr %i.ak, align 8, !dbg !20805, !noalias !20706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.al, i64 96, i1 false), !dbg !20807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, i64 96, i1 false), !dbg !20808, !noalias !20707
    #dbg_value(i64 %i.am, !20301, !DIExpression(), !20708)
    #dbg_value(i64 %i.am, !20709, !DIExpression(), !20713)
    #dbg_value(ptr %i.r, !20576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20647)
    #dbg_value(i64 11, !20576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20647)
    #dbg_value(ptr %i.r, !20581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20650)
    #dbg_value(i64 11, !20581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20650)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.x, !dbg !20809
    #dbg_value(ptr %i.an, !20710, !DIExpression(), !20713)
  store i64 %i.am, ptr %i.an, align 8, !dbg !20810
    #dbg_value(ptr %i.i, !20588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20653)
    #dbg_value(i64 11, !20588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20653)
    #dbg_value(ptr %i.i, !20593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20656)
    #dbg_value(i64 11, !20593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20656)
  %i.ao = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %i.x, !dbg !20811
    #dbg_value(ptr %i.ao, !20345, !DIExpression(), !20714)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ao, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !20812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20814
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20815
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !20815, !noundef !982
    #dbg_value(i64 %i.aq, !20715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20718)
    #dbg_value(ptr %i.d, !20715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20718)
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !20816
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !20817
  %i.at = load i64, ptr %i.as, align 8, !dbg !20817, !noundef !982
    #dbg_value(i64 %i.at, !20715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20720)
    #dbg_value(i64 %i.at, !20715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20720)
    #dbg_value(ptr poison, !20715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20720)
    #dbg_value(ptr poison, !20715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20720)
  %i.au = icmp eq i64 %i.at, 0, !dbg !20818       ; 2 uses
  br i1 %i.ar, label %bb.g, label %bb.h, !dbg !20816

bb.g:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEB1b_.exit
  br i1 %i.au, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit, label %bb.j, !dbg !20818, !prof !2137

bb.h:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEB1b_.exit
  br i1 %i.au, label %bb.j, label %bb.k, !dbg !20818, !prof !2027

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20819
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit, label %.epil.preheader, !dbg !20819

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.cb, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i64 %xtraiter, 0, !dbg !20819
  tail call void @llvm.assume(i1 %lcmp.mod125), !dbg !20819
  br label %bb.i, !dbg !20819

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.av, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
    #dbg_value(i64 %.sroa.0.06.i.epil, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2280, !DIExpression(), !20722)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2290, !DIExpression(), !20723)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2297, !DIExpression(), !20724)
    #dbg_value(i64 1, !2294, !DIExpression(), !20723)
    #dbg_value(i64 1, !2301, !DIExpression(), !20724)
  %i.av = add nuw nsw i64 %.sroa.0.06.i.epil, 1, !dbg !20820
    #dbg_value(i64 %i.av, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2258, !DIExpression(), !20725)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !20726)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20727)
    #dbg_value(ptr %i.i, !2313, !DIExpression(), !20728)
    #dbg_value(ptr %i.i, !2308, !DIExpression(), !20729)
    #dbg_value(ptr %i.i, !2316, !DIExpression(), !20730)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2309, !DIExpression(), !20731)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20727)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2323, !DIExpression(), !20732)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2326, !DIExpression(), !20733)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2321, !DIExpression(), !20730)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20727)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20732)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20733)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20732)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20733)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.06.i.epil, !dbg !20821
    #dbg_value(ptr %i.aw, !2329, !DIExpression(), !20734)
    #dbg_value(ptr %i.aw, !2331, !DIExpression(), !20735)
    #dbg_value(ptr %i.aw, !2333, !DIExpression(), !20736)
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !20822, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.ax, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20737)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20737)
    #dbg_value(ptr poison, !2320, !DIExpression(), !20738)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1056, !dbg !20823
  store ptr %i.i, ptr %i.ay, align 8, !dbg !20823
  %i.az = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16, !dbg !20824
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1152, !dbg !20825
  store i16 %i.az, ptr %i.ba, align 8, !dbg !20825
    #dbg_value(ptr undef, !2262, !DIExpression(), !20739)
    #dbg_value(ptr undef, !2278, !DIExpression(), !20740)
    #dbg_value(ptr undef, !2283, !DIExpression(), !20741)
    #dbg_value(ptr undef, !2288, !DIExpression(), !20741)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !20819 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !20819
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit, label %bb.i, !dbg !20819, !llvm.loop !20275

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void, !dbg !20826

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #21, !dbg !20827
  unreachable, !dbg !20827

bb.k:                                             ; preds = %bb.h
    #dbg_value(ptr %i.i, !20715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20720)
    #dbg_value(ptr %i.d, !20303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20742)
    #dbg_value(i64 %i.aq, !20303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20742)
    #dbg_value(ptr %i.i, !20304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20742)
    #dbg_value(i64 %i.at, !20304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20742)
    #dbg_value(ptr undef, !20306, !DIExpression(), !20312)
    #dbg_value(i64 %i.m, !20307, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !20743)
    #dbg_value(i64 %i.m, !20315, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20438)
    #dbg_value(i64 %i.m, !20334, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !20441)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 1160, !dbg !20828 ; 8 uses
    #dbg_value(ptr %i.bb, !20316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20438)
    #dbg_value(ptr %i.bb, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20441)
    #dbg_value(i64 12, !20316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20438)
    #dbg_value(i64 12, !20335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20441)
    #dbg_value(ptr %i.bb, !20744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20748)
    #dbg_value(i64 %i.m, !20744, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20748)
    #dbg_value(i64 %1, !20745, !DIExpression(), !20748)
    #dbg_value(i64 %1, !20749, !DIExpression(), !20752)
    #dbg_value(ptr %i.bb, !20746, !DIExpression(), !20753)
    #dbg_value(ptr %i.bb, !20750, !DIExpression(), !20752)
    #dbg_value(ptr %i.bb, !20754, !DIExpression(), !20758)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %1, !dbg !20829
    #dbg_value(ptr %i.bc, !20755, !DIExpression(), !20758)
    #dbg_value(!DIArgList(i64 %i.m, i64 0, i64 %1), !20756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !20758)
  %i.bd = add nuw nsw i64 %i.t, 8, !dbg !20830
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !dbg !20830, !alias.scope !20759
    #dbg_value(ptr poison, !20626, !DIExpression(), !20760)
    #dbg_value(i64 %i.g, !20625, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20629)
    #dbg_value(i64 %i.g, !20630, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20635)
    #dbg_value(i64 %i.g, !20315, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20638)
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 1160, !dbg !20831
    #dbg_value(ptr %i.be, !20631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20635)
    #dbg_value(i64 12, !20631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20635)
    #dbg_value(ptr %i.be, !20316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20638)
    #dbg_value(ptr %i.be, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20641)
    #dbg_value(i64 12, !20316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20638)
    #dbg_value(i64 12, !20335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20641)
    #dbg_value(i64 %1, !20318, !DIExpression(), !20761)
    #dbg_value(i64 %1, !20334, !DIExpression(), !20641)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.w, !dbg !20832
    #dbg_value(ptr undef, !20306, !DIExpression(), !20310)
    #dbg_value(ptr %i.bb, !20316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20327)
    #dbg_value(ptr %i.bb, !20335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20341)
    #dbg_value(i64 12, !20316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20327)
    #dbg_value(i64 12, !20335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20341)
    #dbg_value(ptr %i.bf, !2341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20762)
    #dbg_value(i64 %1, !2341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20762)
    #dbg_value(ptr %i.bb, !2344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20762)
    #dbg_value(i64 %1, !2344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20762)
    #dbg_value(i64 %1, !2348, !DIExpression(), !20763)
    #dbg_value(ptr %i.bf, !2349, !DIExpression(), !20763)
    #dbg_value(ptr %i.bb, !2350, !DIExpression(), !20763)
  %i.bg = shl nuw nsw i64 %1, 3, !dbg !20833
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !dbg !20833, !alias.scope !20764
    #dbg_value(ptr poison, !2249, !DIExpression(), !20765)
    #dbg_value(i64 0, !2256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20765)
    #dbg_value(i64 %i.m, !2256, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20765)
    #dbg_value(i64 0, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(i64 %i.m, !2257, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20721)
    #dbg_value(ptr undef, !2262, !DIExpression(), !20739)
    #dbg_value(ptr undef, !2278, !DIExpression(), !20740)
    #dbg_value(ptr undef, !2283, !DIExpression(), !20741)
    #dbg_value(ptr undef, !2288, !DIExpression(), !20741)
  %2 = add nuw nsw i64 %1, %i.l, !dbg !20819
  %i.bh = add nuw nsw i64 %2, 1, !dbg !20819      ; 2 uses
  %xtraiter = and i64 %i.bh, 3, !dbg !20819       ; 3 uses
  %i.bi = icmp samesign ult i64 %i.m, 3, !dbg !20819
  br i1 %i.bi, label %.epil.preheader, label %.new, !dbg !20819

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bh, 60, !dbg !20819
  br label %bb.l, !dbg !20819

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.cb, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
    #dbg_value(i64 %.sroa.0.06.i, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(i64 %.sroa.0.06.i, !2280, !DIExpression(), !20722)
    #dbg_value(i64 %.sroa.0.06.i, !2290, !DIExpression(), !20723)
    #dbg_value(i64 %.sroa.0.06.i, !2297, !DIExpression(), !20724)
    #dbg_value(i64 1, !2294, !DIExpression(), !20723)
    #dbg_value(i64 1, !2301, !DIExpression(), !20724)
  %i.bj = or disjoint i64 %.sroa.0.06.i, 1, !dbg !20820 ; 2 uses
    #dbg_value(i64 %i.bj, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(i64 %.sroa.0.06.i, !2258, !DIExpression(), !20725)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !20726)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20727)
    #dbg_value(ptr %i.i, !2313, !DIExpression(), !20728)
    #dbg_value(ptr %i.i, !2308, !DIExpression(), !20729)
    #dbg_value(ptr %i.i, !2316, !DIExpression(), !20730)
    #dbg_value(i64 %.sroa.0.06.i, !2309, !DIExpression(), !20731)
    #dbg_value(i64 %.sroa.0.06.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20727)
    #dbg_value(i64 %.sroa.0.06.i, !2323, !DIExpression(), !20732)
    #dbg_value(i64 %.sroa.0.06.i, !2326, !DIExpression(), !20733)
    #dbg_value(i64 %.sroa.0.06.i, !2321, !DIExpression(), !20730)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20727)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20732)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20733)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20732)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20733)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.06.i, !dbg !20821
    #dbg_value(ptr %i.bk, !2329, !DIExpression(), !20734)
    #dbg_value(ptr %i.bk, !2331, !DIExpression(), !20735)
    #dbg_value(ptr %i.bk, !2333, !DIExpression(), !20736)
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !20822, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bl, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20737)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20737)
    #dbg_value(ptr poison, !2320, !DIExpression(), !20738)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1056, !dbg !20823
  store ptr %i.i, ptr %i.bm, align 8, !dbg !20823
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i to i16, !dbg !20824
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1152, !dbg !20825
  store i16 %i.bn, ptr %i.bo, align 8, !dbg !20825
    #dbg_value(ptr undef, !2262, !DIExpression(), !20739)
    #dbg_value(ptr undef, !2278, !DIExpression(), !20740)
    #dbg_value(ptr undef, !2283, !DIExpression(), !20741)
    #dbg_value(ptr undef, !2288, !DIExpression(), !20741)
    #dbg_value(i64 %i.bj, !2280, !DIExpression(), !20722)
    #dbg_value(i64 %i.bj, !2290, !DIExpression(), !20723)
    #dbg_value(i64 %i.bj, !2297, !DIExpression(), !20724)
  %i.bp = or disjoint i64 %.sroa.0.06.i, 2, !dbg !20820 ; 2 uses
    #dbg_value(i64 %i.bp, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(i64 %i.bj, !2258, !DIExpression(), !20725)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !20726)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20727)
    #dbg_value(i64 %i.bj, !2309, !DIExpression(), !20731)
    #dbg_value(i64 %i.bj, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20727)
    #dbg_value(i64 %i.bj, !2323, !DIExpression(), !20732)
    #dbg_value(i64 %i.bj, !2326, !DIExpression(), !20733)
    #dbg_value(i64 %i.bj, !2321, !DIExpression(), !20730)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20727)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20732)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20733)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20732)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20733)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bj, !dbg !20821
    #dbg_value(ptr %i.bq, !2329, !DIExpression(), !20734)
    #dbg_value(ptr %i.bq, !2331, !DIExpression(), !20735)
    #dbg_value(ptr %i.bq, !2333, !DIExpression(), !20736)
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !20822, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.br, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20737)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20737)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1056, !dbg !20823
  store ptr %i.i, ptr %i.bs, align 8, !dbg !20823
  %i.bt = trunc nuw nsw i64 %i.bj to i16, !dbg !20824
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1152, !dbg !20825
  store i16 %i.bt, ptr %i.bu, align 8, !dbg !20825
    #dbg_value(i64 %i.bp, !2280, !DIExpression(), !20722)
    #dbg_value(i64 %i.bp, !2290, !DIExpression(), !20723)
    #dbg_value(i64 %i.bp, !2297, !DIExpression(), !20724)
  %i.bv = or disjoint i64 %.sroa.0.06.i, 3, !dbg !20820 ; 2 uses
    #dbg_value(i64 %i.bv, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(i64 %i.bp, !2258, !DIExpression(), !20725)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !20726)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20727)
    #dbg_value(i64 %i.bp, !2309, !DIExpression(), !20731)
    #dbg_value(i64 %i.bp, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20727)
    #dbg_value(i64 %i.bp, !2323, !DIExpression(), !20732)
    #dbg_value(i64 %i.bp, !2326, !DIExpression(), !20733)
    #dbg_value(i64 %i.bp, !2321, !DIExpression(), !20730)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20727)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20732)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20733)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20732)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20733)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bp, !dbg !20821
    #dbg_value(ptr %i.bw, !2329, !DIExpression(), !20734)
    #dbg_value(ptr %i.bw, !2331, !DIExpression(), !20735)
    #dbg_value(ptr %i.bw, !2333, !DIExpression(), !20736)
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !20822, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bx, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20737)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20737)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1056, !dbg !20823
  store ptr %i.i, ptr %i.by, align 8, !dbg !20823
  %i.bz = trunc nuw nsw i64 %i.bp to i16, !dbg !20824
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1152, !dbg !20825
  store i16 %i.bz, ptr %i.ca, align 8, !dbg !20825
    #dbg_value(i64 %i.bv, !2280, !DIExpression(), !20722)
    #dbg_value(i64 %i.bv, !2290, !DIExpression(), !20723)
    #dbg_value(i64 %i.bv, !2297, !DIExpression(), !20724)
  %i.cb = add nuw nsw i64 %.sroa.0.06.i, 4, !dbg !20820 ; 2 uses
    #dbg_value(i64 %i.cb, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20721)
    #dbg_value(i64 %i.bv, !2258, !DIExpression(), !20725)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !20726)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20727)
    #dbg_value(i64 %i.bv, !2309, !DIExpression(), !20731)
    #dbg_value(i64 %i.bv, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20727)
    #dbg_value(i64 %i.bv, !2323, !DIExpression(), !20732)
    #dbg_value(i64 %i.bv, !2326, !DIExpression(), !20733)
    #dbg_value(i64 %i.bv, !2321, !DIExpression(), !20730)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20727)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20732)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20733)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20732)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20733)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bv, !dbg !20821
    #dbg_value(ptr %i.cc, !2329, !DIExpression(), !20734)
    #dbg_value(ptr %i.cc, !2331, !DIExpression(), !20735)
    #dbg_value(ptr %i.cc, !2333, !DIExpression(), !20736)
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !20822, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cd, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20737)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20737)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1056, !dbg !20823
  store ptr %i.i, ptr %i.ce, align 8, !dbg !20823
  %i.cf = trunc nuw nsw i64 %i.bv to i16, !dbg !20824
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1152, !dbg !20825
  store i16 %i.cf, ptr %i.cg, align 8, !dbg !20825
  %niter.next.3 = add i64 %niter, 4, !dbg !20819  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !20819
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.loopexit.unr-lcssa, label %bb.l, !dbg !20819
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE16bulk_steal_rightB1p_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20844 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !20993, !DIExpression(), !20997)
    #dbg_value(ptr poison, !20993, !DIExpression(), !20999)
    #dbg_value(ptr poison, !21000, !DIExpression(), !21004)
  %i.b = alloca [96 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !20978, !DIExpression(), !21005)
    #dbg_value(i64 %1, !20979, !DIExpression(), !21005)
    #dbg_value(i64 %1, !20994, !DIExpression(), !21006)
    #dbg_value(i64 %1, !21007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21018)
    #dbg_value(i64 %1, !21025, !DIExpression(), !21032)
    #dbg_declare(ptr %i.b, !20987, !DIExpression(), !21033)
    #dbg_declare(ptr poison, !20989, !DIExpression(), !21034)
    #dbg_declare(ptr poison, !21035, !DIExpression(), !21039)
    #dbg_declare(ptr poison, !21040, !DIExpression(), !21044)
    #dbg_value(i64 0, !21045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21057)
    #dbg_value(i64 0, !21067, !DIExpression(), !21073)
    #dbg_value(i64 0, !21074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21087)
    #dbg_value(i64 0, !21097, !DIExpression(), !21104)
    #dbg_value(i64 0, !21045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21112)
    #dbg_value(i64 0, !21067, !DIExpression(), !21115)
    #dbg_value(i64 0, !21074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21123)
    #dbg_value(i64 0, !21097, !DIExpression(), !21126)
    #dbg_value(i64 0, !21007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21018)
    #dbg_value(i64 0, !21027, !DIExpression(), !21032)
    #dbg_value(i64 0, !21007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21133)
    #dbg_value(i64 0, !21027, !DIExpression(), !21136)
    #dbg_value(ptr %0, !20980, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21137)
    #dbg_value(ptr %0, !21138, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21141)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21145)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21149)
    #dbg_value(ptr %0, !21154, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21158)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21163)
    #dbg_value(ptr %0, !21164, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21168)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21173)
    #dbg_value(ptr %0, !21174, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21178)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21183)
    #dbg_value(ptr %0, !21184, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21188)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21193)
    #dbg_value(ptr %0, !21194, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21197)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21467
  %i.d = load ptr, ptr %i.c, align 8, !dbg !21467, !nonnull !982, !noundef !982 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1154, !dbg !21468 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !dbg !21468, !noundef !982 ; 6 uses
  %i.g = zext i16 %i.f to i64, !dbg !21469        ; 8 uses
    #dbg_value(i64 %i.g, !20981, !DIExpression(), !21199)
    #dbg_value(i64 %i.g, !21155, !DIExpression(), !21200)
    #dbg_value(i64 %i.g, !21201, !DIExpression(), !21205)
    #dbg_value(i64 %i.g, !21206, !DIExpression(), !21211)
    #dbg_value(i64 %i.g, !21165, !DIExpression(), !21212)
    #dbg_value(i64 %i.g, !21213, !DIExpression(), !21217)
    #dbg_value(i64 %i.g, !21218, !DIExpression(), !21223)
    #dbg_value(ptr %0, !20982, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21224)
    #dbg_value(ptr %0, !21138, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21226)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21229)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21235)
    #dbg_value(ptr %0, !21154, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21237)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21241)
    #dbg_value(ptr %0, !21164, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21243)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21247)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21251)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21255)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21259)
    #dbg_value(ptr %0, !21142, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21263)
    #dbg_value(ptr %0, !21194, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21265)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21470
  %i.i = load ptr, ptr %i.h, align 8, !dbg !21470, !nonnull !982, !noundef !982 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1154, !dbg !21471 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !dbg !21471, !noundef !982
  %i.l = zext i16 %i.k to i64, !dbg !21472        ; 3 uses
    #dbg_value(i64 %i.l, !20983, !DIExpression(), !21267)
    #dbg_value(i64 %i.l, !21045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21112)
    #dbg_value(i64 %i.l, !21069, !DIExpression(), !21115)
    #dbg_value(i64 %i.l, !21074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21123)
    #dbg_value(i64 %i.l, !21099, !DIExpression(), !21126)
  %i.m = add nuw nsw i64 %1, %i.g, !dbg !21473    ; 2 uses
    #dbg_value(i64 %i.m, !20984, !DIExpression(), !21268)
    #dbg_value(i64 %i.m, !21175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21269)
    #dbg_value(i64 %i.m, !21270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21274)
    #dbg_value(i64 %i.m, !21045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21277)
    #dbg_value(i64 %i.m, !21185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21278)
    #dbg_value(i64 %i.m, !21279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21283)
    #dbg_value(i64 %i.m, !21074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21286)
  %i.n = icmp samesign ult i64 %i.m, 12, !dbg !21473
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !21473, !prof !2137

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !dbg !21474
  unreachable, !dbg !21474

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.l, !dbg !21475
  br i1 %.not, label %bb.d, label %bb.e, !dbg !21475, !prof !2027

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #21, !dbg !21476
  unreachable, !dbg !21476

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.l, %1, !dbg !21477    ; 4 uses
    #dbg_value(i64 %i.o, !20985, !DIExpression(), !21287)
  %i.p = trunc nuw nsw i64 %i.m to i16, !dbg !21478
  store i16 %i.p, ptr %i.e, align 2, !dbg !21478
  %i.q = trunc nuw i64 %i.o to i16, !dbg !21479
  store i16 %i.q, ptr %i.j, align 2, !dbg !21479
  %i.r = add nsw i64 %1, -1, !dbg !21480          ; 4 uses
    #dbg_value(i64 %i.r, !21155, !DIExpression(), !21288)
    #dbg_value(i64 %i.r, !21201, !DIExpression(), !21290)
    #dbg_value(i64 %i.r, !21206, !DIExpression(), !21292)
    #dbg_value(i64 %i.r, !21165, !DIExpression(), !21293)
    #dbg_value(i64 %i.r, !21213, !DIExpression(), !21295)
    #dbg_value(i64 %i.r, !21218, !DIExpression(), !21298)
    #dbg_value(i64 %i.r, !21045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21057)
    #dbg_value(i64 %i.r, !21069, !DIExpression(), !21073)
    #dbg_value(i64 %i.r, !21074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21087)
    #dbg_value(i64 %i.r, !21099, !DIExpression(), !21104)
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 1064, !dbg !21481 ; 4 uses
    #dbg_value(ptr %i.s, !21202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21290)
    #dbg_value(i64 11, !21202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21290)
    #dbg_value(ptr %i.s, !21207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21292)
    #dbg_value(i64 11, !21207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21292)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r, !dbg !21482
    #dbg_value(ptr %i.t, !21299, !DIExpression(), !21302)
    #dbg_value(ptr %i.t, !21303, !DIExpression(), !21306)
    #dbg_value(ptr %i.t, !21307, !DIExpression(), !21310)
  %i.u = load i64, ptr %i.t, align 8, !dbg !21483, !noundef !982
    #dbg_value(i64 %i.u, !20986, !DIExpression(), !21311)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21484
    #dbg_value(ptr %i.i, !21214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21295)
    #dbg_value(i64 11, !21214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21295)
    #dbg_value(ptr %i.i, !21219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21298)
    #dbg_value(i64 11, !21219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21298)
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %i.r, !dbg !21485
    #dbg_value(ptr %i.v, !21312, !DIExpression(), !21315)
    #dbg_value(ptr %i.v, !21316, !DIExpression(), !21320)
    #dbg_value(ptr %i.v, !21321, !DIExpression(), !21325)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false), !dbg !21486
  %.val = load ptr, ptr %0, align 8, !dbg !21487, !nonnull !982, !noundef !982 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21487
  %.val117 = load i64, ptr %i.w, align 8, !dbg !21487, !noundef !982 ; 2 uses
    #dbg_value(ptr poison, !4203, !DIExpression(), !21326)
    #dbg_value(i64 %i.u, !4208, !DIExpression(), !21326)
    #dbg_declare(ptr %i.b, !4209, !DIExpression(), !21327)
    #dbg_declare(ptr poison, !4213, !DIExpression(), !21328)
    #dbg_value(ptr poison, !4216, !DIExpression(), !21329)
    #dbg_value(ptr %.val, !4221, !DIExpression(), !21330)
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 1064, !dbg !21488
    #dbg_value(ptr %i.x, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21331)
    #dbg_value(i64 11, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21331)
    #dbg_value(i64 %.val117, !4226, !DIExpression(), !21331)
    #dbg_value(i64 %.val117, !4228, !DIExpression(), !21332)
    #dbg_value(ptr %i.x, !4229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21332)
    #dbg_value(i64 11, !4229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21332)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.val117, !dbg !21489 ; 2 uses
    #dbg_value(ptr %i.y, !4222, !DIExpression(), !21333)
    #dbg_value(ptr %.val, !4231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21334)
    #dbg_value(i64 11, !4231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21334)
    #dbg_value(i64 %.val117, !4232, !DIExpression(), !21334)
    #dbg_value(i64 %.val117, !4234, !DIExpression(), !21335)
    #dbg_value(ptr %.val, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21335)
    #dbg_value(i64 11, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21335)
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.val117, !dbg !21490 ; 2 uses
    #dbg_value(ptr %i.y, !4210, !DIExpression(), !21336)
    #dbg_value(ptr %i.y, !4238, !DIExpression(), !21337)
    #dbg_value(ptr %i.z, !4211, !DIExpression(), !21336)
    #dbg_value(ptr %i.z, !4214, !DIExpression(), !21338)
    #dbg_value(i64 %i.u, !4239, !DIExpression(), !21337)
  %i.aa = load i64, ptr %i.y, align 8, !dbg !21491, !noalias !21339, !noundef !982
  store i64 %i.u, ptr %i.y, align 8, !dbg !21492, !noalias !21339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false), !dbg !21494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, i64 96, i1 false), !dbg !21495, !noalias !21340
    #dbg_value(i64 %i.aa, !20988, !DIExpression(), !21341)
    #dbg_value(i64 %i.aa, !21342, !DIExpression(), !21346)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 1064, !dbg !21496 ; 2 uses
    #dbg_value(ptr %i.ab, !21202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21205)
    #dbg_value(i64 11, !21202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21205)
    #dbg_value(ptr %i.ab, !21207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21211)
    #dbg_value(i64 11, !21207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21211)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.g, !dbg !21497
    #dbg_value(ptr %i.ac, !21343, !DIExpression(), !21346)
  store i64 %i.aa, ptr %i.ac, align 8, !dbg !21498
    #dbg_value(ptr %i.d, !21214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21217)
    #dbg_value(i64 11, !21214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21217)
    #dbg_value(ptr %i.d, !21219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21223)
    #dbg_value(i64 11, !21219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21223)
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.g, !dbg !21499
    #dbg_value(ptr %i.ad, !21036, !DIExpression(), !21347)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !21500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21501
    #dbg_value(ptr %i.s, !21046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21057)
    #dbg_value(ptr %i.s, !21068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21073)
    #dbg_value(i64 11, !21046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21057)
    #dbg_value(i64 11, !21068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21073)
  %i.ae = add nuw nsw i64 %i.g, 1, !dbg !21502    ; 5 uses
    #dbg_value(i64 %i.ae, !21175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21269)
    #dbg_value(i64 %i.ae, !21270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21274)
    #dbg_value(i64 %i.ae, !21045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21277)
    #dbg_value(i64 %i.ae, !21070, !DIExpression(), !21350)
    #dbg_value(i64 %i.ae, !21185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21278)
    #dbg_value(i64 %i.ae, !21279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21283)
    #dbg_value(i64 %i.ae, !21074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21286)
    #dbg_value(i64 %i.ae, !21100, !DIExpression(), !21353)
    #dbg_value(i64 %i.ae, !21001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21354)
    #dbg_value(i64 %i.ae, !21355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21360)
    #dbg_value(i64 %i.ae, !21007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21363)
    #dbg_value(i64 %i.ae, !21028, !DIExpression(), !21366)
    #dbg_value(ptr %i.ab, !21271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21274)
    #dbg_value(i64 11, !21271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21274)
    #dbg_value(ptr %i.ab, !21046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21277)
    #dbg_value(ptr %i.ab, !21068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21350)
    #dbg_value(i64 11, !21046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21277)
    #dbg_value(i64 11, !21068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21350)
    #dbg_value(i64 %1, !21048, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !21367)
    #dbg_value(i64 %1, !21069, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !21350)
    #dbg_value(i64 %1, !21077, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !21368)
    #dbg_value(i64 %1, !21099, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !21353)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae, !dbg !21503
    #dbg_value(ptr %i.s, !2177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21369)
    #dbg_value(i64 %i.r, !2177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21369)
    #dbg_value(ptr %i.af, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21369)
    #dbg_value(i64 %1, !2180, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21369)
    #dbg_value(i64 %i.r, !2182, !DIExpression(), !21370)
    #dbg_value(ptr %i.s, !2183, !DIExpression(), !21370)
    #dbg_value(ptr %i.af, !2184, !DIExpression(), !21370)
  %i.ag = shl nuw nsw i64 %i.r, 3, !dbg !21504
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %i.s, i64 %i.ag, i1 false), !dbg !21504, !alias.scope !21371
    #dbg_value(ptr %i.i, !21075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21087)
    #dbg_value(ptr %i.i, !21098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21104)
    #dbg_value(i64 11, !21075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21087)
    #dbg_value(i64 11, !21098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21104)
    #dbg_value(ptr %i.d, !21280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21283)
    #dbg_value(i64 11, !21280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21283)
    #dbg_value(ptr %i.d, !21075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21286)
    #dbg_value(ptr %i.d, !21098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21353)
    #dbg_value(i64 11, !21075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21286)
    #dbg_value(i64 11, !21098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21353)
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.ae, !dbg !21505
    #dbg_value(ptr %i.i, !2219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21372)
    #dbg_value(i64 %i.r, !2219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21372)
    #dbg_value(ptr %i.ah, !2222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21372)
    #dbg_value(i64 %1, !2222, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21372)
    #dbg_value(i64 %i.r, !2224, !DIExpression(), !21373)
    #dbg_value(ptr %i.i, !2225, !DIExpression(), !21373)
    #dbg_value(ptr %i.ah, !2226, !DIExpression(), !21373)
  %i.ai = mul nuw nsw i64 %i.r, 96, !dbg !21506
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.i, i64 %i.ai, i1 false), !dbg !21506, !alias.scope !21374
    #dbg_value(ptr %i.s, !21046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21112)
    #dbg_value(ptr %i.s, !21068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21115)
    #dbg_value(i64 11, !21046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21112)
    #dbg_value(i64 11, !21068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21115)
    #dbg_value(ptr %i.s, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21375)
    #dbg_value(i64 %i.l, !4245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21375)
    #dbg_value(i64 %1, !4246, !DIExpression(), !21375)
    #dbg_value(i64 %1, !4249, !DIExpression(), !21376)
    #dbg_value(ptr %i.s, !4247, !DIExpression(), !21377)
    #dbg_value(ptr %i.s, !4250, !DIExpression(), !21376)
    #dbg_value(ptr %i.s, !4252, !DIExpression(), !21378)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %1, !dbg !21507
    #dbg_value(ptr %i.aj, !4253, !DIExpression(), !21378)
    #dbg_value(i64 %i.o, !4254, !DIExpression(), !21378)
  %i.ak = shl nuw nsw i64 %i.o, 3, !dbg !21508    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.aj, i64 %i.ak, i1 false), !dbg !21508, !alias.scope !21379
    #dbg_value(ptr %i.i, !21075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21123)
    #dbg_value(ptr %i.i, !21098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21126)
    #dbg_value(i64 11, !21075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21123)
    #dbg_value(i64 11, !21098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21126)
    #dbg_value(ptr %i.i, !21380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21384)
    #dbg_value(i64 %i.l, !21380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21384)
    #dbg_value(i64 %1, !21381, !DIExpression(), !21384)
    #dbg_value(i64 %1, !21385, !DIExpression(), !21388)
    #dbg_value(ptr %i.i, !21382, !DIExpression(), !21389)
    #dbg_value(ptr %i.i, !21386, !DIExpression(), !21388)
    #dbg_value(ptr %i.i, !21390, !DIExpression(), !21394)
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %1, !dbg !21509
    #dbg_value(ptr %i.al, !21391, !DIExpression(), !21394)
    #dbg_value(i64 %i.o, !21392, !DIExpression(), !21394)
  %i.am = mul nuw nsw i64 %i.o, 96, !dbg !21510
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.al, i64 %i.am, i1 false), !dbg !21510, !alias.scope !21395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21511
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21512
  %i.ao = load i64, ptr %i.an, align 8, !dbg !21512, !noundef !982
    #dbg_value(i64 %i.ao, !21396, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21399)
    #dbg_value(ptr %i.d, !21396, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21399)
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !21513
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !21514
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !21514, !noundef !982
    #dbg_value(i64 %i.ar, !21396, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21401)
    #dbg_value(i64 %i.ar, !21396, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21401)
    #dbg_value(ptr poison, !21396, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21401)
    #dbg_value(ptr poison, !21396, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21401)
  %i.as = icmp eq i64 %i.ar, 0, !dbg !21515       ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g, !dbg !21513

bb.f:                                             ; preds = %bb.e
  br i1 %i.as, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit124, label %bb.h, !dbg !21515, !prof !2137

bb.g:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.h, label %bb.i, !dbg !21515, !prof !2027

end_hunk_0
begin_hunk_1_@_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE16bulk_steal_rightB1p_:bb.a
  store i16 %i.bk, ptr %i.bl, align 8, !dbg !21539
    #dbg_value(ptr undef, !2262, !DIExpression(), !21447)
    #dbg_value(ptr undef, !2278, !DIExpression(), !21448)
    #dbg_value(ptr undef, !2283, !DIExpression(), !21449)
    #dbg_value(ptr undef, !2288, !DIExpression(), !21449)
  %exitcond.not.i = icmp eq i64 %1, 1, !dbg !21540
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader, label %bb.j, !dbg !21541

bb.j:                                             ; preds = %bb.i
  %i.bm = add nuw nsw i64 %i.g, 2, !dbg !21542    ; 2 uses
    #dbg_value(i64 %i.bm, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.bm, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.bm, !2280, !DIExpression(), !21450)
    #dbg_value(i64 %i.bm, !2290, !DIExpression(), !21451)
    #dbg_value(i64 %i.bm, !2297, !DIExpression(), !21452)
    #dbg_value(i64 1, !2294, !DIExpression(), !21451)
    #dbg_value(i64 1, !2301, !DIExpression(), !21452)
    #dbg_value(i64 %i.g, !2257, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.bm, !2258, !DIExpression(), !21453)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !21454)
    #dbg_value(ptr %i.d, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21455)
    #dbg_value(ptr %i.d, !2313, !DIExpression(), !21456)
    #dbg_value(ptr %i.d, !2308, !DIExpression(), !21457)
    #dbg_value(ptr %i.d, !2316, !DIExpression(), !21458)
    #dbg_value(i64 %i.bm, !2309, !DIExpression(), !21459)
    #dbg_value(i64 %i.bm, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21455)
    #dbg_value(i64 %i.bm, !2323, !DIExpression(), !21460)
    #dbg_value(i64 %i.bm, !2326, !DIExpression(), !21461)
    #dbg_value(i64 %i.bm, !2321, !DIExpression(), !21458)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21455)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21460)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21461)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21460)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21461)
  %i.bn = icmp samesign ult i16 %i.f, 10, !dbg !21533
  tail call void @llvm.assume(i1 %i.bn), !dbg !21534
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bm, !dbg !21535
    #dbg_value(ptr %i.bo, !2329, !DIExpression(), !21462)
    #dbg_value(ptr %i.bo, !2331, !DIExpression(), !21463)
    #dbg_value(ptr %i.bo, !2333, !DIExpression(), !21464)
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !21536, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bp, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21465)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21465)
    #dbg_value(ptr poison, !2320, !DIExpression(), !21466)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1056, !dbg !21537
  store ptr %i.d, ptr %i.bq, align 8, !dbg !21537
  %i.br = trunc nuw nsw i64 %i.bm to i16, !dbg !21538
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1152, !dbg !21539
  store i16 %i.br, ptr %i.bs, align 8, !dbg !21539
    #dbg_value(ptr undef, !2262, !DIExpression(), !21447)
    #dbg_value(ptr undef, !2278, !DIExpression(), !21448)
    #dbg_value(ptr undef, !2283, !DIExpression(), !21449)
    #dbg_value(ptr undef, !2288, !DIExpression(), !21449)
  %exitcond.not.i.1 = icmp eq i64 %1, 2, !dbg !21540
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader, label %bb.k, !dbg !21541

bb.k:                                             ; preds = %bb.j
  %i.bt = add nuw nsw i64 %i.g, 3, !dbg !21542    ; 2 uses
    #dbg_value(i64 %i.bt, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.bt, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.bt, !2280, !DIExpression(), !21450)
    #dbg_value(i64 %i.bt, !2290, !DIExpression(), !21451)
    #dbg_value(i64 %i.bt, !2297, !DIExpression(), !21452)
    #dbg_value(i64 1, !2294, !DIExpression(), !21451)
    #dbg_value(i64 1, !2301, !DIExpression(), !21452)
    #dbg_value(i64 %i.g, !2257, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.bt, !2258, !DIExpression(), !21453)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !21454)
    #dbg_value(ptr %i.d, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21455)
    #dbg_value(ptr %i.d, !2313, !DIExpression(), !21456)
    #dbg_value(ptr %i.d, !2308, !DIExpression(), !21457)
    #dbg_value(ptr %i.d, !2316, !DIExpression(), !21458)
    #dbg_value(i64 %i.bt, !2309, !DIExpression(), !21459)
    #dbg_value(i64 %i.bt, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21455)
    #dbg_value(i64 %i.bt, !2323, !DIExpression(), !21460)
    #dbg_value(i64 %i.bt, !2326, !DIExpression(), !21461)
    #dbg_value(i64 %i.bt, !2321, !DIExpression(), !21458)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21455)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21460)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21461)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21460)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21461)
  %i.bu = icmp samesign ult i16 %i.f, 9, !dbg !21533
  tail call void @llvm.assume(i1 %i.bu), !dbg !21534
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bt, !dbg !21535
    #dbg_value(ptr %i.bv, !2329, !DIExpression(), !21462)
    #dbg_value(ptr %i.bv, !2331, !DIExpression(), !21463)
    #dbg_value(ptr %i.bv, !2333, !DIExpression(), !21464)
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !21536, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bw, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21465)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21465)
    #dbg_value(ptr poison, !2320, !DIExpression(), !21466)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1056, !dbg !21537
  store ptr %i.d, ptr %i.bx, align 8, !dbg !21537
  %i.by = trunc nuw nsw i64 %i.bt to i16, !dbg !21538
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1152, !dbg !21539
  store i16 %i.by, ptr %i.bz, align 8, !dbg !21539
    #dbg_value(ptr undef, !2262, !DIExpression(), !21447)
    #dbg_value(ptr undef, !2278, !DIExpression(), !21448)
    #dbg_value(ptr undef, !2283, !DIExpression(), !21449)
    #dbg_value(ptr undef, !2288, !DIExpression(), !21449)
  %exitcond.not.i.2 = icmp eq i64 %1, 3, !dbg !21540
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader, label %bb.l, !dbg !21541

bb.l:                                             ; preds = %bb.k
  %i.ca = add nuw nsw i64 %i.g, 4, !dbg !21542    ; 2 uses
    #dbg_value(i64 %i.ca, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.ca, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.ca, !2280, !DIExpression(), !21450)
    #dbg_value(i64 %i.ca, !2290, !DIExpression(), !21451)
    #dbg_value(i64 %i.ca, !2297, !DIExpression(), !21452)
    #dbg_value(i64 1, !2294, !DIExpression(), !21451)
    #dbg_value(i64 1, !2301, !DIExpression(), !21452)
    #dbg_value(i64 %i.g, !2257, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.ca, !2258, !DIExpression(), !21453)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !21454)
    #dbg_value(ptr %i.d, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21455)
    #dbg_value(ptr %i.d, !2313, !DIExpression(), !21456)
    #dbg_value(ptr %i.d, !2308, !DIExpression(), !21457)
    #dbg_value(ptr %i.d, !2316, !DIExpression(), !21458)
    #dbg_value(i64 %i.ca, !2309, !DIExpression(), !21459)
    #dbg_value(i64 %i.ca, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21455)
    #dbg_value(i64 %i.ca, !2323, !DIExpression(), !21460)
    #dbg_value(i64 %i.ca, !2326, !DIExpression(), !21461)
    #dbg_value(i64 %i.ca, !2321, !DIExpression(), !21458)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21455)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21460)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21461)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21460)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21461)
  %i.cb = icmp samesign ult i16 %i.f, 8, !dbg !21533
  tail call void @llvm.assume(i1 %i.cb), !dbg !21534
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ca, !dbg !21535
    #dbg_value(ptr %i.cc, !2329, !DIExpression(), !21462)
    #dbg_value(ptr %i.cc, !2331, !DIExpression(), !21463)
    #dbg_value(ptr %i.cc, !2333, !DIExpression(), !21464)
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !21536, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cd, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21465)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21465)
    #dbg_value(ptr poison, !2320, !DIExpression(), !21466)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1056, !dbg !21537
  store ptr %i.d, ptr %i.ce, align 8, !dbg !21537
  %i.cf = trunc nuw nsw i64 %i.ca to i16, !dbg !21538
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1152, !dbg !21539
  store i16 %i.cf, ptr %i.cg, align 8, !dbg !21539
    #dbg_value(ptr undef, !2262, !DIExpression(), !21447)
    #dbg_value(ptr undef, !2278, !DIExpression(), !21448)
    #dbg_value(ptr undef, !2283, !DIExpression(), !21449)
    #dbg_value(ptr undef, !2288, !DIExpression(), !21449)
  %exitcond.not.i.3 = icmp eq i64 %1, 4, !dbg !21540
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader, label %bb.m, !dbg !21541

bb.m:                                             ; preds = %bb.l
  %i.ch = add nuw nsw i64 %i.g, 5, !dbg !21542    ; 2 uses
    #dbg_value(i64 %i.ch, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.ch, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.ch, !2280, !DIExpression(), !21450)
    #dbg_value(i64 %i.ch, !2290, !DIExpression(), !21451)
    #dbg_value(i64 %i.ch, !2297, !DIExpression(), !21452)
    #dbg_value(i64 1, !2294, !DIExpression(), !21451)
    #dbg_value(i64 1, !2301, !DIExpression(), !21452)
    #dbg_value(i64 %i.g, !2257, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 %i.ch, !2258, !DIExpression(), !21453)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !21454)
    #dbg_value(ptr %i.d, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21455)
    #dbg_value(ptr %i.d, !2313, !DIExpression(), !21456)
    #dbg_value(ptr %i.d, !2308, !DIExpression(), !21457)
    #dbg_value(ptr %i.d, !2316, !DIExpression(), !21458)
    #dbg_value(i64 %i.ch, !2309, !DIExpression(), !21459)
    #dbg_value(i64 %i.ch, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21455)
    #dbg_value(i64 %i.ch, !2323, !DIExpression(), !21460)
    #dbg_value(i64 %i.ch, !2326, !DIExpression(), !21461)
    #dbg_value(i64 %i.ch, !2321, !DIExpression(), !21458)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21455)
    #dbg_value(ptr %i.bb, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21460)
    #dbg_value(ptr %i.bb, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21461)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21460)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21461)
  %i.ci = icmp ne i16 %i.f, 7, !dbg !21533
  tail call void @llvm.assume(i1 %i.ci), !dbg !21534
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ch, !dbg !21535
    #dbg_value(ptr %i.cj, !2329, !DIExpression(), !21462)
    #dbg_value(ptr %i.cj, !2331, !DIExpression(), !21463)
    #dbg_value(ptr %i.cj, !2333, !DIExpression(), !21464)
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !21536, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.ck, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21465)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21465)
    #dbg_value(ptr poison, !2320, !DIExpression(), !21466)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1056, !dbg !21537
  store ptr %i.d, ptr %i.cl, align 8, !dbg !21537
  %i.cm = trunc nuw nsw i64 %i.ch to i16, !dbg !21538
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1152, !dbg !21539
  store i16 %i.cm, ptr %i.cn, align 8, !dbg !21539
    #dbg_value(ptr undef, !2262, !DIExpression(), !21447)
    #dbg_value(ptr undef, !2278, !DIExpression(), !21448)
    #dbg_value(ptr undef, !2283, !DIExpression(), !21449)
    #dbg_value(ptr undef, !2288, !DIExpression(), !21449)
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader, !dbg !21541

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.co = add nuw nsw i64 %i.l, 1, !dbg !21516
  %2 = sub nsw i64 %i.co, %1, !dbg !21516         ; 2 uses
  %xtraiter = and i64 %2, 3, !dbg !21516          ; 3 uses
  %i.cp = icmp samesign ult i64 %i.o, 3, !dbg !21516
  br i1 %i.cp, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.epil.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader.new, !dbg !21516

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader
  %unroll_iter = and i64 %2, -4, !dbg !21516
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit, !dbg !21516

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader.new
  %.sroa.0.06.i122 = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader.new ], [ %i.di, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit ]
    #dbg_value(i64 %.sroa.0.06.i122, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21402)
    #dbg_value(i64 %.sroa.0.06.i122, !2280, !DIExpression(), !21403)
    #dbg_value(i64 %.sroa.0.06.i122, !2290, !DIExpression(), !21404)
    #dbg_value(i64 %.sroa.0.06.i122, !2297, !DIExpression(), !21405)
    #dbg_value(i64 1, !2294, !DIExpression(), !21404)
    #dbg_value(i64 1, !2301, !DIExpression(), !21405)
  %i.cq = or disjoint i64 %.sroa.0.06.i122, 1, !dbg !21517 ; 2 uses
    #dbg_value(i64 %i.cq, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21402)
    #dbg_value(i64 %.sroa.0.06.i122, !2258, !DIExpression(), !21406)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !21407)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21408)
    #dbg_value(ptr %i.i, !2313, !DIExpression(), !21409)
    #dbg_value(ptr %i.i, !2308, !DIExpression(), !21410)
    #dbg_value(ptr %i.i, !2316, !DIExpression(), !21411)
    #dbg_value(i64 %.sroa.0.06.i122, !2309, !DIExpression(), !21412)
    #dbg_value(i64 %.sroa.0.06.i122, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21408)
    #dbg_value(i64 %.sroa.0.06.i122, !2323, !DIExpression(), !21413)
    #dbg_value(i64 %.sroa.0.06.i122, !2326, !DIExpression(), !21414)
    #dbg_value(i64 %.sroa.0.06.i122, !2321, !DIExpression(), !21411)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21408)
    #dbg_value(ptr %i.ba, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21413)
    #dbg_value(ptr %i.ba, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21414)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21413)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21414)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i122, !dbg !21520
    #dbg_value(ptr %i.cr, !2329, !DIExpression(), !21415)
    #dbg_value(ptr %i.cr, !2331, !DIExpression(), !21416)
    #dbg_value(ptr %i.cr, !2333, !DIExpression(), !21417)
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !21521, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cs, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21418)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21418)
    #dbg_value(ptr poison, !2320, !DIExpression(), !21419)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1056, !dbg !21522
  store ptr %i.i, ptr %i.ct, align 8, !dbg !21522
  %i.cu = trunc nuw nsw i64 %.sroa.0.06.i122 to i16, !dbg !21523
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 1152, !dbg !21524
  store i16 %i.cu, ptr %i.cv, align 8, !dbg !21524
    #dbg_value(ptr undef, !2262, !DIExpression(), !21420)
    #dbg_value(ptr undef, !2278, !DIExpression(), !21421)
    #dbg_value(ptr undef, !2283, !DIExpression(), !21422)
    #dbg_value(ptr undef, !2288, !DIExpression(), !21422)
    #dbg_value(i64 %i.cq, !2280, !DIExpression(), !21403)
    #dbg_value(i64 %i.cq, !2290, !DIExpression(), !21404)
    #dbg_value(i64 %i.cq, !2297, !DIExpression(), !21405)
  %i.cw = or disjoint i64 %.sroa.0.06.i122, 2, !dbg !21517 ; 2 uses
    #dbg_value(i64 %i.cw, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21402)
    #dbg_value(i64 %i.cq, !2258, !DIExpression(), !21406)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !21407)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21408)
    #dbg_value(i64 %i.cq, !2309, !DIExpression(), !21412)
    #dbg_value(i64 %i.cq, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21408)
    #dbg_value(i64 %i.cq, !2323, !DIExpression(), !21413)
    #dbg_value(i64 %i.cq, !2326, !DIExpression(), !21414)
    #dbg_value(i64 %i.cq, !2321, !DIExpression(), !21411)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21408)
    #dbg_value(ptr %i.ba, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21413)
    #dbg_value(ptr %i.ba, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21414)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21413)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21414)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cq, !dbg !21520
    #dbg_value(ptr %i.cx, !2329, !DIExpression(), !21415)
    #dbg_value(ptr %i.cx, !2331, !DIExpression(), !21416)
    #dbg_value(ptr %i.cx, !2333, !DIExpression(), !21417)
  %i.cy = load ptr, ptr %i.cx, align 8, !dbg !21521, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cy, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21418)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21418)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1056, !dbg !21522
  store ptr %i.i, ptr %i.cz, align 8, !dbg !21522
  %i.da = trunc nuw nsw i64 %i.cq to i16, !dbg !21523
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1152, !dbg !21524
  store i16 %i.da, ptr %i.db, align 8, !dbg !21524
    #dbg_value(i64 %i.cw, !2280, !DIExpression(), !21403)
    #dbg_value(i64 %i.cw, !2290, !DIExpression(), !21404)
    #dbg_value(i64 %i.cw, !2297, !DIExpression(), !21405)
  %i.dc = or disjoint i64 %.sroa.0.06.i122, 3, !dbg !21517 ; 2 uses
    #dbg_value(i64 %.sroa.0.06.i122, !2257, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21402)
    #dbg_value(i64 %i.cw, !2258, !DIExpression(), !21406)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !21407)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21408)
    #dbg_value(i64 %i.cw, !2309, !DIExpression(), !21412)
    #dbg_value(i64 %i.cw, !2312, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21408)
    #dbg_value(i64 %i.cw, !2323, !DIExpression(), !21413)
    #dbg_value(i64 %i.cw, !2326, !DIExpression(), !21414)
    #dbg_value(i64 %i.cw, !2321, !DIExpression(), !21411)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21408)
    #dbg_value(ptr %i.ba, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21413)
    #dbg_value(ptr %i.ba, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21414)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21413)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21414)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cw, !dbg !21520
    #dbg_value(ptr %i.dd, !2329, !DIExpression(), !21415)
    #dbg_value(ptr %i.dd, !2331, !DIExpression(), !21416)
    #dbg_value(ptr %i.dd, !2333, !DIExpression(), !21417)
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !21521, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.de, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21418)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21418)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1056, !dbg !21522
  store ptr %i.i, ptr %i.df, align 8, !dbg !21522
  %i.dg = trunc nuw nsw i64 %i.cw to i16, !dbg !21523
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1152, !dbg !21524
  store i16 %i.dg, ptr %i.dh, align 8, !dbg !21524
    #dbg_value(i64 %.sroa.0.06.i122, !2280, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !21403)
    #dbg_value(i64 %.sroa.0.06.i122, !2290, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !21404)
    #dbg_value(i64 %.sroa.0.06.i122, !2297, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !21405)
  %i.di = add nuw nsw i64 %.sroa.0.06.i122, 4, !dbg !21517 ; 2 uses
    #dbg_value(i64 %i.di, !2257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21402)
    #dbg_value(i64 %.sroa.0.06.i122, !2258, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !21406)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !21407)
    #dbg_value(ptr %i.i, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21408)
    #dbg_value(i64 %.sroa.0.06.i122, !2309, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !21412)
    #dbg_value(i64 %.sroa.0.06.i122, !2312, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !21408)
    #dbg_value(i64 %.sroa.0.06.i122, !2323, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !21413)
    #dbg_value(i64 %.sroa.0.06.i122, !2326, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !21414)
    #dbg_value(i64 %.sroa.0.06.i122, !2321, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !21411)
    #dbg_value(i64 poison, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21408)
    #dbg_value(ptr %i.ba, !2324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21413)
    #dbg_value(ptr %i.ba, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21414)
    #dbg_value(i64 12, !2324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21413)
    #dbg_value(i64 12, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21414)
  %i.dj = icmp samesign ult i64 %.sroa.0.06.i122, 12, !dbg !21518
  tail call void @llvm.assume(i1 %i.dj), !dbg !21519
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.dc, !dbg !21520
    #dbg_value(ptr %i.dk, !2329, !DIExpression(), !21415)
    #dbg_value(ptr %i.dk, !2331, !DIExpression(), !21416)
    #dbg_value(ptr %i.dk, !2333, !DIExpression(), !21417)
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !21521, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.dl, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21418)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21418)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1056, !dbg !21522
  store ptr %i.i, ptr %i.dm, align 8, !dbg !21522
  %i.dn = trunc nuw nsw i64 %i.dc to i16, !dbg !21523
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1152, !dbg !21524
  store i16 %i.dn, ptr %i.do, align 8, !dbg !21524
  %niter.next.3 = add nuw nsw i64 %niter, 4, !dbg !21516 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !21516
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit124.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1x_.exit, !dbg !21516
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextyyE15bulk_steal_leftCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21553 {
bb.a:
    #dbg_value(ptr poison, !21668, !DIExpression(), !21672)
    #dbg_value(ptr poison, !21668, !DIExpression(), !21674)
    #dbg_value(ptr %0, !21653, !DIExpression(), !21675)
    #dbg_value(i64 %1, !21654, !DIExpression(), !21675)
    #dbg_value(i64 %1, !21669, !DIExpression(), !21676)
    #dbg_value(i64 %1, !21677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21689)
    #dbg_value(i64 %1, !21696, !DIExpression(), !21703)
    #dbg_value(i64 0, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21717)
    #dbg_value(i64 0, !21727, !DIExpression(), !21733)
    #dbg_value(i64 0, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21740)
    #dbg_value(i64 0, !21727, !DIExpression(), !21746)
    #dbg_value(i64 0, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21754)
    #dbg_value(i64 0, !21727, !DIExpression(), !21757)
    #dbg_value(i64 0, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21765)
    #dbg_value(i64 0, !21727, !DIExpression(), !21768)
    #dbg_value(i64 0, !21677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(i64 0, !21698, !DIExpression(), !21777)
    #dbg_value(i64 0, !21677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21689)
    #dbg_value(i64 0, !21698, !DIExpression(), !21703)
    #dbg_value(ptr %0, !21655, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21778)
    #dbg_value(ptr %0, !21779, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21782)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21786)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21790)
    #dbg_value(ptr %0, !21795, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21799)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21804)
    #dbg_value(ptr %0, !21805, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21809)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21814)
    #dbg_value(ptr %0, !21815, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21819)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21824)
    #dbg_value(ptr %0, !21825, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21829)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21834)
    #dbg_value(ptr %0, !21835, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21838)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22078
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22078, !nonnull !982, !noundef !982 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 186, !dbg !22079 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !dbg !22079, !noundef !982
  %i.e = zext i16 %i.d to i64, !dbg !22080        ; 3 uses
    #dbg_value(i64 %i.e, !21656, !DIExpression(), !21840)
    #dbg_value(i64 %i.e, !21796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21841)
    #dbg_value(i64 %i.e, !21842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21846)
    #dbg_value(i64 %i.e, !21704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21849)
    #dbg_value(i64 %i.e, !21806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21850)
    #dbg_value(i64 %i.e, !21842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21852)
    #dbg_value(i64 %i.e, !21704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21855)
    #dbg_value(ptr %0, !21657, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21856)
    #dbg_value(ptr %0, !21779, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21858)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21861)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21867)
    #dbg_value(ptr %0, !21718, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21868)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21872)
    #dbg_value(ptr %0, !21741, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21873)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21877)
    #dbg_value(ptr %0, !21718, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21878)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21882)
    #dbg_value(ptr %0, !21741, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21883)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21887)
    #dbg_value(ptr %0, !21815, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21889)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21894)
    #dbg_value(ptr %0, !21825, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21896)
    #dbg_value(ptr %0, !21783, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21901)
    #dbg_value(ptr %0, !21835, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !21903)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22081
  %i.g = load ptr, ptr %i.f, align 8, !dbg !22081, !nonnull !982, !noundef !982 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 186, !dbg !22082 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !dbg !22082, !noundef !982
  %i.j = zext i16 %i.i to i64, !dbg !22083        ; 3 uses
    #dbg_value(i64 %i.j, !21658, !DIExpression(), !21905)
  %i.k = add nuw nsw i64 %1, %i.j, !dbg !22084    ; 3 uses
    #dbg_value(i64 %i.k, !21660, !DIExpression(), !21906)
    #dbg_value(i64 %i.k, !21719, !DIExpression(), !21907)
    #dbg_value(i64 %i.k, !21704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21717)
    #dbg_value(i64 %i.k, !21729, !DIExpression(), !21733)
    #dbg_value(i64 %i.k, !21742, !DIExpression(), !21908)
    #dbg_value(i64 %i.k, !21704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21740)
    #dbg_value(i64 %i.k, !21729, !DIExpression(), !21746)
  %i.l = icmp samesign ult i64 %i.k, 12, !dbg !22084
  br i1 %i.l, label %bb.c, label %bb.b, !dbg !22084, !prof !2137

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #21, !dbg !22085
  unreachable, !dbg !22085

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.e, !dbg !22086
  br i1 %.not, label %bb.d, label %bb.e, !dbg !22086, !prof !2027

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21, !dbg !22087
  unreachable, !dbg !22087

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.e, %1, !dbg !22088    ; 4 uses
    #dbg_value(i64 %i.m, !21659, !DIExpression(), !21909)
    #dbg_value(i64 %i.m, !21816, !DIExpression(), !21910)
    #dbg_value(i64 %i.m, !21911, !DIExpression(), !21915)
    #dbg_value(i64 %i.m, !21916, !DIExpression(), !21921)
    #dbg_value(i64 %i.m, !21826, !DIExpression(), !21922)
    #dbg_value(i64 %i.m, !21911, !DIExpression(), !21924)
    #dbg_value(i64 %i.m, !21916, !DIExpression(), !21927)
  %i.n = trunc nuw i64 %i.m to i16, !dbg !22089
  store i16 %i.n, ptr %i.c, align 2, !dbg !22089
  %i.o = trunc nuw nsw i64 %i.k to i16, !dbg !22090
  store i16 %i.o, ptr %i.h, align 2, !dbg !22090
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !22091 ; 3 uses
    #dbg_value(ptr %i.p, !21705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21717)
    #dbg_value(ptr %i.p, !21728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21733)
    #dbg_value(i64 11, !21705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21717)
    #dbg_value(i64 11, !21728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21733)
    #dbg_value(ptr %i.p, !4188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21928)
    #dbg_value(i64 %i.k, !4188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21928)
    #dbg_value(i64 %1, !4191, !DIExpression(), !21928)
    #dbg_value(i64 %1, !4194, !DIExpression(), !21929)
    #dbg_value(ptr %i.p, !4192, !DIExpression(), !21930)
    #dbg_value(ptr %i.p, !4195, !DIExpression(), !21929)
    #dbg_value(ptr %i.p, !4197, !DIExpression(), !21931)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %1, !dbg !22092
    #dbg_value(ptr %i.q, !4198, !DIExpression(), !21931)
    #dbg_value(i64 %i.j, !4199, !DIExpression(), !21931)
  %i.r = shl nuw nsw i64 %i.j, 3, !dbg !22093     ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.p, i64 %i.r, i1 false), !dbg !22093, !alias.scope !21932
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96, !dbg !22094 ; 4 uses
    #dbg_value(ptr %i.s, !21705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21740)
    #dbg_value(ptr %i.s, !21728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21746)
    #dbg_value(i64 11, !21705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21740)
    #dbg_value(i64 11, !21728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21746)
    #dbg_value(ptr %i.s, !4188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21933)
    #dbg_value(i64 %i.k, !4188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21933)
    #dbg_value(i64 %1, !4191, !DIExpression(), !21933)
    #dbg_value(i64 %1, !4194, !DIExpression(), !21934)
    #dbg_value(ptr %i.s, !4192, !DIExpression(), !21935)
    #dbg_value(ptr %i.s, !4195, !DIExpression(), !21934)
    #dbg_value(ptr %i.s, !4197, !DIExpression(), !21936)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %1, !dbg !22095
    #dbg_value(ptr %i.t, !4198, !DIExpression(), !21936)
    #dbg_value(i64 %i.j, !4199, !DIExpression(), !21936)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !dbg !22096, !alias.scope !21937
  %i.u = add nuw nsw i64 %i.m, 1, !dbg !22097     ; 4 uses
    #dbg_value(i64 %i.u, !21796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21841)
    #dbg_value(i64 %i.u, !21842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21846)
    #dbg_value(i64 %i.u, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21849)
    #dbg_value(i64 %i.u, !21730, !DIExpression(), !21940)
    #dbg_value(i64 %i.u, !21806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21850)
    #dbg_value(i64 %i.u, !21842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21852)
    #dbg_value(i64 %i.u, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21855)
    #dbg_value(i64 %i.u, !21730, !DIExpression(), !21943)
    #dbg_value(i64 %i.u, !21944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21948)
    #dbg_value(i64 %i.u, !21949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21954)
    #dbg_value(i64 %i.u, !21677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21957)
    #dbg_value(i64 %i.u, !21699, !DIExpression(), !21960)
    #dbg_value(ptr %i.b, !21843, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21846)
    #dbg_value(i64 11, !21843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21846)
    #dbg_value(ptr %i.b, !21705, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21849)
    #dbg_value(ptr %i.b, !21728, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21940)
    #dbg_value(i64 11, !21705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21849)
    #dbg_value(i64 11, !21728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21940)
  %i.v = sub nuw nsw i64 %i.e, %i.u, !dbg !22098  ; 3 uses
    #dbg_value(i64 %i.v, !21708, !DIExpression(), !21961)
    #dbg_value(i64 %i.v, !21729, !DIExpression(), !21940)
    #dbg_value(i64 %i.v, !21710, !DIExpression(), !21962)
    #dbg_value(i64 %i.v, !21729, !DIExpression(), !21943)
  %i.w = add nsw i64 %1, -1, !dbg !22099
    #dbg_value(i64 %i.w, !21719, !DIExpression(), !21963)
    #dbg_value(i64 %i.w, !21704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21754)
    #dbg_value(i64 %i.w, !21729, !DIExpression(), !21757)
    #dbg_value(i64 %i.w, !21742, !DIExpression(), !21964)
    #dbg_value(i64 %i.w, !21704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21765)
    #dbg_value(i64 %i.w, !21729, !DIExpression(), !21768)
    #dbg_value(i64 %i.w, !21816, !DIExpression(), !21965)
    #dbg_value(i64 %i.w, !21911, !DIExpression(), !21967)
    #dbg_value(i64 %i.w, !21916, !DIExpression(), !21970)
    #dbg_value(i64 %i.w, !21826, !DIExpression(), !21971)
    #dbg_value(i64 %i.w, !21911, !DIExpression(), !21973)
    #dbg_value(i64 %i.w, !21916, !DIExpression(), !21976)
    #dbg_value(ptr %i.p, !21705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21754)
    #dbg_value(ptr %i.p, !21728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21757)
    #dbg_value(i64 11, !21705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21754)
    #dbg_value(i64 11, !21728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21977), !dbg !22100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21978), !dbg !22100
    #dbg_value(!DIArgList(ptr %i.b, i64 %i.u), !2177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 8, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21980)
    #dbg_value(i64 %i.v, !2177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21980)
    #dbg_value(ptr %i.p, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21980)
    #dbg_value(i64 %i.w, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21980)
    #dbg_value(i64 %i.v, !2182, !DIExpression(), !21981)
  %i.x = icmp eq i64 %i.v, %i.w, !dbg !22101
  br i1 %i.x, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceyECshovLROGBtMy_11quinn_proto.exit123, label %bb.f, !dbg !22101, !prof !2137

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21, !dbg !22102, !noalias !21982
  unreachable, !dbg !22102

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceyECshovLROGBtMy_11quinn_proto.exit123: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22103 ; 2 uses
    #dbg_value(ptr %i.y, !21705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21849)
    #dbg_value(ptr %i.y, !21728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21940)
    #dbg_value(ptr %i.y, !21843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21846)
    #dbg_value(!DIArgList(ptr %i.y, i64 %i.u), !2177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21980)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.u, !dbg !22104
    #dbg_value(ptr %i.z, !2177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21980)
    #dbg_value(ptr %i.z, !2183, !DIExpression(), !21981)
    #dbg_value(ptr %i.p, !2184, !DIExpression(), !21981)
  %i.aa = shl nuw nsw i64 %i.v, 3, !dbg !22105    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull readonly align 8 %i.z, i64 %i.aa, i1 false), !dbg !22105, !alias.scope !21982
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !22106 ; 2 uses
    #dbg_value(ptr %i.ab, !21843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21852)
    #dbg_value(i64 11, !21843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21852)
    #dbg_value(ptr %i.ab, !21705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21855)
    #dbg_value(ptr %i.ab, !21728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21943)
    #dbg_value(i64 11, !21705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21855)
    #dbg_value(i64 11, !21728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21943)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.u, !dbg !22107
    #dbg_value(ptr %i.s, !21705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21765)
    #dbg_value(ptr %i.s, !21728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21768)
    #dbg_value(i64 11, !21705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21765)
    #dbg_value(i64 11, !21728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21768)
    #dbg_value(ptr %i.ac, !2177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21983)
    #dbg_value(i64 %i.v, !2177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21983)
    #dbg_value(ptr %i.s, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21983)
    #dbg_value(i64 %i.w, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21983)
    #dbg_value(i64 %i.v, !2182, !DIExpression(), !21984)
    #dbg_value(ptr %i.ac, !2183, !DIExpression(), !21984)
    #dbg_value(ptr %i.s, !2184, !DIExpression(), !21984)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ac, i64 %i.aa, i1 false), !dbg !22108, !alias.scope !21985
    #dbg_value(ptr %i.y, !21912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21915)
    #dbg_value(i64 11, !21912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21915)
    #dbg_value(ptr %i.y, !21917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21921)
    #dbg_value(i64 11, !21917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21921)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.m, !dbg !22109
    #dbg_value(ptr %i.ad, !21986, !DIExpression(), !21989)
    #dbg_value(ptr %i.ad, !21990, !DIExpression(), !21993)
    #dbg_value(ptr %i.ad, !21994, !DIExpression(), !21997)
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !22110, !noundef !982
    #dbg_value(i64 %i.ae, !21661, !DIExpression(), !21998)
    #dbg_value(ptr %i.ab, !21912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21924)
    #dbg_value(i64 11, !21912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21924)
    #dbg_value(ptr %i.ab, !21917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21927)
    #dbg_value(i64 11, !21917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21927)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.m, !dbg !22111
    #dbg_value(ptr %i.af, !21986, !DIExpression(), !22000)
    #dbg_value(ptr %i.af, !21990, !DIExpression(), !22003)
    #dbg_value(ptr %i.af, !21994, !DIExpression(), !22006)
  %i.ag = load i64, ptr %i.af, align 8, !dbg !22112, !noundef !982
    #dbg_value(i64 %i.ag, !21662, !DIExpression(), !22007)
  %.val = load ptr, ptr %0, align 8, !dbg !22113, !nonnull !982, !noundef !982 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22113
  %.val120 = load i64, ptr %i.ah, align 8, !dbg !22113, !noundef !982 ; 2 uses
    #dbg_value(ptr poison, !4276, !DIExpression(), !22008)
    #dbg_value(i64 %i.ae, !4281, !DIExpression(), !22008)
    #dbg_value(i64 %i.ag, !4282, !DIExpression(), !22008)
    #dbg_value(ptr poison, !4286, !DIExpression(), !22009)
    #dbg_value(ptr %.val, !4291, !DIExpression(), !22010)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !22114
    #dbg_value(ptr %i.ai, !4295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22011)
    #dbg_value(i64 11, !4295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22011)
    #dbg_value(i64 %.val120, !4296, !DIExpression(), !22011)
    #dbg_value(i64 %.val120, !4298, !DIExpression(), !22012)
    #dbg_value(ptr %i.ai, !4299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22012)
    #dbg_value(i64 11, !4299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22012)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.val120, !dbg !22115 ; 2 uses
    #dbg_value(ptr %i.aj, !4292, !DIExpression(), !22013)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 96, !dbg !22116
    #dbg_value(ptr %i.ak, !4295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22014)
    #dbg_value(i64 11, !4295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22014)
    #dbg_value(i64 %.val120, !4296, !DIExpression(), !22014)
    #dbg_value(i64 %.val120, !4298, !DIExpression(), !22015)
    #dbg_value(ptr %i.ak, !4299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22015)
    #dbg_value(i64 11, !4299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22015)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.val120, !dbg !22117 ; 2 uses
    #dbg_value(ptr %i.aj, !4283, !DIExpression(), !22016)
    #dbg_value(ptr %i.aj, !4302, !DIExpression(), !22017)
    #dbg_value(ptr %i.al, !4284, !DIExpression(), !22016)
    #dbg_value(ptr %i.al, !4302, !DIExpression(), !22018)
    #dbg_value(i64 %i.ae, !4303, !DIExpression(), !22017)
  %i.am = load i64, ptr %i.aj, align 8, !dbg !22118, !noundef !982
  store i64 %i.ae, ptr %i.aj, align 8, !dbg !22119
    #dbg_value(i64 %i.ag, !4303, !DIExpression(), !22018)
  %i.an = load i64, ptr %i.al, align 8, !dbg !22120, !noundef !982
  store i64 %i.ag, ptr %i.al, align 8, !dbg !22121
    #dbg_value(i64 %i.am, !21663, !DIExpression(), !22019)
    #dbg_value(i64 %i.am, !22020, !DIExpression(), !22024)
    #dbg_value(i64 %i.an, !21664, !DIExpression(), !22019)
    #dbg_value(i64 %i.an, !22020, !DIExpression(), !22026)
    #dbg_value(ptr %i.g, !21912, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21967)
    #dbg_value(i64 11, !21912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21967)
    #dbg_value(ptr %i.g, !21917, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21970)
    #dbg_value(i64 11, !21917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21970)
  %i.ao = getelementptr [8 x i8], ptr %i.g, i64 %1, !dbg !22122
    #dbg_value(ptr %i.ao, !22021, !DIExpression(), !22024)
  store i64 %i.am, ptr %i.ao, align 8, !dbg !22123
    #dbg_value(ptr %i.s, !21912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21973)
    #dbg_value(i64 11, !21912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21973)
    #dbg_value(ptr %i.s, !21917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21976)
    #dbg_value(i64 11, !21917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21976)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v, !dbg !22124
    #dbg_value(ptr %i.ap, !22021, !DIExpression(), !22026)
  store i64 %i.an, ptr %i.ap, align 8, !dbg !22125
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22126
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !22126, !noundef !982
    #dbg_value(i64 %i.ar, !22027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22030)
    #dbg_value(ptr %i.b, !22027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22030)
  %i.as = icmp eq i64 %i.ar, 0, !dbg !22127
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22128
  %i.au = load i64, ptr %i.at, align 8, !dbg !22128, !noundef !982
    #dbg_value(i64 %i.au, !22027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22032)
    #dbg_value(i64 %i.au, !22027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22032)
    #dbg_value(ptr poison, !22027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22032)
    #dbg_value(ptr poison, !22027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22032)
  %i.av = icmp eq i64 %i.au, 0, !dbg !22129       ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.h, !dbg !22127

bb.g:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceyECshovLROGBtMy_11quinn_proto.exit123
  br i1 %i.av, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit, label %bb.j, !dbg !22129, !prof !2137

bb.h:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceyECshovLROGBtMy_11quinn_proto.exit123
  br i1 %i.av, label %bb.j, label %bb.k, !dbg !22129, !prof !2027

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22130
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit, label %.epil.preheader, !dbg !22130

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0, !dbg !22130
  tail call void @llvm.assume(i1 %lcmp.mod127), !dbg !22130
  br label %bb.i, !dbg !22130

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aw, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
    #dbg_value(i64 %.sroa.0.06.i.epil, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22033)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2280, !DIExpression(), !22034)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2290, !DIExpression(), !22035)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2297, !DIExpression(), !22036)
    #dbg_value(i64 1, !2294, !DIExpression(), !22035)
    #dbg_value(i64 1, !2301, !DIExpression(), !22036)
  %i.aw = add nuw nsw i64 %.sroa.0.06.i.epil, 1, !dbg !22131
    #dbg_value(i64 %i.aw, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22033)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2472, !DIExpression(), !22037)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22038)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22039)
    #dbg_value(ptr %i.g, !2484, !DIExpression(), !22040)
    #dbg_value(ptr %i.g, !2479, !DIExpression(), !22041)
    #dbg_value(ptr %i.g, !2487, !DIExpression(), !22042)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2480, !DIExpression(), !22043)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22039)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2494, !DIExpression(), !22044)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2497, !DIExpression(), !22045)
    #dbg_value(i64 %.sroa.0.06.i.epil, !2492, !DIExpression(), !22042)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22039)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22044)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22045)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22044)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22045)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.06.i.epil, !dbg !22132
    #dbg_value(ptr %i.ax, !2500, !DIExpression(), !22046)
    #dbg_value(ptr %i.ax, !2502, !DIExpression(), !22047)
    #dbg_value(ptr %i.ax, !2504, !DIExpression(), !22048)
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !22133, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.ay, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22049)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22049)
    #dbg_value(ptr poison, !2491, !DIExpression(), !22050)
  store ptr %i.g, ptr %i.ay, align 8, !dbg !22134
  %i.az = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16, !dbg !22135
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 184, !dbg !22136
  store i16 %i.az, ptr %i.ba, align 8, !dbg !22136
    #dbg_value(ptr undef, !2262, !DIExpression(), !22051)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22052)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22053)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22053)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !22130 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !22130
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit, label %bb.i, !dbg !22130, !llvm.loop !21637

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void, !dbg !22137

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #21, !dbg !22138
  unreachable, !dbg !22138

bb.k:                                             ; preds = %bb.h
    #dbg_value(ptr %i.g, !22027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22032)
    #dbg_value(ptr %i.b, !21665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22054)
    #dbg_value(i64 %i.ar, !21665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22054)
    #dbg_value(ptr %i.g, !21666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22054)
    #dbg_value(i64 %i.au, !21666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22054)
    #dbg_value(ptr undef, !21668, !DIExpression(), !21674)
    #dbg_value(i64 %i.k, !21669, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22055)
    #dbg_value(i64 %i.k, !21677, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 %i.k, !21696, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !21777)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 192, !dbg !22139 ; 8 uses
    #dbg_value(ptr %i.bb, !21678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(ptr %i.bb, !21697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21777)
    #dbg_value(i64 12, !21678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 12, !21697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21777)
    #dbg_value(ptr %i.bb, !22056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22060)
    #dbg_value(i64 %i.k, !22056, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22060)
    #dbg_value(i64 %1, !22057, !DIExpression(), !22060)
    #dbg_value(i64 %1, !22061, !DIExpression(), !22064)
    #dbg_value(ptr %i.bb, !22058, !DIExpression(), !22065)
    #dbg_value(ptr %i.bb, !22062, !DIExpression(), !22064)
    #dbg_value(ptr %i.bb, !22066, !DIExpression(), !22070)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %1, !dbg !22140
    #dbg_value(ptr %i.bc, !22067, !DIExpression(), !22070)
    #dbg_value(!DIArgList(i64 %i.k, i64 0, i64 %1), !22068, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !22070)
  %i.bd = add nuw nsw i64 %i.r, 8, !dbg !22141
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !dbg !22141, !alias.scope !22071
    #dbg_value(ptr poison, !21945, !DIExpression(), !22072)
    #dbg_value(i64 %i.e, !21944, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21948)
    #dbg_value(i64 %i.e, !21949, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21954)
    #dbg_value(i64 %i.e, !21677, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21957)
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !22142
    #dbg_value(ptr %i.be, !21950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21954)
    #dbg_value(i64 12, !21950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21954)
    #dbg_value(ptr %i.be, !21678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21957)
    #dbg_value(ptr %i.be, !21697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21960)
    #dbg_value(i64 12, !21678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21957)
    #dbg_value(i64 12, !21697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21960)
    #dbg_value(i64 %1, !21680, !DIExpression(), !22073)
    #dbg_value(i64 %1, !21696, !DIExpression(), !21960)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.u, !dbg !22143
    #dbg_value(ptr undef, !21668, !DIExpression(), !21672)
    #dbg_value(ptr %i.bb, !21678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21689)
    #dbg_value(ptr %i.bb, !21697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21703)
    #dbg_value(i64 12, !21678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21689)
    #dbg_value(i64 12, !21697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21703)
    #dbg_value(ptr %i.bf, !2506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22074)
    #dbg_value(i64 %1, !2506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22074)
    #dbg_value(ptr %i.bb, !2509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22074)
    #dbg_value(i64 %1, !2509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22074)
    #dbg_value(i64 %1, !2511, !DIExpression(), !22075)
    #dbg_value(ptr %i.bf, !2512, !DIExpression(), !22075)
    #dbg_value(ptr %i.bb, !2513, !DIExpression(), !22075)
  %i.bg = shl nuw nsw i64 %1, 3, !dbg !22144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !dbg !22144, !alias.scope !22076
    #dbg_value(ptr poison, !2464, !DIExpression(), !22077)
    #dbg_value(i64 0, !2470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22077)
    #dbg_value(i64 %i.k, !2470, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22077)
    #dbg_value(i64 0, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22033)
    #dbg_value(i64 %i.k, !2471, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22033)
    #dbg_value(ptr undef, !2262, !DIExpression(), !22051)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22052)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22053)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22053)
  %2 = add nuw nsw i64 %1, %i.j, !dbg !22130
  %i.bh = add nuw nsw i64 %2, 1, !dbg !22130      ; 2 uses
  %xtraiter = and i64 %i.bh, 3, !dbg !22130       ; 3 uses
  %i.bi = icmp samesign ult i64 %i.k, 3, !dbg !22130
  br i1 %i.bi, label %.epil.preheader, label %.new, !dbg !22130

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bh, 60, !dbg !22130
  br label %bb.l, !dbg !22130

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
    #dbg_value(i64 %.sroa.0.06.i, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22033)
    #dbg_value(i64 %.sroa.0.06.i, !2280, !DIExpression(), !22034)
    #dbg_value(i64 %.sroa.0.06.i, !2290, !DIExpression(), !22035)
    #dbg_value(i64 %.sroa.0.06.i, !2297, !DIExpression(), !22036)
    #dbg_value(i64 1, !2294, !DIExpression(), !22035)
    #dbg_value(i64 1, !2301, !DIExpression(), !22036)
  %i.bj = or disjoint i64 %.sroa.0.06.i, 1, !dbg !22131 ; 2 uses
    #dbg_value(i64 %i.bj, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22033)
    #dbg_value(i64 %.sroa.0.06.i, !2472, !DIExpression(), !22037)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22038)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22039)
    #dbg_value(ptr %i.g, !2484, !DIExpression(), !22040)
    #dbg_value(ptr %i.g, !2479, !DIExpression(), !22041)
    #dbg_value(ptr %i.g, !2487, !DIExpression(), !22042)
    #dbg_value(i64 %.sroa.0.06.i, !2480, !DIExpression(), !22043)
    #dbg_value(i64 %.sroa.0.06.i, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22039)
    #dbg_value(i64 %.sroa.0.06.i, !2494, !DIExpression(), !22044)
    #dbg_value(i64 %.sroa.0.06.i, !2497, !DIExpression(), !22045)
    #dbg_value(i64 %.sroa.0.06.i, !2492, !DIExpression(), !22042)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22039)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22044)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22045)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22044)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22045)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.06.i, !dbg !22132
    #dbg_value(ptr %i.bk, !2500, !DIExpression(), !22046)
    #dbg_value(ptr %i.bk, !2502, !DIExpression(), !22047)
    #dbg_value(ptr %i.bk, !2504, !DIExpression(), !22048)
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !22133, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bl, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22049)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22049)
    #dbg_value(ptr poison, !2491, !DIExpression(), !22050)
  store ptr %i.g, ptr %i.bl, align 8, !dbg !22134
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i to i16, !dbg !22135
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 184, !dbg !22136
  store i16 %i.bm, ptr %i.bn, align 8, !dbg !22136
    #dbg_value(ptr undef, !2262, !DIExpression(), !22051)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22052)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22053)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22053)
    #dbg_value(i64 %i.bj, !2280, !DIExpression(), !22034)
    #dbg_value(i64 %i.bj, !2290, !DIExpression(), !22035)
    #dbg_value(i64 %i.bj, !2297, !DIExpression(), !22036)
  %i.bo = or disjoint i64 %.sroa.0.06.i, 2, !dbg !22131 ; 2 uses
    #dbg_value(i64 %i.bo, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22033)
    #dbg_value(i64 %i.bj, !2472, !DIExpression(), !22037)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22038)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22039)
    #dbg_value(i64 %i.bj, !2480, !DIExpression(), !22043)
    #dbg_value(i64 %i.bj, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22039)
    #dbg_value(i64 %i.bj, !2494, !DIExpression(), !22044)
    #dbg_value(i64 %i.bj, !2497, !DIExpression(), !22045)
    #dbg_value(i64 %i.bj, !2492, !DIExpression(), !22042)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22039)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22044)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22045)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22044)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22045)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bj, !dbg !22132
    #dbg_value(ptr %i.bp, !2500, !DIExpression(), !22046)
    #dbg_value(ptr %i.bp, !2502, !DIExpression(), !22047)
    #dbg_value(ptr %i.bp, !2504, !DIExpression(), !22048)
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !22133, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bq, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22049)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22049)
  store ptr %i.g, ptr %i.bq, align 8, !dbg !22134
  %i.br = trunc nuw nsw i64 %i.bj to i16, !dbg !22135
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 184, !dbg !22136
  store i16 %i.br, ptr %i.bs, align 8, !dbg !22136
    #dbg_value(i64 %i.bo, !2280, !DIExpression(), !22034)
    #dbg_value(i64 %i.bo, !2290, !DIExpression(), !22035)
    #dbg_value(i64 %i.bo, !2297, !DIExpression(), !22036)
  %i.bt = or disjoint i64 %.sroa.0.06.i, 3, !dbg !22131 ; 2 uses
    #dbg_value(i64 %i.bt, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22033)
    #dbg_value(i64 %i.bo, !2472, !DIExpression(), !22037)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22038)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22039)
    #dbg_value(i64 %i.bo, !2480, !DIExpression(), !22043)
    #dbg_value(i64 %i.bo, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22039)
    #dbg_value(i64 %i.bo, !2494, !DIExpression(), !22044)
    #dbg_value(i64 %i.bo, !2497, !DIExpression(), !22045)
    #dbg_value(i64 %i.bo, !2492, !DIExpression(), !22042)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22039)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22044)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22045)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22044)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22045)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bo, !dbg !22132
    #dbg_value(ptr %i.bu, !2500, !DIExpression(), !22046)
    #dbg_value(ptr %i.bu, !2502, !DIExpression(), !22047)
    #dbg_value(ptr %i.bu, !2504, !DIExpression(), !22048)
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !22133, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bv, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22049)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22049)
  store ptr %i.g, ptr %i.bv, align 8, !dbg !22134
  %i.bw = trunc nuw nsw i64 %i.bo to i16, !dbg !22135
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 184, !dbg !22136
  store i16 %i.bw, ptr %i.bx, align 8, !dbg !22136
    #dbg_value(i64 %i.bt, !2280, !DIExpression(), !22034)
    #dbg_value(i64 %i.bt, !2290, !DIExpression(), !22035)
    #dbg_value(i64 %i.bt, !2297, !DIExpression(), !22036)
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4, !dbg !22131 ; 2 uses
    #dbg_value(i64 %i.by, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22033)
    #dbg_value(i64 %i.bt, !2472, !DIExpression(), !22037)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22038)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22039)
    #dbg_value(i64 %i.bt, !2480, !DIExpression(), !22043)
    #dbg_value(i64 %i.bt, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22039)
    #dbg_value(i64 %i.bt, !2494, !DIExpression(), !22044)
    #dbg_value(i64 %i.bt, !2497, !DIExpression(), !22045)
    #dbg_value(i64 %i.bt, !2492, !DIExpression(), !22042)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22039)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22044)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22045)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22044)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22045)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bt, !dbg !22132
    #dbg_value(ptr %i.bz, !2500, !DIExpression(), !22046)
    #dbg_value(ptr %i.bz, !2502, !DIExpression(), !22047)
    #dbg_value(ptr %i.bz, !2504, !DIExpression(), !22048)
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !22133, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.ca, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22049)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22049)
  store ptr %i.g, ptr %i.ca, align 8, !dbg !22134
  %i.cb = trunc nuw nsw i64 %i.bt to i16, !dbg !22135
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 184, !dbg !22136
  store i16 %i.cb, ptr %i.cc, align 8, !dbg !22136
  %niter.next.3 = add i64 %niter, 4, !dbg !22130  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !22130
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.loopexit.unr-lcssa, label %bb.l, !dbg !22130
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextyyE16bulk_steal_rightCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22155 {
bb.a:
    #dbg_value(ptr poison, !22285, !DIExpression(), !22289)
    #dbg_value(ptr poison, !22285, !DIExpression(), !22291)
    #dbg_value(ptr poison, !22292, !DIExpression(), !22296)
    #dbg_value(ptr %0, !22270, !DIExpression(), !22297)
    #dbg_value(i64 %1, !22271, !DIExpression(), !22297)
    #dbg_value(i64 %1, !22286, !DIExpression(), !22298)
    #dbg_value(i64 %1, !22299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22310)
    #dbg_value(i64 %1, !22317, !DIExpression(), !22324)
    #dbg_value(i64 0, !22325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22340)
    #dbg_value(i64 0, !22350, !DIExpression(), !22356)
    #dbg_value(i64 0, !22325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22364)
    #dbg_value(i64 0, !22350, !DIExpression(), !22370)
    #dbg_value(i64 0, !22325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22378)
    #dbg_value(i64 0, !22350, !DIExpression(), !22381)
    #dbg_value(i64 0, !22325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22389)
    #dbg_value(i64 0, !22350, !DIExpression(), !22392)
    #dbg_value(i64 0, !22299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22310)
    #dbg_value(i64 0, !22319, !DIExpression(), !22324)
    #dbg_value(i64 0, !22299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22399)
    #dbg_value(i64 0, !22319, !DIExpression(), !22402)
    #dbg_value(ptr %0, !22272, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22403)
    #dbg_value(ptr %0, !22404, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22407)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22411)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22415)
    #dbg_value(ptr %0, !22420, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22424)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22429)
    #dbg_value(ptr %0, !22430, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22434)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22439)
    #dbg_value(ptr %0, !22440, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22444)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22449)
    #dbg_value(ptr %0, !22450, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22454)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22459)
    #dbg_value(ptr %0, !22460, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22463)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22709
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22709, !nonnull !982, !noundef !982 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 186, !dbg !22710 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !dbg !22710, !noundef !982 ; 6 uses
  %i.e = zext i16 %i.d to i64, !dbg !22711        ; 8 uses
    #dbg_value(i64 %i.e, !22273, !DIExpression(), !22465)
    #dbg_value(i64 %i.e, !22421, !DIExpression(), !22466)
    #dbg_value(i64 %i.e, !22467, !DIExpression(), !22471)
    #dbg_value(i64 %i.e, !22472, !DIExpression(), !22477)
    #dbg_value(i64 %i.e, !22431, !DIExpression(), !22478)
    #dbg_value(i64 %i.e, !22467, !DIExpression(), !22480)
    #dbg_value(i64 %i.e, !22472, !DIExpression(), !22483)
    #dbg_value(ptr %0, !22274, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22484)
    #dbg_value(ptr %0, !22404, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22486)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22489)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22495)
    #dbg_value(ptr %0, !22420, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22497)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22501)
    #dbg_value(ptr %0, !22430, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22503)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22507)
    #dbg_value(ptr %0, !22341, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22508)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22512)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22516)
    #dbg_value(ptr %0, !22341, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22517)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22521)
    #dbg_value(ptr %0, !22408, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22525)
    #dbg_value(ptr %0, !22460, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !22527)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22712
  %i.g = load ptr, ptr %i.f, align 8, !dbg !22712, !nonnull !982, !noundef !982 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 186, !dbg !22713 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !dbg !22713, !noundef !982
  %i.j = zext i16 %i.i to i64, !dbg !22714        ; 3 uses
    #dbg_value(i64 %i.j, !22275, !DIExpression(), !22529)
    #dbg_value(i64 %i.j, !22342, !DIExpression(), !22530)
    #dbg_value(i64 %i.j, !22325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22378)
    #dbg_value(i64 %i.j, !22352, !DIExpression(), !22381)
    #dbg_value(i64 %i.j, !22325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22389)
    #dbg_value(i64 %i.j, !22352, !DIExpression(), !22392)
  %i.k = add nuw nsw i64 %1, %i.e, !dbg !22715    ; 2 uses
    #dbg_value(i64 %i.k, !22276, !DIExpression(), !22531)
    #dbg_value(i64 %i.k, !22441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22532)
    #dbg_value(i64 %i.k, !22533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22537)
    #dbg_value(i64 %i.k, !22325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22540)
    #dbg_value(i64 %i.k, !22451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22541)
    #dbg_value(i64 %i.k, !22533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22543)
    #dbg_value(i64 %i.k, !22325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22546)
  %i.l = icmp samesign ult i64 %i.k, 12, !dbg !22715
  br i1 %i.l, label %bb.c, label %bb.b, !dbg !22715, !prof !2137

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !dbg !22716
  unreachable, !dbg !22716

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.j, !dbg !22717
  br i1 %.not, label %bb.d, label %bb.e, !dbg !22717, !prof !2027

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #21, !dbg !22718
  unreachable, !dbg !22718

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.j, %1, !dbg !22719    ; 3 uses
    #dbg_value(i64 %i.m, !22277, !DIExpression(), !22547)
  %i.n = trunc nuw nsw i64 %i.k to i16, !dbg !22720
  store i16 %i.n, ptr %i.c, align 2, !dbg !22720
  %i.o = trunc nuw i64 %i.m to i16, !dbg !22721
  store i16 %i.o, ptr %i.h, align 2, !dbg !22721
  %i.p = add nsw i64 %1, -1, !dbg !22722          ; 2 uses
    #dbg_value(i64 %i.p, !22421, !DIExpression(), !22548)
    #dbg_value(i64 %i.p, !22467, !DIExpression(), !22550)
    #dbg_value(i64 %i.p, !22472, !DIExpression(), !22552)
    #dbg_value(i64 %i.p, !22431, !DIExpression(), !22553)
    #dbg_value(i64 %i.p, !22467, !DIExpression(), !22555)
    #dbg_value(i64 %i.p, !22472, !DIExpression(), !22558)
    #dbg_value(i64 %i.p, !22342, !DIExpression(), !22559)
    #dbg_value(i64 %i.p, !22325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22340)
    #dbg_value(i64 %i.p, !22352, !DIExpression(), !22356)
    #dbg_value(i64 %i.p, !22325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22364)
    #dbg_value(i64 %i.p, !22352, !DIExpression(), !22370)
    #dbg_value(ptr %i.g, !22468, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22550)
    #dbg_value(i64 11, !22468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22550)
    #dbg_value(ptr %i.g, !22473, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22552)
    #dbg_value(i64 11, !22473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22552)
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %1, !dbg !22723
    #dbg_value(ptr %i.q, !22560, !DIExpression(), !22563)
    #dbg_value(ptr %i.q, !22564, !DIExpression(), !22567)
    #dbg_value(ptr %i.q, !22568, !DIExpression(), !22571)
  %i.r = load i64, ptr %i.q, align 8, !dbg !22724, !noundef !982
    #dbg_value(i64 %i.r, !22278, !DIExpression(), !22572)
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96, !dbg !22725 ; 4 uses
    #dbg_value(ptr %i.s, !22468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22555)
    #dbg_value(i64 11, !22468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22555)
    #dbg_value(ptr %i.s, !22473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22558)
    #dbg_value(i64 11, !22473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22558)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p, !dbg !22726
    #dbg_value(ptr %i.t, !22560, !DIExpression(), !22574)
    #dbg_value(ptr %i.t, !22564, !DIExpression(), !22577)
    #dbg_value(ptr %i.t, !22568, !DIExpression(), !22580)
  %i.u = load i64, ptr %i.t, align 8, !dbg !22727, !noundef !982
    #dbg_value(i64 %i.u, !22279, !DIExpression(), !22581)
  %.val = load ptr, ptr %0, align 8, !dbg !22728, !nonnull !982, !noundef !982 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22728
  %.val119 = load i64, ptr %i.v, align 8, !dbg !22728, !noundef !982 ; 2 uses
    #dbg_value(ptr poison, !4276, !DIExpression(), !22582)
    #dbg_value(i64 %i.r, !4281, !DIExpression(), !22582)
    #dbg_value(i64 %i.u, !4282, !DIExpression(), !22582)
    #dbg_value(ptr poison, !4286, !DIExpression(), !22583)
    #dbg_value(ptr %.val, !4291, !DIExpression(), !22584)
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !22729
    #dbg_value(ptr %i.w, !4295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22585)
    #dbg_value(i64 11, !4295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22585)
    #dbg_value(i64 %.val119, !4296, !DIExpression(), !22585)
    #dbg_value(i64 %.val119, !4298, !DIExpression(), !22586)
    #dbg_value(ptr %i.w, !4299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22586)
    #dbg_value(i64 11, !4299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22586)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val119, !dbg !22730 ; 2 uses
    #dbg_value(ptr %i.x, !4292, !DIExpression(), !22587)
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 96, !dbg !22731
    #dbg_value(ptr %i.y, !4295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22588)
    #dbg_value(i64 11, !4295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22588)
    #dbg_value(i64 %.val119, !4296, !DIExpression(), !22588)
    #dbg_value(i64 %.val119, !4298, !DIExpression(), !22589)
    #dbg_value(ptr %i.y, !4299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22589)
    #dbg_value(i64 11, !4299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22589)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val119, !dbg !22732 ; 2 uses
    #dbg_value(ptr %i.x, !4283, !DIExpression(), !22590)
    #dbg_value(ptr %i.x, !4302, !DIExpression(), !22591)
    #dbg_value(ptr %i.z, !4284, !DIExpression(), !22590)
    #dbg_value(ptr %i.z, !4302, !DIExpression(), !22592)
    #dbg_value(i64 %i.r, !4303, !DIExpression(), !22591)
  %i.aa = load i64, ptr %i.x, align 8, !dbg !22733, !noundef !982
  store i64 %i.r, ptr %i.x, align 8, !dbg !22734
    #dbg_value(i64 %i.u, !4303, !DIExpression(), !22592)
  %i.ab = load i64, ptr %i.z, align 8, !dbg !22735, !noundef !982
  store i64 %i.u, ptr %i.z, align 8, !dbg !22736
    #dbg_value(i64 %i.aa, !22280, !DIExpression(), !22593)
    #dbg_value(i64 %i.aa, !22594, !DIExpression(), !22598)
    #dbg_value(i64 %i.ab, !22281, !DIExpression(), !22593)
    #dbg_value(i64 %i.ab, !22594, !DIExpression(), !22600)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22737 ; 2 uses
    #dbg_value(ptr %i.ac, !22468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22471)
    #dbg_value(i64 11, !22468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22471)
    #dbg_value(ptr %i.ac, !22473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22477)
    #dbg_value(i64 11, !22473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22477)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.e, !dbg !22738
    #dbg_value(ptr %i.ad, !22595, !DIExpression(), !22598)
  store i64 %i.aa, ptr %i.ad, align 8, !dbg !22739
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !22740 ; 2 uses
    #dbg_value(ptr %i.ae, !22468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22480)
    #dbg_value(i64 11, !22468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22480)
    #dbg_value(ptr %i.ae, !22473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22483)
    #dbg_value(i64 11, !22473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22483)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.e, !dbg !22741
    #dbg_value(ptr %i.af, !22595, !DIExpression(), !22600)
  store i64 %i.ab, ptr %i.af, align 8, !dbg !22742
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !22743 ; 3 uses
    #dbg_value(ptr %i.ag, !22326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22340)
    #dbg_value(ptr %i.ag, !22351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22356)
    #dbg_value(i64 11, !22326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22340)
    #dbg_value(i64 11, !22351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22356)
  %i.ah = add nuw nsw i64 %i.e, 1, !dbg !22744    ; 5 uses
    #dbg_value(i64 %i.ah, !22441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22532)
    #dbg_value(i64 %i.ah, !22533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22537)
    #dbg_value(i64 %i.ah, !22325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22540)
    #dbg_value(i64 %i.ah, !22353, !DIExpression(), !22603)
    #dbg_value(i64 %i.ah, !22451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22541)
    #dbg_value(i64 %i.ah, !22533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22543)
    #dbg_value(i64 %i.ah, !22325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22546)
    #dbg_value(i64 %i.ah, !22353, !DIExpression(), !22606)
    #dbg_value(i64 %i.ah, !22293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22607)
    #dbg_value(i64 %i.ah, !22608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22613)
    #dbg_value(i64 %i.ah, !22299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22616)
    #dbg_value(i64 %i.ah, !22320, !DIExpression(), !22619)
    #dbg_value(ptr %i.ac, !22534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22537)
    #dbg_value(i64 11, !22534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22537)
    #dbg_value(ptr %i.ac, !22326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22540)
    #dbg_value(ptr %i.ac, !22351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22603)
    #dbg_value(i64 11, !22326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22540)
    #dbg_value(i64 11, !22351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22603)
    #dbg_value(i64 %1, !22328, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !22620)
    #dbg_value(i64 %1, !22352, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !22603)
    #dbg_value(i64 %1, !22330, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !22621)
    #dbg_value(i64 %1, !22352, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !22606)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah, !dbg !22745
    #dbg_value(ptr %i.ag, !2177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22622)
    #dbg_value(i64 %i.p, !2177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22622)
    #dbg_value(ptr %i.ai, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22622)
    #dbg_value(i64 %1, !2180, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22622)
    #dbg_value(i64 %i.p, !2182, !DIExpression(), !22623)
    #dbg_value(ptr %i.ag, !2183, !DIExpression(), !22623)
    #dbg_value(ptr %i.ai, !2184, !DIExpression(), !22623)
  %i.aj = shl nuw nsw i64 %i.p, 3, !dbg !22746    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull readonly align 8 %i.ag, i64 %i.aj, i1 false), !dbg !22746, !alias.scope !22624
    #dbg_value(ptr %i.s, !22326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22364)
    #dbg_value(ptr %i.s, !22351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22370)
    #dbg_value(i64 11, !22326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22364)
    #dbg_value(i64 11, !22351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22370)
    #dbg_value(ptr %i.ae, !22534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22543)
    #dbg_value(i64 11, !22534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22543)
    #dbg_value(ptr %i.ae, !22326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22546)
    #dbg_value(ptr %i.ae, !22351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22606)
    #dbg_value(i64 11, !22326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22546)
    #dbg_value(i64 11, !22351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22606)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah, !dbg !22747
    #dbg_value(ptr %i.s, !2177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22625)
    #dbg_value(i64 %i.p, !2177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22625)
    #dbg_value(ptr %i.ak, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22625)
    #dbg_value(i64 %1, !2180, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22625)
    #dbg_value(i64 %i.p, !2182, !DIExpression(), !22626)
    #dbg_value(ptr %i.s, !2183, !DIExpression(), !22626)
    #dbg_value(ptr %i.ak, !2184, !DIExpression(), !22626)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %i.s, i64 %i.aj, i1 false), !dbg !22748, !alias.scope !22627
    #dbg_value(ptr %i.ag, !22326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22378)
    #dbg_value(ptr %i.ag, !22351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22381)
    #dbg_value(i64 11, !22326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22378)
    #dbg_value(i64 11, !22351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22381)
    #dbg_value(ptr %i.ag, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22628)
    #dbg_value(i64 %i.j, !4245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22628)
    #dbg_value(i64 %1, !4246, !DIExpression(), !22628)
    #dbg_value(i64 %1, !4249, !DIExpression(), !22629)
    #dbg_value(ptr %i.ag, !4247, !DIExpression(), !22630)
    #dbg_value(ptr %i.ag, !4250, !DIExpression(), !22629)
    #dbg_value(ptr %i.ag, !4252, !DIExpression(), !22631)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %1, !dbg !22749
    #dbg_value(ptr %i.al, !4253, !DIExpression(), !22631)
    #dbg_value(i64 %i.m, !4254, !DIExpression(), !22631)
  %i.am = shl nuw nsw i64 %i.m, 3, !dbg !22750    ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.al, i64 %i.am, i1 false), !dbg !22750, !alias.scope !22632
    #dbg_value(ptr %i.s, !22326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22389)
    #dbg_value(ptr %i.s, !22351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22392)
    #dbg_value(i64 11, !22326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22389)
    #dbg_value(i64 11, !22351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22392)
    #dbg_value(ptr %i.s, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22633)
    #dbg_value(i64 %i.j, !4245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22633)
    #dbg_value(i64 %1, !4246, !DIExpression(), !22633)
    #dbg_value(i64 %1, !4249, !DIExpression(), !22634)
    #dbg_value(ptr %i.s, !4247, !DIExpression(), !22635)
    #dbg_value(ptr %i.s, !4250, !DIExpression(), !22634)
    #dbg_value(ptr %i.s, !4252, !DIExpression(), !22636)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %1, !dbg !22751
    #dbg_value(ptr %i.an, !4253, !DIExpression(), !22636)
    #dbg_value(i64 %i.m, !4254, !DIExpression(), !22636)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.an, i64 %i.am, i1 false), !dbg !22752, !alias.scope !22637
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22753
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !22753, !noundef !982
    #dbg_value(i64 %i.ap, !22638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22641)
    #dbg_value(ptr %i.b, !22638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22641)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !22754
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22755
  %i.as = load i64, ptr %i.ar, align 8, !dbg !22755, !noundef !982
    #dbg_value(i64 %i.as, !22638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22643)
    #dbg_value(i64 %i.as, !22638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22643)
    #dbg_value(ptr poison, !22638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22643)
    #dbg_value(ptr poison, !22638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22643)
  %i.at = icmp eq i64 %i.as, 0, !dbg !22756       ; 2 uses
  br i1 %i.aq, label %bb.f, label %bb.g, !dbg !22754

bb.f:                                             ; preds = %bb.e
  br i1 %i.at, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit126, label %bb.h, !dbg !22756, !prof !2137

bb.g:                                             ; preds = %bb.e
  br i1 %i.at, label %bb.h, label %bb.i, !dbg !22756, !prof !2027
end_hunk_1
begin_hunk_2_@_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextyyE16bulk_steal_rightCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(ptr poison, !2491, !DIExpression(), !22708)
  store ptr %i.b, ptr %i.bi, align 8, !dbg !22778
  %i.bj = trunc nuw nsw i64 %i.ah to i16, !dbg !22779
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 184, !dbg !22780
  store i16 %i.bj, ptr %i.bk, align 8, !dbg !22780
    #dbg_value(ptr undef, !2262, !DIExpression(), !22689)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22690)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22691)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22691)
  %exitcond.not.i = icmp eq i64 %1, 1, !dbg !22781
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader, label %bb.j, !dbg !22782

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.e, 2, !dbg !22783    ; 2 uses
    #dbg_value(i64 %i.bl, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.bl, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.bl, !2280, !DIExpression(), !22692)
    #dbg_value(i64 %i.bl, !2290, !DIExpression(), !22693)
    #dbg_value(i64 %i.bl, !2297, !DIExpression(), !22694)
    #dbg_value(i64 1, !2294, !DIExpression(), !22693)
    #dbg_value(i64 1, !2301, !DIExpression(), !22694)
    #dbg_value(i64 %i.e, !2471, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.bl, !2472, !DIExpression(), !22695)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22696)
    #dbg_value(ptr %i.b, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22697)
    #dbg_value(ptr %i.b, !2484, !DIExpression(), !22698)
    #dbg_value(ptr %i.b, !2479, !DIExpression(), !22699)
    #dbg_value(ptr %i.b, !2487, !DIExpression(), !22700)
    #dbg_value(i64 %i.bl, !2480, !DIExpression(), !22701)
    #dbg_value(i64 %i.bl, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22697)
    #dbg_value(i64 %i.bl, !2494, !DIExpression(), !22702)
    #dbg_value(i64 %i.bl, !2497, !DIExpression(), !22703)
    #dbg_value(i64 %i.bl, !2492, !DIExpression(), !22700)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22697)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22702)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22703)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22702)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22703)
  %i.bm = icmp samesign ult i16 %i.d, 10, !dbg !22774
  tail call void @llvm.assume(i1 %i.bm), !dbg !22775
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bl, !dbg !22776
    #dbg_value(ptr %i.bn, !2500, !DIExpression(), !22704)
    #dbg_value(ptr %i.bn, !2502, !DIExpression(), !22705)
    #dbg_value(ptr %i.bn, !2504, !DIExpression(), !22706)
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !22777, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bo, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22707)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22707)
    #dbg_value(ptr poison, !2491, !DIExpression(), !22708)
  store ptr %i.b, ptr %i.bo, align 8, !dbg !22778
  %i.bp = trunc nuw nsw i64 %i.bl to i16, !dbg !22779
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 184, !dbg !22780
  store i16 %i.bp, ptr %i.bq, align 8, !dbg !22780
    #dbg_value(ptr undef, !2262, !DIExpression(), !22689)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22690)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22691)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22691)
  %exitcond.not.i.1 = icmp eq i64 %1, 2, !dbg !22781
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader, label %bb.k, !dbg !22782

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.e, 3, !dbg !22783    ; 2 uses
    #dbg_value(i64 %i.br, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.br, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.br, !2280, !DIExpression(), !22692)
    #dbg_value(i64 %i.br, !2290, !DIExpression(), !22693)
    #dbg_value(i64 %i.br, !2297, !DIExpression(), !22694)
    #dbg_value(i64 1, !2294, !DIExpression(), !22693)
    #dbg_value(i64 1, !2301, !DIExpression(), !22694)
    #dbg_value(i64 %i.e, !2471, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.br, !2472, !DIExpression(), !22695)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22696)
    #dbg_value(ptr %i.b, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22697)
    #dbg_value(ptr %i.b, !2484, !DIExpression(), !22698)
    #dbg_value(ptr %i.b, !2479, !DIExpression(), !22699)
    #dbg_value(ptr %i.b, !2487, !DIExpression(), !22700)
    #dbg_value(i64 %i.br, !2480, !DIExpression(), !22701)
    #dbg_value(i64 %i.br, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22697)
    #dbg_value(i64 %i.br, !2494, !DIExpression(), !22702)
    #dbg_value(i64 %i.br, !2497, !DIExpression(), !22703)
    #dbg_value(i64 %i.br, !2492, !DIExpression(), !22700)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22697)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22702)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22703)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22702)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22703)
  %i.bs = icmp samesign ult i16 %i.d, 9, !dbg !22774
  tail call void @llvm.assume(i1 %i.bs), !dbg !22775
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.br, !dbg !22776
    #dbg_value(ptr %i.bt, !2500, !DIExpression(), !22704)
    #dbg_value(ptr %i.bt, !2502, !DIExpression(), !22705)
    #dbg_value(ptr %i.bt, !2504, !DIExpression(), !22706)
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !22777, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bu, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22707)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22707)
    #dbg_value(ptr poison, !2491, !DIExpression(), !22708)
  store ptr %i.b, ptr %i.bu, align 8, !dbg !22778
  %i.bv = trunc nuw nsw i64 %i.br to i16, !dbg !22779
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 184, !dbg !22780
  store i16 %i.bv, ptr %i.bw, align 8, !dbg !22780
    #dbg_value(ptr undef, !2262, !DIExpression(), !22689)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22690)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22691)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22691)
  %exitcond.not.i.2 = icmp eq i64 %1, 3, !dbg !22781
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader, label %bb.l, !dbg !22782

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i64 %i.e, 4, !dbg !22783    ; 2 uses
    #dbg_value(i64 %i.bx, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.bx, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.bx, !2280, !DIExpression(), !22692)
    #dbg_value(i64 %i.bx, !2290, !DIExpression(), !22693)
    #dbg_value(i64 %i.bx, !2297, !DIExpression(), !22694)
    #dbg_value(i64 1, !2294, !DIExpression(), !22693)
    #dbg_value(i64 1, !2301, !DIExpression(), !22694)
    #dbg_value(i64 %i.e, !2471, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.bx, !2472, !DIExpression(), !22695)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22696)
    #dbg_value(ptr %i.b, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22697)
    #dbg_value(ptr %i.b, !2484, !DIExpression(), !22698)
    #dbg_value(ptr %i.b, !2479, !DIExpression(), !22699)
    #dbg_value(ptr %i.b, !2487, !DIExpression(), !22700)
    #dbg_value(i64 %i.bx, !2480, !DIExpression(), !22701)
    #dbg_value(i64 %i.bx, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22697)
    #dbg_value(i64 %i.bx, !2494, !DIExpression(), !22702)
    #dbg_value(i64 %i.bx, !2497, !DIExpression(), !22703)
    #dbg_value(i64 %i.bx, !2492, !DIExpression(), !22700)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22697)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22702)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22703)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22702)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22703)
  %i.by = icmp samesign ult i16 %i.d, 8, !dbg !22774
  tail call void @llvm.assume(i1 %i.by), !dbg !22775
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bx, !dbg !22776
    #dbg_value(ptr %i.bz, !2500, !DIExpression(), !22704)
    #dbg_value(ptr %i.bz, !2502, !DIExpression(), !22705)
    #dbg_value(ptr %i.bz, !2504, !DIExpression(), !22706)
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !22777, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.ca, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22707)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22707)
    #dbg_value(ptr poison, !2491, !DIExpression(), !22708)
  store ptr %i.b, ptr %i.ca, align 8, !dbg !22778
  %i.cb = trunc nuw nsw i64 %i.bx to i16, !dbg !22779
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 184, !dbg !22780
  store i16 %i.cb, ptr %i.cc, align 8, !dbg !22780
    #dbg_value(ptr undef, !2262, !DIExpression(), !22689)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22690)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22691)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22691)
  %exitcond.not.i.3 = icmp eq i64 %1, 4, !dbg !22781
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader, label %bb.m, !dbg !22782

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.e, 5, !dbg !22783    ; 2 uses
    #dbg_value(i64 %i.cd, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.cd, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.cd, !2280, !DIExpression(), !22692)
    #dbg_value(i64 %i.cd, !2290, !DIExpression(), !22693)
    #dbg_value(i64 %i.cd, !2297, !DIExpression(), !22694)
    #dbg_value(i64 1, !2294, !DIExpression(), !22693)
    #dbg_value(i64 1, !2301, !DIExpression(), !22694)
    #dbg_value(i64 %i.e, !2471, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22688)
    #dbg_value(i64 %i.cd, !2472, !DIExpression(), !22695)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22696)
    #dbg_value(ptr %i.b, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22697)
    #dbg_value(ptr %i.b, !2484, !DIExpression(), !22698)
    #dbg_value(ptr %i.b, !2479, !DIExpression(), !22699)
    #dbg_value(ptr %i.b, !2487, !DIExpression(), !22700)
    #dbg_value(i64 %i.cd, !2480, !DIExpression(), !22701)
    #dbg_value(i64 %i.cd, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22697)
    #dbg_value(i64 %i.cd, !2494, !DIExpression(), !22702)
    #dbg_value(i64 %i.cd, !2497, !DIExpression(), !22703)
    #dbg_value(i64 %i.cd, !2492, !DIExpression(), !22700)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22697)
    #dbg_value(ptr %i.bb, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22702)
    #dbg_value(ptr %i.bb, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22703)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22702)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22703)
  %i.ce = icmp ne i16 %i.d, 7, !dbg !22774
  tail call void @llvm.assume(i1 %i.ce), !dbg !22775
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cd, !dbg !22776
    #dbg_value(ptr %i.cf, !2500, !DIExpression(), !22704)
    #dbg_value(ptr %i.cf, !2502, !DIExpression(), !22705)
    #dbg_value(ptr %i.cf, !2504, !DIExpression(), !22706)
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !22777, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cg, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22707)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22707)
    #dbg_value(ptr poison, !2491, !DIExpression(), !22708)
  store ptr %i.b, ptr %i.cg, align 8, !dbg !22778
  %i.ch = trunc nuw nsw i64 %i.cd to i16, !dbg !22779
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 184, !dbg !22780
  store i16 %i.ch, ptr %i.ci, align 8, !dbg !22780
    #dbg_value(ptr undef, !2262, !DIExpression(), !22689)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22690)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22691)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22691)
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader, !dbg !22782

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cj = add nuw nsw i64 %i.j, 1, !dbg !22757
  %2 = sub nsw i64 %i.cj, %1, !dbg !22757         ; 2 uses
  %xtraiter = and i64 %2, 3, !dbg !22757          ; 3 uses
  %i.ck = icmp samesign ult i64 %i.m, 3, !dbg !22757
  br i1 %i.ck, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.epil.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader.new, !dbg !22757

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader
  %unroll_iter = and i64 %2, -4, !dbg !22757
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit, !dbg !22757

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader.new
  %.sroa.0.06.i124 = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader.new ], [ %i.da, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit ]
    #dbg_value(i64 %.sroa.0.06.i124, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22644)
    #dbg_value(i64 %.sroa.0.06.i124, !2280, !DIExpression(), !22645)
    #dbg_value(i64 %.sroa.0.06.i124, !2290, !DIExpression(), !22646)
    #dbg_value(i64 %.sroa.0.06.i124, !2297, !DIExpression(), !22647)
    #dbg_value(i64 1, !2294, !DIExpression(), !22646)
    #dbg_value(i64 1, !2301, !DIExpression(), !22647)
  %i.cl = or disjoint i64 %.sroa.0.06.i124, 1, !dbg !22758 ; 2 uses
    #dbg_value(i64 %i.cl, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22644)
    #dbg_value(i64 %.sroa.0.06.i124, !2472, !DIExpression(), !22648)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22649)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22650)
    #dbg_value(ptr %i.g, !2484, !DIExpression(), !22651)
    #dbg_value(ptr %i.g, !2479, !DIExpression(), !22652)
    #dbg_value(ptr %i.g, !2487, !DIExpression(), !22653)
    #dbg_value(i64 %.sroa.0.06.i124, !2480, !DIExpression(), !22654)
    #dbg_value(i64 %.sroa.0.06.i124, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22650)
    #dbg_value(i64 %.sroa.0.06.i124, !2494, !DIExpression(), !22655)
    #dbg_value(i64 %.sroa.0.06.i124, !2497, !DIExpression(), !22656)
    #dbg_value(i64 %.sroa.0.06.i124, !2492, !DIExpression(), !22653)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22650)
    #dbg_value(ptr %i.ba, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22655)
    #dbg_value(ptr %i.ba, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22656)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22655)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22656)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i124, !dbg !22761
    #dbg_value(ptr %i.cm, !2500, !DIExpression(), !22657)
    #dbg_value(ptr %i.cm, !2502, !DIExpression(), !22658)
    #dbg_value(ptr %i.cm, !2504, !DIExpression(), !22659)
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !22762, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cn, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22660)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22660)
    #dbg_value(ptr poison, !2491, !DIExpression(), !22661)
  store ptr %i.g, ptr %i.cn, align 8, !dbg !22763
  %i.co = trunc nuw nsw i64 %.sroa.0.06.i124 to i16, !dbg !22764
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 184, !dbg !22765
  store i16 %i.co, ptr %i.cp, align 8, !dbg !22765
    #dbg_value(ptr undef, !2262, !DIExpression(), !22662)
    #dbg_value(ptr undef, !2278, !DIExpression(), !22663)
    #dbg_value(ptr undef, !2283, !DIExpression(), !22664)
    #dbg_value(ptr undef, !2288, !DIExpression(), !22664)
    #dbg_value(i64 %i.cl, !2280, !DIExpression(), !22645)
    #dbg_value(i64 %i.cl, !2290, !DIExpression(), !22646)
    #dbg_value(i64 %i.cl, !2297, !DIExpression(), !22647)
  %i.cq = or disjoint i64 %.sroa.0.06.i124, 2, !dbg !22758 ; 2 uses
    #dbg_value(i64 %i.cq, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22644)
    #dbg_value(i64 %i.cl, !2472, !DIExpression(), !22648)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22649)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22650)
    #dbg_value(i64 %i.cl, !2480, !DIExpression(), !22654)
    #dbg_value(i64 %i.cl, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22650)
    #dbg_value(i64 %i.cl, !2494, !DIExpression(), !22655)
    #dbg_value(i64 %i.cl, !2497, !DIExpression(), !22656)
    #dbg_value(i64 %i.cl, !2492, !DIExpression(), !22653)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22650)
    #dbg_value(ptr %i.ba, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22655)
    #dbg_value(ptr %i.ba, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22656)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22655)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22656)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cl, !dbg !22761
    #dbg_value(ptr %i.cr, !2500, !DIExpression(), !22657)
    #dbg_value(ptr %i.cr, !2502, !DIExpression(), !22658)
    #dbg_value(ptr %i.cr, !2504, !DIExpression(), !22659)
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !22762, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cs, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22660)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22660)
  store ptr %i.g, ptr %i.cs, align 8, !dbg !22763
  %i.ct = trunc nuw nsw i64 %i.cl to i16, !dbg !22764
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 184, !dbg !22765
  store i16 %i.ct, ptr %i.cu, align 8, !dbg !22765
    #dbg_value(i64 %i.cq, !2280, !DIExpression(), !22645)
    #dbg_value(i64 %i.cq, !2290, !DIExpression(), !22646)
    #dbg_value(i64 %i.cq, !2297, !DIExpression(), !22647)
  %i.cv = or disjoint i64 %.sroa.0.06.i124, 3, !dbg !22758 ; 2 uses
    #dbg_value(i64 %.sroa.0.06.i124, !2471, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22644)
    #dbg_value(i64 %i.cq, !2472, !DIExpression(), !22648)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22649)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22650)
    #dbg_value(i64 %i.cq, !2480, !DIExpression(), !22654)
    #dbg_value(i64 %i.cq, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22650)
    #dbg_value(i64 %i.cq, !2494, !DIExpression(), !22655)
    #dbg_value(i64 %i.cq, !2497, !DIExpression(), !22656)
    #dbg_value(i64 %i.cq, !2492, !DIExpression(), !22653)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22650)
    #dbg_value(ptr %i.ba, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22655)
    #dbg_value(ptr %i.ba, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22656)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22655)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22656)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cq, !dbg !22761
    #dbg_value(ptr %i.cw, !2500, !DIExpression(), !22657)
    #dbg_value(ptr %i.cw, !2502, !DIExpression(), !22658)
    #dbg_value(ptr %i.cw, !2504, !DIExpression(), !22659)
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !22762, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cx, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22660)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22660)
  store ptr %i.g, ptr %i.cx, align 8, !dbg !22763
  %i.cy = trunc nuw nsw i64 %i.cq to i16, !dbg !22764
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 184, !dbg !22765
  store i16 %i.cy, ptr %i.cz, align 8, !dbg !22765
    #dbg_value(i64 %.sroa.0.06.i124, !2280, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !22645)
    #dbg_value(i64 %.sroa.0.06.i124, !2290, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !22646)
    #dbg_value(i64 %.sroa.0.06.i124, !2297, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !22647)
  %i.da = add nuw nsw i64 %.sroa.0.06.i124, 4, !dbg !22758 ; 2 uses
    #dbg_value(i64 %i.da, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22644)
    #dbg_value(i64 %.sroa.0.06.i124, !2472, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !22648)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !22649)
    #dbg_value(ptr %i.g, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22650)
    #dbg_value(i64 %.sroa.0.06.i124, !2480, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !22654)
    #dbg_value(i64 %.sroa.0.06.i124, !2483, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !22650)
    #dbg_value(i64 %.sroa.0.06.i124, !2494, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !22655)
    #dbg_value(i64 %.sroa.0.06.i124, !2497, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !22656)
    #dbg_value(i64 %.sroa.0.06.i124, !2492, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !22653)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22650)
    #dbg_value(ptr %i.ba, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22655)
    #dbg_value(ptr %i.ba, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22656)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22655)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22656)
  %i.db = icmp samesign ult i64 %.sroa.0.06.i124, 12, !dbg !22759
  tail call void @llvm.assume(i1 %i.db), !dbg !22760
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cv, !dbg !22761
    #dbg_value(ptr %i.dc, !2500, !DIExpression(), !22657)
    #dbg_value(ptr %i.dc, !2502, !DIExpression(), !22658)
    #dbg_value(ptr %i.dc, !2504, !DIExpression(), !22659)
  %i.dd = load ptr, ptr %i.dc, align 8, !dbg !22762, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.dd, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22660)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22660)
  store ptr %i.g, ptr %i.dd, align 8, !dbg !22763
  %i.de = trunc nuw nsw i64 %i.cv to i16, !dbg !22764
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 184, !dbg !22765
  store i16 %i.de, ptr %i.df, align 8, !dbg !22765
  %niter.next.3 = add nuw nsw i64 %niter, 4, !dbg !22757 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !22757
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit126.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit, !dbg !22757
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 !dbg !22788 {
bb.a:
    #dbg_declare(ptr %0, !22806, !DIExpression(), !22814)
  %i.a = load ptr, ptr %0, align 8, !dbg !22870, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.a, !22808, !DIExpression(), !22815)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22871
    #dbg_value(ptr %i.b, !22816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22829)
    #dbg_value(ptr %i.b, !22830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22841)
    #dbg_value(i64 11, !22816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22829)
    #dbg_value(i64 11, !22830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22841)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22872
  %i.d = load i64, ptr %i.c, align 8, !dbg !22872, !noundef !982 ; 3 uses
    #dbg_value(i64 %i.d, !22824, !DIExpression(), !22829)
    #dbg_value(i64 %i.d, !22837, !DIExpression(), !22841)
    #dbg_value(i64 %i.d, !22842, !DIExpression(), !22855)
    #dbg_value(i64 %i.d, !22856, !DIExpression(), !22868)
  %i.e = icmp ult i64 %i.d, 11, !dbg !22873
  tail call void @llvm.assume(i1 %i.e), !dbg !22874
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d, !dbg !22875
    #dbg_value(ptr %i.f, !22810, !DIExpression(), !22869)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !22876
    #dbg_value(ptr %i.g, !22850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22855)
    #dbg_value(ptr %i.g, !22863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22868)
    #dbg_value(i64 11, !22850, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22855)
    #dbg_value(i64 11, !22863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22868)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %i.d, !dbg !22877
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.f, 0, !dbg !22878
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.h, 1, !dbg !22878
  ret { ptr, ptr } %i.j, !dbg !22878
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 !dbg !22883 {
bb.a:
    #dbg_declare(ptr %0, !22901, !DIExpression(), !22909)
  %i.a = load ptr, ptr %0, align 8, !dbg !22965, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.a, !22903, !DIExpression(), !22910)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22966
    #dbg_value(ptr %i.b, !22911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22924)
    #dbg_value(ptr %i.b, !22925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22936)
    #dbg_value(i64 11, !22911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22924)
    #dbg_value(i64 11, !22925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22936)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22967
  %i.d = load i64, ptr %i.c, align 8, !dbg !22967, !noundef !982 ; 3 uses
    #dbg_value(i64 %i.d, !22919, !DIExpression(), !22924)
    #dbg_value(i64 %i.d, !22932, !DIExpression(), !22936)
    #dbg_value(i64 %i.d, !22937, !DIExpression(), !22950)
    #dbg_value(i64 %i.d, !22951, !DIExpression(), !22963)
  %i.e = icmp ult i64 %i.d, 11, !dbg !22968
  tail call void @llvm.assume(i1 %i.e), !dbg !22969
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d, !dbg !22970
    #dbg_value(ptr %i.f, !22905, !DIExpression(), !22964)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !22971
    #dbg_value(ptr %i.g, !22945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22950)
    #dbg_value(ptr %i.g, !22958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22963)
    #dbg_value(i64 11, !22945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22950)
    #dbg_value(i64 11, !22958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22963)
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %i.d, !dbg !22972
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.f, 0, !dbg !22973
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.h, 1, !dbg !22973
end_hunk_2
