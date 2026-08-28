Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.08?download=true
inline.NumInlined: 710
inline.NumDeleted: 372
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs_NtCshovLROGBtMy_11quinn_proto6codingtNtB5_5Codec6decodeRShEB7_:bb.a
  %i.d = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0, !dbg !13229
  %i.e = insertvalue { i16, i16 } %i.d, i16 %.sroa.3.0, 1, !dbg !13229
  ret { i16, i16 } %i.e, !dbg !13229
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2v_8adapters3map3MapINtNtNtB2x_3ops5range5RangemENCNvMBT_INtBT_7LruSlabB1l_E13with_capacity0EEB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13230 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr %0, !13260, !DIExpression(), !13264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13266), !dbg !13269
    #dbg_declare(ptr %0, !13270, !DIExpression(), !13287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13289), !dbg !13292
    #dbg_declare(ptr %0, !13293, !DIExpression(), !13299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13301), !dbg !13304
    #dbg_declare(ptr %0, !13305, !DIExpression(), !13311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13313), !dbg !13316
    #dbg_declare(ptr %0, !13317, !DIExpression(), !13327)
    #dbg_declare(ptr %i.c, !13323, !DIExpression(), !13329)
    #dbg_declare(ptr poison, !13330, !DIExpression(), !13337)
    #dbg_declare(ptr poison, !13346, !DIExpression(), !13353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13355, !noalias !13356
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13361
  %.val.i.i.i.i = load i32, ptr %i.e, align 8, !dbg !13361, !alias.scope !13362, !noalias !13365, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !13361
  %.val4.i.i.i.i = load i32, ptr %i.f, align 4, !dbg !13361, !alias.scope !13367, !noalias !13368, !noundef !23
    #dbg_value(ptr poison, !13369, !DIExpression(), !13379)
    #dbg_value(ptr poison, !13381, !DIExpression(), !13389)
  %narrow.i.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.val4.i.i.i.i, i32 %.val.i.i.i.i), !dbg !13391
  %.sink1.i.i.i.i.i.i = zext i32 %narrow.i.i.i.i.i.i to i64, !dbg !13391 ; 2 uses
    #dbg_value(i64 %.sink1.i.i.i.i.i.i, !13325, !DIExpression(), !13392)
    #dbg_value(i64 %.sink1.i.i.i.i.i.i, !13344, !DIExpression(), !13393)
    #dbg_value(i64 %.sink1.i.i.i.i.i.i, !13336, !DIExpression(), !13394)
    #dbg_value(i64 %.sink1.i.i.i.i.i.i, !13352, !DIExpression(), !13395)
    #dbg_value(i64 %.sink1.i.i.i.i.i.i, !13396, !DIExpression(), !13423)
    #dbg_value(i64 %.sink1.i.i.i.i.i.i, !13425, !DIExpression(), !13431)
    #dbg_declare(ptr poison, !13402, !DIExpression(), !13433)
    #dbg_value(i64 8, !13403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13423)
    #dbg_value(i64 8, !13430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(i64 56, !13403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13423)
    #dbg_value(i64 56, !13430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 0, !13429, !DIExpression(), !13431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13434, !noalias !13356
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sink1.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !13434, !noalias !13356
  %i.g = load i64, ptr %i.b, align 8, !dbg !13434, !range !3100, !noalias !13356, !noundef !23
  %i.h = trunc nuw i64 %i.g to i1, !dbg !13435
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13423
  %i.j = load i64, ptr %i.i, align 8, !dbg !13423, !range !13436, !noalias !13356, !noundef !23 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13423 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_3ops5range5RangemENCNvMBJ_INtBJ_7LruSlabB1b_E13with_capacity0EEB1f_.exit.i.i.i.i.i, !dbg !13435, !prof !6198

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !dbg !13437, !noalias !13356
    #dbg_value(i64 %i.j, !13406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13438)
    #dbg_value(i64 %i.l, !13406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13438)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #32, !dbg !13439, !noalias !13356
  unreachable, !dbg !13439

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_3ops5range5RangemENCNvMBJ_INtBJ_7LruSlabB1b_E13with_capacity0EEB1f_.exit.i.i.i.i.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !dbg !13440, !noalias !13356, !nonnull !23, !noundef !23 ; 2 uses
    #dbg_value(i64 %i.j, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13441)
    #dbg_value(ptr %i.m, !13404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13441)
    #dbg_value(ptr poison, !13428, !DIExpression(), !13442)
  %i.n = icmp uge i64 %i.j, %.sink1.i.i.i.i.i.i, !dbg !13443
    #dbg_value(i1 true, !13444, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13449)
  tail call void @llvm.assume(i1 %i.n), !dbg !13451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13452, !noalias !13356
  store i64 %i.j, ptr %i.c, align 8, !dbg !13453, !noalias !13356
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13453
  store ptr %i.m, ptr %i.o, align 8, !dbg !13453, !noalias !13356
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13453 ; 2 uses
  store i64 0, ptr %i.p, align 8, !dbg !13453, !noalias !13356
    #dbg_value(ptr %i.c, !13454, !DIExpression(), !13462)
    #dbg_declare(ptr %0, !13460, !DIExpression(), !13464)
    #dbg_value(ptr %i.c, !13465, !DIExpression(), !13495)
    #dbg_declare(ptr %0, !13471, !DIExpression(), !13497)
    #dbg_value(ptr poison, !13369, !DIExpression(), !13498)
    #dbg_value(ptr poison, !13381, !DIExpression(), !13500)
    #dbg_value(i64 poison, !13472, !DIExpression(), !13502)
    #dbg_value(i64 1, !13474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13502)
    #dbg_value(i64 %.sink1.i.i.i.i.i.i, !13474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13502)
    #dbg_value(i64 %.sink1.i.i.i.i.i.i, !13475, !DIExpression(), !13503)
    #dbg_value(ptr %i.m, !13490, !DIExpression(), !13504)
    #dbg_value(ptr %i.p, !13493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(i64 0, !13493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13506, !noalias !13507
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13506
  store ptr %i.m, ptr %i.q, align 8, !dbg !13506, !noalias !13507
  store ptr %i.p, ptr %i.a, align 8, !dbg !13506, !noalias !13507
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13506
  store i64 0, ptr %i.r, align 8, !dbg !13506, !noalias !13507
    #dbg_declare(ptr %0, !13514, !DIExpression(), !13526)
    #dbg_declare(ptr %i.a, !13523, !DIExpression(), !13528)
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangemENCNvMCs9JJQt12aL8S_8lru_slabINtB1u_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3p_8for_each4callINtB1u_4SlotB26_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4S_3VecB4s_E14extend_trustedBN_E0E0EB2a_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangemENCNvMCs9JJQt12aL8S_8lru_slabINtB1o_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtB1o_4SlotB20_EEEB24_.exit unwind label %bb.c, !dbg !13529, !noalias !13530

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_3ops5range5RangemENCNvMBJ_INtBJ_7LruSlabB1b_E13with_capacity0EEB1f_.exit.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEEB1H_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.d, !dbg !13531, !noalias !13356

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !13532, !noalias !13356
  unreachable, !dbg !13532

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.z, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !13533

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangemENCNvMCs9JJQt12aL8S_8lru_slabINtB1o_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtB1o_4SlotB20_EEEB24_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_3ops5range5RangemENCNvMBJ_INtBJ_7LruSlabB1b_E13with_capacity0EEB1f_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13534, !noalias !13507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !13535, !noalias !13536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13531, !noalias !13356
    #dbg_value(ptr poison, !13537, !DIExpression(), !13544)
    #dbg_declare(ptr %i.d, !13553, !DIExpression(), !13567)
    #dbg_value(i64 56, !13568, !DIExpression(), !13572)
    #dbg_value(i64 8, !13592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13602)
    #dbg_value(i64 56, !13592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13602)
    #dbg_value(i64 56, !13568, !DIExpression(), !13612)
    #dbg_value(ptr %i.d, !13590, !DIExpression(), !13657)
    #dbg_value(ptr %i.d, !13585, !DIExpression(), !13658)
  %i.u = load i64, ptr %i.d, align 8, !dbg !13659, !range !6194, !alias.scope !13660, !noundef !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !13663 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !13663, !alias.scope !13660, !noundef !23 ; 3 uses
  %i.x = icmp ugt i64 %i.u, %i.w, !dbg !13664
  br i1 %i.x, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE16into_boxed_sliceB1d_.exit, !dbg !13664

