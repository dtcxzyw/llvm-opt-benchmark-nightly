inline.NumInlined: 268
inline.NumDeleted: 146
begin_hunk_0_@_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_5Inner5remap:bb.a
    #dbg_value(i32 %i.cb, !6539, !DIExpression(), !6540)
    #dbg_value(ptr poison, !7020, !DIExpression(), !7023)
    #dbg_value(ptr poison, !7025, !DIExpression(), !7028)
  %i.cc = zext i32 %i.cb to i64, !dbg !7030       ; 3 uses
  %i.cd = icmp samesign ugt i64 %2, %i.cc, !dbg !7031
  br i1 %i.cd, label %bb.y, label %bb.z, !dbg !7031

bb.y:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc, !dbg !7032
  %i.cf = load i32, ptr %i.ce, align 4, !dbg !7032, !noundef !22
  store i32 %i.cf, ptr %i.ca, align 16, !dbg !7033
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 356, !dbg !7034 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !dbg !7034, !noundef !22
    #dbg_value(i32 %i.ch, !6539, !DIExpression(), !6542)
    #dbg_value(ptr poison, !7020, !DIExpression(), !7035)
    #dbg_value(ptr poison, !7025, !DIExpression(), !7038)
  %i.ci = zext i32 %i.ch to i64, !dbg !7041       ; 3 uses
  %i.cj = icmp samesign ugt i64 %2, %i.ci, !dbg !7042
  br i1 %i.cj, label %bb.aa, label %bb.ab, !dbg !7042

bb.z:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19, !dbg !7031
  unreachable, !dbg !7031

bb.aa:                                            ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ci, !dbg !7043
  %i.cl = load i32, ptr %i.ck, align 4, !dbg !7043, !noundef !22
  store i32 %i.cl, ptr %i.cg, align 4, !dbg !7044
    #dbg_value(ptr %0, !7045, !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value), !7050)
    #dbg_value(ptr %0, !7052, !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value), !7056)
    #dbg_value(ptr %0, !7059, !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value), !7065)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !7068
  %i.cn = load ptr, ptr %i.cm, align 16, !dbg !7068, !nonnull !22, !noundef !22 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !7089
  %i.cp = load i64, ptr %i.co, align 8, !dbg !7089, !noundef !22 ; 2 uses
    #dbg_value(i64 %i.cp, !7090, !DIExpression(), !7099)
    #dbg_value(i64 %i.cp, !7106, !DIExpression(), !7110)
    #dbg_value(ptr %i.cn, !7104, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7113)
    #dbg_value(ptr %i.cn, !7094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7114)
    #dbg_value(i64 %i.cp, !7104, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7113)
    #dbg_value(i64 %i.cp, !7094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7114)
    #dbg_value(ptr %i.cn, !7095, !DIExpression(), !7115)
    #dbg_value(ptr %i.cn, !7109, !DIExpression(), !7110)
  %.idx60 = shl nuw nsw i64 %i.cp, 2, !dbg !7116
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx60, !dbg !7116
    #dbg_value(ptr %i.cn, !6464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7117)
    #dbg_value(ptr %i.cq, !6464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7117)
    #dbg_value(ptr undef, !6479, !DIExpression(), !6503)
    #dbg_value(ptr %i.cn, !6497, !DIExpression(), !7118)
    #dbg_value(ptr %i.cn, !6561, !DIExpression(), !6562)
    #dbg_value(ptr %i.cq, !6499, !DIExpression(), !7119)
    #dbg_value(ptr poison, !7120, !DIExpression(), !7124)
    #dbg_value(ptr poison, !7123, !DIExpression(), !7126)
  %i.cr = icmp eq i64 %i.cp, 0, !dbg !7127
  br i1 %i.cr, label %._crit_edge59, label %.lr.ph58, !dbg !7128

bb.ab:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #19, !dbg !7042
  unreachable, !dbg !7042

.lr.ph58:                                         ; preds = %bb.aa, %bb.ac
  %.sroa.02.056 = phi ptr [ %i.cv, %bb.ac ], [ %i.cn, %bb.aa ] ; 3 uses
    #dbg_value(ptr %.sroa.02.056, !6464, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7117)
    #dbg_value(ptr %.sroa.02.056, !6477, !DIExpression(), !7129)
  %i.cs = load i32, ptr %.sroa.02.056, align 4, !dbg !7130, !noundef !22
    #dbg_value(i32 %i.cs, !6539, !DIExpression(), !6544)
    #dbg_value(ptr poison, !7020, !DIExpression(), !7131)
    #dbg_value(ptr poison, !7025, !DIExpression(), !7134)
  %i.ct = zext i32 %i.cs to i64, !dbg !7137       ; 3 uses
  %i.cu = icmp samesign ugt i64 %2, %i.ct, !dbg !7138
  br i1 %i.cu, label %bb.ac, label %bb.ad, !dbg !7138

._crit_edge59:                                    ; preds = %bb.ac, %bb.aa
  ret void, !dbg !7139

bb.ac:                                            ; preds = %.lr.ph58
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.02.056, i64 4, !dbg !7140 ; 2 uses
    #dbg_value(ptr %i.cv, !6464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7117)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct, !dbg !7141
  %i.cx = load i32, ptr %i.cw, align 4, !dbg !7141, !noundef !22
  store i32 %i.cx, ptr %.sroa.02.056, align 4, !dbg !7142
    #dbg_value(ptr undef, !6479, !DIExpression(), !6503)
    #dbg_value(ptr %i.cv, !6497, !DIExpression(), !7118)
    #dbg_value(ptr %i.cv, !6561, !DIExpression(), !6562)
    #dbg_value(ptr %i.cq, !6499, !DIExpression(), !7119)
    #dbg_value(ptr poison, !7120, !DIExpression(), !7124)
    #dbg_value(ptr poison, !7123, !DIExpression(), !7126)
  %i.cy = icmp eq ptr %i.cv, %i.cq, !dbg !7127
  br i1 %i.cy, label %._crit_edge59, label %.lr.ph58, !dbg !7128

bb.ad:                                            ; preds = %.lr.ph58
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ct, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19, !dbg !7138
  unreachable, !dbg !7138
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_5Inner8into_nfa(ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7143 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 12 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [400 x i8], align 16              ; 6 uses
    #dbg_value(ptr poison, !7179, !DIExpression(), !7202)
  %i.h = alloca [56 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 23 uses
  %i.j = alloca [256 x i8], align 1               ; 4 uses
    #dbg_declare(ptr %0, !7148, !DIExpression(), !7205)
    #dbg_declare(ptr %i.i, !7149, !DIExpression(), !7206)
    #dbg_declare(ptr %i.h, !7151, !DIExpression(), !7207)
    #dbg_declare(ptr poison, !7208, !DIExpression(), !7217)
    #dbg_value(i64 1, !7219, !DIExpression(), !7223)
    #dbg_value(i64 24, !7225, !DIExpression(), !7229)
    #dbg_value(i64 8, !7245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7258)
    #dbg_value(i64 24, !7245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7258)
    #dbg_value(i64 4, !7225, !DIExpression(), !7268)
    #dbg_value(i64 4, !7225, !DIExpression(), !7302)
    #dbg_value(i64 4, !7245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7314)
    #dbg_value(i64 4, !7245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !7325
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !7325
  invoke void @_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_12ByteClassSet12byte_classes(ptr noalias nofree noundef nonnull sret([256 x i8]) align 1 captures(none) dereferenceable(256) %i.j, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %bb.b unwind label %.thread137, !dbg !7326

.thread137:                                       ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.au, !dbg !7327

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 1 dereferenceable(256) %i.j, i64 256, i1 false), !dbg !7328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !7329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !7330
  store i64 0, ptr %i.i, align 8, !dbg !7331
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !7331 ; 9 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.m, align 8, !dbg !7331
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !7331 ; 15 uses
  store i64 0, ptr %i.n, align 8, !dbg !7331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !7337
    #dbg_value(ptr %0, !7338, !DIExpression(DW_OP_plus_uconst, 304, DW_OP_stack_value), !7341)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304, !dbg !7343 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !7343 ; 3 uses
  %i.q = load i64, ptr %i.p, align 16, !dbg !7343, !noundef !22 ; 4 uses
  %i.r = icmp ult i64 %i.q, 384307168202282326, !dbg !7344
  tail call void @llvm.assume(i1 %i.r), !dbg !7345
    #dbg_value(i64 %i.q, !7346, !DIExpression(), !7354)
    #dbg_declare(ptr %i.b, !7352, !DIExpression(), !7356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7357, !noalias !7358
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !7361
  store i64 0, ptr %i.s, align 8, !dbg !7361, !noalias !7358
  store i64 0, ptr %i.b, align 8, !dbg !7361, !noalias !7358
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7361
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !7361, !noalias !7358
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !7361
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7361
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !7361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !7361, !noalias !7358
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !7361, !noalias !7358
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !7361
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !7361, !noalias !7358
    #dbg_value(ptr %i.b, !7362, !DIExpression(), !7381)
    #dbg_value(i64 %i.q, !7368, !DIExpression(), !7381)
  %i.u = icmp samesign ult i64 %i.q, 2147483648, !dbg !7383
  br i1 %i.u, label %bb.d, label %bb.c, !dbg !7383, !prof !800

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr @53, !7369, !DIExpression(), !7384)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7385, !noalias !7386
  store ptr @53, ptr %i.a, align 8, !dbg !7385, !noalias !7386
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7385
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !7385, !noalias !7386
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #19
          to label %.noexc.i unwind label %bb.e, !dbg !7389, !noalias !7358

.noexc.i:                                         ; preds = %bb.c
  unreachable, !dbg !7389

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b, i64 noundef range(i64 0, 384307168202282326) %i.q, i32 noundef 0)
          to label %.noexc7.i unwind label %bb.e, !dbg !7390, !noalias !7358

