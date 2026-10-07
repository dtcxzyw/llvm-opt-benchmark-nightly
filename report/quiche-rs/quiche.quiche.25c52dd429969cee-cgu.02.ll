Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.02?download=true
inline.NumInlined: 475
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path3new:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15505
  %i.v = load i64, ptr %i.u, align 8, !dbg !15505
    #dbg_value(i64 %i.t, !15447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15482)
    #dbg_value(i64 %i.v, !15447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15482)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #22
          to label %bb.i unwind label %bb.e, !dbg !15506

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.37 = zext i1 %5 to i64, !dbg !15507           ; 2 uses
    #dbg_value(i64 %.37, !15399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15462)
    #dbg_value(i64 %.37, !15398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15462)
  %. = select i1 %5, i8 4, i8 1, !dbg !15507
    #dbg_value(i8 %., !15397, !DIExpression(), !15462)
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15508
  %i.y = load i64, ptr %i.x, align 8, !dbg !15508, !range !3088, !noundef !1224 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15508
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !15508, !nonnull !1224, !noundef !1224
    #dbg_value(i64 %i.y, !15446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15483)
    #dbg_value(ptr %i.aa, !15446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15483)
    #dbg_value(ptr poison, !15452, !DIExpression(), !15484)
  %i.ab = icmp ule i64 %4, %i.y, !dbg !15509
    #dbg_value(i1 true, !15485, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15488)
  tail call void @llvm.assume(i1 %i.ab), !dbg !15510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15511
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2608, !dbg !15512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !dbg !15512
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2640, !dbg !15512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !dbg !15512
  store i64 %.37, ptr %0, align 8, !dbg !15512
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15512
  store i64 0, ptr %i.ae, align 8, !dbg !15512
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15512
  store i64 %.37, ptr %i.af, align 8, !dbg !15512
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15512
  store i64 0, ptr %i.ag, align 8, !dbg !15512
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2791, !dbg !15512
  store i8 %., ptr %i.ah, align 1, !dbg !15512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2784, !dbg !15512
  store i8 0, ptr %i.ai, align 8, !dbg !15512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2424) %i.aj, ptr noundef nonnull align 8 dereferenceable(2424) %i.d, i64 2424, i1 false), !dbg !15512
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2456, !dbg !15512
  store i64 %.sroa.02.0, ptr %i.ak, align 8, !dbg !15512
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 2464, !dbg !15512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !dbg !15512
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2528, !dbg !15512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !15512
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2672, !dbg !15512
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2600, !dbg !15512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !dbg !15512
  store i32 -1, ptr %i.an, align 8, !dbg !15512
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2560, !dbg !15512
  store i64 %i.y, ptr %i.ao, align 8, !dbg !15512
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2568, !dbg !15512
  store ptr %i.aa, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !15512
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2576, !dbg !15512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2688, !dbg !15512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !15512
  store i64 %4, ptr %i.ap, align 8, !dbg !15512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2696, !dbg !15512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2785, !dbg !15512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, i8 0, i64 88, i1 false), !dbg !15512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ar, i8 0, i64 6, i1 false), !dbg !15512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15503
  ret void, !dbg !15513

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.e
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !15514
  unreachable, !dbg !15514

