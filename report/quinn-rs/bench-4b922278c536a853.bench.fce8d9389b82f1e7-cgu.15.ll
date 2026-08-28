Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.15?download=true
inline.NumInlined: 132
inline.NumDeleted: 78
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBP_3AnyNtNtBR_6marker4SendNtB26_4SyncEL_EINtNtBR_4hash18BuildHasherDefaultNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry10extensions8IdHasherEE6insertCslIemzedAtQF_5bench:bb.a
  %i.at = load ptr, ptr %i.as, align 8, !dbg !5513, !nonnull !42, !align !4516, !noundef !42
  store ptr %2, ptr %i.aq, align 8, !dbg !5514
  store ptr %3, ptr %i.as, align 8, !dbg !5514
  br label %bb.j, !dbg !5515

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.3.0 = phi ptr [ undef, %bb.k ], [ %i.at, %bb.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.k ], [ %i.ar, %bb.i ], !dbg !5241
  %i.au = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !5516
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.sroa.3.0, 1, !dbg !5516
  ret { ptr, ptr } %i.av, !dbg !5516

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.an, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !5183, !DIExpression(), !5517)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !5222, !DIExpression(), !5239)
    #dbg_value(ptr %0, !5220, !DIExpression(), !5239)
    #dbg_value(ptr %2, !5223, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5239)
    #dbg_value(ptr %2, !5211, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5518)
    #dbg_value(ptr %2, !5199, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5519)
    #dbg_value(ptr %2, !5185, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5520)
    #dbg_value(ptr %3, !5223, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5239)
    #dbg_value(ptr %3, !5211, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5518)
    #dbg_value(ptr %3, !5199, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5519)
    #dbg_value(ptr %3, !5185, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5521), !dbg !5524
    #dbg_value(ptr %0, !5208, !DIExpression(), !5518)
    #dbg_value(ptr %0, !5525, !DIExpression(), !5536)
    #dbg_value(i8 %i.e, !5209, !DIExpression(), !5518)
    #dbg_value(i8 %i.e, !5538, !DIExpression(), !5544)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !5210, !DIExpression(), !5518)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !5546, !DIExpression(), !5550)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !5542, !DIExpression(), !5544)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !5528, !DIExpression(), !5536)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !5552, !DIExpression(), !5558)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !5560, !DIExpression(), !5565)
    #dbg_value(i64 1, !5564, !DIExpression(), !5567)
    #dbg_value(ptr %0, !5549, !DIExpression(), !5573)
  %i.aw = load ptr, ptr %0, align 8, !dbg !5574, !alias.scope !5521, !noalias !5575, !nonnull !42, !noundef !42 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.3.0.i.ph.i, !dbg !5577 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !dbg !5580, !noalias !5581, !noundef !42
    #dbg_value(i8 %i.ay, !5212, !DIExpression(), !5582)
    #dbg_value(i8 %i.ay, !5543, !DIExpression(), !5544)
    #dbg_value(ptr %0, !5541, !DIExpression(), !5583)
    #dbg_value(ptr %0, !5584, !DIExpression(), !5587)
    #dbg_value(ptr %0, !5549, !DIExpression(), !5589)
    #dbg_value(ptr %0, !5549, !DIExpression(), !5591)
  %i.az = and i8 %i.ay, 1, !dbg !5593
  %i.ba = zext nneg i8 %i.az to i64, !dbg !5593
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5596 ; 2 uses
  %i.bc = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !5597
  %i.bd = load i64, ptr %i.c, align 8, !dbg !5600, !alias.scope !5521, !noalias !5575, !noundef !42
  %i.be = and i64 %i.bd, %i.bc, !dbg !5601
  store i8 %i.e, ptr %i.ax, align 1, !dbg !5602, !noalias !5581
  %i.bf = getelementptr i8, ptr %i.aw, i64 %i.be, !dbg !5603
  %i.bg = getelementptr i8, ptr %i.bf, i64 16, !dbg !5603
  store i8 %i.e, ptr %i.bg, align 1, !dbg !5606, !noalias !5581
  %i.bh = load <2 x i64>, ptr %i.bb, align 8, !dbg !5596, !alias.scope !5521, !noalias !5575
  %i.bi = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ba, i64 0, !dbg !5596
  %i.bj = sub <2 x i64> %i.bh, %i.bi, !dbg !5596
  store <2 x i64> %i.bj, ptr %i.bb, align 8, !dbg !5596, !alias.scope !5521, !noalias !5575
    #dbg_value(ptr %i.aw, !5555, !DIExpression(), !5558)
    #dbg_value(ptr %i.aw, !5563, !DIExpression(), !5565)
  %i.bk = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !5607
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %i.bk, !dbg !5608 ; 3 uses
    #dbg_value(ptr %i.bl, !5213, !DIExpression(), !5609)
    #dbg_value(ptr poison, !5198, !DIExpression(), !5610)
    #dbg_value(ptr poison, !5571, !DIExpression(), !5611)
    #dbg_value(ptr %i.bl, !5563, !DIExpression(), !5567)
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -32, !dbg !5612
    #dbg_value(ptr %i.bm, !5190, !DIExpression(), !5520)
    #dbg_value(ptr %i.bm, !5613, !DIExpression(), !5616)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !5618, !noalias !5521
  %.sroa.428.0..sroa_idx = getelementptr inbounds i8, ptr %i.bl, i64 -16, !dbg !5618
  store ptr %2, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !5618, !noalias !5521
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bl, i64 -8, !dbg !5618
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5618, !noalias !5521
  br label %bb.j, !dbg !5515

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.b, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_EECslIemzedAtQF_5bench(ptr nonnull %2, ptr nonnull %3) #16
          to label %bb.n unwind label %bb.m, !dbg !5515

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !5619
  unreachable, !dbg !5619

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi, !dbg !5619
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs2_Cs4lPw7rMVDcJ_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE6insertCslIemzedAtQF_5bench(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !5620 {
bb.a:
    #dbg_value(ptr %0, !5625, !DIExpression(), !5643)
    #dbg_declare(ptr %1, !5626, !DIExpression(), !5644)
    #dbg_declare(ptr %2, !5627, !DIExpression(), !5645)
    #dbg_declare(ptr poison, !5646, !DIExpression(), !5652)
    #dbg_declare(ptr poison, !5654, !DIExpression(), !5661)
    #dbg_value(i8 2, !5663, !DIExpression(), !5667)
    #dbg_value(ptr null, !5669, !DIExpression(), !5694)
    #dbg_value(i8 3, !5692, !DIExpression(), !5694)
    #dbg_value(i8 2, !5693, !DIExpression(), !5694)
    #dbg_value(i8 1, !5696, !DIExpression(), !5704)
    #dbg_value(i8 1, !5703, !DIExpression(), !5704)
    #dbg_value(i64 1, !5706, !DIExpression(), !5715)
    #dbg_value(i8 1, !5714, !DIExpression(), !5715)
    #dbg_value(i64 1, !5717, !DIExpression(), !5727)
    #dbg_value(i8 1, !5724, !DIExpression(), !5727)
    #dbg_value(ptr %0, !5729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5733)
    #dbg_value(ptr %0, !5735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5739)
    #dbg_value(i64 63, !5729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5733)
    #dbg_value(i64 63, !5735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5739)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5741
  %i.b = load i64, ptr %i.a, align 8, !dbg !5741, !noundef !42 ; 2 uses
    #dbg_value(i64 %i.b, !5732, !DIExpression(), !5733)
    #dbg_value(i64 %i.b, !5738, !DIExpression(), !5739)
  %i.c = icmp ult i64 %i.b, 63, !dbg !5742
  tail call void @llvm.assume(i1 %i.c), !dbg !5743
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b, !dbg !5744 ; 2 uses
    #dbg_value(ptr %i.d, !5628, !DIExpression(), !5745)
    #dbg_value(ptr %i.d, !5666, !DIExpression(), !5667)
    #dbg_value(ptr %i.d, !5690, !DIExpression(), !5694)
    #dbg_value(ptr %i.d, !2603, !DIExpression(), !5746)
    #dbg_value(i8 2, !2609, !DIExpression(), !5746)
  %i.e = load atomic ptr, ptr %i.d acquire, align 8, !dbg !5748 ; 2 uses
    #dbg_value(ptr %i.e, !5630, !DIExpression(), !5749)
    #dbg_value(ptr %i.e, !5632, !DIExpression(), !5750)
    #dbg_value(ptr %i.e, !5751, !DIExpression(), !5754)
    #dbg_value(ptr %i.e, !5756, !DIExpression(), !5762)
  %i.f = icmp eq ptr %i.e, null, !dbg !5764
  br i1 %i.f, label %bb.b, label %bb.e, !dbg !5770

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5771
  %i.h = load i64, ptr %i.g, align 8, !dbg !5771, !noundef !42 ; 2 uses
    #dbg_value(i64 %i.h, !5772, !DIExpression(), !5777)
    #dbg_value(i64 %i.h, !5779, !DIExpression(), !5785)
    #dbg_value(i64 0, !5787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5892)
    #dbg_value(i64 %i.h, !5787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5892)
  %i.i = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBa_3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECslIemzedAtQF_5bench(i64 noundef 0, i64 noundef %i.h)
          to label %bb.c unwind label %bb.g, !dbg !5894

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, i64 } %i.i, 0, !dbg !5894 ; 4 uses
    #dbg_value(ptr %i.j, !5895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5905)
    #dbg_value(i64 poison, !5895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5905)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ], !dbg !5907
    #dbg_value(ptr %i.j, !5634, !DIExpression(), !5908)
    #dbg_value(ptr %i.j, !5691, !DIExpression(), !5694)
    #dbg_value(ptr %i.j, !5784, !DIExpression(), !5785)
    #dbg_value(ptr %i.d, !5909, !DIExpression(), !5922)
    #dbg_value(ptr null, !5915, !DIExpression(), !5922)
    #dbg_value(ptr %i.j, !5916, !DIExpression(), !5922)
    #dbg_value(i8 3, !5917, !DIExpression(), !5922)
    #dbg_value(i8 2, !5918, !DIExpression(), !5922)
  %i.k = cmpxchg ptr %i.d, ptr null, ptr %i.j acq_rel acquire, align 8, !dbg !5924 ; 2 uses
  %i.l = extractvalue { ptr, i1 } %i.k, 1, !dbg !5924
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !5925

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { ptr, i1 } %i.k, 0, !dbg !5924
    #dbg_value(ptr %i.m, !5636, !DIExpression(), !5926)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEEECslIemzedAtQF_5bench(ptr nonnull %i.j, i64 %i.h)
          to label %bb.e unwind label %bb.g, !dbg !5927

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], !dbg !5745
    #dbg_value(ptr %.sroa.0.0, !5756, !DIExpression(), !5762)
    #dbg_value(ptr %.sroa.0.0, !5751, !DIExpression(), !5754)
    #dbg_value(ptr %.sroa.0.0, !5632, !DIExpression(), !5750)
    #dbg_value(ptr %.sroa.0.0, !5630, !DIExpression(), !5749)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5928
  %i.o = load i64, ptr %i.n, align 8, !dbg !5928, !noundef !42
    #dbg_value(i64 %i.o, !5761, !DIExpression(), !5762)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0, i64 %i.o, !dbg !5929 ; 3 uses
    #dbg_value(ptr %i.p, !5638, !DIExpression(), !5930)
    #dbg_value(ptr %i.p, !5640, !DIExpression(), !5931)
    #dbg_value(ptr %i.p, !5651, !DIExpression(), !5932)
    #dbg_value(ptr %i.p, !5933, !DIExpression(), !5936)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !5938
    #dbg_value(ptr %i.p, !5702, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !5939)
    #dbg_value(ptr %i.p, !5940, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !5943)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !5945
    #dbg_value(ptr %i.q, !5946, !DIExpression(), !5953)
    #dbg_value(i8 1, !5951, !DIExpression(), !5953)
    #dbg_value(i8 1, !5952, !DIExpression(), !5953)
  store atomic i8 1, ptr %i.q release, align 8, !dbg !5955
    #dbg_value(ptr %0, !5713, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !5956)
    #dbg_value(ptr %0, !5957, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !5963)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 504, !dbg !5965
    #dbg_value(ptr %i.r, !5723, !DIExpression(), !5727)
  %i.s = atomicrmw add ptr %i.r, i64 1 release, align 8, !dbg !5973 ; 0 uses
  ret ptr %i.p, !dbg !5974

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t, !dbg !5975