bb.e:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangemENCNvMCs9JJQt12aL8S_8lru_slabINtB1o_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtB1o_4SlotB20_EEEB24_.exit
    #dbg_value(ptr %i.d, !13609, !DIExpression(), !13665)
    #dbg_value(i64 %i.w, !13610, !DIExpression(), !13666)
    #dbg_value(i64 %i.w, !13599, !DIExpression(), !13602)
    #dbg_value(ptr %i.d, !13598, !DIExpression(), !13602)
    #dbg_value(ptr %i.d, !13667, !DIExpression(), !13690)
    #dbg_value(i64 %i.w, !13688, !DIExpression(), !13690)
    #dbg_value(i64 8, !13689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13690)
    #dbg_value(i64 56, !13689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13690)
  %i.y = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 9223372036854775807) %i.w, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit.i unwind label %bb.f, !dbg !13692 ; 2 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEEB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %common.resume unwind label %bb.i, !dbg !13693

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.e
  %i.aa = extractvalue { i64, i64 } %i.y, 0, !dbg !13694 ; 2 uses
  %.not.i = icmp eq i64 %i.aa, -1, !dbg !13695
  br i1 %.not.i, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit._crit_edge.i, label %bb.g, !dbg !13696, !prof !5637

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit._crit_edge.i: ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit.i
  %.sroa.534.0.copyload.pre.i = load i64, ptr %i.v, align 8, !dbg !13697, !alias.scope !13660
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE16into_boxed_sliceB1d_.exit, !dbg !13696

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit.i
  %i.ab = extractvalue { i64, i64 } %i.y, 1, !dbg !13694
    #dbg_value(i64 %i.aa, !13600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(i64 %i.ab, !13600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13698)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ab) #32
          to label %bb.h unwind label %bb.f, !dbg !13699

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !13700
  unreachable, !dbg !13700

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE16into_boxed_sliceB1d_.exit: ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangemENCNvMCs9JJQt12aL8S_8lru_slabINtB1o_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtB1o_4SlotB20_EEEB24_.exit, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit._crit_edge.i
  %.sroa.534.0.copyload.i = phi i64 [ %.sroa.534.0.copyload.pre.i, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit._crit_edge.i ], [ %i.w, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangemENCNvMCs9JJQt12aL8S_8lru_slabINtB1o_7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtB1o_4SlotB20_EEEB24_.exit ], !dbg !13697 ; 2 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13697
  %.sroa.433.0.copyload.i = load ptr, ptr %.sroa.433.0..sroa_idx.i, align 8, !dbg !13697, !alias.scope !13660, !nonnull !23, !noundef !23
    #dbg_value(i64 poison, !13554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13701)
    #dbg_value(ptr %.sroa.433.0.copyload.i, !13554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13701)
    #dbg_value(i64 %.sroa.534.0.copyload.i, !13554, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13701)
    #dbg_value(i64 poison, !13563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13702)
    #dbg_value(ptr %.sroa.433.0.copyload.i, !13563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13702)
    #dbg_value(ptr undef, !13537, !DIExpression(), !13544)
  %i.ad = icmp ult i64 %.sroa.534.0.copyload.i, 164703072086692426, !dbg !13703
  call void @llvm.assume(i1 %i.ad), !dbg !13704
  %i.ae = insertvalue { ptr, i64 } poison, ptr %.sroa.433.0.copyload.i, 0, !dbg !13705
  %i.af = insertvalue { ptr, i64 } %i.ae, i64 %.sroa.534.0.copyload.i, 1, !dbg !13705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13706
  ret { ptr, i64 } %i.af, !dbg !13707
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2v_8adapters5chain5ChainINtNtB3H_3map3MapINtNtNtB2x_5slice4iter7IterMutBQ_ENCNvMBT_INtBT_7LruSlabB1l_E6insert0EIB49_INtNtNtB2x_3ops5range5RangemENCB4Z_s_0EEEB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13708 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i.i.i.i = alloca i64, align 8      ; 7 uses
  %.sroa.11.i.i.i.i.i.i = alloca i64, align 8     ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !13779, !DIExpression(), !13809)
    #dbg_value(ptr poison, !13789, !DIExpression(), !13883)
    #dbg_value(ptr poison, !13788, !DIExpression(), !13884)
  %.sroa.6.i.i.i.i = alloca i64, align 8          ; 7 uses
  %.sroa.11.i.i.i.i = alloca i64, align 8         ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr %0, !13776, !DIExpression(), !13885)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13886
    #dbg_declare(ptr %0, !13887, !DIExpression(), !13896)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !13898, !alias.scope !13899 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !13871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13903)
    #dbg_value(ptr %.sroa.0.0.copyload, !13867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13904)
    #dbg_value(ptr %.sroa.0.0.copyload, !13887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13905)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13898
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13898, !alias.scope !13899 ; 5 uses
    #dbg_value(ptr %.sroa.4.0.copyload, !13871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13903)
    #dbg_value(ptr %.sroa.4.0.copyload, !13867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13904)
    #dbg_value(ptr %.sroa.4.0.copyload, !13887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13905)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13898
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13898, !alias.scope !13899 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !13871, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13903)
    #dbg_value(ptr %.sroa.5.0.copyload, !13867, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13904)
    #dbg_value(ptr %.sroa.5.0.copyload, !13887, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13905)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13898
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !13898, !alias.scope !13899 ; 5 uses
    #dbg_value(i32 %.sroa.6.0.copyload, !13871, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !13903)
    #dbg_value(i32 %.sroa.6.0.copyload, !13867, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !13904)
    #dbg_value(i32 %.sroa.6.0.copyload, !13887, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !13905)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !13898
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !13898, !alias.scope !13899 ; 5 uses
    #dbg_value(i32 %.sroa.7.0.copyload, !13871, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !13903)
    #dbg_value(i32 %.sroa.7.0.copyload, !13867, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !13904)
    #dbg_value(i32 %.sroa.7.0.copyload, !13887, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !13905)
    #dbg_value(ptr poison, !13779, !DIExpression(), !13907)
    #dbg_value(ptr poison, !13789, !DIExpression(), !13909)
    #dbg_value(ptr poison, !13788, !DIExpression(), !13910)
    #dbg_value(ptr %.sroa.0.0.copyload, !13863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13911)
    #dbg_value(ptr %.sroa.0.0.copyload, !13855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13912)
    #dbg_value(ptr %.sroa.4.0.copyload, !13863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13911)
    #dbg_value(ptr %.sroa.4.0.copyload, !13855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13912)
    #dbg_value(ptr %.sroa.5.0.copyload, !13863, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13911)
    #dbg_value(ptr %.sroa.5.0.copyload, !13855, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13912)
    #dbg_value(i32 %.sroa.6.0.copyload, !13863, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !13911)
    #dbg_value(i32 %.sroa.6.0.copyload, !13855, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !13912)
    #dbg_value(i32 %.sroa.7.0.copyload, !13863, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !13911)
    #dbg_value(i32 %.sroa.7.0.copyload, !13855, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !13912)
    #dbg_declare(ptr %i.d, !13856, !DIExpression(), !13913)
    #dbg_declare(ptr poison, !13914, !DIExpression(), !13918)
    #dbg_declare(ptr poison, !13924, !DIExpression(), !13928)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13930, !noalias !13931
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i), !dbg !13944
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i), !dbg !13944
    #dbg_value(ptr undef, !13788, !DIExpression(), !13910)
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !13945 ; 2 uses
  %.not18.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !13945 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !dbg !13946

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.f = ptrtoint ptr %.sroa.4.0.copyload to i64, !dbg !13947
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64, !dbg !13947
  %i.h = sub nuw i64 %i.f, %i.g, !dbg !13947
  %i.i = udiv exact i64 %i.h, 56, !dbg !13947     ; 2 uses
  br i1 %.not18.i.i.i.i.i, label %bb.g, label %bb.f, !dbg !13946