bb.k:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche8recovery8RecoveryEBF_(ptr noalias nofree noundef align 8 dereferenceable(2424) %i.d) #17
          to label %bb.l unwind label %bb.j, !dbg !15503

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.p, !dbg !15514
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path5stats(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) initializes((0, 60), (64, 76), (80, 92), (96, 108), (112, 298)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2792) %1) unnamed_addr #1 !dbg !15518 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !15611, !DIExpression(), !15615)
    #dbg_declare(ptr poison, !15616, !DIExpression(), !15636)
    #dbg_value(i64 1200, !15637, !DIExpression(), !15647)
    #dbg_declare(ptr poison, !15655, !DIExpression(), !15660)
    #dbg_value(ptr %1, !15662, !DIExpression(DW_OP_plus_uconst, 2456, DW_OP_stack_value), !15669)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2456, !dbg !15875
  %i.c = load i64, ptr %i.b, align 8, !dbg !15875, !range !4321, !noundef !1224
  %.not = icmp eq i64 %i.c, 2, !dbg !15875
  br i1 %.not, label %bb.c, label %bb.b, !dbg !15876

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !15632, !DIExpression(), !15670)
    #dbg_value(ptr %i.b, !15633, !DIExpression(), !15671)
    #dbg_value(ptr %i.b, !15650, !DIExpression(), !15672)
    #dbg_value(ptr %i.b, !15653, !DIExpression(), !15673)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2488, !dbg !15877
  %i.e = load i64, ptr %i.d, align 8, !dbg !15877, !range !1760, !noundef !1224
    #dbg_value(i64 %i.e, !15641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15647)
    #dbg_value(i64 poison, !15641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15647)
  %i.f = trunc nuw i64 %i.e to i1, !dbg !15878
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2496, !dbg !15878
  %i.h = load i64, ptr %i.g, align 8, !dbg !15878
  %.sroa.020.0 = select i1 %i.f, i64 %i.h, i64 1200, !dbg !15878
    #dbg_value(i64 %.sroa.020.0, !15612, !DIExpression(), !15674)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !15879, !range !4321
  %i.i = icmp eq i64 %.pre, 2, !dbg !15879
  br label %bb.f, !dbg !15880

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr null, !15632, !DIExpression(), !15670)
    #dbg_value(ptr %1, !15680, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15685)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15881
  %i.k = load i64, ptr %i.j, align 8, !dbg !15881, !range !4321, !noundef !1224
  %.not30 = icmp eq i64 %i.k, 2, !dbg !15881
  br i1 %.not30, label %bb.e, label %bb.d, !dbg !15881

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !15682, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15686)
    #dbg_value(ptr %1, !15688, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15692)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2432, !dbg !15882
  %i.m = load i64, ptr %i.l, align 8, !dbg !15882, !noundef !1224
    #dbg_value(i64 %i.m, !15612, !DIExpression(), !15674)
  br label %bb.f, !dbg !15881

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !15681, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15694)
    #dbg_value(ptr %1, !15696, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15702)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1648, !dbg !15883
  %i.o = load i64, ptr %i.n, align 8, !dbg !15883, !noundef !1224
    #dbg_value(i64 %i.o, !15612, !DIExpression(), !15674)
  br label %bb.f, !dbg !15881

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.not31 = phi i1 [ %i.i, %bb.b ], [ false, %bb.d ], [ true, %bb.e ], !dbg !15879 ; 5 uses
  %.sroa.02.0 = phi i64 [ %.sroa.020.0, %bb.b ], [ %i.m, %bb.d ], [ %i.o, %bb.e ], !dbg !15615
    #dbg_value(i64 %.sroa.02.0, !15612, !DIExpression(), !15674)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2791, !dbg !15884
  %i.q = load i8, ptr %i.p, align 1, !dbg !15884, !range !5087, !noundef !1224
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2784, !dbg !15885
  %i.s = load i8, ptr %i.r, align 8, !dbg !15885, !range !4909, !noundef !1224
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2696, !dbg !15886
  %i.u = load <2 x i64>, ptr %i.t, align 8, !dbg !15886
    #dbg_value(ptr %1, !15675, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15703)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15879 ; 2 uses
  %spec.select = select i1 %.not31, i64 1296, i64 2400, !dbg !15879
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select, !dbg !15879
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !dbg !15879, !noundef !1224
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2712, !dbg !15887
  %i.x = load <2 x i64>, ptr %i.w, align 8, !dbg !15887
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2744, !dbg !15888
  %i.z = load i64, ptr %i.y, align 8, !dbg !15888, !noundef !1224
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2728, !dbg !15889
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !dbg !15889
    #dbg_value(ptr %1, !15704, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15709)
  %.sroa.5.0.in.v = select i1 %.not31, i64 1376, i64 2168, !dbg !15890
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.5.0.in.v, !dbg !15890
  %.sroa.04.0.in.v = select i1 %.not31, i64 1368, i64 2160, !dbg !15890
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.in.v, !dbg !15890
  %.sroa.04.0 = load i64, ptr %.sroa.04.0.in, align 8, !dbg !15890, !noundef !1224
  %.sroa.5.0 = load i32, ptr %.sroa.5.0.in, align 8, !dbg !15890, !range !4926, !noundef !1224
    #dbg_value(ptr %1, !15710, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15717)
    #dbg_value(ptr %1, !15718, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15723)
    #dbg_value(ptr %1, !15718, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15723)
  br i1 %.not31, label %bb.h, label %bb.g, !dbg !15891

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !15714, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15724)
    #dbg_value(ptr %1, !15725, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15731)
    #dbg_value(ptr %1, !15734, !DIExpression(DW_OP_plus_uconst, 2128, DW_OP_stack_value), !15740)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2304, !dbg !15892
  %i.ad = load i8, ptr %i.ac, align 8, !dbg !15892, !range !4909, !noundef !1224
  %i.ae = trunc nuw i8 %i.ad to i1, !dbg !15892
    #dbg_value(ptr %1, !15720, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15741)
    #dbg_value(ptr %1, !15742, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15746)
    #dbg_value(ptr %1, !15747, !DIExpression(DW_OP_plus_uconst, 2128, DW_OP_stack_value), !15751)
  br i1 %i.ae, label %bb.k, label %bb.j, !dbg !15893

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !15713, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15752)
    #dbg_value(ptr %1, !15753, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15759)
    #dbg_value(ptr %1, !15734, !DIExpression(DW_OP_plus_uconst, 1336, DW_OP_stack_value), !15762)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1512, !dbg !15894
  %i.ag = load i8, ptr %i.af, align 8, !dbg !15894, !range !4909, !noundef !1224
  %i.ah = trunc nuw i8 %i.ag to i1, !dbg !15894
    #dbg_value(ptr %1, !15719, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15763)
    #dbg_value(ptr %1, !15764, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15768)
    #dbg_value(ptr %1, !15747, !DIExpression(DW_OP_plus_uconst, 1336, DW_OP_stack_value), !15770)
  br i1 %i.ah, label %bb.i, label %bb.j, !dbg !15895

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1432, !dbg !15894
  %2 = load i64, ptr %i.ai, align 8, !dbg !15894
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1440, !dbg !15894
  %3 = load i32, ptr %i.aj, align 8, !dbg !15894, !range !4926
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1352, !dbg !15896
  %i.al = load i64, ptr %i.ak, align 8, !dbg !15896, !noundef !1224
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1360, !dbg !15896
  %i.an = load i32, ptr %i.am, align 8, !dbg !15896, !range !4926, !noundef !1224
  br label %bb.j, !dbg !15897

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.k, %bb.i
  %.sroa.013.0.in.v = phi i64 [ 2424, %bb.k ], [ 1640, %bb.h ], [ 1640, %bb.i ], [ 2424, %bb.g ]
  %.sroa.012.0.in.v = phi i64 [ 1928, %bb.k ], [ 1256, %bb.h ], [ 1256, %bb.i ], [ 1928, %bb.g ]
  %.sroa.09.0.in.v = phi i64 [ 2176, %bb.k ], [ 1384, %bb.h ], [ 1384, %bb.i ], [ 2176, %bb.g ]
  %.sroa.510.0.in.v = phi i64 [ 2184, %bb.k ], [ 1392, %bb.h ], [ 1392, %bb.i ], [ 2184, %bb.g ]
  %.sroa.05.045 = phi i64 [ %4, %bb.k ], [ undef, %bb.h ], [ %2, %bb.i ], [ undef, %bb.g ]
  %.sroa.7.043 = phi i32 [ %5, %bb.k ], [ -1, %bb.h ], [ %3, %bb.i ], [ -1, %bb.g ]
  %.sroa.77.0 = phi i32 [ %i.ax, %bb.k ], [ -1, %bb.h ], [ %i.an, %bb.i ], [ -1, %bb.g ], !dbg !15898
  %.sroa.06.0 = phi i64 [ %i.av, %bb.k ], [ undef, %bb.h ], [ %i.al, %bb.i ], [ undef, %bb.g ], !dbg !15898
    #dbg_value(ptr %1, !15771, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15776)
  %.sroa.510.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.510.0.in.v, !dbg !15899
  %.sroa.09.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.0.in.v, !dbg !15899
  %.sroa.09.0 = load i64, ptr %.sroa.09.0.in, align 8, !dbg !15899, !noundef !1224
  %.sroa.510.0 = load i32, ptr %.sroa.510.0.in, align 8, !dbg !15899, !range !4926, !noundef !1224
    #dbg_value(ptr %1, !15777, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15782)
  %.sroa.012.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.012.0.in.v, !dbg !15900
  %.sroa.012.0 = load i64, ptr %.sroa.012.0.in, align 8, !dbg !15900, !noundef !1224
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2752, !dbg !15901
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !dbg !15901
    #dbg_value(ptr %1, !15783, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15790)
  %.sroa.013.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.013.0.in.v, !dbg !15902
  %.sroa.013.0 = load i64, ptr %.sroa.013.0.in, align 8, !dbg !15902, !noundef !1224
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2768, !dbg !15903
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !15903, !noundef !1224
    #dbg_value(ptr %1, !15791, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15798)
  br i1 %.not31, label %bb.m, label %bb.l, !dbg !15904