bb.g:                                             ; preds = %bb.b, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(32) %2) #16
          to label %bb.f unwind label %bb.h, !dbg !5976

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !5975
  unreachable, !dbg !5975
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXCs4lPw7rMVDcJ_12thread_localINtB2_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEENtNtNtBL_3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3200 {
bb.a:
    #dbg_value(ptr %0, !3199, !DIExpression(), !5977)
    #dbg_value(ptr %0, !3205, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !5978)
    #dbg_value(ptr %0, !3215, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !5980)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5982
  %i.b = load i8, ptr %i.a, align 8, !dbg !5984, !range !3228, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1, !dbg !5984
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !5984

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEECslIemzedAtQF_5bench.exit, %bb.a
  ret void, !dbg !5985

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3232, !DIExpression(), !5986)
    #dbg_value(ptr %0, !3240, !DIExpression(), !5988)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5990 ; 3 uses
    #dbg_value(ptr %i.d, !3249, !DIExpression(), !5991)
    #dbg_value(ptr %i.d, !3259, !DIExpression(), !5993)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEECslIemzedAtQF_5bench.exit unwind label %bb.d, !dbg !5995

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !3268, !DIExpression(), !5996)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEECslIemzedAtQF_5bench.exit.i.i.i unwind label %bb.e, !dbg !5998

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !5995
  unreachable, !dbg !5995

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEECslIemzedAtQF_5bench.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.e, !dbg !5995

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEECslIemzedAtQF_5bench.exit: ; preds = %bb.c
    #dbg_value(ptr %i.d, !3268, !DIExpression(), !5999)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !6001
  br label %bb.b, !dbg !6002
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_Cs4lPw7rMVDcJ_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEENtNtNtBV_3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6003 {
bb.a:
    #dbg_value(ptr poison, !6040, !DIExpression(), !6065)
    #dbg_value(ptr poison, !6091, !DIExpression(), !6101)
    #dbg_value(ptr %0, !6009, !DIExpression(), !6102)
    #dbg_value(ptr %0, !6010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(ptr %0, !6010, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6103)
    #dbg_value(i64 0, !6010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
    #dbg_value(!DIArgList(ptr %0, i64 0), !6010, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(ptr undef, !6091, !DIExpression(), !6101)
    #dbg_value(ptr undef, !6040, !DIExpression(), !6065)
    #dbg_value(i64 1, !6104, !DIExpression(), !6112)
    #dbg_value(!DIArgList(ptr %0, i64 0), !6059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6114)
    #dbg_value(!DIArgList(ptr %0, i64 0), !6111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6112)
    #dbg_value(ptr %0, !6061, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !6115)
    #dbg_value(ptr poison, !6116, !DIExpression(), !6124)
    #dbg_value(ptr poison, !6123, !DIExpression(), !6126)
  br label %bb.b, !dbg !6127

bb.b:                                             ; preds = %bb.a, %.backedge
  %.sroa.0.0.idx30 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %.backedge ] ; 2 uses
  %.sroa.7.029 = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge ] ; 2 uses
    #dbg_value(!DIArgList(ptr %0, i64 %.sroa.0.0.idx30), !6010, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(i64 %.sroa.7.029, !6010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx30, !dbg !6128
    #dbg_value(ptr %.sroa.0.0.ptr, !6010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(ptr %.sroa.0.0.ptr, !6059, !DIExpression(), !6114)
    #dbg_value(ptr %.sroa.0.0.ptr, !6111, !DIExpression(), !6112)
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx30, 8, !dbg !6129 ; 2 uses
    #dbg_value(!DIArgList(ptr %0, i64 %.sroa.0.0.add), !6010, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(ptr %.sroa.0.0.ptr, !6092, !DIExpression(), !6130)
    #dbg_value(i64 %.sroa.7.029, !6098, !DIExpression(), !6131)
  %i.a = add nuw nsw i64 %.sroa.7.029, 1, !dbg !6132
    #dbg_value(i64 %i.a, !6010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
    #dbg_value(i64 poison, !6033, !DIExpression(), !6133)
    #dbg_value(ptr %.sroa.0.0.ptr, !6035, !DIExpression(), !6133)
  %i.b = load ptr, ptr %.sroa.0.0.ptr, align 8, !dbg !6134, !noundef !42 ; 2 uses
    #dbg_value(ptr %i.b, !6036, !DIExpression(), !6135)
    #dbg_value(ptr %i.b, !6136, !DIExpression(), !6139)
    #dbg_value(ptr %i.b, !6141, !DIExpression(), !6145)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !6038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !6147)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !6144, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !6145)
  %i.c = icmp eq ptr %i.b, null, !dbg !6148
  br i1 %i.c, label %.backedge, label %bb.d, !dbg !6155

