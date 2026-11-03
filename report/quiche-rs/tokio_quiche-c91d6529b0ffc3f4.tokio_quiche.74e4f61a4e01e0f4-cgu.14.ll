Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.14?download=true
inline.NumInlined: 385
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_:bb.a
  br i1 %i.l, label %bb.e, label %bb.g, !dbg !11149

bb.e:                                             ; preds = %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.3
    #dbg_value(i64 4, !11074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11082)
    #dbg_value(i64 4, !11074, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11082)
    #dbg_value(i64 4, !11075, !DIExpression(), !11084)
  %exitcond.4.not = icmp eq i64 %i.b, 4, !dbg !11147
  br i1 %exitcond.4.not, label %bb.k, label %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.4, !dbg !11147

_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.4: ; preds = %bb.e
    #dbg_value(i64 4, !11074, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11082)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4160, !dbg !11147
  %i.n = getelementptr i8, ptr %i.c, i64 5192, !dbg !11148
  %.val9.4 = load i64, ptr %i.n, align 8, !dbg !11148, !noundef !1613 ; 2 uses
    #dbg_value(ptr poison, !11086, !DIExpression(), !11043)
    #dbg_value(i64 poison, !11091, !DIExpression(), !11043)
    #dbg_value(ptr poison, !11123, !DIExpression(), !11050)
    #dbg_value(i64 poison, !11128, !DIExpression(), !11050)
  %i.o = icmp eq i64 %.val9.4, 0, !dbg !11149
  br i1 %i.o, label %bb.f, label %bb.g, !dbg !11149

bb.f:                                             ; preds = %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.4
    #dbg_value(i64 5, !11074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11082)
    #dbg_value(i64 5, !11074, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11082)
    #dbg_value(i64 5, !11075, !DIExpression(), !11084)
  %exitcond.5.not = icmp eq i64 %i.b, 5, !dbg !11147
  br i1 %exitcond.5.not, label %bb.k, label %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.5, !dbg !11147

_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.5: ; preds = %bb.f
    #dbg_value(i64 5, !11074, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11082)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 5200, !dbg !11147
  %i.q = getelementptr i8, ptr %i.c, i64 6232, !dbg !11148
  %.val9.5 = load i64, ptr %i.q, align 8, !dbg !11148, !noundef !1613 ; 2 uses
    #dbg_value(ptr poison, !11086, !DIExpression(), !11043)
    #dbg_value(i64 poison, !11091, !DIExpression(), !11043)
    #dbg_value(ptr poison, !11123, !DIExpression(), !11050)
    #dbg_value(i64 poison, !11128, !DIExpression(), !11050)
  %i.r = icmp eq i64 %.val9.5, 0, !dbg !11149
  br i1 %i.r, label %.loopexit, label %bb.g, !dbg !11149

.loopexit:                                        ; preds = %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.5, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.thread
  %storemerge = phi i64 [ 1, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.thread ], [ 0, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.5 ], !dbg !11081
  store i64 %storemerge, ptr %0, align 8, !dbg !11081
  ret void, !dbg !11150

_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit: ; preds = %bb.a
    #dbg_value(i64 0, !11074, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11082)
  %i.s = getelementptr i8, ptr %i.c, i64 1032, !dbg !11148
  %.val9 = load i64, ptr %i.s, align 8, !dbg !11148, !noundef !1613 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11134), !dbg !11148
    #dbg_value(ptr poison, !11086, !DIExpression(), !11043)
    #dbg_value(i64 poison, !11091, !DIExpression(), !11043)
    #dbg_value(ptr poison, !11123, !DIExpression(), !11050)
    #dbg_value(i64 poison, !11128, !DIExpression(), !11050)
  %i.t = icmp eq i64 %.val9, 0, !dbg !11149
  br i1 %i.t, label %bb.b, label %bb.g, !dbg !11149

bb.g:                                             ; preds = %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.5, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.4, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.3, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.2, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.1, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit
  %.lcssa28 = phi ptr [ %i.c, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit ], [ %i.d, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.1 ], [ %i.g, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.2 ], [ %i.j, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.3 ], [ %i.m, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.4 ], [ %i.p, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.5 ], !dbg !11147
  %.val9.lcssa26 = phi i64 [ %.val9, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit ], [ %.val9.1, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.1 ], [ %.val9.2, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.2 ], [ %.val9.3, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.3 ], [ %.val9.4, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.4 ], [ %.val9.5, %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.5 ], !dbg !11148 ; 2 uses
  %i.u = getelementptr i8, ptr %.lcssa28, i64 1024
  %.val.le = load i64, ptr %i.u, align 8          ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !1613 ; 4 uses
  %i.x = tail call noundef i64 @_RNvNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level10slot_range(i64 noundef %.val.le), !dbg !11151, !noalias !11134 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !11152
  br i1 %i.y, label %bb.h, label %bb.i, !dbg !11152

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28, !dbg !11152, !noalias !11134
  unreachable, !dbg !11152

bb.i:                                             ; preds = %bb.g
    #dbg_value(i64 poison, !11129, !DIExpression(), !11053)
    #dbg_value(i64 %.val9.lcssa26, !11135, !DIExpression(), !11056)
    #dbg_value(i64 %.val9.lcssa26, !11140, !DIExpression(), !11059)
    #dbg_value(i64 poison, !11138, !DIExpression(), !11056)
    #dbg_value(i64 poison, !11141, !DIExpression(), !11059)
    #dbg_value(i64 poison, !11130, !DIExpression(), !11060)
    #dbg_value(i64 poison, !11143, !DIExpression(), !11063)
    #dbg_value(i64 poison, !11131, !DIExpression(), !11064)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11092, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value), !11065)
  %i.z = tail call noundef i64 @_RNvNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level11level_range(i64 noundef %.val.le), !dbg !11153, !noalias !11134 ; 3 uses
    #dbg_value(i64 %i.z, !11095, !DIExpression(), !11066)
  %i.aa = tail call noundef i64 @_RNvNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level10slot_range(i64 noundef %.val.le), !dbg !11154, !noalias !11134
    #dbg_value(i64 %i.aa, !11096, !DIExpression(), !11067)
  %i.ab = icmp eq i64 %i.z, 0, !dbg !11155
  br i1 %i.ab, label %bb.j, label %_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.thread, !dbg !11155

_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_.exit.thread: ; preds = %bb.i
  %i.ac = udiv i64 %i.w, %i.x, !dbg !11152        ; 2 uses
    #dbg_value(i64 %i.ac, !11129, !DIExpression(), !11053)
    #dbg_value(i64 %i.ac, !11138, !DIExpression(), !11056)
    #dbg_value(i64 %i.ac, !11141, !DIExpression(), !11059)
  %i.ad = tail call noundef i64 @llvm.fshr.i64(i64 %.val9.lcssa26, i64 %.val9.lcssa26, i64 %i.ac), !dbg !11156
    #dbg_value(i64 %i.ad, !11130, !DIExpression(), !11060)
    #dbg_value(i64 %i.ad, !11143, !DIExpression(), !11063)
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true), !dbg !11157
    #dbg_value(!DIArgList(i64 %i.ae, i64 %i.ac), !11092, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value), !11065)
    #dbg_value(i64 %i.ae, !11131, !DIExpression(), !11064)
  %i.af = add i64 %i.ae, %i.ac, !dbg !11158
    #dbg_value(i64 %i.af, !11092, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value), !11065)
  %i.ag = and i64 %i.af, 63, !dbg !11158          ; 2 uses
    #dbg_value(i64 %i.ag, !11092, !DIExpression(), !11065)
  %i.ah = urem i64 %i.w, %i.z, !dbg !11155
  %i.ai = sub nuw i64 %i.w, %i.ah, !dbg !11159
    #dbg_value(i64 %i.ai, !11097, !DIExpression(), !11068)
  %i.aj = mul i64 %i.ag, %i.aa, !dbg !11160
  %i.ak = add i64 %i.aj, %i.ai, !dbg !11161       ; 2 uses
    #dbg_value(i64 %i.ak, !11098, !DIExpression(), !11069)
  %i.al = icmp ult i64 %i.ak, %i.w, !dbg !11162
  %i.am = select i1 %i.al, i64 %i.z, i64 0, !dbg !11162
  %spec.select.i = add i64 %i.am, %i.ak, !dbg !11162
    #dbg_value(i64 %spec.select.i, !11098, !DIExpression(), !11069)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11163
  store i64 %.val.le, ptr %i.an, align 8, !dbg !11163, !alias.scope !11134
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11163
  store i64 %i.ag, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !11163, !alias.scope !11134
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11163
  store i64 %spec.select.i, ptr %.sroa.58.0..sroa_idx.i, align 8, !dbg !11163, !alias.scope !11134
  br label %.loopexit, !dbg !11164

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28, !dbg !11155, !noalias !11134
  unreachable, !dbg !11155

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i64 [ %.promoted, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  store i64 %.lcssa, ptr %0, align 8, !dbg !11165
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !dbg !11147
  unreachable, !dbg !11147
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE4pollB1q_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11169 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
    #dbg_value(ptr %0, !11231, !DIExpression(), !11239)
    #dbg_value(i64 %1, !11232, !DIExpression(), !11239)
    #dbg_value(ptr %2, !11233, !DIExpression(), !11239)
    #dbg_declare(ptr %i.f, !11240, !DIExpression(), !11255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11315
  call void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0), !dbg !11316
  %i.g = load i64, ptr %i.f, align 8, !dbg !11317, !range !6006, !noundef !1613
  %i.h = trunc nuw i64 %i.g to i1, !dbg !11318
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !dbg !11318

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b, !dbg !11318

bb.b:                                             ; preds = %.lr.ph, %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !11319 ; 5 uses
    #dbg_value(i64 %.sroa.3.0.copyload, !11252, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11256)
    #dbg_value(i64 %.sroa.3.0.copyload, !11257, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11263)
  %i.k = icmp ugt i64 %.sroa.3.0.copyload, %1, !dbg !11320
  br i1 %i.k, label %._crit_edge, label %bb.c, !dbg !11320

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 poison, !11234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11264)
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !11321
    #dbg_value(i64 %.sroa.7.0.copyload, !11234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11264)
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !11321 ; 4 uses
    #dbg_value(i64 poison, !11234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11264)
    #dbg_value(i64 %.sroa.7.0.copyload, !11234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11264)
    #dbg_value(i64 %.sroa.8.0.copyload, !11234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11264)
    #dbg_value(i64 %.sroa.3.0.copyload, !11234, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11264)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11322
    #dbg_value(ptr undef, !11236, !DIExpression(), !11266)
  %.val10 = load i64, ptr %i.i, align 8, !dbg !11323 ; 2 uses
    #dbg_value(ptr poison, !11267, !DIExpression(), !11181)
    #dbg_value(ptr poison, !11272, !DIExpression(), !11181)
    #dbg_value(ptr %2, !11273, !DIExpression(), !11181)
    #dbg_declare(ptr %i.e, !11274, !DIExpression(), !11182)
  %.0.val1.fr.i = freeze i64 %.sroa.7.0.copyload  ; 4 uses
  %i.l = icmp ult i64 %.0.val1.fr.i, %.val10
    #dbg_value(ptr poison, !11283, !DIExpression(), !11185)
    #dbg_value(ptr poison, !11285, !DIExpression(), !11185)
    #dbg_value(ptr %2, !11286, !DIExpression(), !11185)
  br i1 %i.l, label %.lr.ph.i, label %bb.h, !dbg !11324