bb.k:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2224, !dbg !15892
  %4 = load i64, ptr %i.as, align 8, !dbg !15892
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2232, !dbg !15892
  %5 = load i32, ptr %i.at, align 8, !dbg !15892, !range !4926
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2144, !dbg !15905
  %i.av = load i64, ptr %i.au, align 8, !dbg !15905, !noundef !1224
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2152, !dbg !15905
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !15905, !range !4926, !noundef !1224
  br label %bb.j, !dbg !15906

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %i.v, !15795, !DIExpression(), !15799)
  %i.ay = tail call noundef i64 @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps13delivery_rate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2424) %i.v), !dbg !15907
    #dbg_value(i64 %i.ay, !15800, !DIExpression(), !15804)
    #dbg_value(ptr %1, !15805, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15812)
    #dbg_value(ptr %i.v, !15809, !DIExpression(), !15813)
  %i.az = tail call { i64, i64 } @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2424) %i.v), !dbg !15908 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 0, !dbg !15908 ; 2 uses
    #dbg_value(i64 %i.ba, !15656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15814)
    #dbg_value(i64 poison, !15656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15814)
  %i.bb = trunc nuw i64 %i.ba to i1, !dbg !15909
  %i.bc = extractvalue { i64, i64 } %i.az, 1, !dbg !15909
  %i.bd = lshr i64 %i.bc, 3, !dbg !15909
  %.sroa.516.0.ph = select i1 %i.bb, i64 %i.bd, i64 undef, !dbg !15909
    #dbg_value(ptr %1, !15815, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15822)
    #dbg_value(ptr %1, !15819, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15823)
    #dbg_value(ptr %1, !15824, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15830)
  br label %bb.n, !dbg !15910