.noexc7.i:                                        ; preds = %bb.d
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef range(i64 0, 384307168202282326) %i.q, i32 noundef 0)
          to label %bb.k unwind label %bb.e, !dbg !7391, !noalias !7358

bb.e:                                             ; preds = %.noexc7.i, %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_set9SparseSetEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #21
          to label %.body101 unwind label %bb.f, !dbg !7392, !noalias !7358

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !7393, !noalias !7358
  unreachable, !dbg !7393

.body101:                                         ; preds = %bb.j, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.z, %bb.j ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.03.2 = phi i1 [ %.sroa.03.4.lpad-body, %.body ], [ false, %bb.j ], [ true, %bb.e ], !dbg !7394
    #dbg_value(ptr %i.i, !3918, !DIExpression(), !7395)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.h unwind label %bb.g, !dbg !7397

bb.g:                                             ; preds = %.body101
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
    #dbg_value(ptr %i.i, !3923, !DIExpression(), !7398)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body104 unwind label %bb.i, !dbg !7400

bb.h:                                             ; preds = %.body101
    #dbg_value(ptr %i.i, !3923, !DIExpression(), !7401)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_.exit unwind label %bb.at, !dbg !7403

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !7397
  unreachable, !dbg !7397

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_.exit: ; preds = %bb.h
  br i1 %.sroa.03.2, label %bb.au, label %.thread, !dbg !7327

bb.j:                                             ; preds = %bb.ap
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.k:                                             ; preds = %.noexc7.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !7404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7392, !noalias !7358
    #dbg_value(ptr %0, !7405, !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value), !7411)
    #dbg_value(ptr %0, !7413, !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value), !7417)
    #dbg_value(ptr %0, !7419, !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value), !7425)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !7427 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !7427
  %i.ac = load ptr, ptr %i.ab, align 16, !dbg !7427, !nonnull !22, !noundef !22 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !7434 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !7434, !noundef !22 ; 2 uses
    #dbg_value(i64 %i.ae, !7435, !DIExpression(), !7453)
    #dbg_value(i64 %i.ae, !7459, !DIExpression(), !7463)
    #dbg_value(ptr %i.ac, !7457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7465)
    #dbg_value(ptr %i.ac, !7442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7466)
    #dbg_value(i64 %i.ae, !7457, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7465)
    #dbg_value(i64 %i.ae, !7442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7466)
    #dbg_value(ptr %i.ac, !7443, !DIExpression(), !7467)
    #dbg_value(ptr %i.ac, !7462, !DIExpression(), !7463)
  %.idx = shl nuw nsw i64 %i.ae, 2, !dbg !7468
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx, !dbg !7468
    #dbg_value(ptr %i.ac, !7153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7469)
    #dbg_value(ptr %i.af, !7153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7469)
    #dbg_value(ptr undef, !7179, !DIExpression(), !7202)
    #dbg_value(ptr %i.ac, !7196, !DIExpression(), !7470)
    #dbg_value(ptr %i.ac, !7222, !DIExpression(), !7223)
    #dbg_value(ptr %i.af, !7198, !DIExpression(), !7471)
    #dbg_value(ptr poison, !7472, !DIExpression(), !7476)
    #dbg_value(ptr poison, !7475, !DIExpression(), !7478)
  %i.ag = icmp eq i64 %i.ae, 0, !dbg !7479
  br i1 %i.ag, label %._crit_edge195, label %.lr.ph194, !dbg !7477

.lr.ph194:                                        ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %.pre = load i64, ptr %i.n, align 8, !dbg !7480, !alias.scope !7501
  br label %bb.l, !dbg !7477