bb.c:                                             ; preds = %bb.a
  br i1 %.not18.i.i.i.i.i, label %bb.e, label %bb.d, !dbg !13946

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !13807, !DIExpression(), !13993)
    #dbg_value(ptr poison, !13994, !DIExpression(), !14000)
    #dbg_value(ptr poison, !13381, !DIExpression(), !14002)
  %narrow.i.i.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7.0.copyload, i32 %.sroa.6.0.copyload), !dbg !14004
  %.sink1.i.i.i.i.i.i.i = zext i32 %narrow.i.i.i.i.i.i.i to i64, !dbg !14004
  store i64 %.sink1.i.i.i.i.i.i.i, ptr %.sroa.11.i.i.i.i, align 8, !dbg !14002, !alias.scope !14005, !noalias !14012
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i, !dbg !14014

bb.e:                                             ; preds = %bb.c
  store i64 1, ptr %.sroa.6.i.i.i.i, align 8, !dbg !14015, !alias.scope !14016, !noalias !14012
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i, !dbg !14017

bb.f:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !13789, !DIExpression(), !13909)
    #dbg_value(ptr undef, !13792, !DIExpression(), !13909)
    #dbg_value(ptr poison, !13990, !DIExpression(), !14018)
    #dbg_value(ptr poison, !13979, !DIExpression(), !14020)
    #dbg_value(i64 56, !13955, !DIExpression(), !14022)
    #dbg_value(ptr %.sroa.4.0.copyload, !13984, !DIExpression(), !14026)
    #dbg_value(ptr %.sroa.4.0.copyload, !13969, !DIExpression(), !14027)
    #dbg_value(ptr %.sroa.0.0.copyload, !13970, !DIExpression(), !14027)
    #dbg_value(ptr %.sroa.4.0.copyload, !13961, !DIExpression(), !14028)
    #dbg_value(ptr %.sroa.0.0.copyload, !13962, !DIExpression(), !14028)
    #dbg_value(ptr %.sroa.0.0.copyload, !13954, !DIExpression(), !14029)
    #dbg_value(ptr %.sroa.4.0.copyload, !13953, !DIExpression(), !14029)
    #dbg_value(i64 %i.i, !13980, !DIExpression(), !14030)
    #dbg_value(i64 %i.i, !13794, !DIExpression(), !14031)
    #dbg_value(i64 %i.i, !14032, !DIExpression(), !14036)
    #dbg_value(i64 1, !13796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14031)
    #dbg_value(i64 %i.i, !13796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14031)
    #dbg_value(ptr poison, !13994, !DIExpression(), !14038)
    #dbg_value(ptr poison, !13381, !DIExpression(), !14040)
  %narrow.i.i28.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7.0.copyload, i32 %.sroa.6.0.copyload), !dbg !14042
  %.sink1.i.i29.i.i.i.i.i = zext i32 %narrow.i.i28.i.i.i.i.i to i64, !dbg !14042
    #dbg_value(i64 %.sink1.i.i29.i.i.i.i.i, !13797, !DIExpression(), !14043)
    #dbg_value(i64 %.sink1.i.i29.i.i.i.i.i, !14035, !DIExpression(), !14036)
    #dbg_value(i64 1, !13799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14043)
    #dbg_value(i64 %.sink1.i.i29.i.i.i.i.i, !13799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14043)
  %i.j = add nuw nsw i64 %i.i, %.sink1.i.i29.i.i.i.i.i, !dbg !14044
    #dbg_value(i64 %i.j, !13800, !DIExpression(), !14045)
    #dbg_value(i64 1, !13802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14046)
    #dbg_value(i64 %i.j, !13802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14046)
  store i64 1, ptr %.sroa.6.i.i.i.i, align 8, !dbg !14047, !alias.scope !14016, !noalias !14012
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i, !dbg !14048