bb.c:                                             ; preds = %.backedge
    #dbg_value(ptr poison, !6010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(i64 poison, !6010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
  ret void, !dbg !6156

bb.d:                                             ; preds = %bb.b
    #dbg_value(i64 %.sroa.7.029, !6033, !DIExpression(), !6133)
    #dbg_value(!DIArgList(i64 1, i64 %.sroa.7.029), !6038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !6147)
    #dbg_value(!DIArgList(i64 1, i64 %.sroa.7.029), !6144, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !6145)
    #dbg_value(!DIArgList(i64 1, i64 %.sroa.7.029), !6144, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !6145)
    #dbg_value(!DIArgList(i64 1, i64 %.sroa.7.029), !6038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !6147)
  %i.d = shl nuw i64 1, %.sroa.7.029, !dbg !6157
    #dbg_value(i64 %i.d, !6038, !DIExpression(), !6147)
    #dbg_value(i64 %i.d, !6144, !DIExpression(), !6145)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEEECslIemzedAtQF_5bench(ptr nonnull %i.b, i64 %i.d), !dbg !6158
  br label %.backedge, !dbg !6159

.backedge:                                        ; preds = %bb.d, %bb.b
    #dbg_value(!DIArgList(ptr %0, i64 %.sroa.0.0.add), !6010, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(i64 %i.a, !6010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
    #dbg_value(ptr undef, !6091, !DIExpression(), !6101)
    #dbg_value(ptr undef, !6040, !DIExpression(), !6065)
    #dbg_value(i64 1, !6104, !DIExpression(), !6112)
    #dbg_value(!DIArgList(ptr %0, i64 %.sroa.0.0.add), !6059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6114)
    #dbg_value(!DIArgList(ptr %0, i64 %.sroa.0.0.add), !6111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6112)
    #dbg_value(ptr %0, !6061, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !6115)
    #dbg_value(ptr poison, !6116, !DIExpression(), !6124)
    #dbg_value(ptr poison, !6123, !DIExpression(), !6126)
  %i.e = icmp eq i64 %.sroa.0.0.add, 504, !dbg !6128
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !6127
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_Cs4lPw7rMVDcJ_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBV_3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6160 {
bb.a:
    #dbg_value(ptr poison, !6216, !DIExpression(), !6239)
    #dbg_value(ptr poison, !6263, !DIExpression(), !6273)
    #dbg_value(ptr %0, !6184, !DIExpression(), !6274)
    #dbg_value(ptr %0, !6185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(ptr %0, !6185, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6275)
    #dbg_value(i64 0, !6185, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6275)
    #dbg_value(!DIArgList(ptr %0, i64 0), !6185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(ptr undef, !6263, !DIExpression(), !6273)
    #dbg_value(ptr undef, !6216, !DIExpression(), !6239)
    #dbg_value(i64 1, !6276, !DIExpression(), !6283)
    #dbg_value(!DIArgList(ptr %0, i64 0), !6233, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6285)
    #dbg_value(!DIArgList(ptr %0, i64 0), !6282, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6283)
    #dbg_value(ptr %0, !6235, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !6286)
    #dbg_value(ptr poison, !6287, !DIExpression(), !6294)
    #dbg_value(ptr poison, !6293, !DIExpression(), !6296)
  br label %bb.b, !dbg !6297

bb.b:                                             ; preds = %bb.a, %.backedge
  %.sroa.0.0.idx40 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %.backedge ] ; 2 uses
  %.sroa.7.039 = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge ] ; 4 uses
    #dbg_value(!DIArgList(ptr %0, i64 %.sroa.0.0.idx40), !6185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 %.sroa.7.039, !6185, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6275)
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx40, !dbg !6298
    #dbg_value(ptr %.sroa.0.0.ptr, !6185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(ptr %.sroa.0.0.ptr, !6233, !DIExpression(), !6285)
    #dbg_value(ptr %.sroa.0.0.ptr, !6282, !DIExpression(), !6283)
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx40, 8, !dbg !6299 ; 2 uses
    #dbg_value(!DIArgList(ptr %0, i64 %.sroa.0.0.add), !6185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(ptr %.sroa.0.0.ptr, !6264, !DIExpression(), !6300)
    #dbg_value(i64 %.sroa.7.039, !6270, !DIExpression(), !6301)
  %i.a = add nuw nsw i64 %.sroa.7.039, 1, !dbg !6302
    #dbg_value(i64 %i.a, !6185, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6275)
    #dbg_value(i64 poison, !6209, !DIExpression(), !6303)
    #dbg_value(ptr %.sroa.0.0.ptr, !6211, !DIExpression(), !6303)
  %i.b = load ptr, ptr %.sroa.0.0.ptr, align 8, !dbg !6304, !noundef !42 ; 5 uses
    #dbg_value(ptr %i.b, !6212, !DIExpression(), !6305)
    #dbg_value(ptr %i.b, !6306, !DIExpression(), !6311)
    #dbg_value(ptr %i.b, !6313, !DIExpression(), !6319)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !6214, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !6321)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !6318, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !6319)
  %i.c = icmp eq ptr %i.b, null, !dbg !6322
  br i1 %i.c, label %.backedge, label %bb.d, !dbg !6332

bb.c:                                             ; preds = %.backedge
    #dbg_value(ptr poison, !6185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 poison, !6185, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6275)
  ret void, !dbg !6333