.lr.ph.i:                                         ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !dbg !11323, !nonnull !1613, !noundef !1613
  %i.m = getelementptr [1040 x i8], ptr %.val, i64 %.0.val1.fr.i ; 5 uses
  %i.n = icmp ult i64 %.sroa.8.0.copyload, 64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.8.0.copyload ; 4 uses
  %i.p = shl nuw i64 1, %.sroa.8.0.copyload       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1032 ; 4 uses
  %i.r = getelementptr i8, ptr %i.m, i64 -1040
  %i.s = getelementptr i8, ptr %i.m, i64 -16
  %i.t = getelementptr i8, ptr %i.m, i64 -8       ; 2 uses
  br i1 %i.n, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.u = icmp eq i64 %.0.val1.fr.i, 0
  br i1 %i.u, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.split.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11288), !dbg !11325
    #dbg_value(ptr %i.m, !11289, !DIExpression(), !11191)
    #dbg_value(i64 poison, !11293, !DIExpression(), !11191)
    #dbg_value(ptr %2, !11294, !DIExpression(), !11191)
  %i.v = call { i64, i64 } @_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %2), !dbg !11326 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0, !dbg !11326
    #dbg_value(i64 %i.w, !11295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11192)
    #dbg_value(i64 poison, !11295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11192)
  switch i64 %i.w, label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_.exit [
    i64 1, label %bb.d
    i64 0, label %.loopexit
  ], !dbg !11327

bb.d:                                             ; preds = %.lr.ph.split.us.split.us.i
  %.val.i.i.us.us.i = load i64, ptr %i.o, align 8, !dbg !11328, !range !6006, !alias.scope !11288, !noalias !11297, !noundef !1613
    #dbg_value(ptr poison, !6010, !DIExpression(), !11198)
    #dbg_value(ptr poison, !6016, !DIExpression(), !11200)
    #dbg_value(ptr poison, !6021, !DIExpression(), !11202)
  %.not.i.i.i.us.us.i = icmp eq i64 %.val.i.i.us.us.i, 0, !dbg !11329
  br i1 %.not.i.i.i.us.us.i, label %bb.e, label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_.exit, !dbg !11330

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.q, align 8, !dbg !11331, !alias.scope !11288, !noalias !11297, !noundef !1613
  %i.y = xor i64 %i.x, %i.p, !dbg !11331
  store i64 %i.y, ptr %i.q, align 8, !dbg !11331, !alias.scope !11288, !noalias !11297
  br label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_.exit, !dbg !11332

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.i, %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_.exit.thread.us.us11.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11288), !dbg !11325
    #dbg_value(ptr %i.m, !11289, !DIExpression(), !11191)
    #dbg_value(i64 poison, !11293, !DIExpression(), !11191)
    #dbg_value(ptr %2, !11294, !DIExpression(), !11191)
  %i.z = call { i64, i64 } @_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %2), !dbg !11326 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0, !dbg !11326
    #dbg_value(i64 %i.aa, !11295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11192)
    #dbg_value(i64 poison, !11295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11192)
  switch i64 %i.aa, label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_.exit.thread.us.us11.i [
    i64 1, label %bb.f
    i64 0, label %.loopexit
  ], !dbg !11327

bb.f:                                             ; preds = %.lr.ph.split.us.split.split.us.i
  %.val.i.i.us.us9.i = load i64, ptr %i.o, align 8, !dbg !11328, !range !6006, !alias.scope !11288, !noalias !11297, !noundef !1613
    #dbg_value(ptr poison, !6010, !DIExpression(), !11198)
    #dbg_value(ptr poison, !6016, !DIExpression(), !11200)
    #dbg_value(ptr poison, !6021, !DIExpression(), !11202)
  %.not.i.i.i.us.us10.i = icmp eq i64 %.val.i.i.us.us9.i, 0, !dbg !11329
  br i1 %.not.i.i.i.us.us10.i, label %bb.g, label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_.exit.thread.us.us11.i, !dbg !11330

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.q, align 8, !dbg !11331, !alias.scope !11288, !noalias !11297, !noundef !1613
  %i.ac = xor i64 %i.ab, %i.p, !dbg !11331
  store i64 %i.ac, ptr %i.q, align 8, !dbg !11331, !alias.scope !11288, !noalias !11297
  br label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_.exit.thread.us.us11.i, !dbg !11332

_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_.exit.thread.us.us11.i: ; preds = %bb.g, %bb.f, %.lr.ph.split.us.split.split.us.i
  %i.ad = extractvalue { i64, i64 } %i.z, 1, !dbg !11333 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11334, !noalias !11298
  store i64 %i.ad, ptr %i.e, align 8, !dbg !11334, !noalias !11298
  %i.ae = call noundef i64 @_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack4whenB19_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2), !dbg !11335
    #dbg_value(i64 %i.ae, !11280, !DIExpression(), !11203)
    #dbg_value(i64 poison, !11281, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11204)
    #dbg_value(ptr %i.r, !6026, !DIExpression(), !11206)
    #dbg_value(i64 %i.ae, !6030, !DIExpression(), !11206)
    #dbg_value(i64 %i.ae, !6035, !DIExpression(), !11208)
    #dbg_value(i64 %i.ad, !6031, !DIExpression(), !11206)
    #dbg_value(ptr %2, !6032, !DIExpression(), !11206)
    #dbg_value(i64 poison, !6038, !DIExpression(), !11208)
    #dbg_value(i64 poison, !6033, !DIExpression(), !11209)
    #dbg_value(i64 poison, !6040, !DIExpression(), !11211)
  %i.af = load i64, ptr %i.s, align 8, !dbg !11336, !alias.scope !11299, !noalias !11298, !noundef !1613
    #dbg_value(i64 %i.af, !6038, !DIExpression(), !11208)
  %i.ag = mul i64 %i.af, 6, !dbg !11337
  %i.ah = and i64 %i.ag, 62, !dbg !11338
  %i.ai = lshr i64 %i.ae, %i.ah, !dbg !11338
  %i.aj = and i64 %i.ai, 63, !dbg !11339          ; 2 uses
    #dbg_value(i64 %i.aj, !6033, !DIExpression(), !11209)
    #dbg_value(i64 %i.aj, !6040, !DIExpression(), !11211)
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.aj, !dbg !11340
  call void @_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack4pushB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ak, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %2), !dbg !11341
  %i.al = shl nuw i64 1, %i.aj, !dbg !11342
  %i.am = load i64, ptr %i.t, align 8, !dbg !11343, !alias.scope !11299, !noalias !11298, !noundef !1613
  %i.an = or i64 %i.al, %i.am, !dbg !11343
  store i64 %i.an, ptr %i.t, align 8, !dbg !11343, !alias.scope !11299, !noalias !11298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11344, !noalias !11298
    #dbg_value(ptr poison, !11283, !DIExpression(), !11185)
    #dbg_value(ptr poison, !11285, !DIExpression(), !11185)
    #dbg_value(ptr %2, !11286, !DIExpression(), !11185)
  br label %.lr.ph.split.us.split.split.us.i, !dbg !11324

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11288), !dbg !11325
    #dbg_value(ptr %i.m, !11289, !DIExpression(), !11191)
    #dbg_value(i64 %.sroa.8.0.copyload, !11293, !DIExpression(), !11191)
    #dbg_value(ptr %2, !11294, !DIExpression(), !11191)
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.copyload, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28, !dbg !11345, !noalias !11300
  unreachable, !dbg !11345

bb.h:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.0.val1.fr.i, i64 noundef %.val10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !dbg !11324, !noalias !11297
  unreachable, !dbg !11324

_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_.exit: ; preds = %.lr.ph.split.us.split.us.i, %bb.d, %bb.e
  %i.ao = extractvalue { i64, i64 } %i.v, 1, !dbg !11333
  %i.ap = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ao, 1, !dbg !11346
  br label %bb.l, !dbg !11347

._crit_edge:                                      ; preds = %bb.b, %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit16, %bb.a
    #dbg_value(i64 0, !11234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11264)
    #dbg_value(i64 poison, !11234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11264)
    #dbg_value(i64 poison, !11234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11264)
    #dbg_value(i64 poison, !11234, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11264)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11322
  call void @llvm.experimental.noalias.scope.decl(metadata !11301), !dbg !11348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
    #dbg_value(i64 %1, !11302, !DIExpression(), !11221)
  store i64 %1, ptr %i.d, align 8, !noalias !11301
    #dbg_value(ptr %0, !11306, !DIExpression(), !11221)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11349 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !11349, !alias.scope !11301, !noundef !1613 ; 2 uses
  %.not.i = icmp ugt i64 %i.ar, %1, !dbg !11349
  br i1 %.not.i, label %bb.i, label %bb.j, !dbg !11349, !prof !3570

bb.i:                                             ; preds = %._crit_edge
    #dbg_value(ptr %i.aq, !11308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11222)
    #dbg_value(ptr %i.d, !11308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11350, !noalias !11301
  store ptr %i.aq, ptr %i.c, align 8, !dbg !11350, !noalias !11301
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11350
  store ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !11350, !noalias !11301
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11350
  store ptr %i.d, ptr %i.as, align 8, !dbg !11350, !noalias !11301
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !11350
  store ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !11350, !noalias !11301
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28, !dbg !11351
  unreachable, !dbg !11351

bb.j:                                             ; preds = %._crit_edge
  %i.at = icmp ugt i64 %1, %i.ar, !dbg !11352
  br i1 %i.at, label %bb.k, label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit, !dbg !11352

bb.k:                                             ; preds = %bb.j
  store i64 %1, ptr %i.aq, align 8, !dbg !11353, !alias.scope !11301
  br label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit, !dbg !11354

_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11355
  br label %bb.l, !dbg !11356

bb.l:                                             ; preds = %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_.exit, %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit
  %.merged = phi { i64, i64 } [ { i64 0, i64 undef }, %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit ], [ %i.ap, %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_.exit ], !dbg !11357
  ret { i64, i64 } %.merged, !dbg !11358