bb.g:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !13779, !DIExpression(), !13907)
    #dbg_value(ptr poison, !13990, !DIExpression(), !14049)
    #dbg_value(ptr poison, !13979, !DIExpression(), !14051)
    #dbg_value(i64 56, !13955, !DIExpression(), !14053)
    #dbg_value(ptr %.sroa.4.0.copyload, !13984, !DIExpression(), !14057)
    #dbg_value(ptr %.sroa.4.0.copyload, !13969, !DIExpression(), !14058)
    #dbg_value(ptr %.sroa.0.0.copyload, !13970, !DIExpression(), !14058)
    #dbg_value(ptr %.sroa.4.0.copyload, !13961, !DIExpression(), !14059)
    #dbg_value(ptr %.sroa.0.0.copyload, !13962, !DIExpression(), !14059)
    #dbg_value(ptr %.sroa.0.0.copyload, !13954, !DIExpression(), !14060)
    #dbg_value(ptr %.sroa.4.0.copyload, !13953, !DIExpression(), !14060)
    #dbg_value(i64 %i.i, !13980, !DIExpression(), !14061)
  store i64 1, ptr %.sroa.6.i.i.i.i, align 8, !dbg !14062, !alias.scope !14063, !noalias !14012
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i, !dbg !14068

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sink34.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.11.i.i.i.i, %bb.f ], [ %.sroa.11.i.i.i.i, %bb.g ], [ %.sroa.11.i.i.i.i, %bb.e ], [ %.sroa.6.i.i.i.i, %bb.d ]
  %.sink.i.i.i.i.i = phi i64 [ %i.j, %bb.f ], [ %i.i, %bb.g ], [ 0, %bb.e ], [ 1, %bb.d ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink34.i.sroa.phi.i.i.i.i, align 8, !dbg !13910, !alias.scope !14016, !noalias !14012
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !dbg !13944, !range !3100, !noalias !13931, !noundef !23
  %i.k = trunc nuw i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i.i.i to i1, !dbg !14069
  br i1 %i.k, label %bb.h, label %bb.s, !dbg !14069, !prof !5637

bb.h:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i
  %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i = load i64, ptr %.sroa.11.i.i.i.i, align 8, !dbg !14070, !noalias !13931, !noundef !23 ; 2 uses
    #dbg_value(i64 %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i, !13857, !DIExpression(), !14071)
    #dbg_value(i64 %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i, !13922, !DIExpression(), !14072)
    #dbg_value(i64 %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i, !13917, !DIExpression(), !14073)
    #dbg_value(i64 %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i, !13927, !DIExpression(), !14074)
    #dbg_value(i64 %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i, !13396, !DIExpression(), !14075)
    #dbg_value(i64 %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i, !13425, !DIExpression(), !14077)
    #dbg_declare(ptr poison, !13402, !DIExpression(), !14079)
    #dbg_value(i64 8, !13403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14075)
    #dbg_value(i64 8, !13430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14077)
    #dbg_value(i64 56, !13403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14075)
    #dbg_value(i64 56, !13430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14077)
    #dbg_value(i64 0, !13429, !DIExpression(), !14077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14080, !noalias !13931
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !14080, !noalias !13931
  %i.l = load i64, ptr %i.c, align 8, !dbg !14080, !range !3100, !noalias !13931, !noundef !23
  %i.m = trunc nuw i64 %i.l to i1, !dbg !14081
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14075
  %i.o = load i64, ptr %i.n, align 8, !dbg !14075, !range !13436, !noalias !13931, !noundef !23 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14075 ; 2 uses
  br i1 %i.m, label %bb.i, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i.i, !dbg !14081, !prof !6198

bb.i:                                             ; preds = %bb.h
  %i.q = load i64, ptr %i.p, align 8, !dbg !14082, !noalias !13931
    #dbg_value(i64 %i.o, !13406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14083)
    #dbg_value(i64 %i.q, !13406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14083)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #32, !dbg !14084, !noalias !13931
  unreachable, !dbg !14084

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i.i: ; preds = %bb.h
  %i.r = load ptr, ptr %i.p, align 8, !dbg !14085, !noalias !13931, !nonnull !23, !noundef !23 ; 2 uses
    #dbg_value(i64 %i.o, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14086)
    #dbg_value(ptr %i.r, !13404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14086)
    #dbg_value(ptr poison, !13428, !DIExpression(), !14087)
  %i.s = icmp ule i64 %.sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i, %i.o, !dbg !14088
    #dbg_value(i1 true, !13444, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14089)
  tail call void @llvm.assume(i1 %i.s), !dbg !14091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14092, !noalias !13931
  store i64 %i.o, ptr %i.d, align 8, !dbg !14093, !noalias !13931
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14093 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8, !dbg !14093, !noalias !13931
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !14093 ; 3 uses
  store i64 0, ptr %i.u, align 8, !dbg !14093, !noalias !13931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i), !dbg !14094
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i), !dbg !14094
    #dbg_value(ptr %.sroa.0.0.copyload, !13846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14095)
    #dbg_value(ptr %.sroa.0.0.copyload, !13819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14096)
    #dbg_value(ptr %.sroa.4.0.copyload, !13846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14095)
    #dbg_value(ptr %.sroa.4.0.copyload, !13819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14096)
    #dbg_value(ptr %.sroa.5.0.copyload, !13846, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14095)
    #dbg_value(ptr %.sroa.5.0.copyload, !13819, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14096)
    #dbg_value(i32 %.sroa.6.0.copyload, !13846, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !14095)
    #dbg_value(i32 %.sroa.6.0.copyload, !13819, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !14096)
    #dbg_value(i32 %.sroa.7.0.copyload, !13846, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !14095)
    #dbg_value(i32 %.sroa.7.0.copyload, !13819, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !14096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14097), !dbg !14100
    #dbg_value(ptr %i.d, !13845, !DIExpression(), !14095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14101), !dbg !14104
    #dbg_value(ptr %i.d, !13818, !DIExpression(), !14096)
    #dbg_value(ptr %i.d, !14105, !DIExpression(), !14111)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i), !dbg !14113
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i), !dbg !14113
    #dbg_value(ptr undef, !13788, !DIExpression(), !13884)
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !14114