bb.d:                                             ; preds = %bb.b
    #dbg_value(i64 %.sroa.7.039, !6209, !DIExpression(), !6303)
    #dbg_value(!DIArgList(i64 1, i64 %.sroa.7.039), !6214, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !6321)
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!5738 = !DILocalVariable(name: "self", arg: 1, scope: !5736, file: !2586, line: 205, type: !9)
!5739 = !DILocation(line: 0, scope: !5736, inlinedAt: !5740)
!5740 = !DILocation(line: 647, column: 26, scope: !5730, inlinedAt: !5734)
!5741 = !DILocation(line: 233, column: 69, scope: !5620)
!5742 = !DILocation(line: 218, column: 39, scope: !5736, inlinedAt: !5740)
!5743 = !DILocation(line: 218, column: 13, scope: !5736, inlinedAt: !5740)
!5744 = !DILocation(line: 219, column: 13, scope: !5736, inlinedAt: !5740)
!5745 = !DILocation(line: 0, scope: !5629)
!5746 = !DILocation(line: 0, scope: !2604, inlinedAt: !5747)
!5747 = distinct !DILocation(line: 1769, column: 13, scope: !5664, inlinedAt: !5668)
!5748 = !DILocation(line: 4002, column: 24, scope: !2604, inlinedAt: !5747)
!5749 = !DILocation(line: 0, scope: !5631)
!5750 = !DILocation(line: 0, scope: !5633)
!5751 = !DILocalVariable(name: "self", arg: 1, scope: !5752, file: !2634, line: 22, type: !2647)
!5752 = distinct !DISubprogram(name: "is_null<thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB6_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE7is_nullCslIemzedAtQF_5bench", scope: !2637, file: !2634, line: 22, type: !2645, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2548, retainedNodes: !5753)
!5753 = !{!5751}
!5754 = !DILocation(line: 0, scope: !5752, inlinedAt: !5755)
!5755 = !DILocation(line: 237, column: 40, scope: !5631)
!5756 = !DILocalVariable(name: "self", arg: 1, scope: !5757, file: !2634, line: 838, type: !2647)
!5757 = distinct !DISubprogram(name: "add<thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB6_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE3addCslIemzedAtQF_5bench", scope: !2637, file: !2634, line: 838, type: !5758, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2548, retainedNodes: !5760)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{!2647, !2647, !9, !1702}
!5760 = !{!5756, !5761}
!5761 = !DILocalVariable(name: "count", arg: 2, scope: !5757, file: !2634, line: 838, type: !9)
!5762 = !DILocation(line: 0, scope: !5757, inlinedAt: !5763)
!5763 = !DILocation(line: 260, column: 43, scope: !5633)
!5764 = !DILocation(line: 38, column: 17, scope: !5765, inlinedAt: !5767)
!5765 = !DILexicalBlockFile(scope: !5766, file: !2634, discriminator: 0)
!5766 = distinct !DISubprogram(name: "runtime", linkageName: "_RNvNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPp7is_null7runtime", scope: !2636, file: !1947, line: 2628, type: !2639, scopeLine: 2628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !42)
!5767 = !DILocation(line: 2641, column: 9, scope: !5768, inlinedAt: !5755)
!5768 = !DILexicalBlockFile(scope: !5769, file: !1947, discriminator: 2)
!5769 = !DILexicalBlockFile(scope: !5752, file: !1947, discriminator: 0)
!5770 = !DILocation(line: 237, column: 29, scope: !5631)
!5771 = !DILocation(line: 238, column: 46, scope: !5631)
!5772 = !DILocalVariable(name: "size", arg: 1, scope: !5773, file: !2317, line: 509, type: !9)
!5773 = distinct !DISubprogram(name: "allocate_bucket<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>", linkageName: "_RINvCs4lPw7rMVDcJ_12thread_local15allocate_bucketINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEECslIemzedAtQF_5bench", scope: !2319, file: !2317, line: 509, type: !5774, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2385, retainedNodes: !5776)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!2332, !9}
!5776 = !{!5772}
!5777 = !DILocation(line: 0, scope: !5773, inlinedAt: !5778)
!5778 = !DILocation(line: 238, column: 30, scope: !5631)
!5779 = !DILocalVariable(name: "size", arg: 2, scope: !5780, file: !2317, line: 520, type: !9)
!5780 = distinct !DISubprogram(name: "deallocate_bucket<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>", linkageName: "_RINvCs4lPw7rMVDcJ_12thread_local17deallocate_bucketINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEECslIemzedAtQF_5bench", scope: !2319, file: !2317, line: 520, type: !5781, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2385, retainedNodes: !5783)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{null, !2332, !9}
!5783 = !{!5784, !5779}
!5784 = !DILocalVariable(name: "bucket", arg: 1, scope: !5780, file: !2317, line: 520, type: !2332)
!5785 = !DILocation(line: 0, scope: !5780, inlinedAt: !5786)
!5786 = !DILocation(line: 251, column: 30, scope: !5637)
!5787 = !DILocalVariable(name: "self", arg: 1, scope: !5788, file: !5789, line: 2073, type: !5795)
!5788 = distinct !DISubprogram(name: "collect<core::iter::adapters::map::Map<core::ops::range::Range<usize>, thread_local::allocate_bucket::{closure_env#0}<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>, alloc::boxed::Box<[thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>], alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvCs4lPw7rMVDcJ_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB2x_5boxed3BoxSINtB1o_5EntryB27_EEECslIemzedAtQF_5bench", scope: !5790, file: !5789, line: 2073, type: !5793, scopeLine: 2073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !5889, retainedNodes: !5806)
!5789 = !DIFile(filename: "library/core/src/iter/traits/iterator.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "01d98c48af571165434b0e69cec701b1")
!5790 = !DINamespace(name: "Iterator", scope: !5791)
!5791 = !DINamespace(name: "iterator", scope: !5792)
!5792 = !DINamespace(name: "traits", scope: !3817)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!3597, !5795}
!5795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::ops::range::Range<usize>, thread_local::allocate_bucket::{closure_env#0}<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>", scope: !5796, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !5798, templateParams: !5803, identifier: "a5b18ada6d34d5d12ea58eff08f65622")
!5796 = !DINamespace(name: "map", scope: !5797)
!5797 = !DINamespace(name: "adapters", scope: !3817)
!5798 = !{!5799, !5800}
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !5795, file: !2, baseType: !3794, size: 128, align: 64, flags: DIFlagProtected)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !5795, file: !2, baseType: !5801, align: 8, offset: 128, flags: DIFlagPrivate)
!5801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>", scope: !5802, file: !2, align: 8, elements: !42, identifier: "24c214976590941565aa244f2364f26c")
!5802 = !DINamespace(name: "allocate_bucket", scope: !2319)
!5803 = !{!5804, !5805}
!5804 = !DITemplateTypeParameter(name: "I", type: !3794)
!5805 = !DITemplateTypeParameter(name: "F", type: !5801)
!5806 = !{!5787, !5807, !5813, !5821}
!5807 = !DILocalVariable(name: "hint", scope: !5808, file: !5789, line: 2082, type: !5809, align: 64)
!5808 = distinct !DILexicalBlock(scope: !5788, file: !5789, line: 2082, column: 13)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, core::option::Option<usize>)", file: !2, size: 192, align: 64, elements: !5810, templateParams: !42, identifier: "ad3447cdb77684211b5451ee1c2e6f60")
!5810 = !{!5811, !5812}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5809, file: !2, baseType: !9, size: 64, align: 64)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !5809, file: !2, baseType: !1019, size: 128, align: 64, offset: 64)
!5813 = !DILocalVariable(name: "args", scope: !5814, file: !5789, line: 2083, type: !5817, align: 64)
!5814 = !DILexicalBlockFile(scope: !5815, file: !5789, discriminator: 0)
!5815 = distinct !DILexicalBlock(scope: !5808, file: !5816, line: 61, column: 38)
!5816 = !DIFile(filename: "library/core/src/panic.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "345dfb72e27e464ecb0f44d0a1104156")
!5817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&(usize, core::option::Option<usize>))", file: !2, size: 64, align: 64, elements: !5818, templateParams: !42, identifier: "8b533bf1d8e0d932c3e9d222eea10b42")
!5818 = !{!5819}
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5817, file: !2, baseType: !5820, size: 64, align: 64)
!5820 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&(usize, core::option::Option<usize>)", baseType: !5809, size: 64, align: 64, dwarfAddressSpace: 0)
!5821 = !DILocalVariable(name: "args", scope: !5822, file: !5789, line: 2083, type: !5824, align: 64)
!5822 = !DILexicalBlockFile(scope: !5823, file: !5789, discriminator: 0)
!5823 = distinct !DILexicalBlock(scope: !5815, file: !5816, line: 61, column: 38)
!5824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5825, size: 128, align: 64, elements: !5887)
!5825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !5826, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !5828, templateParams: !42, identifier: "e5376c98857936036c5c40222c17430")
!5826 = !DINamespace(name: "rt", scope: !5827)
!5827 = !DINamespace(name: "fmt", scope: !28)
!5828 = !{!5829}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !5825, file: !2, baseType: !5830, size: 128, align: 64, flags: DIFlagPrivate)
!5830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArgumentType", scope: !5826, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !5831, templateParams: !42, identifier: "2f05c696ac8a07f59e5cd0ec0123a853")
!5831 = !{!5832}
!5832 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !5830, file: !2, size: 128, align: 64, elements: !5833, templateParams: !42, identifier: "5a4fbdb5e1f704478f9fd84d6add73b4", discriminator: !5886)
!5833 = !{!5834, !5882}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "Placeholder", scope: !5832, file: !2, baseType: !5835, size: 128, align: 64)
!5835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Placeholder", scope: !5830, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !5836, templateParams: !42, identifier: "c83edcbe41c946458ddd919325e47fd9")
!5836 = !{!5837, !5841, !5877}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5835, file: !2, baseType: !5838, size: 64, align: 64, flags: DIFlagPrivate)
!5838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<()>", scope: !32, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !5839, templateParams: !2784, identifier: "7f90ab556e2e59aaa6b037409fc2ccd2")
!5839 = !{!5840}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5838, file: !2, baseType: !6, size: 64, align: 64, flags: DIFlagPrivate)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !5835, file: !2, baseType: !5842, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe fn(core::ptr::non_null::NonNull<()>, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !5843, size: 64, align: 64, dwarfAddressSpace: 0)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!5845, !5838, !5861}
!5845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), core::fmt::Error>", scope: !2399, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !5846, templateParams: !42, identifier: "c8f65f3dc88215367650f7204ea92d0a")
!5846 = !{!5847}
!5847 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !5845, file: !2, size: 8, align: 8, elements: !5848, templateParams: !42, identifier: "ba711c6f3b55bb8e3b33c32c68cebe72", discriminator: !5860)
!5848 = !{!5849, !5856}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !5847, file: !2, baseType: !5850, size: 8, align: 8, extraData: i8 0)
!5850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !5845, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !5851, templateParams: !5853, identifier: "4e4fb4a69ae9de1d694252f2b620264a")
!5851 = !{!5852}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5850, file: !2, baseType: !7, align: 8, offset: 8, flags: DIFlagPublic)
!5853 = !{!2785, !5854}
!5854 = !DITemplateTypeParameter(name: "E", type: !5855)
!5855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !5827, file: !2, align: 8, flags: DIFlagPublic, elements: !42, identifier: "24df7d89e71f74cc6f0b410796226394")
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !5847, file: !2, baseType: !5857, size: 8, align: 8, extraData: i8 1)
!5857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !5845, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !5858, templateParams: !5853, identifier: "f13361a86bb426615625b353d17a4da4")
!5858 = !{!5859}
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5857, file: !2, baseType: !5855, align: 8, offset: 8, flags: DIFlagPublic)
!5860 = !DIDerivedType(tag: DW_TAG_member, scope: !5845, file: !2, baseType: !36, size: 8, align: 8, flags: DIFlagArtificial)
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::fmt::Formatter", baseType: !5862, size: 64, align: 64, dwarfAddressSpace: 0)
!5862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !5827, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !5863, templateParams: !42, identifier: "2b167547650a33fb39fa5583cd111ae")
!5863 = !{!5864, !5870}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !5862, file: !2, baseType: !5865, size: 64, align: 32, offset: 128, flags: DIFlagPrivate)
!5865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FormattingOptions", scope: !5827, file: !2, size: 64, align: 32, flags: DIFlagPublic, elements: !5866, templateParams: !42, identifier: "72ecd823616a2aeb1c2529557e1ca21b")
!5866 = !{!5867, !5868, !5869}
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5865, file: !2, baseType: !614, size: 32, align: 32, flags: DIFlagPrivate)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5865, file: !2, baseType: !95, size: 16, align: 16, offset: 32, flags: DIFlagPrivate)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !5865, file: !2, baseType: !95, size: 16, align: 16, offset: 48, flags: DIFlagPrivate)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5862, file: !2, baseType: !5871, size: 128, align: 64, flags: DIFlagPrivate)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !2, size: 128, align: 64, elements: !5872, templateParams: !42, identifier: "8bf9c5b4af2f4eb5d538f580c8dd320c")
!5872 = !{!5873, !5876}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5871, file: !2, baseType: !5874, size: 64, align: 64)
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64, align: 64, dwarfAddressSpace: 0)
!5875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::fmt::Write", file: !2, align: 8, elements: !42, identifier: "7522c7300abed790cb78364eb689deba")
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !5871, file: !2, baseType: !901, size: 64, align: 64, offset: 64)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "_lifetime", scope: !5835, file: !2, baseType: !5878, align: 8, offset: 128, flags: DIFlagPrivate)
!5878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&()>", scope: !41, file: !2, align: 8, flags: DIFlagPublic, elements: !42, templateParams: !5879, identifier: "9c4dc5921b20e18ce73909c40c77059d")
!5879 = !{!5880}
!5880 = !DITemplateTypeParameter(name: "T", type: !5881)
!5881 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !5832, file: !2, baseType: !5883, size: 128, align: 64, extraData: i64 0)
!5883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !5830, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !5884, templateParams: !42, identifier: "8d6fb3243c0b0e0052909289e08bc4f8")
!5884 = !{!5885}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5883, file: !2, baseType: !95, size: 16, align: 16, offset: 64, flags: DIFlagPrivate)
!5886 = !DIDerivedType(tag: DW_TAG_member, scope: !5830, file: !2, baseType: !196, size: 64, align: 64, flags: DIFlagArtificial)
!5887 = !{!5888}
!5888 = !DISubrange(count: 1, lowerBound: 0)
!5889 = !{!5890, !5891}
!5890 = !DITemplateTypeParameter(name: "Self", type: !5795)
!5891 = !DITemplateTypeParameter(name: "B", type: !3597)
!5892 = !DILocation(line: 0, scope: !5788, inlinedAt: !5893)
!5893 = !DILocation(line: 516, column: 14, scope: !5773, inlinedAt: !5778)
!5894 = !DILocation(line: 2086, column: 9, scope: !5788, inlinedAt: !5893)
!5895 = !DILocalVariable(name: "b", arg: 1, scope: !5896, file: !3453, line: 1426, type: !3597)
!5896 = distinct !DISubprogram(name: "into_raw<[thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>]>", linkageName: "_RNvMs6_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB7_3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEE8into_rawCslIemzedAtQF_5bench", scope: !5897, file: !3453, line: 1426, type: !5898, scopeLine: 1426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !3616, retainedNodes: !5904)
!5897 = !DINamespace(name: "{impl#8}", scope: !3455)
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!5900, !3597}
!5900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>]", file: !2, size: 128, align: 64, elements: !5901, templateParams: !42, identifier: "f5ae268ecae9cea3ddd65f2d9dcddc0c")
!5901 = !{!5902, !5903}
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !5900, file: !2, baseType: !3600, size: 64, align: 64)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5900, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!5904 = !{!5895}
!5905 = !DILocation(line: 0, scope: !5896, inlinedAt: !5906)
!5906 = !DILocation(line: 510, column: 5, scope: !5773, inlinedAt: !5778)
!5907 = !DILocation(line: 1435, column: 9, scope: !5896, inlinedAt: !5906)
!5908 = !DILocation(line: 0, scope: !5635)
!5909 = !DILocalVariable(name: "dst", arg: 1, scope: !5910, file: !2543, line: 4071, type: !5913)
!5910 = distinct !DISubprogram(name: "atomic_compare_exchange<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic23atomic_compare_exchangeOINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB6_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEECslIemzedAtQF_5bench", scope: !416, file: !2543, line: 4070, type: !5911, scopeLine: 4070, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2389, retainedNodes: !5914)
!5911 = !DISubroutineType(cc: DW_CC_nocall, types: !5912)
!5912 = !{!5673, !5913, !2332, !2332, !415, !415}
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut *mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>", baseType: !2332, size: 64, align: 64, dwarfAddressSpace: 0)
!5914 = !{!5909, !5915, !5916, !5917, !5918, !5919, !5921}
!5915 = !DILocalVariable(name: "old", arg: 2, scope: !5910, file: !2543, line: 4072, type: !2332)
!5916 = !DILocalVariable(name: "new", arg: 3, scope: !5910, file: !2543, line: 4073, type: !2332)
!5917 = !DILocalVariable(name: "success", arg: 4, scope: !5910, file: !2543, line: 4074, type: !415)
!5918 = !DILocalVariable(name: "failure", arg: 5, scope: !5910, file: !2543, line: 4075, type: !415)
!5919 = !DILocalVariable(name: "val", scope: !5920, file: !2543, line: 4078, type: !2332, align: 64)
!5920 = distinct !DILexicalBlock(scope: !5910, file: !2543, line: 4078, column: 5)
!5921 = !DILocalVariable(name: "ok", scope: !5920, file: !2543, line: 4078, type: !636, align: 8)
!5922 = !DILocation(line: 0, scope: !5910, inlinedAt: !5923)
!5923 = distinct !DILocation(line: 1960, column: 18, scope: !5670, inlinedAt: !5695)
!5924 = !DILocation(line: 4111, column: 17, scope: !5910, inlinedAt: !5923)
!5925 = !DILocation(line: 240, column: 13, scope: !5635)
!5926 = !DILocation(line: 0, scope: !5637)
!5927 = !DILocation(line: 521, column: 72, scope: !5780, inlinedAt: !5786)
!5928 = !DILocation(line: 260, column: 47, scope: !5633)
!5929 = !DILocation(line: 872, column: 18, scope: !5757, inlinedAt: !5763)
!5930 = !DILocation(line: 0, scope: !5639)
!5931 = !DILocation(line: 0, scope: !5641)
!5932 = !DILocation(line: 0, scope: !5647, inlinedAt: !5653)
!5933 = !DILocalVariable(name: "dst", arg: 1, scope: !5934, file: !1746, line: 1941, type: !5642)
!5934 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEECslIemzedAtQF_5bench", scope: !27, file: !1746, line: 1941, type: !5648, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2387, retainedNodes: !5935)
!5935 = !{!5933}
!5936 = !DILocation(line: 0, scope: !5934, inlinedAt: !5937)
!5937 = !DILocation(line: 1404, column: 18, scope: !5647, inlinedAt: !5653)
!5938 = !DILocation(line: 262, column: 51, scope: !5641)
!5939 = !DILocation(line: 792, column: 24, scope: !5697, inlinedAt: !5705)
!5940 = !DILocalVariable(name: "self", arg: 1, scope: !5941, file: !2655, line: 2434, type: !2659)
!5941 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCslIemzedAtQF_5bench", scope: !626, file: !2655, line: 2434, type: !2656, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !632, declaration: !2660, retainedNodes: !5942)
!5942 = !{!5940}
!5943 = !DILocation(line: 2434, column: 22, scope: !5941, inlinedAt: !5944)
!5944 = !DILocation(line: 796, column: 60, scope: !5697, inlinedAt: !5705)
!5945 = !DILocation(line: 2437, column: 9, scope: !5941, inlinedAt: !5944)
!5946 = !DILocalVariable(name: "dst", arg: 1, scope: !5947, file: !2543, line: 3981, type: !1701)
!5947 = distinct !DISubprogram(name: "atomic_store<u8, false>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic12atomic_storehKb0_ECslIemzedAtQF_5bench", scope: !416, file: !2543, line: 3981, type: !5948, scopeLine: 3981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !37, retainedNodes: !5950)
!5948 = !DISubroutineType(types: !5949)
!5949 = !{null, !1701, !36, !415}
!5950 = !{!5946, !5951, !5952}
!5951 = !DILocalVariable(name: "val", arg: 2, scope: !5947, file: !2543, line: 3981, type: !36)
!5952 = !DILocalVariable(name: "order", arg: 3, scope: !5947, file: !2543, line: 3981, type: !415)
!5953 = !DILocation(line: 0, scope: !5947, inlinedAt: !5954)
!5954 = distinct !DILocation(line: 796, column: 13, scope: !5697, inlinedAt: !5705)
!5955 = !DILocation(line: 3986, column: 24, scope: !5947, inlinedAt: !5954)
!5956 = !DILocation(line: 3223, column: 36, scope: !5707, inlinedAt: !5716)
!5957 = !DILocalVariable(name: "self", arg: 1, scope: !5958, file: !2543, line: 3695, type: !5710)
!5958 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !552, file: !2543, line: 3695, type: !5959, scopeLine: 3695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !42, declaration: !5961, retainedNodes: !5962)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!5721, !5710}
!5961 = !DISubprogram(name: "as_ptr", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !552, file: !2543, line: 3695, type: !5959, scopeLine: 3695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !42)
!5962 = !{!5957}
!5963 = !DILocation(line: 3695, column: 33, scope: !5958, inlinedAt: !5964)
!5964 = !DILocation(line: 3225, column: 42, scope: !5707, inlinedAt: !5716)
!5965 = !DILocation(line: 2437, column: 9, scope: !5966, inlinedAt: !5972)
!5966 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCslIemzedAtQF_5bench", scope: !555, file: !2655, line: 2434, type: !5967, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !565, declaration: !5971)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!5969, !5970}
!5969 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut core::sync::atomic::private::Align8<usize>", baseType: !559, size: 64, align: 64, dwarfAddressSpace: 0)
!5970 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::cell::UnsafeCell<core::sync::atomic::private::Align8<usize>>", baseType: !555, size: 64, align: 64, dwarfAddressSpace: 0)
!5971 = !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCslIemzedAtQF_5bench", scope: !555, file: !2655, line: 2434, type: !5967, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !565)
!5972 = !DILocation(line: 3696, column: 24, scope: !5958, inlinedAt: !5964)
!5973 = !DILocation(line: 4038, column: 24, scope: !5718, inlinedAt: !5728)
!5974 = !DILocation(line: 268, column: 6, scope: !5620)
!5975 = !DILocation(line: 232, column: 5, scope: !5620)
!5976 = !DILocation(line: 268, column: 5, scope: !5620)
!5977 = !DILocation(line: 0, scope: !3200)
!5978 = !DILocation(line: 627, column: 26, scope: !3206, inlinedAt: !5979)
!5979 = !DILocation(line: 121, column: 30, scope: !3200)
!5980 = !DILocation(line: 1344, column: 25, scope: !3216, inlinedAt: !5981)
!5981 = !DILocation(line: 629, column: 29, scope: !3206, inlinedAt: !5979)
!5982 = !DILocation(line: 2437, column: 9, scope: !3225, inlinedAt: !5983)
!5983 = !DILocation(line: 1345, column: 16, scope: !3216, inlinedAt: !5981)
!5984 = !DILocation(line: 121, column: 16, scope: !3200)
!5985 = !DILocation(line: 125, column: 6, scope: !3200)
!5986 = !DILocation(line: 0, scope: !3233, inlinedAt: !5987)
!5987 = !DILocation(line: 122, column: 17, scope: !3200)
!5988 = !DILocation(line: 0, scope: !3241, inlinedAt: !5989)
!5989 = distinct !DILocation(line: 843, column: 14, scope: !3233, inlinedAt: !5987)
!5990 = !DILocation(line: 848, column: 1, scope: !3241, inlinedAt: !5989)
!5991 = !DILocation(line: 0, scope: !3250, inlinedAt: !5992)
!5992 = distinct !DILocation(line: 848, column: 1, scope: !3241, inlinedAt: !5989)
!5993 = !DILocation(line: 0, scope: !3260, inlinedAt: !5994)
!5994 = distinct !DILocation(line: 848, column: 1, scope: !3250, inlinedAt: !5992)
!5995 = !DILocation(line: 848, column: 1, scope: !3260, inlinedAt: !5994)
!5996 = !DILocation(line: 0, scope: !3269, inlinedAt: !5997)
!5997 = distinct !DILocation(line: 848, column: 1, scope: !3260, inlinedAt: !5994)
!5998 = !DILocation(line: 848, column: 1, scope: !3269, inlinedAt: !5997)
!5999 = !DILocation(line: 0, scope: !3269, inlinedAt: !6000)
!6000 = distinct !DILocation(line: 848, column: 1, scope: !3260, inlinedAt: !5994)
!6001 = !DILocation(line: 848, column: 1, scope: !3269, inlinedAt: !6000)
!6002 = !DILocation(line: 121, column: 13, scope: !3200)
!6003 = distinct !DISubprogram(name: "drop<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>", linkageName: "_RNvXs1_Cs4lPw7rMVDcJ_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEENtNtNtBV_3ops4drop4Drop4dropCslIemzedAtQF_5bench", scope: !6004, file: !2317, line: 138, type: !6005, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2385, retainedNodes: !6008)
!6004 = !DINamespace(name: "{impl#3}", scope: !2319)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !6007}
!6007 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut thread_local::ThreadLocal<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>", baseType: !2318, size: 64, align: 64, dwarfAddressSpace: 0)
!6008 = !{!6009, !6010, !6033, !6035, !6036, !6038}
!6009 = !DILocalVariable(name: "self", arg: 1, scope: !6003, file: !2317, line: 138, type: !6007)
!6010 = !DILocalVariable(name: "iter", scope: !6011, file: !2317, line: 140, type: !6012, align: 64)
!6011 = distinct !DILexicalBlock(scope: !6003, file: !2317, line: 140, column: 9)
!6012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Enumerate<core::slice::iter::IterMut<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>>", scope: !6013, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !6014, templateParams: !6031, identifier: "538f944e85a193f82cd417b21a567052")
!6013 = !DINamespace(name: "enumerate", scope: !5797)
!6014 = !{!6015, !6030}
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !6012, file: !2, baseType: !6016, size: 128, align: 64, flags: DIFlagPrivate)
!6016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IterMut<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", scope: !6017, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !6018, templateParams: !2597, identifier: "7a31920fabf282165ce36cd780aaacf3")
!6017 = !DINamespace(name: "iter", scope: !2569)
!6018 = !{!6019, !6023, !6025}
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6016, file: !2, baseType: !6020, size: 64, align: 64, flags: DIFlagPrivate)
!6020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", scope: !32, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !6021, templateParams: !2597, identifier: "7f7bbbaa5c5e83f9d81633763430efed")
!6021 = !{!6022}
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6020, file: !2, baseType: !2552, size: 64, align: 64, flags: DIFlagPrivate)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !6016, file: !2, baseType: !6024, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!6024 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>", baseType: !2323, size: 64, align: 64, dwarfAddressSpace: 0)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !6016, file: !2, baseType: !6026, align: 8, offset: 128, flags: DIFlagPrivate)
!6026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", scope: !41, file: !2, align: 8, flags: DIFlagPublic, elements: !42, templateParams: !6027, identifier: "d8ac64ad613d89d177f671b02a643f9c")
!6027 = !{!6028}
!6028 = !DITemplateTypeParameter(name: "T", type: !6029)
!6029 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>", baseType: !2323, size: 64, align: 64, dwarfAddressSpace: 0)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6012, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!6031 = !{!6032}
!6032 = !DITemplateTypeParameter(name: "I", type: !6016)
!6033 = !DILocalVariable(name: "i", scope: !6034, file: !2317, line: 140, type: !9, align: 64)
!6034 = distinct !DILexicalBlock(scope: !6011, file: !2317, line: 140, column: 9)
!6035 = !DILocalVariable(name: "bucket", scope: !6034, file: !2317, line: 140, type: !6029, align: 64)
!6036 = !DILocalVariable(name: "bucket_ptr", scope: !6037, file: !2317, line: 141, type: !2332, align: 64)
!6037 = distinct !DILexicalBlock(scope: !6034, file: !2317, line: 141, column: 13)
!6038 = !DILocalVariable(name: "this_bucket_size", scope: !6039, file: !2317, line: 143, type: !9, align: 64)
!6039 = distinct !DILexicalBlock(scope: !6037, file: !2317, line: 143, column: 13)
!6040 = !DILocalVariable(name: "self", arg: 1, scope: !6041, file: !6042, line: 157, type: !6057)
!6041 = distinct !DISubprogram(name: "next<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", linkageName: "_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtNtBa_4sync6atomic6AtomicOINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslIemzedAtQF_5bench", scope: !6043, file: !6042, line: 157, type: !6044, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2597, retainedNodes: !6058)
!6042 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "526307389b7550baea9ff75b5731c6e9")
!6043 = !DINamespace(name: "{impl#178}", scope: !6017)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!6046, !6057}
!6046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", scope: !647, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !6047, templateParams: !42, identifier: "ab2bd7857369d5bace8486c71a0daeb8")
!6047 = !{!6048}
!6048 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !6046, file: !2, size: 64, align: 64, elements: !6049, templateParams: !42, identifier: "598b5ad77cd669a4c0c99f457634f676", discriminator: !6056)
!6049 = !{!6050, !6052}
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6048, file: !2, baseType: !6051, size: 64, align: 64, extraData: i64 0)
!6051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !6046, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !42, templateParams: !6027, identifier: "ca2c5c4c590e7758239d06eb686a41d1")
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6048, file: !2, baseType: !6053, size: 64, align: 64)
!6053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !6046, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !6054, templateParams: !6027, identifier: "e50d45f4c4d1542de80be30063385da")
!6054 = !{!6055}
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6053, file: !2, baseType: !6029, size: 64, align: 64, flags: DIFlagPublic)
!6056 = !DIDerivedType(tag: DW_TAG_member, scope: !6046, file: !2, baseType: !196, size: 64, align: 64, flags: DIFlagArtificial)
!6057 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::IterMut<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", baseType: !6016, size: 64, align: 64, dwarfAddressSpace: 0)
!6058 = !{!6040, !6059, !6061, !6063}
!6059 = !DILocalVariable(name: "ptr", scope: !6060, file: !6042, line: 161, type: !6020, align: 64)
!6060 = distinct !DILexicalBlock(scope: !6041, file: !6042, line: 161, column: 17)
!6061 = !DILocalVariable(name: "end_or_len", scope: !6062, file: !6042, line: 162, type: !6024, align: 64)
!6062 = distinct !DILexicalBlock(scope: !6060, file: !6042, line: 162, column: 17)
!6063 = !DILocalVariable(name: "len", scope: !6064, file: !6042, line: 167, type: !9, align: 64)
!6064 = distinct !DILexicalBlock(scope: !6062, file: !6042, line: 167, column: 25)
!6065 = !DILocation(line: 0, scope: !6041, inlinedAt: !6066)
!6066 = distinct !DILocation(line: 80, column: 27, scope: !6067, inlinedAt: !6100)
!6067 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>>", linkageName: "_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutINtNtNtBa_4sync6atomic6AtomicOINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEEEENtNtNtB8_6traits8iterator8Iterator4nextCslIemzedAtQF_5bench", scope: !6069, file: !6068, line: 79, type: !6070, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !6031, retainedNodes: !6090)
!6068 = !DIFile(filename: "library/core/src/iter/adapters/enumerate.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "593117651994d9f54658d086cd09bf97")
!6069 = !DINamespace(name: "{impl#1}", scope: !6013)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{!6072, !6089}
!6072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(usize, &mut core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>)>", scope: !647, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !6073, templateParams: !42, identifier: "56c1638edf18de5dfb1552a6b18adcb0")
!6073 = !{!6074}
!6074 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !6072, file: !2, size: 128, align: 64, elements: !6075, templateParams: !42, identifier: "7bc7df59a63512ca9a2e5294180bc253", discriminator: !6088)
!6075 = !{!6076, !6084}
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6074, file: !2, baseType: !6077, size: 128, align: 64, extraData: i64 0)
!6077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !6072, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !42, templateParams: !6078, identifier: "c6992163fc7d7365204c16be0b338a1c")
!6078 = !{!6079}
!6079 = !DITemplateTypeParameter(name: "T", type: !6080)
!6080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, &mut core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>)", file: !2, size: 128, align: 64, elements: !6081, templateParams: !42, identifier: "1687ff912cabfab89a2698f690685ec2")
!6081 = !{!6082, !6083}
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6080, file: !2, baseType: !9, size: 64, align: 64)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !6080, file: !2, baseType: !6029, size: 64, align: 64, offset: 64)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6074, file: !2, baseType: !6085, size: 128, align: 64)
!6085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !6072, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !6086, templateParams: !6078, identifier: "7bfe46ef8c8af573b68622c41e06133")
!6086 = !{!6087}
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6085, file: !2, baseType: !6080, size: 128, align: 64, flags: DIFlagPublic)
!6088 = !DIDerivedType(tag: DW_TAG_member, scope: !6072, file: !2, baseType: !196, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!6089 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::enumerate::Enumerate<core::slice::iter::IterMut<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>>", baseType: !6012, size: 64, align: 64, dwarfAddressSpace: 0)
!6090 = !{!6091, !6092, !6094, !6096, !6098}
!6091 = !DILocalVariable(name: "self", arg: 1, scope: !6067, file: !6068, line: 79, type: !6089)
!6092 = !DILocalVariable(name: "a", scope: !6093, file: !6068, line: 80, type: !6029, align: 64)
!6093 = distinct !DILexicalBlock(scope: !6067, file: !6068, line: 80, column: 9)
!6094 = !DILocalVariable(name: "residual", scope: !6095, file: !6068, line: 80, type: !1605, align: 8)
!6095 = distinct !DILexicalBlock(scope: !6067, file: !6068, line: 80, column: 33)
!6096 = !DILocalVariable(name: "val", scope: !6097, file: !6068, line: 80, type: !6029, align: 64)
!6097 = distinct !DILexicalBlock(scope: !6067, file: !6068, line: 80, column: 33)
!6098 = !DILocalVariable(name: "i", scope: !6099, file: !6068, line: 81, type: !9, align: 64)
!6099 = distinct !DILexicalBlock(scope: !6093, file: !6068, line: 81, column: 9)
!6100 = distinct !DILocation(line: 140, column: 28, scope: !6011)
!6101 = !DILocation(line: 0, scope: !6067, inlinedAt: !6100)
!6102 = !DILocation(line: 0, scope: !6003)
!6103 = !DILocation(line: 0, scope: !6011)
!6104 = !DILocalVariable(name: "count", scope: !6105, file: !6106, line: 619, type: !9, align: 64)
!6105 = distinct !DISubprogram(name: "add<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtNtB9_4sync6atomic6AtomicOINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB9_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEEE3addCslIemzedAtQF_5bench", scope: !6020, file: !6106, line: 619, type: !6107, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2597, declaration: !6109, retainedNodes: !6110)
!6106 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "a4d50389e713a3b15a513e9fe2df9dcb")
!6107 = !DISubroutineType(types: !6108)
!6108 = !{!6020, !6020, !9}
!6109 = !DISubprogram(name: "add<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtNtB9_4sync6atomic6AtomicOINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB9_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEEE3addCslIemzedAtQF_5bench", scope: !6020, file: !6106, line: 619, type: !6107, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2597)
!6110 = !{!6111, !6104}
!6111 = !DILocalVariable(name: "self", arg: 1, scope: !6105, file: !6106, line: 619, type: !6020)
!6112 = !DILocation(line: 0, scope: !6105, inlinedAt: !6113)
!6113 = distinct !DILocation(line: 185, column: 40, scope: !6062, inlinedAt: !6066)
!6114 = !DILocation(line: 0, scope: !6060, inlinedAt: !6066)
!6115 = !DILocation(line: 0, scope: !6062, inlinedAt: !6066)
!6116 = !DILocalVariable(name: "self", arg: 1, scope: !6117, file: !6106, line: 1662, type: !6121)
!6117 = distinct !DISubprogram(name: "eq<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtNtB9_4sync6atomic6AtomicOINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB9_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEEEENtNtB9_3cmp9PartialEq2eqCslIemzedAtQF_5bench", scope: !6118, file: !6106, line: 1662, type: !6119, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2597, retainedNodes: !6122)
!6118 = !DINamespace(name: "{impl#15}", scope: !32)
!6119 = !DISubroutineType(types: !6120)
!6120 = !{!636, !6121, !6121}
!6121 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<core::sync::atomic::Atomic<*mut thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>>", baseType: !6020, size: 64, align: 64, dwarfAddressSpace: 0)
!6122 = !{!6116, !6123}
!6123 = !DILocalVariable(name: "other", arg: 2, scope: !6117, file: !6106, line: 1662, type: !6121)
!6124 = !DILocation(line: 1662, column: 11, scope: !6117, inlinedAt: !6125)
!6125 = distinct !DILocation(line: 180, column: 28, scope: !6062, inlinedAt: !6066)
!6126 = !DILocation(line: 1662, column: 18, scope: !6117, inlinedAt: !6125)
!6127 = !DILocation(line: 180, column: 28, scope: !6062, inlinedAt: !6066)
!6128 = !DILocation(line: 1663, column: 9, scope: !6117, inlinedAt: !6125)
!6129 = !DILocation(line: 627, column: 28, scope: !6105, inlinedAt: !6113)
!6130 = !DILocation(line: 0, scope: !6093, inlinedAt: !6100)
!6131 = !DILocation(line: 0, scope: !6099, inlinedAt: !6100)
!6132 = !DILocation(line: 82, column: 9, scope: !6099, inlinedAt: !6100)
!6133 = !DILocation(line: 0, scope: !6034)
!6134 = !DILocation(line: 141, column: 30, scope: !6034)
!6135 = !DILocation(line: 0, scope: !6037)
!6136 = !DILocalVariable(name: "self", arg: 1, scope: !6137, file: !1696, line: 22, type: !2332)
!6137 = distinct !DISubprogram(name: "is_null<thread_local::Entry<core::cell::RefCell<alloc::vec::Vec<tracing_core::metadata::LevelFilter, alloc::alloc::Global>>>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOINtCs4lPw7rMVDcJ_12thread_local5EntryINtNtB6_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE7is_nullCslIemzedAtQF_5bench", scope: !1697, file: !1696, line: 22, type: !2619, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, templateParams: !2548, retainedNodes: !6138)
!6138 = !{!6136}
end_hunk_1