.loopexit:                                        ; preds = %.lr.ph.split.us.split.split.us.i, %.lr.ph.split.us.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11312), !dbg !11359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
    #dbg_value(i64 %.sroa.3.0.copyload, !11302, !DIExpression(), !11226)
  store i64 %.sroa.3.0.copyload, ptr %i.b, align 8, !noalias !11312
    #dbg_value(ptr %0, !11306, !DIExpression(), !11226)
  %i.au = load i64, ptr %i.j, align 8, !dbg !11360, !alias.scope !11312, !noundef !1613 ; 2 uses
  %.not.i13 = icmp ugt i64 %i.au, %.sroa.3.0.copyload, !dbg !11360
  br i1 %.not.i13, label %bb.m, label %bb.n, !dbg !11360, !prof !3570

bb.m:                                             ; preds = %.loopexit
    #dbg_value(ptr %i.j, !11308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11227)
    #dbg_value(ptr %i.b, !11308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11361, !noalias !11312
  store ptr %i.j, ptr %i.a, align 8, !dbg !11361, !noalias !11312
  %.sroa.42.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11361
  store ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i14, align 8, !dbg !11361, !noalias !11312
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11361
  store ptr %i.b, ptr %i.av, align 8, !dbg !11361, !noalias !11312
  %.sroa.46.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !11361
  store ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i15, align 8, !dbg !11361, !noalias !11312
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28, !dbg !11362
  unreachable, !dbg !11362

bb.n:                                             ; preds = %.loopexit
  %i.aw = icmp ugt i64 %.sroa.3.0.copyload, %i.au, !dbg !11363
  br i1 %i.aw, label %bb.o, label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit16, !dbg !11363

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.3.0.copyload, ptr %i.j, align 8, !dbg !11364, !alias.scope !11312
  br label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit16, !dbg !11365