bb.l:                                             ; preds = %.lr.ph194, %._crit_edge
  %i.ap = phi i64 [ %.pre, %.lr.ph194 ], [ 0, %._crit_edge ], !dbg !7480 ; 5 uses
  %.sroa.0.0192 = phi ptr [ %i.ac, %.lr.ph194 ], [ %i.aq, %._crit_edge ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0192, i64 4, !dbg !7504 ; 2 uses
    #dbg_value(ptr %i.aq, !7153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7469)
  %i.ar = load i32, ptr %.sroa.0.0192, align 4, !dbg !7505, !noundef !22 ; 2 uses
    #dbg_value(i32 %i.ar, !7163, !DIExpression(), !7506)
    #dbg_value(i32 %i.ar, !7499, !DIExpression(), !7507)
    #dbg_value(ptr %i.i, !7498, !DIExpression(), !7507)
    #dbg_value(ptr %i.i, !7486, !DIExpression(), !7508)
    #dbg_value(ptr %i.i, !7509, !DIExpression(), !7512)
    #dbg_value(i32 %i.ar, !7487, !DIExpression(), !7508)
    #dbg_value(i64 4, !7514, !DIExpression(), !7518)
    #dbg_value(i64 %i.ap, !7488, !DIExpression(), !7524)
    #dbg_value(i64 %i.ap, !7525, !DIExpression(), !7529)
    #dbg_value(ptr %i.i, !7522, !DIExpression(), !7531)
  %i.as = load i64, ptr %i.i, align 8, !dbg !7532, !range !6408, !alias.scope !7501, !noundef !22
  %i.at = icmp eq i64 %i.ap, %i.as, !dbg !7533
  br i1 %i.at, label %bb.m, label %bb.n, !dbg !7533

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #22
          to label %.thread251 unwind label %.loopexit.split-lp.loopexit, !dbg !7534

.thread251:                                       ; preds = %bb.m
  %i.au = load ptr, ptr %i.m, align 8, !dbg !7535, !alias.scope !7501, !nonnull !22, !noundef !22
    #dbg_value(ptr %i.au, !7528, !DIExpression(), !7529)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ap, !dbg !7542
    #dbg_value(ptr %i.av, !7490, !DIExpression(), !7543)
    #dbg_value(ptr %i.av, !7544, !DIExpression(), !7550)
    #dbg_value(i32 %i.ar, !7549, !DIExpression(), !7550)
  store i32 %i.ar, ptr %i.av, align 4, !dbg !7552
  %i.aw = add nuw i64 %i.ap, 1, !dbg !7553
    #dbg_value(ptr %i.h, !7554, !DIExpression(), !7558)
  store i64 0, ptr %i.ah, align 8, !dbg !7560
    #dbg_value(i32 0, !7165, !DIExpression(), !7561)
    #dbg_value(i32 0, !7562, !DIExpression(), !7566)
    #dbg_value(i32 0, !7568, !DIExpression(), !7575)
    #dbg_value(ptr %i.i, !7300, !DIExpression(), !7577)
    #dbg_value(ptr %i.i, !7282, !DIExpression(), !7578)
    #dbg_value(ptr %i.i, !7419, !DIExpression(), !7579)
    #dbg_value(ptr %i.i, !7581, !DIExpression(), !7584)
  br label %.lr.ph.preheader, !dbg !7586

._crit_edge195:                                   ; preds = %._crit_edge, %bb.k
    #dbg_value(ptr %0, !7243, !DIExpression(DW_OP_plus_uconst, 304, DW_OP_stack_value), !7587)
    #dbg_value(ptr %0, !7238, !DIExpression(DW_OP_plus_uconst, 304, DW_OP_stack_value), !7588)
  %i.ax = load i64, ptr %i.o, align 16, !dbg !7589, !range !6408, !noundef !22
  %i.ay = load i64, ptr %i.p, align 16, !dbg !7590, !noundef !22 ; 2 uses
  %i.az = icmp ugt i64 %i.ax, %i.ay, !dbg !7591
  br i1 %i.az, label %bb.ai, label %bb.aj, !dbg !7591

.loopexit:                                        ; preds = %bb.y, %bb.z, %bb.ac, %bb.ae, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.m
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke287, %.invoke, %bb.ak, %bb.ai, %bb.q, %bb.v
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.an
  %.sroa.03.4.lpad-body = phi i1 [ false, %bb.an ], [ true, %.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.fd, %bb.an ], [ %lpad.loopexit145, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_set9SparseSetEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.h) #21
          to label %.body101 unwind label %bb.at, !dbg !7592

bb.n:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.m, align 8, !dbg !7535, !alias.scope !7501, !nonnull !22, !noundef !22
    #dbg_value(ptr %i.ba, !7528, !DIExpression(), !7529)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ap, !dbg !7542
    #dbg_value(ptr %i.bb, !7490, !DIExpression(), !7543)
    #dbg_value(ptr %i.bb, !7544, !DIExpression(), !7550)
    #dbg_value(i32 %i.ar, !7549, !DIExpression(), !7550)
  store i32 %i.ar, ptr %i.bb, align 4, !dbg !7552
  %i.bc = add i64 %i.ap, 1, !dbg !7553            ; 3 uses
  store i64 %i.bc, ptr %i.n, align 8, !dbg !7553, !alias.scope !7501
    #dbg_value(ptr %i.h, !7554, !DIExpression(), !7558)
  store i64 0, ptr %i.ah, align 8, !dbg !7560
    #dbg_value(i32 0, !7165, !DIExpression(), !7561)
    #dbg_value(i32 0, !7562, !DIExpression(), !7566)
    #dbg_value(i32 0, !7568, !DIExpression(), !7575)
    #dbg_value(ptr %i.i, !7300, !DIExpression(), !7577)
    #dbg_value(ptr %i.i, !7282, !DIExpression(), !7578)
    #dbg_value(ptr %i.i, !7419, !DIExpression(), !7579)
    #dbg_value(ptr %i.i, !7581, !DIExpression(), !7584)
  %i.bd = icmp eq i64 %i.bc, 0, !dbg !7586
  br i1 %i.bd, label %._crit_edge, label %.lr.ph.preheader, !dbg !7586

.lr.ph.preheader:                                 ; preds = %.thread251, %bb.n
  %.ph = phi i64 [ %i.bc, %bb.n ], [ %i.aw, %.thread251 ]
  br label %.lr.ph, !dbg !7593

thread-pre-splitthread-pre-split:                 ; preds = %bb.s, %bb.u, %bb.u, %bb.u, %bb.u, %bb.af
  %.pr.pr = load i64, ptr %i.n, align 8, !dbg !7586
  br label %thread-pre-split, !dbg !7586

thread-pre-split:                                 ; preds = %thread-pre-splitthread-pre-split, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit111, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE15append_elementsBK_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit116, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit118
  %.pr = phi i64 [ %.pr.pr, %thread-pre-splitthread-pre-split ], [ %i.dk, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit111 ], [ %i.dv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE15append_elementsBK_.exit ], [ %i.ek, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit116 ], [ %i.es, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit118 ], !dbg !7586 ; 2 uses
  %.sroa.014.0.ph = phi i32 [ %.sroa.014.0191, %thread-pre-splitthread-pre-split ], [ %i.de, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit111 ], [ %.sroa.014.0191, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE15append_elementsBK_.exit ], [ %.sroa.014.0191, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit116 ], [ %.sroa.014.0191, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8push_mutBL_.exit118 ] ; 2 uses
    #dbg_value(i32 %.sroa.014.0.ph, !7568, !DIExpression(), !7575)
    #dbg_value(i32 %.sroa.014.0.ph, !7562, !DIExpression(), !7566)
    #dbg_value(i32 %.sroa.014.0.ph, !7165, !DIExpression(), !7561)
    #dbg_value(ptr %i.i, !7300, !DIExpression(), !7577)
    #dbg_value(ptr %i.i, !7282, !DIExpression(), !7578)
    #dbg_value(ptr %i.i, !7419, !DIExpression(), !7579)
    #dbg_value(ptr %i.i, !7581, !DIExpression(), !7584)
  %i.be = icmp eq i64 %.pr, 0, !dbg !7586
  br i1 %i.be, label %._crit_edge, label %.lr.ph, !dbg !7586

._crit_edge:                                      ; preds = %thread-pre-split, %bb.n
  %.sroa.014.0.lcssa = phi i32 [ 0, %bb.n ], [ %.sroa.014.0.ph, %thread-pre-split ], !dbg !7561
  %i.bf = load i32, ptr %i.ao, align 4, !dbg !7600, !noundef !22
    #dbg_value(i32 %i.bf, !7574, !DIExpression(), !7575)
  %i.bg = or i32 %i.bf, %.sroa.014.0.lcssa, !dbg !7601
  store i32 %i.bg, ptr %i.ao, align 4, !dbg !7602
    #dbg_value(ptr %i.aq, !7153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7469)
    #dbg_value(ptr undef, !7179, !DIExpression(), !7202)
    #dbg_value(ptr %i.aq, !7196, !DIExpression(), !7470)
    #dbg_value(ptr %i.aq, !7222, !DIExpression(), !7223)
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State9look_need:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8783), !dbg !8786
    #dbg_value(ptr %i.a, !1680, !DIExpression(DW_OP_plus_uconst, 21, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8787)
    #dbg_value(ptr %i.a, !1691, !DIExpression(DW_OP_plus_uconst, 21, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8789)
    #dbg_value(ptr %i.a, !1704, !DIExpression(DW_OP_plus_uconst, 21, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8791)
    #dbg_value(ptr %i.a, !1713, !DIExpression(DW_OP_plus_uconst, 21, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8793)
    #dbg_value(i64 %i.e, !1680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8787)
    #dbg_value(i64 %i.e, !1691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8789)
    #dbg_value(i64 %i.e, !1704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8791)
    #dbg_value(i64 %i.e, !1713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8793)
    #dbg_value(i64 4, !1699, !DIExpression(), !8789)
    #dbg_value(i64 4, !1710, !DIExpression(), !8791)
    #dbg_value(i64 0, !1716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8793)
    #dbg_value(i64 4, !1716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8793)
    #dbg_value(i64 4, !1717, !DIExpression(), !8793)
  %i.f = icmp samesign ugt i64 %i.e, 3, !dbg !8795
  br i1 %i.f, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr9look_need.exit, label %bb.c, !dbg !8795, !prof !800

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #19, !dbg !8796, !noalias !8783
  unreachable, !dbg !8796

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 5, i64 noundef %i.c, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #19, !dbg !8797
  unreachable, !dbg !8797