bb.j:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.v = ptrtoint ptr %.sroa.4.0.copyload to i64, !dbg !14115
  %i.w = ptrtoint ptr %.sroa.0.0.copyload to i64, !dbg !14115
  %i.x = sub nuw i64 %i.v, %i.w, !dbg !14115
  %i.y = udiv exact i64 %i.x, 56, !dbg !14115     ; 2 uses
  br i1 %.not18.i.i.i.i.i, label %bb.o, label %bb.n, !dbg !14114

bb.k:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i.i
  br i1 %.not18.i.i.i.i.i, label %bb.m, label %bb.l, !dbg !14114

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr undef, !13807, !DIExpression(), !14121)
    #dbg_value(ptr poison, !13994, !DIExpression(), !14122)
    #dbg_value(ptr poison, !13381, !DIExpression(), !14124)
  %narrow.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7.0.copyload, i32 %.sroa.6.0.copyload), !dbg !14126
  %.sink1.i.i.i.i.i.i.i.i.i = zext i32 %narrow.i.i.i.i.i.i.i.i.i to i64, !dbg !14126
  store i64 %.sink1.i.i.i.i.i.i.i.i.i, ptr %.sroa.11.i.i.i.i.i.i, align 8, !dbg !14124, !alias.scope !14127, !noalias !14134
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i.i.i, !dbg !14138

bb.m:                                             ; preds = %bb.k
  store i64 1, ptr %.sroa.6.i.i.i.i.i.i, align 8, !dbg !14139, !alias.scope !14140, !noalias !14134
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i.i.i, !dbg !14141