_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11315
  call void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0), !dbg !11316
    #dbg_value(ptr poison, !11251, !DIExpression(), !11313)
    #dbg_value(ptr poison, !11260, !DIExpression(), !11314)
  %i.ax = load i64, ptr %i.f, align 8, !dbg !11317, !range !6006, !noundef !1613
  %i.ay = trunc nuw i64 %i.ax to i1, !dbg !11318
  br i1 %i.ay, label %bb.b, label %._crit_edge, !dbg !11318
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i8 } @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6insertB1q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(104) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11373 {
bb.a:
    #dbg_value(ptr %0, !11406, !DIExpression(), !11412)
    #dbg_value(ptr %0, !11413, !DIExpression(), !11417)
    #dbg_value(i64 %1, !11407, !DIExpression(), !11412)
    #dbg_value(i64 %1, !11414, !DIExpression(), !11417)
    #dbg_value(i64 %1, !11418, !DIExpression(), !11425)
    #dbg_value(i64 %2, !11408, !DIExpression(), !11412)
    #dbg_value(ptr %3, !11409, !DIExpression(), !11412)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11435
  %i.b = load i64, ptr %i.a, align 8, !dbg !11435, !noundef !1613 ; 3 uses
  %.not = icmp ugt i64 %1, %i.b, !dbg !11436
  br i1 %.not, label %bb.b, label %bb.f, !dbg !11436

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %1, %i.b, !dbg !11437
  %i.d = icmp ugt i64 %i.c, 68719476735, !dbg !11437
  br i1 %i.d, label %bb.f, label %bb.c, !dbg !11437

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.b, !11419, !DIExpression(), !11425)
  %i.e = xor i64 %i.b, %1, !dbg !11438
  %i.f = or i64 %i.e, 63, !dbg !11438
    #dbg_value(i64 %i.f, !11420, !DIExpression(), !11426)
    #dbg_value(i64 %i.f, !11427, !DIExpression(), !11430)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 68719476734), !dbg !11439
    #dbg_value(i64 %spec.store.select, !11420, !DIExpression(), !11426)
    #dbg_value(i64 %spec.store.select, !11427, !DIExpression(), !11430)
  %i.g = tail call range(i64 28, 59) i64 @llvm.ctlz.i64(i64 %spec.store.select, i1 true), !dbg !11440
    #dbg_value(i64 %i.g, !11421, !DIExpression(), !11431)
    #dbg_value(i64 %i.g, !11422, !DIExpression(DW_OP_constu, 62, DW_OP_xor, DW_OP_stack_value), !11432)
  %i.h = trunc nuw nsw i64 %i.g to i8, !dbg !11441
  %.lhs.trunc = xor i8 %i.h, 62, !dbg !11441
  %i.i = udiv i8 %.lhs.trunc, 6, !dbg !11441
  %.zext = zext nneg i8 %i.i to i64, !dbg !11441  ; 3 uses
    #dbg_value(i64 %.zext, !11410, !DIExpression(), !11433)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11442
  %i.k = load i64, ptr %i.j, align 8, !dbg !11442, !noundef !1613 ; 2 uses
  %i.l = icmp ugt i64 %i.k, %.zext, !dbg !11442
  br i1 %i.l, label %bb.d, label %bb.e, !dbg !11442

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !dbg !11442, !nonnull !1613, !noundef !1613
  %i.n = getelementptr inbounds nuw [1040 x i8], ptr %i.m, i64 %.zext, !dbg !11442 ; 3 uses
    #dbg_value(ptr %i.n, !6026, !DIExpression(), !11381)
    #dbg_value(i64 %1, !6030, !DIExpression(), !11381)
    #dbg_value(i64 %1, !6035, !DIExpression(), !11383)
    #dbg_value(i64 %2, !6031, !DIExpression(), !11381)
    #dbg_value(ptr %3, !6032, !DIExpression(), !11381)
    #dbg_value(i64 poison, !6038, !DIExpression(), !11383)
    #dbg_value(i64 poison, !6033, !DIExpression(), !11384)
    #dbg_value(i64 poison, !6040, !DIExpression(), !11386)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1024, !dbg !11443
  %i.p = load i64, ptr %i.o, align 8, !dbg !11443, !alias.scope !11434, !noundef !1613
    #dbg_value(i64 %i.p, !6038, !DIExpression(), !11383)
  %i.q = mul i64 %i.p, 6, !dbg !11444
  %i.r = and i64 %i.q, 62, !dbg !11445
  %i.s = lshr i64 %1, %i.r, !dbg !11445
  %i.t = and i64 %i.s, 63, !dbg !11446            ; 2 uses
    #dbg_value(i64 %i.t, !6033, !DIExpression(), !11384)
    #dbg_value(i64 %i.t, !6040, !DIExpression(), !11386)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.t, !dbg !11447
  tail call void @_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack4pushB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %3), !dbg !11448
  %i.v = shl nuw i64 1, %i.t, !dbg !11449
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 1032, !dbg !11450 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !11450, !alias.scope !11434, !noundef !1613
  %i.y = or i64 %i.v, %i.x, !dbg !11450
  store i64 %i.y, ptr %i.w, align 8, !dbg !11450, !alias.scope !11434
  br label %bb.f, !dbg !11451

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.zext, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28, !dbg !11442
  unreachable, !dbg !11442

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.3.0 = phi i8 [ 2, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ], !dbg !11412
  %i.z = insertvalue { i64, i8 } poison, i64 %2, 0, !dbg !11452
  %i.aa = insertvalue { i64, i8 } %i.z, i8 %.sroa.3.0, 1, !dbg !11452
  ret { i64, i8 } %i.aa, !dbg !11452
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6removeB1q_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(104) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !dbg !11457 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !11487, !DIExpression(), !11497)
    #dbg_value(ptr %0, !11498, !DIExpression(), !11502)
    #dbg_value(ptr %1, !11488, !DIExpression(), !11497)
    #dbg_value(ptr %2, !11489, !DIExpression(), !11497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11536
  %i.c = tail call noundef i64 @_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack4whenB19_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2), !dbg !11537 ; 4 uses
    #dbg_value(i64 %i.c, !11490, !DIExpression(), !11503)
    #dbg_value(i64 %i.c, !11499, !DIExpression(), !11502)
    #dbg_value(i64 %i.c, !11504, !DIExpression(), !11511)
  store i64 %i.c, ptr %i.b, align 8, !dbg !11537
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11538 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !11538, !noundef !1613 ; 2 uses
  %.not = icmp ugt i64 %i.e, %i.c, !dbg !11538
  br i1 %.not, label %bb.b, label %bb.c, !dbg !11538, !prof !3570

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.d, !11492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11512)
    #dbg_value(ptr %i.b, !11492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11539
  store ptr %i.d, ptr %i.a, align 8, !dbg !11539
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11539
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!10983 = !DISubroutineType(types: !10982)
!10984 = !{!10981}
!10985 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::sync::Arc<tokio::runtime::scheduler::current_thread::Handle, alloc::alloc::Global>", baseType: !1152, size: 64, align: 64, dwarfAddressSpace: 0)
!10986 = !DILocalVariable(arg: 1, scope: !10888, file: !3503, line: 848, type: !10985)
!10987 = !{null, !10985}
!10988 = !DISubroutineType(types: !10987)
!10989 = !{!10986}
!10990 = !DILocalVariable(name: "self", arg: 1, scope: !10891, file: !3861, line: 2923, type: !10985)
!10991 = !{!10990}
!10992 = !DILocalVariable(name: "val", scope: !10894, file: !3486, line: 3256, type: !1607, align: 64)
!10993 = !DILocalVariable(name: "self", arg: 1, scope: !10894, file: !3486, line: 3256, type: !3487)
!10994 = !DILocalVariable(name: "order", scope: !10894, file: !3486, line: 3256, type: !1381, align: 8)
!10995 = !{!10993, !10992, !10994}
!10996 = !DILocalVariable(name: "val", scope: !10897, file: !3486, line: 4050, type: !1607, align: 64)
!10997 = !DILocalVariable(name: "dst", arg: 1, scope: !10897, file: !3486, line: 4050, type: !3873)
!10998 = !DILocalVariable(name: "order", scope: !10897, file: !3486, line: 4050, type: !1381, align: 8)
!10999 = !{!10997, !10996, !10998}
!11000 = !{!10906, !10904, !10902, !10881, !10876, !10871, !10866, !10861}
!11001 = !DILocalVariable(arg: 1, scope: !10909, file: !3503, line: 848, type: !5876)
!11002 = !{!11001}
!11003 = !DITemplateTypeParameter(name: "T", type: !1180)
!11004 = !{!11003}
!11005 = !DILocation(line: 2437, column: 9, scope: !10853, inlinedAt: !10854)
!11006 = !DILocation(line: 976, column: 49, scope: !10855, inlinedAt: !10856)
!11007 = !DILocation(line: 843, column: 14, scope: !10857, inlinedAt: !10858)
!11008 = !DILocation(line: 848, column: 1, scope: !10862, inlinedAt: !10863)
!11009 = !DILocation(line: 848, column: 1, scope: !10867, inlinedAt: !10868)
!11010 = !DILocation(line: 848, column: 1, scope: !10872, inlinedAt: !10873)
!11011 = !DILocation(line: 848, column: 1, scope: !10877, inlinedAt: !10878)
!11012 = !DILocation(line: 848, column: 1, scope: !10882, inlinedAt: !10883)
!11013 = !DILocation(line: 4056, column: 24, scope: !10897, inlinedAt: !10898)
!11014 = !DILocation(line: 2927, column: 12, scope: !10891, inlinedAt: !10892)
!11015 = !DILocation(line: 4500, column: 24, scope: !631, inlinedAt: !10907)
!11016 = !DILocation(line: 2970, column: 18, scope: !10891, inlinedAt: !10892)
!11017 = !DILocation(line: 848, column: 1, scope: !10909, inlinedAt: !10910)
!11018 = !DILocation(line: 211, column: 1, scope: !10836, inlinedAt: !10837)
!11019 = !DILocation(line: 81, column: 2, scope: !10833)
!11020 = distinct !DILexicalBlock(scope: !11021, file: !5879, line: 184, column: 88)
!11021 = distinct !DILexicalBlock(scope: !11023, file: !5879, line: 183, column: 9)
!11022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !5936, file: !1293, size: 128, align: 64, flags: DIFlagPublic, elements: !11080, templateParams: !5938, identifier: "3d5478a5947dd4b5314bb26ed19be6")
!11023 = distinct !DILexicalBlock(scope: !11024, file: !5879, line: 183, column: 9)
!11024 = distinct !DISubprogram(name: "next_expiration<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_", scope: !1197, file: !5879, line: 181, type: !11071, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11072, retainedNodes: !11077)
!11025 = distinct !DILexicalBlock(scope: !11027, file: !5940, line: 61, column: 38)
!11026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&u64, &u64, &usize, &usize, &u64)", file: !1293, size: 320, align: 64, elements: !11115, templateParams: !1613, identifier: "64ad2563f335764ec59f5f6bde8b4cf7")
!11027 = distinct !DILexicalBlock(scope: !11030, file: !5940, line: 61, column: 38)
!11028 = distinct !DILexicalBlock(scope: !11029, file: !5941, line: 48, column: 21)
!11029 = distinct !DILexicalBlock(scope: !11030, file: !5941, line: 46, column: 13)
!11030 = distinct !DILexicalBlock(scope: !11031, file: !5939, line: 64, column: 9)
!11031 = distinct !DILexicalBlock(scope: !11032, file: !5939, line: 63, column: 9)
!11032 = distinct !DILexicalBlock(scope: !11033, file: !5939, line: 60, column: 9)
!11033 = distinct !DILexicalBlock(scope: !11040, file: !5939, line: 59, column: 9)
!11034 = distinct !DILexicalBlock(scope: !11041, file: !5939, line: 54, column: 48)
!11035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !11038, file: !1293, align: 8, flags: DIFlagPublic, elements: !11121, templateParams: !11122, identifier: "c48b031451bcb0339f69fd13dc66f895")
!11036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !11038, file: !1293, align: 8, flags: DIFlagPublic, elements: !1613, templateParams: !11122, identifier: "9f70c1c2e5ef2a50d78dfbc961441d27")
!11037 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !11038, file: !1293, align: 8, elements: !11119, templateParams: !1613, identifier: "9e2a17430475366448d3a56c46471f81")
!11038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<!>", scope: !1696, file: !1293, align: 8, flags: DIFlagPublic, elements: !11116, templateParams: !1613, identifier: "8804dba0adfac4e212f9a1af8503586a")
!11039 = distinct !DILexicalBlock(scope: !11041, file: !5939, line: 54, column: 48)
!11040 = distinct !DILexicalBlock(scope: !11041, file: !5939, line: 54, column: 9)
!11041 = distinct !DISubprogram(name: "next_expiration<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_", scope: !1195, file: !5939, line: 51, type: !11088, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11090, retainedNodes: !11109)
!11042 = distinct !DILocation(line: 184, column: 58, scope: !11020)
!11043 = distinct !DILocation(line: 0, scope: !11041, inlinedAt: !11042)
!11044 = distinct !DILexicalBlock(scope: !11045, file: !5939, line: 112, column: 9)
!11045 = distinct !DILexicalBlock(scope: !11046, file: !5939, line: 111, column: 9)
!11046 = distinct !DILexicalBlock(scope: !11047, file: !5939, line: 110, column: 9)
!11047 = distinct !DILexicalBlock(scope: !11048, file: !5939, line: 109, column: 9)
!11048 = distinct !DISubprogram(name: "next_occupied_slot<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE18next_occupied_slotB1y_", scope: !1195, file: !5939, line: 103, type: !11125, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11127, retainedNodes: !11133)
!11049 = distinct !DILocation(line: 54, column: 25, scope: !11041, inlinedAt: !11042)
!11050 = distinct !DILocation(line: 0, scope: !11048, inlinedAt: !11049)
!11051 = distinct !{!11051, i1 true, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_"}
!11052 = distinct !{!11052, !11051, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_: argument 0"}
!11053 = distinct !DILocation(line: 0, scope: !11047, inlinedAt: !11049)
!11054 = distinct !DISubprogram(name: "rotate_right", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy12rotate_right", scope: !5943, file: !5942, line: 503, type: !11137, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1613, retainedNodes: !11139)
!11055 = distinct !DILocation(line: 110, column: 38, scope: !11047, inlinedAt: !11049)
!11056 = distinct !DILocation(line: 0, scope: !11054, inlinedAt: !11055)
!11057 = distinct !DISubprogram(name: "rotate_right<u64>", linkageName: "_RINvNtCskKLDkoKarTP_4core10intrinsics12rotate_rightyECsa2e0UnRrdBM_12tokio_quiche", scope: !5945, file: !5944, line: 2238, type: !11137, scopeLine: 2238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1738, retainedNodes: !11142)
!11058 = distinct !DILocation(line: 504, column: 20, scope: !11054, inlinedAt: !11055)
!11059 = distinct !DILocation(line: 0, scope: !11057, inlinedAt: !11058)
!11060 = distinct !DILocation(line: 0, scope: !11046, inlinedAt: !11049)
!11061 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy14trailing_zeros", scope: !5943, file: !5942, line: 177, type: !5947, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1613, retainedNodes: !11144)
!11062 = distinct !DILocation(line: 111, column: 30, scope: !11046, inlinedAt: !11049)
!11063 = distinct !DILocation(line: 0, scope: !11061, inlinedAt: !11062)
!11064 = distinct !DILocation(line: 0, scope: !11045, inlinedAt: !11049)
!11065 = distinct !DILocation(line: 0, scope: !11040, inlinedAt: !11042)
!11066 = distinct !DILocation(line: 0, scope: !11033, inlinedAt: !11042)
!11067 = distinct !DILocation(line: 0, scope: !11032, inlinedAt: !11042)
!11068 = distinct !DILocation(line: 0, scope: !11031, inlinedAt: !11042)
!11069 = distinct !DILocation(line: 0, scope: !11030, inlinedAt: !11042)
!11070 = !{!1202, !5922}
!11071 = !DISubroutineType(types: !11070)
!11072 = !DISubprogram(name: "next_expiration<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_", scope: !1197, file: !5879, line: 181, type: !11071, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11073 = !DILocalVariable(name: "self", arg: 1, scope: !11024, file: !5879, line: 181, type: !5922)
!11074 = !DILocalVariable(name: "iter", scope: !11023, file: !5879, line: 183, type: !11022, align: 64)
!11075 = !DILocalVariable(name: "level", scope: !11021, file: !5879, line: 183, type: !1607, align: 64)
!11076 = !DILocalVariable(name: "expiration", scope: !11020, file: !5879, line: 184, type: !1198, align: 64)
!11077 = !{!11073, !11074, !11075, !11076}
!11078 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !11022, file: !1293, baseType: !1607, size: 64, align: 64, flags: DIFlagPublic)
!11079 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !11022, file: !1293, baseType: !1607, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!11080 = !{!11078, !11079}
!11081 = !DILocation(line: 0, scope: !11024)
!11082 = !DILocation(line: 0, scope: !11023)
!11084 = !DILocation(line: 0, scope: !11021)
!11085 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&tokio_util::time::wheel::level::Level<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", baseType: !1195, size: 64, align: 64, dwarfAddressSpace: 0)
!11086 = !DILocalVariable(name: "self", arg: 1, scope: !11041, file: !5939, line: 51, type: !11085)
!11087 = !{!1202, !11085, !1355}
!11088 = !DISubroutineType(cc: DW_CC_nocall, types: !11087)
!11089 = !DISubroutineType(types: !11087)
!11090 = !DISubprogram(name: "next_expiration<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1y_", scope: !1195, file: !5939, line: 51, type: !11089, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11091 = !DILocalVariable(name: "now", arg: 2, scope: !11041, file: !5939, line: 51, type: !1355)
!11092 = !DILocalVariable(name: "slot", scope: !11040, file: !5939, line: 54, type: !1607, align: 64)
!11093 = !DILocalVariable(name: "residual", scope: !11039, file: !5939, line: 54, type: !11038, align: 8)
!11094 = !DILocalVariable(name: "val", scope: !11034, file: !5939, line: 54, type: !1607, align: 64)
!11095 = !DILocalVariable(name: "level_range", scope: !11033, file: !5939, line: 59, type: !1355, align: 64)
!11096 = !DILocalVariable(name: "slot_range", scope: !11032, file: !5939, line: 60, type: !1355, align: 64)
!11097 = !DILocalVariable(name: "level_start", scope: !11031, file: !5939, line: 63, type: !1355, align: 64)
!11098 = !DILocalVariable(name: "deadline", scope: !11030, file: !5939, line: 64, type: !1355, align: 64)
!11099 = !DILexicalBlockFile(scope: !11029, file: !5939, discriminator: 0)
!11100 = !DILocalVariable(name: "left_val", scope: !11099, file: !5939, line: 82, type: !3794, align: 64)
!11101 = !DILocalVariable(name: "right_val", scope: !11099, file: !5939, line: 82, type: !3794, align: 64)
!11102 = !DILexicalBlockFile(scope: !11028, file: !5939, discriminator: 0)
!11103 = !DILocalVariable(name: "kind", scope: !11102, file: !5939, line: 82, type: !1446, align: 8)
!11104 = !DILexicalBlockFile(scope: !11027, file: !5939, discriminator: 0)
!11105 = !DILocalVariable(name: "args", scope: !11104, file: !5939, line: 86, type: !11026, align: 64)
!11106 = !DILexicalBlockFile(scope: !11025, file: !5939, discriminator: 0)
!11107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 640, align: 64, elements: !4485)
!11108 = !DILocalVariable(name: "args", scope: !11106, file: !5939, line: 86, type: !11107, align: 64)
!11109 = !{!11086, !11091, !11092, !11093, !11094, !11095, !11096, !11097, !11098, !11100, !11101, !11103, !11105, !11108}
!11110 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !11026, file: !1293, baseType: !1612, size: 64, align: 64)
!11111 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !11026, file: !1293, baseType: !1612, size: 64, align: 64, offset: 64)
!11112 = !DIDerivedType(tag: DW_TAG_member, name: "__2", scope: !11026, file: !1293, baseType: !3794, size: 64, align: 64, offset: 128)
!11113 = !DIDerivedType(tag: DW_TAG_member, name: "__3", scope: !11026, file: !1293, baseType: !3794, size: 64, align: 64, offset: 192)
!11114 = !DIDerivedType(tag: DW_TAG_member, name: "__4", scope: !11026, file: !1293, baseType: !1612, size: 64, align: 64, offset: 256)
!11115 = !{!11110, !11111, !11112, !11113, !11114}
!11116 = !{!11037}
!11117 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !11037, file: !1293, baseType: !11036, align: 8)
!11118 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !11037, file: !1293, baseType: !11035, align: 8)
!11119 = !{!11117, !11118}
!11120 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !11035, file: !1293, baseType: !3571, align: 8, flags: DIFlagPublic)
!11121 = !{!11120}
!11122 = !{!4630}
!11123 = !DILocalVariable(name: "self", arg: 1, scope: !11048, file: !5939, line: 103, type: !11085)
!11124 = !{!26, !11085, !1355}
!11125 = !DISubroutineType(cc: DW_CC_nocall, types: !11124)
!11126 = !DISubroutineType(types: !11124)
!11127 = !DISubprogram(name: "next_occupied_slot<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE18next_occupied_slotB1y_", scope: !1195, file: !5939, line: 103, type: !11126, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11128 = !DILocalVariable(name: "now", arg: 2, scope: !11048, file: !5939, line: 103, type: !1355)
!11129 = !DILocalVariable(name: "now_slot", scope: !11047, file: !5939, line: 109, type: !1607, align: 64)
!11130 = !DILocalVariable(name: "occupied", scope: !11046, file: !5939, line: 110, type: !1355, align: 64)
!11131 = !DILocalVariable(name: "zeros", scope: !11045, file: !5939, line: 111, type: !1607, align: 64)
!11132 = !DILocalVariable(name: "slot", scope: !11044, file: !5939, line: 112, type: !1607, align: 64)
!11133 = !{!11123, !11128, !11129, !11130, !11131, !11132}
!11134 = !{!11052}
!11135 = !DILocalVariable(name: "self", arg: 1, scope: !11054, file: !5942, line: 503, type: !1355)
!11136 = !{!1355, !1355, !1687}
!11137 = !DISubroutineType(types: !11136)
!11138 = !DILocalVariable(name: "n", arg: 2, scope: !11054, file: !5942, line: 503, type: !1687)
!11139 = !{!11135, !11138}
!11140 = !DILocalVariable(name: "x", arg: 1, scope: !11057, file: !5944, line: 2238, type: !1355)
!11141 = !DILocalVariable(name: "shift", arg: 2, scope: !11057, file: !5944, line: 2238, type: !1687)
!11142 = !{!11140, !11141}
!11143 = !DILocalVariable(name: "self", arg: 1, scope: !11061, file: !5942, line: 177, type: !1355)
!11144 = !{!11143}
!11147 = !DILocation(line: 184, column: 39, scope: !11020)
!11148 = !DILocation(line: 184, column: 58, scope: !11020)
!11149 = !DILocation(line: 104, column: 12, scope: !11048, inlinedAt: !11049)
!11150 = !DILocation(line: 194, column: 6, scope: !11024)
!11151 = !DILocation(line: 109, column: 31, scope: !11048, inlinedAt: !11049)
!11152 = !DILocation(line: 109, column: 24, scope: !11048, inlinedAt: !11049)
!11153 = !DILocation(line: 59, column: 27, scope: !11040, inlinedAt: !11042)
!11154 = !DILocation(line: 60, column: 26, scope: !11033, inlinedAt: !11042)
!11155 = !DILocation(line: 63, column: 33, scope: !11032, inlinedAt: !11042)
!11156 = !DILocation(line: 2242, column: 14, scope: !11057, inlinedAt: !11058)
!11157 = !DILocation(line: 178, column: 20, scope: !11061, inlinedAt: !11062)
!11158 = !DILocation(line: 112, column: 20, scope: !11045, inlinedAt: !11049)
!11159 = !DILocation(line: 63, column: 27, scope: !11032, inlinedAt: !11042)
!11160 = !DILocation(line: 64, column: 42, scope: !11031, inlinedAt: !11042)
!11161 = !DILocation(line: 64, column: 28, scope: !11031, inlinedAt: !11042)
!11162 = !DILocation(line: 65, column: 12, scope: !11030, inlinedAt: !11042)
!11163 = !DILocation(line: 96, column: 9, scope: !11030, inlinedAt: !11042)
!11164 = !DILocation(line: 184, column: 20, scope: !11020)
!11165 = !DILocation(line: 0, scope: !11041, inlinedAt: !11042)
!11166 = distinct !DILexicalBlock(scope: !11167, file: !5879, line: 162, column: 81)
!11167 = distinct !DILexicalBlock(scope: !11168, file: !5879, line: 161, column: 17)
!11168 = distinct !DILexicalBlock(scope: !11169, file: !5879, line: 152, column: 13)
!11169 = distinct !DISubprogram(name: "poll<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE4pollB1q_", scope: !1197, file: !5879, line: 150, type: !11229, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11230, retainedNodes: !11238)
!11170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", scope: !11244, file: !1293, size: 64, align: 64, elements: !11246, templateParams: !1613, identifier: "a967fbd5dc3deeeae2698840450c9c36")
!11171 = distinct !DILexicalBlock(scope: !11172, file: !3481, line: 1544, column: 13)
!11172 = distinct !DISubprogram(name: "and_then<tokio_util::time::wheel::level::Expiration, tokio_util::time::wheel::level::Expiration, tokio_util::time::wheel::{impl#0}::poll::{closure_env#0}<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level10ExpirationE8and_thenBI_NCNvMBM_INtBM_5WheelINtNtBO_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE4poll0EB2N_", scope: !1202, file: !3481, line: 1539, type: !11242, scopeLine: 1539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !11249, declaration: !11250, retainedNodes: !11253)
!11173 = distinct !DISubprogram(name: "{closure#0}<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNCNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB4_5WheelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE4poll0B1s_", scope: !11244, file: !5879, line: 152, type: !11259, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, retainedNodes: !11261)
!11174 = distinct !DILexicalBlock(scope: !11175, file: !5879, line: 228, column: 17)
!11175 = distinct !DILexicalBlock(scope: !11178, file: !5879, line: 226, column: 17)
!11176 = distinct !DILexicalBlock(scope: !11177, file: !5941, line: 48, column: 21)
!11177 = distinct !DILexicalBlock(scope: !11178, file: !5941, line: 46, column: 13)
!11178 = distinct !DILexicalBlock(scope: !11179, file: !5879, line: 220, column: 66)
!11179 = distinct !DISubprogram(name: "poll_expiration<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_", scope: !1197, file: !5879, line: 215, type: !11269, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11271, retainedNodes: !11282)
!11180 = distinct !DILocation(line: 162, column: 46, scope: !11166)
!11181 = distinct !DILocation(line: 0, scope: !11179, inlinedAt: !11180)
!11182 = distinct !DILocation(line: 220, column: 24, scope: !11178, inlinedAt: !11180)
!11183 = distinct !DISubprogram(name: "pop_entry<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_", scope: !1197, file: !5879, line: 250, type: !11269, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11284, retainedNodes: !11287)
!11184 = distinct !DILocation(line: 220, column: 37, scope: !11178, inlinedAt: !11180)
!11185 = distinct !DILocation(line: 0, scope: !11183, inlinedAt: !11184)
!11186 = distinct !{!11186, i1 true, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE14pop_entry_slotB1y_"}
!11187 = distinct !{!11187, !11186, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE14pop_entry_slotB1y_: argument 0"}
!11188 = distinct !DILexicalBlock(scope: !11189, file: !5939, line: 139, column: 9)
!11189 = distinct !DISubprogram(name: "pop_entry_slot<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE14pop_entry_slotB1y_", scope: !1195, file: !5939, line: 138, type: !11291, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11292, retainedNodes: !11296)
!11190 = distinct !DILocation(line: 251, column: 39, scope: !11183, inlinedAt: !11184)
!11191 = distinct !DILocation(line: 0, scope: !11189, inlinedAt: !11190)
!11192 = distinct !DILocation(line: 0, scope: !11188, inlinedAt: !11190)
!11193 = distinct !{!11193, i1 true, !"_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_"}
!11194 = distinct !{!11194, !11193, !"_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_: argument 0"}
!11195 = distinct !{!11195, i1 true, !"_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_"}
!11196 = distinct !{!11196, !11195, !"_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_: argument 0"}
!11197 = distinct !DILocation(line: 141, column: 45, scope: !11188, inlinedAt: !11190)
!11198 = distinct !DILocation(line: 0, scope: !1219, inlinedAt: !11197)
!11199 = distinct !DILocation(line: 1220, column: 19, scope: !1219, inlinedAt: !11197)
!11200 = distinct !DILocation(line: 682, column: 26, scope: !1220, inlinedAt: !11199)
!11201 = distinct !DILocation(line: 683, column: 15, scope: !1220, inlinedAt: !11199)
!11202 = distinct !DILocation(line: 633, column: 26, scope: !1221, inlinedAt: !11201)
!11203 = distinct !DILocation(line: 0, scope: !11175, inlinedAt: !11180)
!11204 = distinct !DILocation(line: 0, scope: !11174, inlinedAt: !11180)
!11205 = distinct !DILocation(line: 230, column: 41, scope: !11174, inlinedAt: !11180)
!11206 = distinct !DILocation(line: 0, scope: !1223, inlinedAt: !11205)
!11207 = distinct !DILocation(line: 118, column: 20, scope: !1223, inlinedAt: !11205)
!11208 = distinct !DILocation(line: 0, scope: !1224, inlinedAt: !11207)
!11209 = distinct !DILocation(line: 0, scope: !1222, inlinedAt: !11205)
!11210 = distinct !DILocation(line: 121, column: 26, scope: !1222, inlinedAt: !11205)
!11211 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !11210)
!11212 = distinct !{!11212, i1 true, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9add_entryB1y_"}
!11213 = distinct !{!11213, !11212, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9add_entryB1y_: argument 0"}
!11214 = distinct !{!11214, !11186, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE14pop_entry_slotB1y_: argument 1"}
!11215 = distinct !{!11215, i1 true, !"_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_"}
!11216 = distinct !{!11216, !11215, !"_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_: argument 0"}
!11217 = distinct !DILexicalBlock(scope: !11218, file: !5940, line: 61, column: 38)
!11218 = distinct !DILexicalBlock(scope: !11219, file: !5940, line: 61, column: 38)
!11219 = distinct !DISubprogram(name: "set_elapsed<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_", scope: !1197, file: !5879, line: 237, type: !11304, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11305, retainedNodes: !11311)
!11220 = distinct !DILocation(line: 173, column: 26, scope: !11168)
!11221 = distinct !DILocation(line: 0, scope: !11219, inlinedAt: !11220)
!11222 = distinct !DILocation(line: 0, scope: !11307, inlinedAt: !11220)
!11223 = distinct !{!11223, i1 true, !"_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_"}
!11224 = distinct !{!11224, !11223, !"_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_: argument 0"}
!11225 = distinct !DILocation(line: 166, column: 26, scope: !11167)
!11226 = distinct !DILocation(line: 0, scope: !11219, inlinedAt: !11225)
!11227 = distinct !DILocation(line: 0, scope: !11307, inlinedAt: !11225)
!11228 = !{!1193, !5948, !1355, !5949}
!11229 = !DISubroutineType(types: !11228)
!11230 = !DISubprogram(name: "poll<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE4pollB1q_", scope: !1197, file: !5879, line: 150, type: !11229, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11231 = !DILocalVariable(name: "self", arg: 1, scope: !11169, file: !5879, line: 150, type: !5948)
!11232 = !DILocalVariable(name: "now", arg: 2, scope: !11169, file: !5879, line: 150, type: !1355)
!11233 = !DILocalVariable(name: "store", arg: 3, scope: !11169, file: !5879, line: 150, type: !5949)
!11234 = !DILocalVariable(name: "expiration", scope: !11168, file: !5879, line: 152, type: !1202, align: 64)
!11235 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&tokio_util::time::wheel::level::Expiration", baseType: !1198, size: 64, align: 64, dwarfAddressSpace: 0)
!11236 = !DILocalVariable(name: "expiration", scope: !11167, file: !5879, line: 161, type: !11235, align: 64)
!11237 = !DILocalVariable(name: "item", scope: !11166, file: !5879, line: 162, type: !1189, align: 64)
!11238 = !{!11231, !11232, !11233, !11234, !11236, !11237}
!11239 = !DILocation(line: 0, scope: !11169)
!11240 = !DILocalVariable(name: "self", arg: 1, scope: !11172, file: !3481, line: 1539, type: !1202)
!11241 = !{!1202, !1202, !11170}
!11242 = !DISubroutineType(types: !11241)
!11243 = !DINamespace(name: "{impl#0}", scope: !1449)
!11244 = !DINamespace(name: "poll", scope: !11243)
!11245 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__now", scope: !11170, file: !1293, baseType: !1612, size: 64, align: 64)
!11246 = !{!11245}
!11247 = !DITemplateTypeParameter(name: "U", type: !1198)
!11248 = !DITemplateTypeParameter(name: "F", type: !11170)
!11249 = !{!5933, !11247, !11248}
!11250 = !DISubprogram(name: "and_then<tokio_util::time::wheel::level::Expiration, tokio_util::time::wheel::level::Expiration, tokio_util::time::wheel::{impl#0}::poll::{closure_env#0}<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level10ExpirationE8and_thenBI_NCNvMBM_INtBM_5WheelINtNtBO_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE4poll0EB2N_", scope: !1202, file: !3481, line: 1539, type: !11242, scopeLine: 1539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !11249)
!11251 = !DILocalVariable(name: "f", scope: !11172, file: !3481, line: 1539, type: !11170, align: 64)
!11252 = !DILocalVariable(name: "x", scope: !11171, file: !3481, line: 1544, type: !1198, align: 64)
!11253 = !{!11240, !11251, !11252}
!11254 = !DILocation(line: 152, column: 53, scope: !11169)
!11255 = !DILocation(line: 1539, column: 33, scope: !11172, inlinedAt: !11254)
!11256 = !DILocation(line: 0, scope: !11171, inlinedAt: !11254)
!11257 = !DILocalVariable(name: "expiration", arg: 2, scope: !11173, file: !5879, line: 152, type: !1198)
!11258 = !{!1202, !11170, !1198}
!11259 = !DISubroutineType(types: !11258)
!11260 = !DILocalVariable(name: "now", scope: !11173, file: !5879, line: 150, type: !1355, align: 64)
!11261 = !{!11257, !11260}
!11262 = !DILocation(line: 1544, column: 24, scope: !11171, inlinedAt: !11254)
!11263 = !DILocation(line: 0, scope: !11173, inlinedAt: !11262)
!11264 = !DILocation(line: 0, scope: !11168)
!11266 = !DILocation(line: 0, scope: !11167)
!11267 = !DILocalVariable(name: "self", arg: 1, scope: !11179, file: !5879, line: 216, type: !5948)
!11268 = !{!1193, !5948, !11235, !5949}
!11269 = !DISubroutineType(cc: DW_CC_nocall, types: !11268)
!11270 = !DISubroutineType(types: !11268)
!11271 = !DISubprogram(name: "poll_expiration<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15poll_expirationB1q_", scope: !1197, file: !5879, line: 215, type: !11270, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11272 = !DILocalVariable(name: "expiration", arg: 2, scope: !11179, file: !5879, line: 217, type: !11235)
!11273 = !DILocalVariable(name: "store", arg: 3, scope: !11179, file: !5879, line: 218, type: !5949)
!11274 = !DILocalVariable(name: "item", scope: !11178, file: !5879, line: 220, type: !1189, align: 64)
!11275 = !DILexicalBlockFile(scope: !11177, file: !5879, discriminator: 0)
!11276 = !DILocalVariable(name: "left_val", scope: !11275, file: !5879, line: 222, type: !1612, align: 64)
!11277 = !DILocalVariable(name: "right_val", scope: !11275, file: !5879, line: 222, type: !1612, align: 64)
!11278 = !DILexicalBlockFile(scope: !11176, file: !5879, discriminator: 0)
!11279 = !DILocalVariable(name: "kind", scope: !11278, file: !5879, line: 222, type: !1446, align: 8)
!11280 = !DILocalVariable(name: "when", scope: !11175, file: !5879, line: 226, type: !1355, align: 64)
!11281 = !DILocalVariable(name: "next_level", scope: !11174, file: !5879, line: 228, type: !1607, align: 64)
!11282 = !{!11267, !11272, !11273, !11274, !11276, !11277, !11279, !11280, !11281}
!11283 = !DILocalVariable(name: "self", arg: 1, scope: !11183, file: !5879, line: 250, type: !5948)
!11284 = !DISubprogram(name: "pop_entry<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9pop_entryB1q_", scope: !1197, file: !5879, line: 250, type: !11270, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11285 = !DILocalVariable(name: "expiration", arg: 2, scope: !11183, file: !5879, line: 250, type: !11235)
!11286 = !DILocalVariable(name: "store", arg: 3, scope: !11183, file: !5879, line: 250, type: !5949)
!11287 = !{!11283, !11285, !11286}
!11288 = !{!11187}
!11289 = !DILocalVariable(name: "self", arg: 1, scope: !11189, file: !5939, line: 138, type: !6007)
!11290 = !{!1193, !6007, !1607, !5949}
!11291 = !DISubroutineType(types: !11290)
!11292 = !DISubprogram(name: "pop_entry_slot<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE14pop_entry_slotB1y_", scope: !1195, file: !5939, line: 138, type: !11291, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11293 = !DILocalVariable(name: "slot", arg: 2, scope: !11189, file: !5939, line: 138, type: !1607)
!11294 = !DILocalVariable(name: "store", arg: 3, scope: !11189, file: !5939, line: 138, type: !5949)
!11295 = !DILocalVariable(name: "ret", scope: !11188, file: !5939, line: 139, type: !1193, align: 64)
!11296 = !{!11289, !11293, !11294, !11295}
!11297 = !{!11196, !11194}
!11298 = !{!11194}
!11299 = !{!11213}
!11300 = !{!11187, !11214, !11196, !11194}
!11301 = !{!11216}
!11302 = !DILocalVariable(name: "when", arg: 2, scope: !11219, file: !5879, line: 237, type: !1355)
!11303 = !{null, !5948, !1355}
!11304 = !DISubroutineType(types: !11303)
!11305 = !DISubprogram(name: "set_elapsed<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE11set_elapsedB1q_", scope: !1197, file: !5879, line: 237, type: !11304, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11306 = !DILocalVariable(name: "self", arg: 1, scope: !11219, file: !5879, line: 237, type: !5948)
!11307 = !DILexicalBlockFile(scope: !11218, file: !5879, discriminator: 0)
!11308 = !DILocalVariable(name: "args", scope: !11307, file: !5879, line: 238, type: !1226, align: 64)
!11309 = !DILexicalBlockFile(scope: !11217, file: !5879, discriminator: 0)
!11310 = !DILocalVariable(name: "args", scope: !11309, file: !5879, line: 238, type: !6046, align: 64)
!11311 = !{!11306, !11302, !11308, !11310}
!11312 = !{!11224}
!11313 = !DILocation(line: 1539, column: 39, scope: !11172, inlinedAt: !11254)
!11314 = !DILocation(line: 150, column: 35, scope: !11173, inlinedAt: !11262)
!11315 = !DILocation(line: 152, column: 30, scope: !11169)
!11316 = !DILocation(line: 152, column: 35, scope: !11169)
!11317 = !DILocation(line: 1543, column: 15, scope: !11172, inlinedAt: !11254)
!11318 = !DILocation(line: 1543, column: 9, scope: !11172, inlinedAt: !11254)
!11319 = !DILocation(line: 1544, column: 18, scope: !11172, inlinedAt: !11254)
!11320 = !DILocation(line: 153, column: 20, scope: !11173, inlinedAt: !11262)
!11321 = !DILocation(line: 156, column: 21, scope: !11173, inlinedAt: !11262)
!11322 = !DILocation(line: 158, column: 14, scope: !11169)
!11323 = !DILocation(line: 162, column: 46, scope: !11166)
!11324 = !DILocation(line: 251, column: 9, scope: !11183, inlinedAt: !11184)
!11325 = !DILocation(line: 251, column: 39, scope: !11183, inlinedAt: !11184)
!11326 = !DILocation(line: 139, column: 35, scope: !11189, inlinedAt: !11190)
!11327 = !DILocation(line: 141, column: 12, scope: !11188, inlinedAt: !11190)
!11328 = !DILocation(line: 141, column: 45, scope: !11188, inlinedAt: !11190)
!11329 = !DILocation(line: 434, column: 9, scope: !6024, inlinedAt: !11201)
!11330 = !DILocation(line: 141, column: 29, scope: !11188, inlinedAt: !11190)
!11331 = !DILocation(line: 145, column: 13, scope: !11188, inlinedAt: !11190)
!11332 = !DILocation(line: 141, column: 9, scope: !11188, inlinedAt: !11190)
!11333 = !DILocation(line: 220, column: 37, scope: !11178, inlinedAt: !11180)
!11334 = !DILocation(line: 220, column: 24, scope: !11178, inlinedAt: !11180)
!11335 = !DILocation(line: 226, column: 28, scope: !11178, inlinedAt: !11180)
!11336 = !DILocation(line: 118, column: 35, scope: !1223, inlinedAt: !11205)
!11337 = !DILocation(line: 178, column: 19, scope: !1224, inlinedAt: !11207)
!11338 = !DILocation(line: 178, column: 6, scope: !1224, inlinedAt: !11207)
!11339 = !DILocation(line: 178, column: 5, scope: !1224, inlinedAt: !11207)
!11340 = !DILocation(line: 120, column: 9, scope: !1222, inlinedAt: !11205)
!11341 = !DILocation(line: 120, column: 25, scope: !1222, inlinedAt: !11205)
!11342 = !DILocation(line: 165, column: 5, scope: !1225, inlinedAt: !11210)
!11343 = !DILocation(line: 121, column: 9, scope: !1222, inlinedAt: !11205)
!11344 = !DILocation(line: 232, column: 9, scope: !11179, inlinedAt: !11180)
!11345 = !DILocation(line: 139, column: 19, scope: !11189, inlinedAt: !11190)
!11346 = !DILocation(line: 235, column: 6, scope: !11179, inlinedAt: !11180)
!11347 = !DILocation(line: 162, column: 28, scope: !11166)
!11348 = !DILocation(line: 173, column: 26, scope: !11168)
!11349 = !DILocation(line: 239, column: 13, scope: !11219, inlinedAt: !11220)
!11350 = !DILocation(line: 238, column: 9, scope: !11307, inlinedAt: !11220)
!11351 = !DILocation(line: 238, column: 9, scope: !11219, inlinedAt: !11220)
!11352 = !DILocation(line: 245, column: 12, scope: !11219, inlinedAt: !11220)
!11353 = !DILocation(line: 246, column: 13, scope: !11219, inlinedAt: !11220)
!11354 = !DILocation(line: 245, column: 9, scope: !11219, inlinedAt: !11220)
!11355 = !DILocation(line: 248, column: 6, scope: !11219, inlinedAt: !11220)
!11356 = !DILocation(line: 174, column: 21, scope: !11168)
!11357 = !DILocation(line: 177, column: 9, scope: !11169)
!11358 = !DILocation(line: 178, column: 6, scope: !11169)
!11359 = !DILocation(line: 166, column: 26, scope: !11167)
!11360 = !DILocation(line: 239, column: 13, scope: !11219, inlinedAt: !11225)
!11361 = !DILocation(line: 238, column: 9, scope: !11307, inlinedAt: !11225)
!11362 = !DILocation(line: 238, column: 9, scope: !11219, inlinedAt: !11225)
!11363 = !DILocation(line: 245, column: 12, scope: !11219, inlinedAt: !11225)
!11364 = !DILocation(line: 246, column: 13, scope: !11219, inlinedAt: !11225)
!11365 = !DILocation(line: 245, column: 9, scope: !11219, inlinedAt: !11225)
!11366 = !DILocation(line: 248, column: 6, scope: !11219, inlinedAt: !11225)
!11367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(tokio_util::time::delay_queue::Key, tokio_util::time::wheel::InsertError)", file: !1293, size: 128, align: 64, elements: !11399, templateParams: !1613, identifier: "470336603d34eb62fdefeb18a172edce")
!11368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !11371, file: !1293, size: 128, align: 64, flags: DIFlagPublic, elements: !11396, templateParams: !11401, identifier: "de62c8ecaa8082ae88457f886317261d")
!11369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !11371, file: !1293, size: 128, align: 64, flags: DIFlagPublic, elements: !11403, templateParams: !11401, identifier: "d2439db275a5a03b5a1ba982cdb53d94")
!11370 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !11371, file: !1293, size: 128, align: 64, elements: !11394, templateParams: !1613, identifier: "8ae72c07597c86e3a035eea6ee9f4414", discriminator: !11404)
!11371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), (tokio_util::time::delay_queue::Key, tokio_util::time::wheel::InsertError)>", scope: !2002, file: !1293, size: 128, align: 64, flags: DIFlagPublic, elements: !11391, templateParams: !1613, identifier: "13f7bc2b943f977b4eeca49078a0aa1e")
!11372 = distinct !DILexicalBlock(scope: !11373, file: !5879, line: 107, column: 9)
!11373 = distinct !DISubprogram(name: "insert<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6insertB1q_", scope: !1197, file: !5879, line: 94, type: !11390, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11405, retainedNodes: !11411)
!11374 = distinct !DISubprogram(name: "level_for<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9level_forB1q_", scope: !1197, file: !5879, line: 258, type: !6051, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !6052, retainedNodes: !11415)
!11375 = distinct !DILexicalBlock(scope: !11376, file: !5879, line: 274, column: 5)
!11376 = distinct !DILexicalBlock(scope: !11377, file: !5879, line: 273, column: 5)
!11377 = distinct !DILexicalBlock(scope: !11378, file: !5879, line: 268, column: 5)
!11378 = distinct !DISubprogram(name: "level_for", linkageName: "_RNvNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel9level_for", scope: !1449, file: !5879, line: 263, type: !6054, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1613, retainedNodes: !11423)
!11379 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy13leading_zeros", scope: !5943, file: !5942, line: 153, type: !5947, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1613, retainedNodes: !11428)
!11380 = distinct !DILocation(line: 109, column: 28, scope: !11372)
!11381 = distinct !DILocation(line: 0, scope: !1223, inlinedAt: !11380)
!11382 = distinct !DILocation(line: 118, column: 20, scope: !1223, inlinedAt: !11380)
!11383 = distinct !DILocation(line: 0, scope: !1224, inlinedAt: !11382)
!11384 = distinct !DILocation(line: 0, scope: !1222, inlinedAt: !11380)
!11385 = distinct !DILocation(line: 121, column: 26, scope: !1222, inlinedAt: !11380)
!11386 = distinct !DILocation(line: 0, scope: !1225, inlinedAt: !11385)
!11387 = distinct !{!11387, i1 true, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9add_entryB1y_"}
!11388 = distinct !{!11388, !11387, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9add_entryB1y_: argument 0"}
!11389 = !{!11371, !5948, !1355, !1189, !5949}
!11390 = !DISubroutineType(types: !11389)
!11391 = !{!11370}
!11392 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !11370, file: !1293, baseType: !11369, size: 128, align: 64, extraData: i8 2)
!11393 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !11370, file: !1293, baseType: !11368, size: 128, align: 64)
!11394 = !{!11392, !11393}
!11395 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !11368, file: !1293, baseType: !11367, size: 128, align: 64, flags: DIFlagPublic)
!11396 = !{!11395}
!11397 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !11367, file: !1293, baseType: !1189, size: 64, align: 64)
!11398 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !11367, file: !1293, baseType: !1453, size: 8, align: 8, offset: 64)
!11399 = !{!11397, !11398}
!11400 = !DITemplateTypeParameter(name: "E", type: !11367)
!11401 = !{!2009, !11400}
!11402 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !11369, file: !1293, baseType: !1604, align: 8, flags: DIFlagPublic)
!11403 = !{!11402}
!11404 = !DIDerivedType(tag: DW_TAG_member, scope: !11371, file: !1293, baseType: !1297, size: 8, align: 8, offset: 64, flags: DIFlagArtificial)
!11405 = !DISubprogram(name: "insert<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6insertB1q_", scope: !1197, file: !5879, line: 94, type: !11390, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11406 = !DILocalVariable(name: "self", arg: 1, scope: !11373, file: !5879, line: 95, type: !5948)
!11407 = !DILocalVariable(name: "when", arg: 2, scope: !11373, file: !5879, line: 96, type: !1355)
!11408 = !DILocalVariable(name: "item", arg: 3, scope: !11373, file: !5879, line: 97, type: !1189)
!11409 = !DILocalVariable(name: "store", arg: 4, scope: !11373, file: !5879, line: 98, type: !5949)
!11410 = !DILocalVariable(name: "level", scope: !11372, file: !5879, line: 107, type: !1607, align: 64)
!11411 = !{!11406, !11407, !11408, !11409, !11410}
!11412 = !DILocation(line: 0, scope: !11373)
!11413 = !DILocalVariable(name: "self", arg: 1, scope: !11374, file: !5879, line: 258, type: !5948)
!11414 = !DILocalVariable(name: "when", arg: 2, scope: !11374, file: !5879, line: 258, type: !1355)
!11415 = !{!11413, !11414}
!11416 = !DILocation(line: 107, column: 26, scope: !11373)
!11417 = !DILocation(line: 0, scope: !11374, inlinedAt: !11416)
!11418 = !DILocalVariable(name: "when", arg: 2, scope: !11378, file: !5879, line: 263, type: !1355)
!11419 = !DILocalVariable(name: "elapsed", arg: 1, scope: !11378, file: !5879, line: 263, type: !1355)
!11420 = !DILocalVariable(name: "masked", scope: !11377, file: !5879, line: 268, type: !1355, align: 64)
!11421 = !DILocalVariable(name: "leading_zeros", scope: !11376, file: !5879, line: 273, type: !1607, align: 64)
!11422 = !DILocalVariable(name: "significant", scope: !11375, file: !5879, line: 274, type: !1607, align: 64)
!11423 = !{!11419, !11418, !11420, !11421, !11422}
!11424 = !DILocation(line: 259, column: 9, scope: !11374, inlinedAt: !11416)
!11425 = !DILocation(line: 0, scope: !11378, inlinedAt: !11424)
!11426 = !DILocation(line: 0, scope: !11377, inlinedAt: !11424)
!11427 = !DILocalVariable(name: "self", arg: 1, scope: !11379, file: !5942, line: 153, type: !1355)
!11428 = !{!11427}
!11429 = !DILocation(line: 273, column: 32, scope: !11377, inlinedAt: !11424)
!11430 = !DILocation(line: 0, scope: !11379, inlinedAt: !11429)
!11431 = !DILocation(line: 0, scope: !11376, inlinedAt: !11424)
!11432 = !DILocation(line: 0, scope: !11375, inlinedAt: !11424)
!11433 = !DILocation(line: 0, scope: !11372)
!11434 = !{!11388}
!11435 = !DILocation(line: 100, column: 20, scope: !11373)
!11436 = !DILocation(line: 100, column: 12, scope: !11373)
!11437 = !DILocation(line: 102, column: 19, scope: !11373)
!11438 = !DILocation(line: 268, column: 22, scope: !11378, inlinedAt: !11424)
!11439 = !DILocation(line: 269, column: 8, scope: !11377, inlinedAt: !11424)
!11440 = !DILocation(line: 154, column: 20, scope: !11379, inlinedAt: !11429)
!11441 = !DILocation(line: 275, column: 5, scope: !11375, inlinedAt: !11424)
!11442 = !DILocation(line: 109, column: 9, scope: !11372)
!11443 = !DILocation(line: 118, column: 35, scope: !1223, inlinedAt: !11380)
!11444 = !DILocation(line: 178, column: 19, scope: !1224, inlinedAt: !11382)
!11445 = !DILocation(line: 178, column: 6, scope: !1224, inlinedAt: !11382)
!11446 = !DILocation(line: 178, column: 5, scope: !1224, inlinedAt: !11382)
!11447 = !DILocation(line: 120, column: 9, scope: !1222, inlinedAt: !11380)
!11448 = !DILocation(line: 120, column: 25, scope: !1222, inlinedAt: !11380)
!11449 = !DILocation(line: 165, column: 5, scope: !1225, inlinedAt: !11385)
!11450 = !DILocation(line: 121, column: 9, scope: !1222, inlinedAt: !11380)
!11451 = !DILocation(line: 119, column: 5, scope: !11373)
!11452 = !DILocation(line: 119, column: 6, scope: !11373)
!11453 = distinct !DILexicalBlock(scope: !11456, file: !5879, line: 133, column: 9)
!11454 = distinct !DILexicalBlock(scope: !11455, file: !5940, line: 61, column: 38)
!11455 = distinct !DILexicalBlock(scope: !11456, file: !5940, line: 61, column: 38)
!11456 = distinct !DILexicalBlock(scope: !11457, file: !5879, line: 124, column: 9)
!11457 = distinct !DISubprogram(name: "remove<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6removeB1q_", scope: !1197, file: !5879, line: 123, type: !11485, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11486, retainedNodes: !11496)
!11458 = distinct !DISubprogram(name: "level_for<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9level_forB1q_", scope: !1197, file: !5879, line: 258, type: !6051, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !6052, retainedNodes: !11500)
!11459 = distinct !DILexicalBlock(scope: !11460, file: !5879, line: 274, column: 5)
!11460 = distinct !DILexicalBlock(scope: !11461, file: !5879, line: 273, column: 5)
!11461 = distinct !DILexicalBlock(scope: !11462, file: !5879, line: 268, column: 5)
!11462 = distinct !DISubprogram(name: "level_for", linkageName: "_RNvNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel9level_for", scope: !1449, file: !5879, line: 263, type: !6054, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1613, retainedNodes: !11509)
!11463 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs7_NtCskKLDkoKarTP_4core3numy13leading_zeros", scope: !5943, file: !5942, line: 153, type: !5947, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1613, retainedNodes: !11515)
!11464 = distinct !DILexicalBlock(scope: !11465, file: !5939, line: 125, column: 9)
!11465 = distinct !DISubprogram(name: "remove_entry<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE12remove_entryB1y_", scope: !1195, file: !5939, line: 124, type: !11523, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !5921, declaration: !11524, retainedNodes: !11529)
!11466 = distinct !DILocation(line: 135, column: 28, scope: !11453)
!11467 = distinct !DILocation(line: 0, scope: !11465, inlinedAt: !11466)
!11468 = distinct !DISubprogram(name: "slot_for", linkageName: "_RNvNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level8slot_for", scope: !5887, file: !5939, line: 177, type: !6037, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1613, retainedNodes: !11532)
!11469 = distinct !DILocation(line: 125, column: 20, scope: !11465, inlinedAt: !11466)
!11470 = distinct !DILocation(line: 0, scope: !11468, inlinedAt: !11469)
!11471 = distinct !{!11471, i1 true, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE12remove_entryB1y_"}
!11472 = distinct !{!11472, !11471, !"_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE12remove_entryB1y_: argument 0"}
!11473 = distinct !DILocation(line: 0, scope: !11464, inlinedAt: !11466)
!11474 = distinct !DISubprogram(name: "occupied_bit", linkageName: "_RNvNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level12occupied_bit", scope: !5887, file: !5939, line: 164, type: !6042, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, templateParams: !1613, retainedNodes: !11535)
!11475 = distinct !DILocation(line: 134, column: 30, scope: !11464, inlinedAt: !11466)
!11476 = distinct !DILocation(line: 0, scope: !11474, inlinedAt: !11475)
!11477 = distinct !DILocation(line: 129, column: 28, scope: !11464, inlinedAt: !11466)
!11478 = distinct !DILocation(line: 0, scope: !1219, inlinedAt: !11477)
!11479 = distinct !DILocation(line: 1220, column: 19, scope: !1219, inlinedAt: !11477)
!11480 = distinct !DILocation(line: 682, column: 26, scope: !1220, inlinedAt: !11479)
!11481 = distinct !DILocation(line: 683, column: 15, scope: !1220, inlinedAt: !11479)
!11482 = distinct !DILocation(line: 633, column: 26, scope: !1221, inlinedAt: !11481)
!11483 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&tokio_util::time::delay_queue::Key", baseType: !1189, size: 64, align: 64, dwarfAddressSpace: 0)
!11484 = !{null, !5948, !11483, !5949, !3581}
!11485 = !DISubroutineType(types: !11484)
!11486 = !DISubprogram(name: "remove<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6removeB1q_", scope: !1197, file: !5879, line: 123, type: !11485, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11487 = !DILocalVariable(name: "self", arg: 1, scope: !11457, file: !5879, line: 123, type: !5948)
!11488 = !DILocalVariable(name: "item", arg: 2, scope: !11457, file: !5879, line: 123, type: !11483)
!11489 = !DILocalVariable(name: "store", arg: 3, scope: !11457, file: !5879, line: 123, type: !5949)
!11490 = !DILocalVariable(name: "when", scope: !11456, file: !5879, line: 124, type: !1355, align: 64)
!11491 = !DILexicalBlockFile(scope: !11455, file: !5879, discriminator: 0)
!11492 = !DILocalVariable(name: "args", scope: !11491, file: !5879, line: 126, type: !1226, align: 64)
!11493 = !DILexicalBlockFile(scope: !11454, file: !5879, discriminator: 0)
!11494 = !DILocalVariable(name: "args", scope: !11493, file: !5879, line: 126, type: !6046, align: 64)
!11495 = !DILocalVariable(name: "level", scope: !11453, file: !5879, line: 133, type: !1607, align: 64)
!11496 = !{!11487, !11488, !11489, !11490, !11492, !11494, !11495}
!11497 = !DILocation(line: 0, scope: !11457)
!11498 = !DILocalVariable(name: "self", arg: 1, scope: !11458, file: !5879, line: 258, type: !5948)
!11499 = !DILocalVariable(name: "when", arg: 2, scope: !11458, file: !5879, line: 258, type: !1355)
!11500 = !{!11498, !11499}
!11501 = !DILocation(line: 133, column: 26, scope: !11456)
!11502 = !DILocation(line: 0, scope: !11458, inlinedAt: !11501)
!11503 = !DILocation(line: 0, scope: !11456)
!11504 = !DILocalVariable(name: "when", arg: 2, scope: !11462, file: !5879, line: 263, type: !1355)
!11505 = !DILocalVariable(name: "elapsed", arg: 1, scope: !11462, file: !5879, line: 263, type: !1355)
!11506 = !DILocalVariable(name: "masked", scope: !11461, file: !5879, line: 268, type: !1355, align: 64)
!11507 = !DILocalVariable(name: "leading_zeros", scope: !11460, file: !5879, line: 273, type: !1607, align: 64)
!11508 = !DILocalVariable(name: "significant", scope: !11459, file: !5879, line: 274, type: !1607, align: 64)
!11509 = !{!11505, !11504, !11506, !11507, !11508}
!11510 = !DILocation(line: 259, column: 9, scope: !11458, inlinedAt: !11501)
!11511 = !DILocation(line: 0, scope: !11462, inlinedAt: !11510)
!11512 = !DILocation(line: 0, scope: !11491)
!11513 = !DILocation(line: 0, scope: !11461, inlinedAt: !11510)
!11514 = !DILocalVariable(name: "self", arg: 1, scope: !11463, file: !5942, line: 153, type: !1355)
!11515 = !{!11514}
!11516 = !DILocation(line: 273, column: 32, scope: !11461, inlinedAt: !11510)
!11517 = !DILocation(line: 0, scope: !11463, inlinedAt: !11516)
!11518 = !DILocation(line: 0, scope: !11460, inlinedAt: !11510)
!11519 = !DILocation(line: 0, scope: !11459, inlinedAt: !11510)
!11520 = !DILocation(line: 0, scope: !11453)
!11521 = !DILocalVariable(name: "self", arg: 1, scope: !11465, file: !5939, line: 124, type: !6007)
!11522 = !{null, !6007, !1355, !11483, !5949}
!11523 = !DISubroutineType(types: !11522)
!11524 = !DISubprogram(name: "remove_entry<tokio_util::time::delay_queue::Stack<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5levelINtB2_5LevelINtNtB6_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE12remove_entryB1y_", scope: !1195, file: !5939, line: 124, type: !11523, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5921)
!11525 = !DILocalVariable(name: "when", arg: 2, scope: !11465, file: !5939, line: 124, type: !1355)
!11526 = !DILocalVariable(name: "item", arg: 3, scope: !11465, file: !5939, line: 124, type: !11483)
!11527 = !DILocalVariable(name: "store", arg: 4, scope: !11465, file: !5939, line: 124, type: !5949)
!11528 = !DILocalVariable(name: "slot", scope: !11464, file: !5939, line: 125, type: !1607, align: 64)
!11529 = !{!11521, !11525, !11526, !11527, !11528}
!11530 = !DILocalVariable(name: "duration", arg: 1, scope: !11468, file: !5939, line: 177, type: !1355)
!11531 = !DILocalVariable(name: "level", arg: 2, scope: !11468, file: !5939, line: 177, type: !1607)
!11532 = !{!11530, !11531}
!11533 = !{!11472}
!11534 = !DILocalVariable(name: "slot", arg: 1, scope: !11474, file: !5939, line: 164, type: !1607)
!11535 = !{!11534}
!11536 = !DILocation(line: 124, column: 13, scope: !11457)
!11537 = !DILocation(line: 124, column: 20, scope: !11457)
!11538 = !DILocation(line: 127, column: 13, scope: !11456)
!11539 = !DILocation(line: 126, column: 9, scope: !11491)
!11540 = !DILocation(line: 126, column: 9, scope: !11456)
!11541 = !DILocation(line: 268, column: 22, scope: !11462, inlinedAt: !11510)
!11542 = !DILocation(line: 269, column: 8, scope: !11461, inlinedAt: !11510)
!11543 = !DILocation(line: 154, column: 20, scope: !11463, inlinedAt: !11516)
!11544 = !DILocation(line: 275, column: 5, scope: !11459, inlinedAt: !11510)
!11545 = !DILocation(line: 135, column: 9, scope: !11453)
end_hunk_1