_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr9look_need.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 21, !dbg !8798
    #dbg_value(ptr %i.g, !1680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8787)
    #dbg_value(ptr %i.g, !1691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8789)
    #dbg_value(ptr %i.g, !1704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8791)
    #dbg_value(ptr %i.g, !1713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8793)
    #dbg_value(ptr %i.g, !1799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8799)
    #dbg_value(ptr %i.g, !1804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8801)
    #dbg_value(i64 4, !1799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8799)
    #dbg_value(i64 4, !1804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8801)
    #dbg_value(ptr %i.g, !1809, !DIExpression(), !8803)
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.g, align 1, !dbg !8805, !alias.scope !8783
  ret i32 %.sroa.04.0.copyload.i.i, !dbg !8806
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, 4294967296) i64 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State9match_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8807 {
bb.a:
    #dbg_value(ptr %0, !8812, !DIExpression(), !8813)
    #dbg_value(ptr %0, !8814, !DIExpression(), !8817)
    #dbg_value(ptr %0, !8819, !DIExpression(), !8822)
    #dbg_value(ptr %0, !8824, !DIExpression(), !8827)
  %i.a = load ptr, ptr %0, align 8, !dbg !8829, !nonnull !22, !noundef !22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8829
  %i.c = load i64, ptr %i.b, align 8, !dbg !8829, !noundef !22 ; 3 uses
    #dbg_value(ptr poison, !8832, !DIExpression(), !8836)
    #dbg_value(ptr poison, !8838, !DIExpression(), !8842)
    #dbg_value(ptr poison, !8844, !DIExpression(), !8847)
  %.not.i = icmp eq i64 %i.c, 0, !dbg !8849
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !8849

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8850
  %i.e = load i8, ptr %i.d, align 1, !dbg !8849, !noundef !22 ; 2 uses
  %i.f = and i8 %i.e, 1, !dbg !8849
  %.not2.i = icmp eq i8 %i.f, 0, !dbg !8849
  br i1 %.not2.i, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr9match_len.exit, label %bb.d, !dbg !8851

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19, !dbg !8849
  unreachable, !dbg !8849

bb.d:                                             ; preds = %bb.b
  %i.g = and i8 %i.e, 2, !dbg !8852
  %.not3.i = icmp eq i8 %i.g, 0, !dbg !8852
  br i1 %.not3.i, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr9match_len.exit, label %bb.e, !dbg !8853

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !752, !DIExpression(), !8854)
    #dbg_value(i64 9, !766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8856)
    #dbg_value(i64 13, !766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8856)
    #dbg_value(i64 9, !780, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8858)
    #dbg_value(i64 13, !780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8858)
    #dbg_value(i64 4, !787, !DIExpression(), !8858)
    #dbg_value(i64 9, !790, !DIExpression(), !8860)
    #dbg_value(i64 4, !794, !DIExpression(), !8860)
    #dbg_value(ptr poison, !775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8856)
    #dbg_value(ptr poison, !786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8858)
    #dbg_value(ptr poison, !793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8860)
    #dbg_value(i64 %i.c, !775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8856)
    #dbg_value(i64 %i.c, !786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8858)
    #dbg_value(i64 %i.c, !793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8860)
  %i.h = icmp ugt i64 %i.c, 12, !dbg !8862
  br i1 %i.h, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i, label %bb.f, !dbg !8862, !prof !800

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 9, i64 noundef 13, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19, !dbg !8863
  unreachable, !dbg !8863

_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i: ; preds = %bb.e
    #dbg_value(ptr %i.d, !775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8856)
    #dbg_value(ptr %i.d, !786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8858)
    #dbg_value(ptr %i.d, !793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8860)
    #dbg_value(ptr %i.d, !802, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8864)
    #dbg_value(i64 4, !802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8864)
    #dbg_value(ptr %i.d, !816, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8866)
    #dbg_value(ptr %i.d, !846, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8868)
    #dbg_value(i64 4, !816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8866)
    #dbg_value(i64 4, !846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8868)
    #dbg_value(ptr %i.d, !853, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !8870)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 25, !dbg !8872
    #dbg_value(ptr %i.i, !802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8864)
    #dbg_value(ptr %i.i, !816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8866)
    #dbg_value(ptr %i.i, !846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8868)
    #dbg_value(ptr %i.i, !853, !DIExpression(), !8870)
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.i, align 1, !dbg !8873, !alias.scope !8874
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i, !887, !DIExpression(), !8877)
  %i.j = zext i32 %.sroa.04.0.copyload.i.i.i to i64, !dbg !8879
  br label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr9match_len.exit, !dbg !8880

_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr9match_len.exit: ; preds = %bb.b, %bb.d, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i
  %.sroa.0.0.i = phi i64 [ %i.j, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i ], [ 0, %bb.b ], [ 1, %bb.d ], !dbg !8836
  ret i64 %.sroa.0.0.i, !dbg !8881
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util4lazy4lazyINtB5_4LazyjFEjE3getBb_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8882 {
bb.a:
    #dbg_value(ptr %0, !8918, !DIExpression(), !8944)
    #dbg_value(ptr %0, !8945, !DIExpression(), !8966)
    #dbg_value(i8 2, !8968, !DIExpression(), !8976)
    #dbg_value(ptr null, !8978, !DIExpression(), !8988)
    #dbg_value(i8 3, !8986, !DIExpression(), !8988)
    #dbg_value(i8 2, !8987, !DIExpression(), !8988)
    #dbg_value(ptr %0, !8975, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8990)
    #dbg_value(ptr %0, !8991, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8998)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9000 ; 2 uses
    #dbg_value(ptr %i.a, !9009, !DIExpression(), !9016)
    #dbg_value(i8 2, !9015, !DIExpression(), !9016)
  %i.b = load atomic ptr, ptr %i.a acquire, align 8, !dbg !9018 ; 2 uses
    #dbg_value(ptr %i.b, !8964, !DIExpression(), !9019)
    #dbg_value(ptr %i.b, !9020, !DIExpression(), !9025)
  %i.c = icmp eq ptr %i.b, null, !dbg !9027
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !9041

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !dbg !9042, !nonnull !22, !noundef !22
    #dbg_value(ptr poison, !9043, !DIExpression(), !9056)
    #dbg_declare(ptr poison, !9052, !DIExpression(), !9058)
  %i.d = tail call noundef i64 %.val(), !dbg !9058, !inline_history !9059
    #dbg_value(i64 %i.d, !8921, !DIExpression(), !9060)
    #dbg_value(i64 %i.d, !9061, !DIExpression(), !9068)
    #dbg_value(i64 8, !8206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9070)
    #dbg_value(i64 8, !8218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9072)
    #dbg_value(i64 8, !8243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9074)
    #dbg_value(i64 8, !8206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9070)
    #dbg_value(i64 8, !8218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9072)
    #dbg_value(i64 8, !8243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9074)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !8240, !DIExpression(), !9072)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !8249, !DIExpression(), !9074)
    #dbg_value(i8 0, !8250, !DIExpression(), !9074)
    #dbg_value(i64 8, !8253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9076)
    #dbg_value(i64 8, !8285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9078)
    #dbg_value(i64 8, !8253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9076)
    #dbg_value(i64 8, !8285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9078)
    #dbg_value(i1 false, !8259, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9076)
    #dbg_value(i64 8, !8260, !DIExpression(), !9080)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !9081
  %i.e = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 8, 401) 8, i64 noundef range(i64 8, 17) 8) #23, !dbg !9082 ; 5 uses
  %i.f = icmp eq ptr %i.e, null, !dbg !9083
  br i1 %i.f, label %bb.c, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !dbg !9084, !prof !920

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #24, !dbg !9085
  unreachable, !dbg !9085

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
    #dbg_value(ptr %i.e, !9066, !DIExpression(), !9086)
  store i64 %i.d, ptr %i.e, align 8, !dbg !9087
    #dbg_value(ptr %i.e, !8923, !DIExpression(), !9088)
    #dbg_value(ptr %0, !8984, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9089)
    #dbg_value(ptr %0, !8991, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9090)
    #dbg_value(ptr %i.e, !8985, !DIExpression(), !8988)
    #dbg_value(ptr %i.a, !9092, !DIExpression(), !9104)
    #dbg_value(ptr null, !9097, !DIExpression(), !9104)
    #dbg_value(ptr %i.e, !9098, !DIExpression(), !9104)
    #dbg_value(i8 3, !9099, !DIExpression(), !9104)
    #dbg_value(i8 2, !9100, !DIExpression(), !9104)
  %i.g = cmpxchg ptr %i.a, ptr null, ptr %i.e acq_rel acquire, align 8, !dbg !9106 ; 2 uses
  %i.h = extractvalue { ptr, i1 } %i.g, 1, !dbg !9106
    #dbg_value(i1 %i.h, !8925, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9107)
    #dbg_value(ptr poison, !8925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9107)
  br i1 %i.h, label %bb.d, label %bb.e, !dbg !9108