bb.n:                                             ; preds = %bb.j
    #dbg_value(ptr undef, !13789, !DIExpression(), !13883)
    #dbg_value(ptr undef, !13792, !DIExpression(), !13883)
    #dbg_value(ptr poison, !13990, !DIExpression(), !14142)
    #dbg_value(ptr poison, !13979, !DIExpression(), !14144)
    #dbg_value(i64 56, !13955, !DIExpression(), !14146)
    #dbg_value(ptr %.sroa.4.0.copyload, !13984, !DIExpression(), !14150)
    #dbg_value(ptr %.sroa.4.0.copyload, !13969, !DIExpression(), !14151)
    #dbg_value(ptr %.sroa.0.0.copyload, !13970, !DIExpression(), !14151)
    #dbg_value(ptr %.sroa.4.0.copyload, !13961, !DIExpression(), !14152)
    #dbg_value(ptr %.sroa.0.0.copyload, !13962, !DIExpression(), !14152)
    #dbg_value(ptr %.sroa.0.0.copyload, !13954, !DIExpression(), !14153)
    #dbg_value(ptr %.sroa.4.0.copyload, !13953, !DIExpression(), !14153)
    #dbg_value(i64 %i.y, !13980, !DIExpression(), !14154)
    #dbg_value(i64 %i.y, !13794, !DIExpression(), !14155)
    #dbg_value(i64 %i.y, !14032, !DIExpression(), !14156)
    #dbg_value(i64 1, !13796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14155)
    #dbg_value(i64 %i.y, !13796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14155)
    #dbg_value(ptr poison, !13994, !DIExpression(), !14158)
    #dbg_value(ptr poison, !13381, !DIExpression(), !14160)
  %narrow.i.i28.i.i.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7.0.copyload, i32 %.sroa.6.0.copyload), !dbg !14162
  %.sink1.i.i29.i.i.i.i.i.i.i = zext i32 %narrow.i.i28.i.i.i.i.i.i.i to i64, !dbg !14162
    #dbg_value(i64 %.sink1.i.i29.i.i.i.i.i.i.i, !13797, !DIExpression(), !14163)
    #dbg_value(i64 %.sink1.i.i29.i.i.i.i.i.i.i, !14035, !DIExpression(), !14156)
    #dbg_value(i64 1, !13799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14163)
    #dbg_value(i64 %.sink1.i.i29.i.i.i.i.i.i.i, !13799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14163)
  %i.z = add nuw nsw i64 %i.y, %.sink1.i.i29.i.i.i.i.i.i.i, !dbg !14164
    #dbg_value(i64 %i.z, !13800, !DIExpression(), !14165)
    #dbg_value(i64 1, !13802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14166)
    #dbg_value(i64 %i.z, !13802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14166)
  store i64 1, ptr %.sroa.6.i.i.i.i.i.i, align 8, !dbg !14167, !alias.scope !14140, !noalias !14134
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i.i.i, !dbg !14168

bb.o:                                             ; preds = %bb.j
    #dbg_value(ptr undef, !13779, !DIExpression(), !13809)
    #dbg_value(ptr poison, !13990, !DIExpression(), !14169)
    #dbg_value(ptr poison, !13979, !DIExpression(), !14171)
    #dbg_value(i64 56, !13955, !DIExpression(), !14173)
    #dbg_value(ptr %.sroa.4.0.copyload, !13984, !DIExpression(), !14177)
    #dbg_value(ptr %.sroa.4.0.copyload, !13969, !DIExpression(), !14178)
    #dbg_value(ptr %.sroa.0.0.copyload, !13970, !DIExpression(), !14178)
    #dbg_value(ptr %.sroa.4.0.copyload, !13961, !DIExpression(), !14179)
    #dbg_value(ptr %.sroa.0.0.copyload, !13962, !DIExpression(), !14179)
    #dbg_value(ptr %.sroa.0.0.copyload, !13954, !DIExpression(), !14180)
    #dbg_value(ptr %.sroa.4.0.copyload, !13953, !DIExpression(), !14180)
    #dbg_value(i64 %i.y, !13980, !DIExpression(), !14181)
  store i64 1, ptr %.sroa.6.i.i.i.i.i.i, align 8, !dbg !14182, !alias.scope !14183, !noalias !14134
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i.i.i, !dbg !14188

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sink34.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.11.i.i.i.i.i.i, %bb.n ], [ %.sroa.11.i.i.i.i.i.i, %bb.o ], [ %.sroa.11.i.i.i.i.i.i, %bb.m ], [ %.sroa.6.i.i.i.i.i.i, %bb.l ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.n ], [ %i.y, %bb.o ], [ 0, %bb.m ], [ 1, %bb.l ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sink34.i.sroa.phi.i.i.i.i.i.i, align 8, !dbg !13884, !alias.scope !14140, !noalias !14134
    #dbg_value(i64 poison, !13820, !DIExpression(), !14189)
  %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i.i, align 8, !dbg !14190, !range !3100, !noalias !14191, !noundef !23
  %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i = load i64, ptr %.sroa.11.i.i.i.i.i.i, align 8, !dbg !14190, !noalias !14191 ; 2 uses
    #dbg_value(i64 %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i.i.i.i.i, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14189)
    #dbg_value(i64 %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i, !13822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14189)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i), !dbg !14192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i), !dbg !14192
  %i.aa = trunc nuw i64 %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i.i.i.i.i to i1, !dbg !14193
  br i1 %i.aa, label %bb.p, label %bb.r, !dbg !14193, !prof !5637

bb.p:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i.i.i
    #dbg_value(i64 %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i, !13823, !DIExpression(), !14194)
    #dbg_value(ptr %i.d, !14195, !DIExpression(), !14202)
    #dbg_value(i64 %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i, !14201, !DIExpression(), !14202)
    #dbg_value(i64 %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i, !14204, !DIExpression(), !14212)
    #dbg_value(i64 %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i, !14214, !DIExpression(), !14220)
    #dbg_value(i64 %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i, !14222, !DIExpression(), !14228)
    #dbg_value(ptr %i.d, !14210, !DIExpression(), !14230)
    #dbg_value(i64 0, !14211, !DIExpression(), !14212)
    #dbg_value(i64 0, !14218, !DIExpression(), !14220)
    #dbg_value(i64 0, !14226, !DIExpression(), !14228)
    #dbg_value(ptr %i.d, !14217, !DIExpression(), !14220)
    #dbg_value(ptr %i.d, !14225, !DIExpression(), !14228)
    #dbg_value(i64 8, !14219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14220)
    #dbg_value(i64 8, !14227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14228)
    #dbg_value(i64 56, !14219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14220)
    #dbg_value(i64 56, !14227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14228)
  %i.ab = icmp ugt i64 %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i, %i.o, !dbg !14231
  br i1 %i.ab, label %bb.q, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2z_3map3MapINtNtNtB2D_5slice4iter7IterMutBG_ENCNvMBJ_INtBJ_7LruSlabB1b_E6insert0EIB3n_INtNtNtB2D_3ops5range5RangemENCB4d_s_0EEEB1f_.exit.i.i.i.i.i, !dbg !14232, !prof !6198

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %.sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.16..i.i.i.i.i.i, i64 noundef 8, i64 noundef 56)
          to label %.noexc.i.i.i.i unwind label %bb.t, !dbg !14233, !noalias !13931