bb.m:                                             ; preds = %bb.j
    #dbg_value(ptr %1, !15794, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15831)
    #dbg_value(ptr %1, !15832, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15838)
    #dbg_value(ptr %1, !15841, !DIExpression(DW_OP_plus_uconst, 744, DW_OP_stack_value), !15847)
    #dbg_value(ptr %1, !15851, !DIExpression(DW_OP_plus_uconst, 888, DW_OP_stack_value), !15857)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1000, !dbg !15911
  %i.bf = load i64, ptr %i.be, align 8, !dbg !15911, !noundef !1224
    #dbg_value(i64 %i.bf, !15800, !DIExpression(), !15804)
    #dbg_value(ptr %1, !15805, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15812)
    #dbg_value(ptr %1, !15815, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15822)
    #dbg_value(ptr %1, !15818, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15858)
    #dbg_value(ptr %1, !15859, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !15865)
    #dbg_value(ptr %1, !15868, !DIExpression(DW_OP_plus_uconst, 848, DW_OP_stack_value), !15874)
  br label %bb.n, !dbg !15910

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink61 = phi i64 [ 848, %bb.m ], [ 2048, %bb.l ]
  %.sroa.015.059 = phi i64 [ 0, %bb.m ], [ %i.ba, %bb.l ]
  %.sroa.516.057 = phi i64 [ undef, %bb.m ], [ %.sroa.516.0.ph, %bb.l ]
  %.sroa.014.04955 = phi i64 [ %i.bf, %bb.m ], [ %i.ay, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 2640, !dbg !15912
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2608, !dbg !15913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15914
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.sink61, !dbg !15910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !dbg !15910
  %i.bj = lshr i64 %.sroa.014.04955, 3, !dbg !15915
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15916
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !dbg !15916
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !15916
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false), !dbg !15916
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 297, !dbg !15916
  store i8 %i.q, ptr %i.bm, align 1, !dbg !15916
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !15916
  store i8 %i.s, ptr %i.bn, align 8, !dbg !15916
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !15916
  %i.bp = shufflevector <2 x i64> %i.u, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !15916
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !dbg !15916
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !15916
  store i64 %.sroa.03.0, ptr %i.bq, align 8, !dbg !15916
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !15916
  store <2 x i64> %i.x, ptr %i.br, align 8, !dbg !15916
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !15916
  store i64 %i.z, ptr %i.bs, align 8, !dbg !15916
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !15916
  store <2 x i64> %i.ab, ptr %i.bt, align 8, !dbg !15916
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15916
  store i64 %.sroa.04.0, ptr %i.bu, align 8, !dbg !15916
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15916
  store i32 %.sroa.5.0, ptr %i.bv, align 8, !dbg !15916
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15916
  store i64 %.sroa.05.045, ptr %i.bw, align 8, !dbg !15916
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !15916
  store i32 %.sroa.7.043, ptr %i.bx, align 8, !dbg !15916
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !15916
  store i64 %.sroa.06.0, ptr %i.by, align 8, !dbg !15916
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !15916
  store i32 %.sroa.77.0, ptr %i.bz, align 8, !dbg !15916
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15916
  store i64 %.sroa.09.0, ptr %i.ca, align 8, !dbg !15916
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15916
  store i32 %.sroa.510.0, ptr %i.cb, align 8, !dbg !15916
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !15916
  store i64 %.sroa.012.0, ptr %i.cc, align 8, !dbg !15916
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !15916
  store <2 x i64> %i.ap, ptr %i.cd, align 8, !dbg !15916
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !15916
  store i64 %.sroa.013.0, ptr %i.ce, align 8, !dbg !15916
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !15916
  store i64 %i.ar, ptr %i.cf, align 8, !dbg !15916
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !15916
  store i64 %.sroa.02.0, ptr %i.cg, align 8, !dbg !15916
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !15916
  store i64 %i.bj, ptr %i.ch, align 8, !dbg !15916
  store i64 %.sroa.015.059, ptr %0, align 8, !dbg !15916
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15916
  store i64 %.sroa.516.057, ptr %i.ci, align 8, !dbg !15916
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !15916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15917
  ret void, !dbg !15918
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE13clear_recurseB16_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15922 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !15970, !DIExpression(), !15975)
    #dbg_value(ptr poison, !15969, !DIExpression(), !15975)
  %.not = icmp eq ptr %0, null, !dbg !15990
  br i1 %.not, label %bb.d, label %bb.b, !dbg !15991

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !15971, !DIExpression(), !15976)
  %.val = load ptr, ptr %0, align 8, !dbg !15992, !noundef !1224
    #dbg_value(ptr %.val, !15972, !DIExpression(), !15977)
  %i.b = getelementptr i8, ptr %0, i64 8, !dbg !15993
  %.val6 = load ptr, ptr %i.b, align 8, !dbg !15993, !noundef !1224
    #dbg_value(ptr %.val6, !15973, !DIExpression(), !15978)
  tail call fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE13clear_recurseB16_(ptr noundef %.val) #21, !dbg !15994
  tail call fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE13clear_recurseB16_(ptr noundef %.val6) #21, !dbg !15995
    #dbg_value(ptr poison, !5444, !DIExpression(), !15924)
    #dbg_value(ptr %0, !5448, !DIExpression(), !15924)
    #dbg_value(i64 0, !5450, !DIExpression(), !15926)
    #dbg_value(i8 1, !5455, !DIExpression(), !15926)
    #dbg_value(ptr %0, !5454, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15927)
    #dbg_value(ptr %0, !5457, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15929)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15996
    #dbg_value(ptr %i.c, !5468, !DIExpression(), !15932)
    #dbg_value(i64 0, !5471, !DIExpression(), !15932)
    #dbg_value(i8 1, !5472, !DIExpression(), !15932)
  store atomic i64 0, ptr %i.c release, align 8, !dbg !15997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15998
    #dbg_value(ptr poison, !15980, !DIExpression(), !15935)
    #dbg_value(ptr %0, !15984, !DIExpression(), !15935)
    #dbg_value(i64 8, !15986, !DIExpression(), !15938)
    #dbg_value(ptr %0, !15987, !DIExpression(), !15938)
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8, !dbg !15999 ; 2 uses
    #dbg_value(ptr poison, !5480, !DIExpression(), !15940)
    #dbg_value(ptr %i.d, !5484, !DIExpression(), !15940)
    #dbg_value(ptr %i.d, !5486, !DIExpression(), !15942)
    #dbg_value(ptr %i.d, !5491, !DIExpression(), !15944)
    #dbg_value(ptr %i.d, !5500, !DIExpression(), !15946)
    #dbg_declare(ptr poison, !5495, !DIExpression(), !15947)
  %i.e = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEBK_(ptr noundef nonnull %i.d), !dbg !16000
    #dbg_value(i64 %i.e, !5496, !DIExpression(), !15948)
    #dbg_value(i64 %i.e, !5503, !DIExpression(), !15946)
  %i.f = sub nsw i64 0, %i.e, !dbg !16001
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f, !dbg !16002 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !dbg !16003
    #dbg_value(ptr %i.a, !4273, !DIExpression(), !15951)
    #dbg_value(ptr %i.a, !4278, !DIExpression(), !15953)
    #dbg_value(i64 1, !4289, !DIExpression(), !15955)
    #dbg_value(i8 1, !4295, !DIExpression(), !15955)
    #dbg_value(i64 1, !4297, !DIExpression(), !15957)
    #dbg_value(i8 1, !4302, !DIExpression(), !15957)
    #dbg_value(ptr %i.g, !4294, !DIExpression(), !15958)
    #dbg_value(ptr %i.g, !4301, !DIExpression(), !15957)
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !16004, !noalias !15989
  %i.i = icmp eq i64 %i.h, 1, !dbg !16005
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEB1d_.exit, !dbg !16005

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !4311, !DIExpression(), !15964)
  fence acquire, !dbg !16006
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #20, !dbg !16007
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEB1d_.exit, !dbg !16007

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEB1d_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16008
  br label %bb.d, !dbg !16009

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEB1d_.exit, %bb.a
  ret void, !dbg !16010
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE13clear_recurseB16_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16014 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !16062, !DIExpression(), !16067)
    #dbg_value(ptr poison, !16061, !DIExpression(), !16067)
  %.not = icmp eq ptr %0, null, !dbg !16082
  br i1 %.not, label %bb.d, label %bb.b, !dbg !16083

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !16063, !DIExpression(), !16068)
  %.val = load ptr, ptr %0, align 8, !dbg !16084, !noundef !1224
    #dbg_value(ptr %.val, !16064, !DIExpression(), !16069)
  %i.b = getelementptr i8, ptr %0, i64 8, !dbg !16085
  %.val6 = load ptr, ptr %i.b, align 8, !dbg !16085, !noundef !1224
    #dbg_value(ptr %.val6, !16065, !DIExpression(), !16070)
  tail call fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE13clear_recurseB16_(ptr noundef %.val) #21, !dbg !16086
  tail call fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE13clear_recurseB16_(ptr noundef %.val6) #21, !dbg !16087
    #dbg_value(ptr poison, !5444, !DIExpression(), !16016)
    #dbg_value(ptr %0, !5448, !DIExpression(), !16016)
end_hunk_0