bb.d:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.e, %bb.a
  %.sroa.0.0 = phi ptr [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.e, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], !dbg !8944 ; 2 uses
    #dbg_value(ptr %.sroa.0.0, !8919, !DIExpression(), !9109)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  ret ptr %.sroa.0.0, !dbg !9110

bb.e:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.i = extractvalue { ptr, i1 } %i.g, 0, !dbg !9106
    #dbg_value(ptr %i.i, !8925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9107)
    #dbg_value(ptr %i.i, !8942, !DIExpression(), !9111)
    #dbg_value(ptr %i.e, !9112, !DIExpression(), !9117)
    #dbg_value(ptr undef, !9112, !DIExpression(DW_OP_deref), !9117)
    #dbg_value(ptr poison, !9119, !DIExpression(), !9125)
    #dbg_value(ptr poison, !9127, !DIExpression(), !9143)
    #dbg_value(ptr %i.e, !9130, !DIExpression(), !9145)
    #dbg_value(i64 8, !9140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9146)
    #dbg_value(i64 8, !9140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9146)
    #dbg_value(ptr poison, !4516, !DIExpression(), !9147)
    #dbg_value(ptr poison, !4528, !DIExpression(), !9149)
    #dbg_value(ptr %i.e, !4524, !DIExpression(), !9147)
    #dbg_value(ptr %i.e, !4533, !DIExpression(), !9149)
    #dbg_value(ptr %i.e, !4537, !DIExpression(), !9151)
    #dbg_value(ptr %i.e, !4546, !DIExpression(), !9153)
    #dbg_value(i64 8, !4525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9147)
    #dbg_value(i64 8, !4534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9149)
    #dbg_value(i64 8, !4543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9151)
    #dbg_value(i64 8, !4549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9153)
    #dbg_value(i64 8, !4525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9147)
    #dbg_value(i64 8, !4534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9149)
    #dbg_value(i64 8, !4543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9151)
    #dbg_value(i64 8, !4549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9153)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef 8) #23, !dbg !9155
    #dbg_value(ptr %i.i, !8923, !DIExpression(), !9088)
  br label %bb.d, !dbg !9156
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_17StateBuilderEmpty12into_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8519 {
bb.a:
    #dbg_declare(ptr %1, !8518, !DIExpression(), !9157)
    #dbg_value(ptr %1, !8526, !DIExpression(), !9158)
    #dbg_value(ptr %1, !8535, !DIExpression(), !9160)
    #dbg_value(ptr poison, !8532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9158)
    #dbg_value(i64 9, !8532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9158)
    #dbg_value(ptr poison, !8540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9160)
    #dbg_value(ptr poison, !8540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9160)
    #dbg_value(ptr poison, !8541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9162)
    #dbg_value(i64 poison, !8541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9162)
    #dbg_value(ptr %1, !8546, !DIExpression(), !9163)
    #dbg_value(ptr %1, !8555, !DIExpression(), !9165)
    #dbg_value(ptr %1, !8566, !DIExpression(), !9167)
    #dbg_value(ptr %1, !8574, !DIExpression(), !9169)
    #dbg_value(ptr poison, !8552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9163)
    #dbg_value(ptr poison, !8559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9165)
    #dbg_value(i64 9, !8552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9163)
    #dbg_value(i64 9, !8559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9165)
    #dbg_value(i64 9, !8560, !DIExpression(), !9171)
    #dbg_value(i64 9, !8583, !DIExpression(), !9172)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 9)
          to label %bb.c unwind label %bb.b, !dbg !9174

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state17StateBuilderEmptyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #21
          to label %bb.e unwind label %bb.d, !dbg !9175

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9176 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !9176, !alias.scope !9177, !noundef !22 ; 2 uses
    #dbg_value(i64 %i.c, !8562, !DIExpression(), !9180)
    #dbg_value(i64 %i.c, !8602, !DIExpression(), !9181)
  %i.d = icmp sgt i64 %i.c, -1, !dbg !9183
  tail call void @llvm.assume(i1 %i.d), !dbg !9184
    #dbg_value(ptr poison, !8588, !DIExpression(), !9172)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9185
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9185, !alias.scope !9177, !nonnull !22, !noundef !22
    #dbg_value(ptr %i.f, !8605, !DIExpression(), !9181)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c, !dbg !9189
    #dbg_value(ptr %i.g, !8589, !DIExpression(), !9172)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.g, i8 0, i64 9, i1 false), !dbg !9190
  %.pre.i = load i64, ptr %i.b, align 8, !dbg !9191, !alias.scope !9177
  %i.h = add i64 %.pre.i, 9, !dbg !9191
  store i64 %i.h, ptr %i.b, align 8, !dbg !9191, !alias.scope !9177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !9192
  ret void, !dbg !9193

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !9194
  unreachable, !dbg !9194

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !9194
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_19StateBuilderMatches20add_match_pattern_id(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 !dbg !9195 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
    #dbg_value(ptr %0, !9200, !DIExpression(), !9202)
    #dbg_value(i32 %1, !9201, !DIExpression(), !9202)
    #dbg_value(ptr poison, !9203, !DIExpression(), !9211)
    #dbg_value(ptr poison, !9213, !DIExpression(), !9216)
    #dbg_value(ptr poison, !9218, !DIExpression(), !9224)
    #dbg_value(ptr poison, !9226, !DIExpression(), !9230)
    #dbg_value(ptr poison, !9213, !DIExpression(), !9232)
    #dbg_value(ptr poison, !9218, !DIExpression(), !9234)
    #dbg_value(i32 %1, !9210, !DIExpression(), !9211)
    #dbg_value(ptr poison, !9236, !DIExpression(), !9243)
    #dbg_value(i64 0, !9245, !DIExpression(), !9253)
    #dbg_value(i64 0, !9255, !DIExpression(), !9266)
    #dbg_value(i64 0, !9268, !DIExpression(), !9274)
    #dbg_value(i64 4, !9276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9299)
    #dbg_value(i8 0, !9276, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9299)
    #dbg_value(i64 4, !9301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9307)
    #dbg_value(i8 0, !9301, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9307)
    #dbg_value(i64 0, !9245, !DIExpression(), !9309)
    #dbg_value(i64 0, !9255, !DIExpression(), !9311)
    #dbg_value(i64 0, !9268, !DIExpression(), !9314)
    #dbg_value(i64 0, !9245, !DIExpression(), !9317)
    #dbg_value(i64 0, !9255, !DIExpression(), !9320)
    #dbg_value(i64 0, !9268, !DIExpression(), !9323)
    #dbg_value(ptr %0, !9326, !DIExpression(), !9329)
    #dbg_value(ptr %0, !9331, !DIExpression(), !9334)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9336 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !9336, !nonnull !22, !noundef !22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9343 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !9343, !noundef !22
    #dbg_value(ptr poison, !9344, !DIExpression(), !9347)
  %.not.i = icmp eq i64 %i.f, 0, !dbg !9349
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !9349

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.d, align 1, !dbg !9349, !noundef !22 ; 2 uses
  %i.h = and i8 %i.g, 2, !dbg !9349
  %.not35.i = icmp eq i8 %i.h, 0, !dbg !9349
  br i1 %.not35.i, label %bb.d, label %bb.e, !dbg !9350

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !dbg !9349
  unreachable, !dbg !9349

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !9242, !DIExpression(), !9351)
    #dbg_value(ptr poison, !9352, !DIExpression(), !9356)
    #dbg_value(ptr poison, !9355, !DIExpression(), !9356)
  %i.i = icmp eq i32 %1, 0, !dbg !9356
  br i1 %i.i, label %bb.s, label %bb.i, !dbg !9358

bb.e:                                             ; preds = %bb.r, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state9write_u32.exit39.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !9359), !dbg !9362
    #dbg_value(ptr %0, !9363, !DIExpression(), !9371)
    #dbg_value(ptr %0, !9373, !DIExpression(), !9376)
    #dbg_value(ptr %0, !9378, !DIExpression(), !9382)
    #dbg_value(ptr %0, !9384, !DIExpression(), !9388)
    #dbg_value(ptr %0, !9390, !DIExpression(), !9397)
    #dbg_value(ptr %0, !9399, !DIExpression(), !9404)
    #dbg_value(ptr %0, !9406, !DIExpression(), !9410)
    #dbg_value(ptr %0, !9412, !DIExpression(), !9415)
    #dbg_value(i32 %1, !9368, !DIExpression(), !9371)
    #dbg_value(i64 4, !9381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9382)
    #dbg_value(i8 0, !9381, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9382)
    #dbg_value(i64 4, !9387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9388)
    #dbg_value(i8 0, !9387, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9388)
  %i.j = load i64, ptr %i.e, align 8, !dbg !9417, !alias.scope !9359, !noundef !22 ; 5 uses
    #dbg_value(i64 %i.j, !9369, !DIExpression(), !9418)
    #dbg_value(i64 %i.j, !9395, !DIExpression(), !9397)
    #dbg_value(i64 %i.j, !9419, !DIExpression(), !9425)
    #dbg_value(i64 %i.j, !9427, !DIExpression(), !9435)
    #dbg_value(i64 %i.j, !9437, !DIExpression(), !9444)
  %i.k = icmp sgt i64 %i.j, -1, !dbg !9446
  call void @llvm.assume(i1 %i.k), !dbg !9447
  call void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB15_7sources6repeat6RepeathEEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4, i8 noundef 0), !dbg !9448
  %i.l = load i64, ptr %i.e, align 8, !dbg !9449, !alias.scope !9359, !noundef !22 ; 4 uses
    #dbg_value(ptr poison, !9424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9425)
    #dbg_value(ptr poison, !9432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9435)
    #dbg_value(i64 %i.l, !9424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9425)
    #dbg_value(i64 %i.l, !9432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9435)
  %i.m = icmp ugt i64 %i.j, %i.l, !dbg !9450
  br i1 %i.m, label %bb.h, label %bb.f, !dbg !9450, !prof !920

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !9424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9425)
    #dbg_value(ptr poison, !9432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9435)
  %i.n = sub nuw i64 %i.l, %i.j, !dbg !9451       ; 2 uses
    #dbg_value(i64 %i.n, !9433, !DIExpression(), !9452)
    #dbg_value(i64 %i.n, !9443, !DIExpression(), !9444)
    #dbg_value(ptr poison, !9442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9444)
    #dbg_value(i64 %i.l, !9442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9444)
    #dbg_value(i32 %1, !9453, !DIExpression(), !9460)
    #dbg_value(i32 %1, !9462, !DIExpression(), !9465)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !9459, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9460)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !9467, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9473)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !9475, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9481)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !9483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9490)
    #dbg_value(i64 %i.n, !9459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9460)
    #dbg_value(i64 %i.n, !9467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9473)
    #dbg_value(i64 %i.n, !9475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9481)
    #dbg_value(i64 %i.n, !9483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9490)
    #dbg_value(i64 4, !9472, !DIExpression(), !9473)
    #dbg_value(i64 4, !9480, !DIExpression(), !9481)
    #dbg_value(i64 0, !9488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9490)
    #dbg_value(i64 4, !9488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9490)
    #dbg_value(i64 4, !9489, !DIExpression(), !9490)
  %i.o = icmp samesign ugt i64 %i.n, 3, !dbg !9492
  br i1 %i.o, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state9write_u32.exit.i, label %bb.g, !dbg !9492, !prof !800

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtB6_5Debug3fmtBE_:bb.a
  store ptr @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !dbg !12261, !noalias !12245
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !12261
  store ptr %i.b, ptr %i.q, align 8, !dbg !12261, !noalias !12245
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !12261
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.430.0..sroa_idx.i, align 8, !dbg !12261, !noalias !12245
    #dbg_value(ptr @116, !12228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12236)
    #dbg_value(ptr %i.a, !12228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12236)
  %i.r = load ptr, ptr %1, align 8, !dbg !12262, !alias.scope !12188, !noalias !12184, !nonnull !22, !noundef !22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12262
  %i.t = load ptr, ptr %i.s, align 8, !dbg !12262, !alias.scope !12188, !noalias !12184, !nonnull !22, !align !1590, !noundef !22
  %i.u = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noundef nonnull @116, ptr noundef nonnull %i.a), !dbg !12263, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12264, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12264, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12264, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12264, !noalias !12245
  br label %_RNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_10TransitionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, !dbg !12265

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12266, !noalias !12245
  store i8 %i.j, ptr %i.g, align 1, !dbg !12266, !noalias !12245
    #dbg_value(ptr %i.g, !12201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12268, !noalias !12245
    #dbg_value(ptr poison, !12249, !DIExpression(), !12269)
    #dbg_value(ptr poison, !12254, !DIExpression(), !12271)
  %i.v = zext i32 %i.m to i64, !dbg !12273
  store i64 %i.v, ptr %i.f, align 8, !dbg !12273, !noalias !12245
    #dbg_value(ptr %i.f, !12201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12274, !noalias !12245
  store ptr %i.g, ptr %i.e, align 8, !dbg !12274, !noalias !12245
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12274
  store ptr @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !12274, !noalias !12245
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !12274
  store ptr %i.f, ptr %i.w, align 8, !dbg !12274, !noalias !12245
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !12274
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !12274, !noalias !12245
    #dbg_value(ptr @93, !12228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12233)
    #dbg_value(ptr %i.e, !12228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12233)
  %i.x = load ptr, ptr %1, align 8, !dbg !12275, !alias.scope !12188, !noalias !12184, !nonnull !22, !noundef !22
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12275
  %i.z = load ptr, ptr %i.y, align 8, !dbg !12275, !alias.scope !12188, !noalias !12184, !nonnull !22, !align !1590, !noundef !22
  %i.aa = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @93, ptr noundef nonnull %i.e), !dbg !12276, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12277, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12277, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12277, !noalias !12245
  br label %_RNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_10TransitionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, !dbg !12265

_RNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_10TransitionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.1.in.i = phi i1 [ %i.aa, %bb.c ], [ %i.u, %bb.b ]
  ret i1 %.sroa.0.1.in.i, !dbg !12278
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFANtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !12279 {
bb.a:
    #dbg_value(ptr %0, !12284, !DIExpression(), !12287)
    #dbg_value(ptr %1, !12285, !DIExpression(), !12287)
  %i.a = load ptr, ptr %0, align 8, !dbg !12288, !nonnull !22, !align !1590, !noundef !22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12289), !dbg !12292
    #dbg_value(ptr %i.a, !12293, !DIExpression(), !12300)
    #dbg_value(ptr %1, !12299, !DIExpression(), !12300)
    #dbg_value(ptr %1, !12302, !DIExpression(), !12309)
    #dbg_value(ptr %i.a, !12308, !DIExpression(), !12311)
    #dbg_value(ptr %i.a, !12312, !DIExpression(), !12315)
    #dbg_value(ptr %i.a, !12317, !DIExpression(), !12320)
  %i.b = load ptr, ptr %i.a, align 8, !dbg !12322, !alias.scope !12289, !noalias !12325, !nonnull !22, !noundef !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12327
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_5InnerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(384) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1), !dbg !12328, !noalias !12289
  ret i1 %i.d, !dbg !12329
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5StateNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !12330 {
bb.a:
    #dbg_value(ptr %0, !12334, !DIExpression(), !12336)
    #dbg_value(ptr %1, !12335, !DIExpression(), !12336)
  %i.a = load ptr, ptr %0, align 8, !dbg !12337, !nonnull !22, !align !1590, !noundef !22
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_5StateNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !12338
  ret i1 %i.b, !dbg !12339
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionINtB5_14SlicePartialEqBC_E17equal_same_lengthBK_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 !dbg !12340 {
bb.a:
    #dbg_value(ptr %0, !12345, !DIExpression(), !12353)
    #dbg_value(ptr %0, !12354, !DIExpression(), !12360)
    #dbg_value(ptr %1, !12346, !DIExpression(), !12353)
    #dbg_value(ptr %1, !12354, !DIExpression(), !12362)
    #dbg_value(i64 %2, !12347, !DIExpression(), !12353)
    #dbg_value(i64 0, !12348, !DIExpression(), !12364)
  %i.a = icmp eq i64 %2, 0, !dbg !12365
  br i1 %i.a, label %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph, !dbg !12365

bb.b:                                             ; preds = %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit
  %i.b = add nuw i64 %.sroa.01.011, 1, !dbg !12366 ; 2 uses
    #dbg_value(i64 %i.b, !12348, !DIExpression(), !12364)
  %exitcond.not = icmp eq i64 %i.b, %2, !dbg !12365
  br i1 %exitcond.not, label %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph, !dbg !12365

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.011 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
    #dbg_value(i64 %.sroa.01.011, !12348, !DIExpression(), !12364)
    #dbg_value(i64 %.sroa.01.011, !12359, !DIExpression(), !12360)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.011, !dbg !12367 ; 3 uses
    #dbg_value(i64 %.sroa.01.011, !12359, !DIExpression(), !12362)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.011, !dbg !12368 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12369), !dbg !12372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12373), !dbg !12372
    #dbg_value(ptr %i.c, !12375, !DIExpression(), !12384)
    #dbg_value(ptr %i.d, !12380, !DIExpression(), !12384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12386), !dbg !12389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12390), !dbg !12389
    #dbg_value(ptr %i.c, !12392, !DIExpression(), !12397)
    #dbg_value(ptr %i.d, !12396, !DIExpression(), !12397)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !12399
  %i.f = load i8, ptr %i.e, align 4, !dbg !12399, !alias.scope !12400, !noalias !12401, !noundef !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !12399
  %i.h = load i8, ptr %i.g, align 4, !dbg !12399, !alias.scope !12401, !noalias !12400, !noundef !22
  %i.i = icmp eq i8 %i.f, %i.h, !dbg !12399
  br i1 %i.i, label %bb.c, label %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit.thread, !dbg !12399

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 5, !dbg !12402
  %i.k = load i8, ptr %i.j, align 1, !dbg !12402, !alias.scope !12400, !noalias !12401, !noundef !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 5, !dbg !12402
  %i.m = load i8, ptr %i.l, align 1, !dbg !12402, !alias.scope !12401, !noalias !12400, !noundef !22
  %i.n = icmp eq i8 %i.k, %i.m, !dbg !12402
  br i1 %i.n, label %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit, label %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit.thread, !dbg !12402

_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit: ; preds = %bb.c
    #dbg_value(ptr %i.c, !12403, !DIExpression(), !12407)
    #dbg_value(ptr %i.d, !12406, !DIExpression(), !12407)
    #dbg_value(ptr %i.c, !12409, !DIExpression(), !12413)
    #dbg_value(ptr %i.d, !12412, !DIExpression(), !12413)
  %i.o = load i32, ptr %i.c, align 4, !dbg !12413, !alias.scope !12400, !noalias !12401, !noundef !22
  %i.p = load i32, ptr %i.d, align 4, !dbg !12413, !alias.scope !12401, !noalias !12400, !noundef !22
  %.not = icmp eq i32 %i.o, %i.p, !dbg !12413
    #dbg_value(i64 %.sroa.01.011, !12348, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12364)
  br i1 %.not, label %bb.b, label %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit.thread, !dbg !12415

_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit, %bb.c, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %_RNvYNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neBa_.exit ], [ true, %bb.b ], !dbg !12365
  ret i1 %.lcssa, !dbg !12416
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5errorNtB5_10BuildErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !dbg !12417 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !12424, !DIExpression(), !12426)
    #dbg_value(ptr %1, !12425, !DIExpression(), !12426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12427
  store ptr %0, ptr %i.a, align 8, !dbg !12427
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76), !dbg !12428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12429
  ret i1 %i.b, !dbg !12430
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_19StateBuilderMatchesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !12431 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !12436, !DIExpression(), !12438)
    #dbg_value(ptr %0, !12439, !DIExpression(), !12445)
    #dbg_value(ptr %1, !12437, !DIExpression(), !12438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12447
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 19), !dbg !12448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12449
    #dbg_value(ptr %0, !12450, !DIExpression(), !12453)
    #dbg_value(ptr %0, !12455, !DIExpression(), !12458)
    #dbg_value(ptr %0, !12460, !DIExpression(), !12463)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12465
  %i.d = load ptr, ptr %i.c, align 8, !dbg !12465, !nonnull !22, !noundef !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12472
  %i.f = load i64, ptr %i.e, align 8, !dbg !12472, !noundef !22
  store ptr %i.d, ptr %i.a, align 8, !dbg !12473
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12473
  store i64 %i.f, ptr %i.g, align 8, !dbg !12473
  %i.h = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80), !dbg !12474
  %i.i = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !12475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12476
  ret i1 %i.i, !dbg !12477
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util4lazy4lazyINtB5_4LazyINtNtCsj6eKBz9Db1c_4core6option6OptionjEFEB15_ENtNtNtB1a_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12478 {
bb.a:
    #dbg_value(ptr %0, !12512, !DIExpression(), !12515)
    #dbg_value(ptr %0, !12516, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12524)
    #dbg_value(ptr %0, !12526, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12534)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12536
  %i.b = load ptr, ptr %i.a, align 8, !dbg !12544, !noundef !22 ; 2 uses
    #dbg_value(ptr %i.b, !12513, !DIExpression(), !12545)
    #dbg_value(ptr %i.b, !12546, !DIExpression(), !12551)
  %i.c = icmp eq ptr %i.b, null, !dbg !12553
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !12563

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !12564, !DIExpression(), !12569)
    #dbg_value(ptr undef, !12564, !DIExpression(DW_OP_deref), !12569)
    #dbg_value(ptr poison, !12571, !DIExpression(), !12577)
    #dbg_value(ptr poison, !12579, !DIExpression(), !12595)
    #dbg_value(ptr %i.b, !12582, !DIExpression(), !12597)
    #dbg_value(i64 8, !12592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12598)
    #dbg_value(i64 16, !12592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12598)
    #dbg_value(ptr poison, !4516, !DIExpression(), !12599)
    #dbg_value(ptr poison, !4528, !DIExpression(), !12601)
    #dbg_value(ptr %i.b, !4524, !DIExpression(), !12599)
    #dbg_value(ptr %i.b, !4533, !DIExpression(), !12601)
    #dbg_value(ptr %i.b, !4537, !DIExpression(), !12603)
    #dbg_value(ptr %i.b, !4546, !DIExpression(), !12605)
    #dbg_value(i64 8, !4525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12599)
    #dbg_value(i64 8, !4534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12601)
    #dbg_value(i64 8, !4543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12603)
    #dbg_value(i64 8, !4549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12605)
    #dbg_value(i64 16, !4525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12599)
    #dbg_value(i64 16, !4534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12601)
    #dbg_value(i64 16, !4543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12603)
    #dbg_value(i64 16, !4549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12605)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 16, i64 noundef 8) #23, !dbg !12607
  br label %bb.c, !dbg !12608

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !12609
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util4lazy4lazyINtB5_4LazyjFEjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12610 {
bb.a:
    #dbg_value(ptr %0, !12615, !DIExpression(), !12618)
    #dbg_value(ptr %0, !12619, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12627)
    #dbg_value(ptr %0, !12629, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12632)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12634
  %i.b = load ptr, ptr %i.a, align 8, !dbg !12637, !noundef !22 ; 2 uses
    #dbg_value(ptr %i.b, !12616, !DIExpression(), !12638)
    #dbg_value(ptr %i.b, !12639, !DIExpression(), !12642)
  %i.c = icmp eq ptr %i.b, null, !dbg !12644
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !12651

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !12652, !DIExpression(), !12655)
    #dbg_value(ptr undef, !12652, !DIExpression(DW_OP_deref), !12655)
    #dbg_value(ptr poison, !9119, !DIExpression(), !12657)
    #dbg_value(ptr poison, !9127, !DIExpression(), !12659)
    #dbg_value(ptr %i.b, !9130, !DIExpression(), !12661)
    #dbg_value(i64 8, !9140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12662)
    #dbg_value(i64 8, !9140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12662)
    #dbg_value(ptr poison, !4516, !DIExpression(), !12663)
    #dbg_value(ptr poison, !4528, !DIExpression(), !12665)
    #dbg_value(ptr %i.b, !4524, !DIExpression(), !12663)
    #dbg_value(ptr %i.b, !4533, !DIExpression(), !12665)
    #dbg_value(ptr %i.b, !4537, !DIExpression(), !12667)
    #dbg_value(ptr %i.b, !4546, !DIExpression(), !12669)
    #dbg_value(i64 8, !4525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12663)
    #dbg_value(i64 8, !4534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12665)
    #dbg_value(i64 8, !4543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12667)
    #dbg_value(i64 8, !4549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12669)
    #dbg_value(i64 8, !4525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12663)
    #dbg_value(i64 8, !4534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12665)
    #dbg_value(i64 8, !4543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12667)
    #dbg_value(i64 8, !4549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12669)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 8) #23, !dbg !12671
  br label %bb.c, !dbg !12672

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !12673
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCs9GYDdpCSJ4S_14regex_automata4util4wireNtB5_16DeserializeErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !12674 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !12733, !DIExpression(), !12839)
    #dbg_value(ptr %1, !12734, !DIExpression(), !12839)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12864)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12867)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12870)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12873)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12876)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12879)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12882)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12885)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12888)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12891)
    #dbg_declare(ptr %i.y, !12735, !DIExpression(), !12894)
    #dbg_declare(ptr %i.w, !12746, !DIExpression(), !12895)
    #dbg_declare(ptr %i.u, !12754, !DIExpression(), !12896)
    #dbg_declare(ptr %i.j, !12794, !DIExpression(), !12897)
    #dbg_declare(ptr %i.h, !12802, !DIExpression(), !12898)
    #dbg_declare(ptr %i.e, !12813, !DIExpression(), !12899)
    #dbg_declare(ptr %i.b, !12827, !DIExpression(), !12900)
  %i.z = load i32, ptr %0, align 8, !dbg !12901, !range !12902, !noundef !22
  switch i32 %i.z, label %default.unreachable315 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
  ], !dbg !12903