.noexc.i.i.i.i:                                   ; preds = %bb.q
  %.pre.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !dbg !14234, !alias.scope !14239, !noalias !14240
  %.pre.i.i.i.i = load ptr, ptr %i.t, align 8, !dbg !14241, !alias.scope !14239, !noalias !14240
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2z_3map3MapINtNtNtB2D_5slice4iter7IterMutBG_ENCNvMBJ_INtBJ_7LruSlabB1b_E6insert0EIB3n_INtNtNtB2D_3ops5range5RangemENCB4d_s_0EEEB1f_.exit.i.i.i.i.i, !dbg !14233

bb.r:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31
          to label %.noexc4.i.i.i.i unwind label %bb.t, !dbg !14258, !noalias !13931

.noexc4.i.i.i.i:                                  ; preds = %bb.r
  unreachable, !dbg !14258

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2z_3map3MapINtNtNtB2D_5slice4iter7IterMutBG_ENCNvMBJ_INtBJ_7LruSlabB1b_E6insert0EIB3n_INtNtNtB2D_3ops5range5RangemENCB4d_s_0EEEB1f_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.p
  %i.ac = phi ptr [ %i.r, %bb.p ], [ %.pre.i.i.i.i, %.noexc.i.i.i.i ], !dbg !14241
  %i.ad = phi i64 [ 0, %bb.p ], [ %.pre.i.i.i.i.i.i, %.noexc.i.i.i.i ], !dbg !14234
    #dbg_value(ptr %i.ac, !13838, !DIExpression(), !14259)
    #dbg_value(ptr %i.u, !14237, !DIExpression(), !14260)
    #dbg_value(ptr %i.u, !13840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14261)
    #dbg_value(i64 %i.ad, !13840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14262, !noalias !14191
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !14262, !noalias !14263
  %.sroa.5.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14262
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx11.i.i.i.i, align 8, !dbg !14262, !noalias !14263
  %.sroa.613.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14262
  store ptr %.sroa.5.0.copyload, ptr %.sroa.613.0..sroa_idx14.i.i.i.i, align 8, !dbg !14262, !noalias !14263
  %.sroa.7.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14262
  store i32 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx16.i.i.i.i, align 8, !dbg !14262, !noalias !14263
  %.sroa.9.0..sroa_idx18.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !14262
  store i32 %.sroa.7.0.copyload, ptr %.sroa.9.0..sroa_idx18.i.i.i.i, align 4, !dbg !14262, !noalias !14263
    #dbg_value(ptr %i.ac, !14264, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14276)
    #dbg_value(ptr %i.ac, !14278, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14288)
    #dbg_value(ptr %i.u, !14264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14276)
    #dbg_value(ptr %i.u, !14278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14288)
    #dbg_value(i64 %i.ad, !14264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14276)
    #dbg_value(i64 %i.ad, !14278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14288)
    #dbg_declare(ptr %i.b, !14273, !DIExpression(), !14290)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14291, !noalias !14292
  store ptr %i.u, ptr %i.a, align 8, !dbg !14296, !noalias !14297
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14296
  store i64 %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !14296, !noalias !14297
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14296
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !14296, !noalias !14297
  invoke void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1M_INtB1M_7LruSlabB2e_E6insert0EIB11_INtNtNtBb_3ops5range5RangemENCB3j_s_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB4B_8for_each4callB1J_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecB1J_E14extend_trustedBO_E0E0EB2i_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1H_INtB1H_7LruSlabB29_E6insert0EIBW_INtNtNtBc_3ops5range5RangemENCB3e_s_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecB1E_EEB2d_.exit unwind label %bb.t, !dbg !14298, !noalias !13931

bb.s:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1L_INtB1L_7LruSlabB2d_E6insert0EIB10_INtNtNtBa_3ops5range5RangemENCB3i_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_.exit.i.i.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #31, !dbg !14299, !noalias !13931
  unreachable, !dbg !14299

bb.t:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2z_3map3MapINtNtNtB2D_5slice4iter7IterMutBG_ENCNvMBJ_INtBJ_7LruSlabB1b_E6insert0EIB3n_INtNtNtB2D_3ops5range5RangemENCB4d_s_0EEEB1f_.exit.i.i.i.i.i, %bb.r, %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEEB1H_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %common.resume unwind label %bb.u, !dbg !14300, !noalias !13931

bb.u:                                             ; preds = %bb.t
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !14301, !noalias !13931
  unreachable, !dbg !14301

common.resume:                                    ; preds = %bb.w, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.t ], [ %i.al, %bb.w ]
  resume { ptr, i32 } %common.resume.op, !dbg !14302

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1H_INtB1H_7LruSlabB29_E6insert0EIBW_INtNtNtBc_3ops5range5RangemENCB3e_s_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecB1E_EEB2d_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2z_3map3MapINtNtNtB2D_5slice4iter7IterMutBG_ENCNvMBJ_INtBJ_7LruSlabB1b_E6insert0EIB3n_INtNtNtB2D_3ops5range5RangemENCB4d_s_0EEEB1f_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14303, !noalias !14292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14304, !noalias !14191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !14305, !noalias !14306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14300, !noalias !13931
    #dbg_value(ptr poison, !13537, !DIExpression(), !14307)
    #dbg_declare(ptr %i.e, !13553, !DIExpression(), !14310)
    #dbg_value(i64 56, !13568, !DIExpression(), !14311)
    #dbg_value(i64 8, !13592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14316)
    #dbg_value(i64 56, !13592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14316)
    #dbg_value(i64 56, !13568, !DIExpression(), !14319)
    #dbg_value(ptr %i.e, !13590, !DIExpression(), !14323)
    #dbg_value(ptr %i.e, !13585, !DIExpression(), !14324)
  %i.ag = load i64, ptr %i.e, align 8, !dbg !14325, !range !6194, !alias.scope !14326, !noundef !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !14329 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !14329, !alias.scope !14326, !noundef !23 ; 3 uses
  %i.aj = icmp ugt i64 %i.ag, %i.ai, !dbg !14330
  br i1 %i.aj, label %bb.v, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE16into_boxed_sliceB1d_.exit, !dbg !14330