default.unreachable315:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !12904
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12904
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !12904, !nonnull !22, !noundef !22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12904
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !12904, !noundef !22
  store ptr %i.ab, ptr %i.y, align 8, !dbg !12904, !captures !11135
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !12904
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !12904
    #dbg_value(ptr %i.y, !12737, !DIExpression(), !12905)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !12906
  store ptr %i.y, ptr %i.x, align 8, !dbg !12906
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !12906
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.439.0..sroa_idx, align 8, !dbg !12906
    #dbg_value(ptr @81, !12843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12864)
    #dbg_value(ptr %i.x, !12843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12864)
  %i.af = load ptr, ptr %1, align 8, !dbg !12907, !nonnull !22, !noundef !22
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12907
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !12907, !nonnull !22, !align !1590, !noundef !22
  %i.ai = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noundef nonnull @81, ptr noundef nonnull %i.x), !dbg !12908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !12909
  br label %bb.l, !dbg !12909

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !12910
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12910
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !12910, !nonnull !22, !noundef !22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12910
  %i.am = load i64, ptr %i.al, align 8, !dbg !12910, !noundef !22
  store ptr %i.ak, ptr %i.w, align 8, !dbg !12910, !captures !11135
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !12910
  store i64 %i.am, ptr %i.an, align 8, !dbg !12910
    #dbg_value(ptr %i.w, !12748, !DIExpression(), !12911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !12912
  store ptr %i.w, ptr %i.v, align 8, !dbg !12912
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12912
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !12912
    #dbg_value(ptr @82, !12843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12867)
    #dbg_value(ptr %i.v, !12843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12867)
  %i.ao = load ptr, ptr %1, align 8, !dbg !12913, !nonnull !22, !noundef !22
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12913
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !12913, !nonnull !22, !align !1590, !noundef !22
  %i.ar = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noundef nonnull @82, ptr noundef nonnull %i.v), !dbg !12914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12915
  br label %bb.l, !dbg !12915

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !12916
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12916
  %i.at = load ptr, ptr %i.as, align 8, !dbg !12916, !nonnull !22, !noundef !22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12916
  %i.av = load i64, ptr %i.au, align 8, !dbg !12916, !noundef !22
  store ptr %i.at, ptr %i.u, align 8, !dbg !12916, !captures !11135
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !12916
  store i64 %i.av, ptr %i.aw, align 8, !dbg !12916
    #dbg_value(ptr %i.u, !12756, !DIExpression(), !12917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !12918
  store ptr %i.u, ptr %i.t, align 8, !dbg !12918
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !12918
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.431.0..sroa_idx, align 8, !dbg !12918
    #dbg_value(ptr @83, !12843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12870)
    #dbg_value(ptr %i.t, !12843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12870)
  %i.ax = load ptr, ptr %1, align 8, !dbg !12919, !nonnull !22, !noundef !22
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12919
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !12919, !nonnull !22, !align !1590, !noundef !22
  %i.ba = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az, ptr noundef nonnull @83, ptr noundef nonnull %i.t), !dbg !12920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !12921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12921
  br label %bb.l, !dbg !12921

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !12922
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !12922
  %i.bc = load i32, ptr %i.bb, align 4, !dbg !12922, !noundef !22
    #dbg_value(i32 %i.bc, !12762, !DIExpression(), !12923)
  store i32 %i.bc, ptr %i.s, align 4, !dbg !12922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !12924
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12924
  %i.be = load i32, ptr %i.bd, align 8, !dbg !12924, !noundef !22
    #dbg_value(i32 %i.be, !12764, !DIExpression(), !12923)
  store i32 %i.be, ptr %i.r, align 4, !dbg !12924
    #dbg_value(ptr %i.s, !12765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12925)
    #dbg_value(ptr %i.r, !12765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12925)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !12926
  store ptr %i.s, ptr %i.q, align 8, !dbg !12926
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !12926
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8, !dbg !12926
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !12926
  store ptr %i.r, ptr %i.bf, align 8, !dbg !12926
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !12926
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8, !dbg !12926
    #dbg_value(ptr @84, !12843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12873)
    #dbg_value(ptr %i.q, !12843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12873)
  %i.bg = load ptr, ptr %1, align 8, !dbg !12927, !nonnull !22, !noundef !22
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12927
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !12927, !nonnull !22, !align !1590, !noundef !22
  %i.bj = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi, ptr noundef nonnull @84, ptr noundef nonnull %i.q), !dbg !12928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !12929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !12929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !12929
  br label %bb.l, !dbg !12929

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !12930
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !12930
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !12930, !noundef !22
    #dbg_value(i32 %i.bl, !12776, !DIExpression(), !12931)
end_hunk_2