bb.v:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1H_INtB1H_7LruSlabB29_E6insert0EIBW_INtNtNtBc_3ops5range5RangemENCB3e_s_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecB1E_EEB2d_.exit
    #dbg_value(ptr %i.e, !13609, !DIExpression(), !14331)
    #dbg_value(i64 %i.ai, !13610, !DIExpression(), !14332)
    #dbg_value(i64 %i.ai, !13599, !DIExpression(), !14316)
    #dbg_value(ptr %i.e, !13598, !DIExpression(), !14316)
    #dbg_value(ptr %i.e, !13667, !DIExpression(), !14333)
    #dbg_value(i64 %i.ai, !13688, !DIExpression(), !14333)
    #dbg_value(i64 8, !13689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14333)
    #dbg_value(i64 56, !13689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14333)
  %i.ak = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef range(i64 0, 9223372036854775807) %i.ai, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit.i unwind label %bb.w, !dbg !14335 ; 2 uses

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEEB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.z, !dbg !14336

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.v
  %i.am = extractvalue { i64, i64 } %i.ak, 0, !dbg !14337 ; 2 uses
  %.not.i = icmp eq i64 %i.am, -1, !dbg !14338
  br i1 %.not.i, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit._crit_edge.i, label %bb.x, !dbg !14339, !prof !5637

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit._crit_edge.i: ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit.i
  %.sroa.534.0.copyload.pre.i = load i64, ptr %i.ah, align 8, !dbg !14340, !alias.scope !14326
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE16into_boxed_sliceB1d_.exit, !dbg !14339

bb.x:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit.i
  %i.an = extractvalue { i64, i64 } %i.ak, 1, !dbg !14337
    #dbg_value(i64 %i.am, !13600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14341)
    #dbg_value(i64 %i.an, !13600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14341)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.an) #32
          to label %bb.y unwind label %bb.w, !dbg !14342

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !14343
  unreachable, !dbg !14343

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEE16into_boxed_sliceB1d_.exit: ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1H_INtB1H_7LruSlabB29_E6insert0EIBW_INtNtNtBc_3ops5range5RangemENCB3e_s_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecB1E_EEB2d_.exit, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit._crit_edge.i
  %.sroa.534.0.copyload.i = phi i64 [ %.sroa.534.0.copyload.pre.i, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshovLROGBtMy_11quinn_proto.exit._crit_edge.i ], [ %i.ai, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEENCNvMB1H_INtB1H_7LruSlabB29_E6insert0EIBW_INtNtNtBc_3ops5range5RangemENCB3e_s_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecB1E_EEB2d_.exit ], !dbg !14340 ; 2 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14340
  %.sroa.433.0.copyload.i = load ptr, ptr %.sroa.433.0..sroa_idx.i, align 8, !dbg !14340, !alias.scope !14326, !nonnull !23, !noundef !23
    #dbg_value(i64 poison, !13554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14344)
    #dbg_value(ptr %.sroa.433.0.copyload.i, !13554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14344)
    #dbg_value(i64 %.sroa.534.0.copyload.i, !13554, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14344)
    #dbg_value(i64 poison, !13563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14345)
    #dbg_value(ptr %.sroa.433.0.copyload.i, !13563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14345)
    #dbg_value(ptr undef, !13537, !DIExpression(), !14307)
  %i.ap = icmp ult i64 %.sroa.534.0.copyload.i, 164703072086692426, !dbg !14346
  call void @llvm.assume(i1 %i.ap), !dbg !14347
  %i.aq = insertvalue { ptr, i64 } poison, ptr %.sroa.433.0.copyload.i, 0, !dbg !14348
  %i.ar = insertvalue { ptr, i64 } %i.aq, i64 %.sroa.534.0.copyload.i, 1, !dbg !14348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14349
  ret { ptr, i64 } %i.ar, !dbg !14350
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsl_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendRhE6extendRShECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 !dbg !14351 {
bb.a:
    #dbg_value(ptr %0, !14354, !DIExpression(), !14358)
    #dbg_value(ptr %1, !14355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14358)
    #dbg_value(i64 %2, !14355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14358)
    #dbg_value(ptr %1, !11079, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14359)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !11079, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14359)
    #dbg_value(ptr %0, !11078, !DIExpression(), !14359)
    #dbg_value(ptr %1, !11080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14361)
    #dbg_value(i64 %2, !11080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14361)
    #dbg_value(ptr %0, !11067, !DIExpression(), !14362)
    #dbg_value(ptr %0, !11059, !DIExpression(), !14364)
    #dbg_value(ptr %0, !11117, !DIExpression(), !14366)
    #dbg_value(ptr %0, !11125, !DIExpression(), !14368)
    #dbg_value(ptr %1, !11068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14362)
    #dbg_value(ptr %1, !11060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14364)
    #dbg_value(i64 %2, !11068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14362)
    #dbg_value(i64 %2, !11060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14364)
    #dbg_value(i64 %2, !11061, !DIExpression(), !14370)
    #dbg_value(i64 %2, !11045, !DIExpression(), !14371)
    #dbg_value(ptr %0, !11134, !DIExpression(), !14373)
    #dbg_value(i64 %2, !11140, !DIExpression(), !14373)
end_hunk_0
