Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.09?download=true
inline.NumInlined: 355
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs7_NtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connectionNtB5_11QuicCommand7execute:bb.a
    #dbg_value(ptr %i.ae, !17483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17546
  invoke void @_RNvMNtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connectionNtB2_19QuicConnectionStats9from_conn(ptr noalias nofree noundef nonnull sret([528 x i8]) align 8 captures(none) dereferenceable(528) %i.b, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(15552) %1)
          to label %bb.x unwind label %bb.y, !dbg !17547

bb.g:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #20
          to label %common.resume unwind label %bb.l, !dbg !17548

bb.h:                                             ; preds = %bb.c
    #dbg_value(ptr %i.e, !4398, !DIExpression(), !17371)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche.exit unwind label %bb.i, !dbg !17549

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !4405, !DIExpression(), !17373)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.j, !dbg !17550

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !17549
  unreachable, !dbg !17549

common.resume:                                    ; preds = %bb.g, %bb.w, %bb.y, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.af, %bb.g ], [ %i.cx, %bb.w ], [ %i.cy, %bb.y ]
  resume { ptr, i32 } %common.resume.op, !dbg !17487

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.h
    #dbg_value(ptr %i.e, !4405, !DIExpression(), !17375)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !17551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17548
  br label %bb.k, !dbg !17552

bb.k:                                             ; preds = %bb.x, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche.exit, %bb.d
  ret void, !dbg !17553

bb.l:                                             ; preds = %bb.y, %bb.w, %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !17554
  unreachable, !dbg !17554

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17555
    #dbg_declare(ptr poison, !10324, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17380)
    #dbg_declare(ptr poison, !10408, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17384)
    #dbg_value(ptr %i.d, !10406, !DIExpression(), !17385)
    #dbg_declare(ptr poison, !10431, !DIExpression(), !17387)
    #dbg_declare(ptr poison, !10428, !DIExpression(), !17388)
    #dbg_declare(ptr poison, !10415, !DIExpression(), !17389)
    #dbg_declare(ptr poison, !10365, !DIExpression(), !17390)
    #dbg_declare(ptr poison, !10341, !DIExpression(), !17391)
    #dbg_declare(ptr poison, !10440, !DIExpression(), !17393)
    #dbg_declare(ptr poison, !10449, !DIExpression(), !17395)
    #dbg_declare(ptr poison, !10459, !DIExpression(), !17397)
    #dbg_declare(ptr poison, !10472, !DIExpression(), !17399)
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17401)
  %i.aj = load i64, ptr %i.d, align 8, !dbg !17556, !range !8561, !alias.scope !17531, !noundef !2635 ; 3 uses
  %.not.i = icmp eq i64 %i.aj, 2, !dbg !17556     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 280, !dbg !17557
  %i.al = load i64, ptr %i.ak, align 8, !dbg !17557, !alias.scope !17531
  %i.am = trunc i64 %i.al to i16, !dbg !17557     ; 2 uses
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17405)
  br i1 %.not.i, label %bb.s, label %bb.n, !dbg !17558

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.d, !10437, !DIExpression(), !17406)
    #dbg_value(ptr %i.d, !10438, !DIExpression(), !17407)
    #dbg_value(ptr %i.d, !10498, !DIExpression(), !17409)
    #dbg_value(ptr %i.d, !10504, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17411)
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !17559
  %i.ao = load i64, ptr %i.an, align 8, !dbg !17559, !alias.scope !17531, !noundef !2635
  %i.ap = mul i64 %i.ao, 1000000, !dbg !17559
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !17560
  %i.ar = load i32, ptr %i.aq, align 8, !dbg !17560, !range !10320, !alias.scope !17531, !noundef !2635
  %i.as = udiv i32 %i.ar, 1000, !dbg !17561
  %i.at = zext nneg i32 %i.as to i64, !dbg !17561
  %i.au = add i64 %i.ap, %i.at, !dbg !17559
    #dbg_value(i64 %i.au, !10509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17413)
    #dbg_value(i64 1, !10509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17413)
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17415)
    #dbg_value(ptr %i.d, !10427, !DIExpression(), !17416)
    #dbg_value(ptr %i.d, !10429, !DIExpression(), !17417)
    #dbg_value(ptr %i.d, !10420, !DIExpression(), !17418)
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 88, !dbg !17562
  %i.aw = load i32, ptr %i.av, align 8, !dbg !17562, !range !10317, !alias.scope !17531, !noundef !2635 ; 2 uses
    #dbg_value(i64 poison, !10408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17419)
    #dbg_value(i32 %i.aw, !10408, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17419)
  %.not83.i = icmp eq i32 %i.aw, -1, !dbg !17563
  br i1 %.not83.i, label %bb.p, label %bb.o, !dbg !17564

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 80, !dbg !17562
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !17562, !alias.scope !17531
    #dbg_value(i64 %i.ay, !10408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17419)
    #dbg_value(i64 %i.ay, !10416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17420)
    #dbg_value(i64 %i.ay, !10518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17422)
    #dbg_value(i32 %i.aw, !10416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17420)
    #dbg_value(i32 %i.aw, !10518, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17422)
    #dbg_value(ptr poison, !10504, !DIExpression(), !17424)
  %i.az = mul i64 %i.ay, 1000000, !dbg !17565
  %i.ba = udiv i32 %i.aw, 1000, !dbg !17566
  %i.bb = zext nneg i32 %i.ba to i64, !dbg !17566
  %i.bc = add i64 %i.az, %i.bb, !dbg !17565
    #dbg_value(i64 %i.bc, !10509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17426)
    #dbg_value(i64 1, !10509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17426)
  br label %bb.p, !dbg !17567

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.07.0.ph.i = phi i64 [ 0, %bb.n ], [ %i.bc, %bb.o ]
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17428)
    #dbg_value(ptr %i.d, !10364, !DIExpression(), !17429)
    #dbg_value(ptr %i.d, !10366, !DIExpression(), !17430)
    #dbg_value(ptr %i.d, !10347, !DIExpression(), !17431)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 104, !dbg !17568
  %i.be = load i32, ptr %i.bd, align 8, !dbg !17568, !range !10317, !alias.scope !17531, !noundef !2635 ; 2 uses
    #dbg_value(i64 poison, !10324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17432)
    #dbg_value(i32 %i.be, !10324, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17432)
  %.not84.i = icmp eq i32 %i.be, -1, !dbg !17569
  br i1 %.not84.i, label %bb.r, label %bb.q, !dbg !17570

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 96, !dbg !17568
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !17568, !alias.scope !17531
    #dbg_value(i64 %i.bg, !10324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17432)
    #dbg_value(i64 %i.bg, !10342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17433)
    #dbg_value(i64 %i.bg, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17435)
    #dbg_value(i32 %i.be, !10342, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17433)
    #dbg_value(i32 %i.be, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17435)
    #dbg_value(ptr poison, !10504, !DIExpression(), !17437)
  %i.bh = mul i64 %i.bg, 1000000, !dbg !17571
  %i.bi = udiv i32 %i.be, 1000, !dbg !17572
  %i.bj = zext nneg i32 %i.bi to i64, !dbg !17572
  %i.bk = add i64 %i.bh, %i.bj, !dbg !17571
    #dbg_value(i64 %i.bk, !10509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17439)
    #dbg_value(i64 1, !10509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17439)
  br label %bb.r, !dbg !17573

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.010.0.ph.i = phi i64 [ 0, %bb.p ], [ %i.bk, %bb.q ]
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17441)
    #dbg_value(ptr %i.d, !10446, !DIExpression(), !17442)
    #dbg_value(ptr %i.d, !10447, !DIExpression(), !17443)
    #dbg_value(ptr %i.d, !10528, !DIExpression(), !17445)
    #dbg_value(ptr %i.d, !10504, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !17447)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !17574
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !17574, !alias.scope !17531, !noundef !2635
  %i.bn = mul i64 %i.bm, 1000000, !dbg !17574
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !17575
  %i.bp = load i32, ptr %i.bo, align 8, !dbg !17575, !range !10320, !alias.scope !17531, !noundef !2635
  %i.bq = udiv i32 %i.bp, 1000, !dbg !17576
  %i.br = zext nneg i32 %i.bq to i64, !dbg !17576
  %i.bs = add i64 %i.bn, %i.br, !dbg !17574
    #dbg_value(i64 %i.bs, !10509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17449)
    #dbg_value(i64 1, !10509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17449)
  br label %bb.s, !dbg !17577

bb.s:                                             ; preds = %bb.r, %bb.m
  %.sroa.010.0105.i = phi i64 [ %.sroa.010.0.ph.i, %bb.r ], [ 0, %bb.m ]
  %.sroa.03.08792103.i = phi i64 [ %i.au, %bb.r ], [ 0, %bb.m ]
  %.sroa.07.094101.i = phi i64 [ %.sroa.07.0.ph.i, %bb.r ], [ 0, %bb.m ]
  %.sroa.014.0.i = phi i64 [ %i.bs, %bb.r ], [ 0, %bb.m ], !dbg !17578
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17451)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 240, !dbg !17579
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !17579, !alias.scope !17531 ; 2 uses
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17453)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !17580
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !17580, !alias.scope !17531 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 320, !dbg !17581
  %i.by = load <2 x i64>, ptr %i.bx, align 8, !dbg !17581, !alias.scope !17531
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 336, !dbg !17582
  %i.ca = load <2 x i64>, ptr %i.bz, align 8, !dbg !17582, !alias.scope !17531
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 352, !dbg !17583
  %i.cc = load <2 x i64>, ptr %i.cb, align 8, !dbg !17583, !alias.scope !17531
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 368, !dbg !17584
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !17584, !alias.scope !17531, !noundef !2635
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 384, !dbg !17585
  %i.cg = load <2 x i64>, ptr %i.cf, align 8, !dbg !17585, !alias.scope !17531
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17455)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 288, !dbg !17586
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !17586, !alias.scope !17531 ; 2 uses
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17457)
  br i1 %.not.i, label %bb.v, label %bb.t, !dbg !17587

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.d, !10456, !DIExpression(), !17458)
    #dbg_value(ptr %i.d, !10457, !DIExpression(), !17459)
    #dbg_value(ptr %i.d, !10534, !DIExpression(), !17461)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !17588
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !17588, !alias.scope !17531 ; 2 uses
    #dbg_value(ptr %i.d, !10483, !DIExpression(), !17463)
    #dbg_value(ptr %i.d, !10466, !DIExpression(), !17464)
    #dbg_value(ptr %i.d, !10467, !DIExpression(), !17465)
    #dbg_value(ptr %i.d, !10539, !DIExpression(), !17467)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17589 ; 2 uses
  %.sroa.036.0.copyload.i = load i64, ptr %i.cl, align 8, !dbg !17589, !alias.scope !17531
    #dbg_value(i64 %.sroa.036.0.copyload.i, !10479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(i64 poison, !10479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17468)
    #dbg_value(i64 poison, !10479, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17468)
    #dbg_value(i8 poison, !10479, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !17468)
  %.not85.i = icmp eq i64 %.sroa.036.0.copyload.i, 2, !dbg !17590
  br i1 %.not85.i, label %bb.v, label %bb.u, !dbg !17591

bb.u:                                             ; preds = %bb.t
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !17589
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !17589, !alias.scope !17531
    #dbg_value(i64 %.sroa.8.0.copyload.i, !10479, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17468)
    #dbg_value(i64 poison, !10479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17468)
  %i.cm = load <2 x i64>, ptr %i.cl, align 8, !dbg !17589, !alias.scope !17531
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !17589
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !17589, !alias.scope !17531
    #dbg_value(i8 %.sroa.9.0.copyload.i, !10479, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !17468)
  br label %bb.v, !dbg !17592

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.026.0.i = phi i64 [ %i.ci, %bb.t ], [ 0, %bb.s ], [ %i.ci, %bb.u ], !dbg !17593
  %.sroa.022.0.i = phi i64 [ %i.bw, %bb.t ], [ 0, %bb.s ], [ %i.bw, %bb.u ], !dbg !17593
  %.sroa.018.0.i = phi i64 [ %i.bu, %bb.t ], [ 0, %bb.s ], [ %i.bu, %bb.u ], !dbg !17593
  %.sroa.0.0.i = phi i16 [ %i.am, %bb.t ], [ 0, %bb.s ], [ %i.am, %bb.u ], !dbg !17593
  %.sroa.6.sroa.5.1.i = phi i64 [ undef, %bb.t ], [ undef, %bb.s ], [ %.sroa.8.0.copyload.i, %bb.u ], !dbg !17593
  %.sroa.6.sroa.6.1.i = phi i8 [ undef, %bb.t ], [ undef, %bb.s ], [ %.sroa.9.0.copyload.i, %bb.u ], !dbg !17593
  %.sroa.531.1.i = phi i64 [ %i.ck, %bb.t ], [ undef, %bb.s ], [ %i.ck, %bb.u ], !dbg !17588
  %.sroa.030.1.i = phi i64 [ %i.aj, %bb.t ], [ 0, %bb.s ], [ %i.aj, %bb.u ], !dbg !17588
  %i.cn = phi <2 x i64> [ <i64 2, i64 undef>, %bb.t ], [ <i64 2, i64 undef>, %bb.s ], [ %i.cm, %bb.u ], !dbg !17594
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 304, !dbg !17595
    #dbg_value(ptr %i.d, !10504, !DIExpression(DW_OP_plus_uconst, 304, DW_OP_stack_value), !17470)
  %i.cp = load i64, ptr %i.co, align 8, !dbg !17596, !alias.scope !17531, !noundef !2635
  %i.cq = mul i64 %i.cp, 1000000, !dbg !17596
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 312, !dbg !17597
  %i.cs = load i32, ptr %i.cr, align 8, !dbg !17597, !range !10320, !alias.scope !17531, !noundef !2635
  %i.ct = udiv i32 %i.cs, 1000, !dbg !17598
  %i.cu = zext nneg i32 %i.ct to i64, !dbg !17598
  %i.cv = add i64 %i.cq, %i.cu, !dbg !17596
  store i64 %.sroa.030.1.i, ptr %i.c, align 8, !dbg !17555
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17555
  store i64 %.sroa.531.1.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17555
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17555
  store <2 x i64> %i.cn, ptr %.sroa.519.0..sroa_idx, align 8, !dbg !17555
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !17555
  store i64 %.sroa.6.sroa.5.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17555
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !17555
  store i8 %.sroa.6.sroa.6.1.i, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !17555
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !17555
  store i64 %.sroa.03.08792103.i, ptr %.sroa.920.0..sroa_idx, align 8, !dbg !17555
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !17555
  store i64 %.sroa.07.094101.i, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !17555
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !17555
  store i64 %.sroa.010.0105.i, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !17555
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !17555
  store i64 %.sroa.014.0.i, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !17555
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !17555
  store i64 %.sroa.018.0.i, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !17555
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88, !dbg !17555
  store i64 %.sroa.022.0.i, ptr %.sroa.14.0..sroa_idx, align 8, !dbg !17555
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96, !dbg !17555
  %i.cw = shufflevector <2 x i64> %i.by, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !17555
  store <2 x i64> %i.cw, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !17555
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !17555
  store <2 x i64> %i.ca, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !17555
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128, !dbg !17555
  store <2 x i64> %i.cc, ptr %.sroa.19.0..sroa_idx, align 8, !dbg !17555
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 144, !dbg !17555
  store i64 %i.ce, ptr %.sroa.21.0..sroa_idx, align 8, !dbg !17555
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152, !dbg !17555
  store <2 x i64> %i.cg, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !17555
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 168, !dbg !17555
  store i64 0, ptr %.sroa.24.0..sroa_idx, align 8, !dbg !17555
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176, !dbg !17555
  store i64 %.sroa.026.0.i, ptr %.sroa.25.0..sroa_idx, align 8, !dbg !17555
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184, !dbg !17555
  store i64 %i.cv, ptr %.sroa.26.0..sroa_idx, align 8, !dbg !17555
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 192, !dbg !17555
  store i16 %.sroa.0.0.i, ptr %.sroa.27.0..sroa_idx, align 8, !dbg !17555
  call void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtCs1mB61iS8Qhs_15datagram_socket12socket_stats11SocketStatsEEp6OutputuNtNtBP_6marker4SendEL_EIBJ_B1s_E9call_onceCsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(200) %i.c), !dbg !17555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17600
  br label %bb.k, !dbg !17601

bb.w:                                             ; preds = %bb.e
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceTNtNtCs1mB61iS8Qhs_15datagram_socket12socket_stats11SocketStatsEEp6OutputuNtNtB4_6marker4SendEL_EECsa2e0UnRrdBM_12tokio_quiche(ptr nonnull %i.y, ptr nonnull %i.aa) #20
          to label %common.resume unwind label %bb.l, !dbg !17601

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.a, ptr noundef nonnull align 8 dereferenceable(528) %i.b, i64 528, i1 false), !dbg !17602
  call void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connection19QuicConnectionStatsEEp6OutputuNtNtBP_6marker4SendEL_EIBJ_B1s_E9call_onceB1z_(ptr noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(528) %i.a), !dbg !17602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17604
  br label %bb.k, !dbg !17605

bb.y:                                             ; preds = %bb.f
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceTNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connection19QuicConnectionStatsEEp6OutputuNtNtB4_6marker4SendEL_EEB1M_(ptr nonnull %i.ac, ptr nonnull %i.ae) #20
          to label %common.resume unwind label %bb.l, !dbg !17605
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs2sJxpAufolh_5tokio4sync7oneshotINtB4_6SenderINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEE4sendB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17611 {
bb.a:
    #dbg_declare(ptr poison, !17856, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !17863)
  %i.a = alloca [8 x i8], align 8                 ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
    #dbg_declare(ptr %i.b, !17851, !DIExpression(), !17864)
    #dbg_declare(ptr %2, !17852, !DIExpression(), !17865)
    #dbg_declare(ptr %i.a, !17853, !DIExpression(), !17866)
    #dbg_declare(ptr poison, !17867, !DIExpression(), !17881)
    #dbg_declare(ptr poison, !17882, !DIExpression(), !17889)
    #dbg_declare(ptr poison, !17890, !DIExpression(), !17903)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18030
    #dbg_value(ptr %i.b, !17909, !DIExpression(), !17915)
    #dbg_value(ptr %i.b, !17916, !DIExpression(), !17921)
    #dbg_value(ptr %1, !17922, !DIExpression(), !17929)
  store ptr null, ptr %i.b, align 8, !dbg !18031
  %.not = icmp eq ptr %1, null, !dbg !18032
  br i1 %.not, label %bb.d, label %bb.b, !dbg !18033, !prof !3779

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !dbg !18034
    #dbg_value(ptr %i.a, !17930, !DIExpression(), !17935)
    #dbg_value(ptr %i.a, !17936, !DIExpression(), !17943)
    #dbg_value(ptr %1, !17878, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !17945)
    #dbg_value(ptr %1, !17947, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !17953)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !18035 ; 4 uses
    #dbg_value(ptr %i.c, !17886, !DIExpression(), !17954)
    #dbg_value(ptr %i.c, !17956, !DIExpression(), !17629)
  %i.d = load i64, ptr %i.c, align 8, !dbg !18036, !range !5033, !alias.scope !17960, !noundef !2635
  %i.e = icmp eq i64 %i.d, -1, !dbg !18036
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit, label %bb.c, !dbg !18036

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit_crit_edge unwind label %bb.f, !dbg !18036

._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !dbg !18037
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit, !dbg !18036

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18
          to label %bb.e unwind label %bb.ac, !dbg !18038

.thread35:                                        ; preds = %bb.n, %bb.p
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !18021

bb.e:                                             ; preds = %bb.q, %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !dbg !18039
  br label %bb.h, !dbg !18040

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit: ; preds = %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit_crit_edge, %bb.b
  %i.g = phi ptr [ %.pre, %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit_crit_edge ], [ %1, %bb.b ], !dbg !18037 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !dbg !18039
    #dbg_value(ptr %i.a, !17930, !DIExpression(), !17970)
    #dbg_value(ptr %i.a, !17936, !DIExpression(), !17971)
    #dbg_value(ptr %i.g, !4722, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17634)
    #dbg_declare(ptr poison, !4734, !DIExpression(), !17636)
    #dbg_declare(ptr poison, !4744, !DIExpression(), !17639)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !18041
  %i.i = invoke noundef i64 @_RNvMs9_NtNtCs2sJxpAufolh_5tokio4sync7oneshotNtB5_5State12set_complete(ptr noundef nonnull align 8 %i.h)
          to label %.noexc16 unwind label %bb.j, !dbg !18042 ; 2 uses

.noexc16:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit
    #dbg_value(i64 %i.i, !4726, !DIExpression(), !17640)
    #dbg_value(i64 %i.i, !17972, !DIExpression(), !17643)
  %i.j = and i64 %i.i, 5, !dbg !18043
  %or.cond.not.i = icmp eq i64 %i.j, 1, !dbg !18043
  br i1 %or.cond.not.i, label %bb.g, label %bb.k, !dbg !18043

bb.g:                                             ; preds = %.noexc16
    #dbg_value(ptr %i.g, !4742, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !17644)
    #dbg_value(ptr %i.g, !4763, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !17645)
    #dbg_value(ptr %i.g, !4768, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !17647)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !18044
    #dbg_value(ptr %i.k, !4752, !DIExpression(), !17648)
    #dbg_value(ptr %i.k, !4754, !DIExpression(), !17649)
    #dbg_value(ptr %i.k, !4775, !DIExpression(), !17652)
  %i.l = load ptr, ptr %i.k, align 8, !dbg !18045, !nonnull !2635, !align !4389, !noundef !2635
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !18045
  %i.n = load ptr, ptr %i.m, align 8, !dbg !18045, !nonnull !2635, !noundef !2635
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !18046
  %i.p = load ptr, ptr %i.o, align 8, !dbg !18046, !noundef !2635
  invoke void %i.n(ptr noundef %i.p)
          to label %bb.k unwind label %bb.j, !dbg !18045, !inline_history !2112

bb.h:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.f, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17975), !dbg !18021
    #dbg_value(ptr %i.a, !4798, !DIExpression(), !17656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17976), !dbg !18047
    #dbg_value(ptr %i.a, !4802, !DIExpression(), !17660)
    #dbg_value(ptr %i.a, !17977, !DIExpression(), !17663)
    #dbg_value(i64 1, !4804, !DIExpression(), !17665)
    #dbg_value(i8 1, !4806, !DIExpression(), !17665)
    #dbg_value(i64 1, !4808, !DIExpression(), !17667)
    #dbg_value(i8 1, !4810, !DIExpression(), !17667)
  %i.q = load ptr, ptr %i.a, align 8, !dbg !18048, !alias.scope !17979, !nonnull !2635, !noundef !2635
    #dbg_value(ptr %i.q, !4805, !DIExpression(), !17670)
    #dbg_value(ptr %i.q, !4809, !DIExpression(), !17667)
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !dbg !18049, !noalias !17979
  %i.s = icmp eq i64 %i.r, 1, !dbg !18050
  br i1 %i.s, label %bb.i, label %.thread, !dbg !18050

bb.i:                                             ; preds = %bb.h
    #dbg_value(i8 2, !4309, !DIExpression(), !17672)
  fence acquire, !dbg !18051
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2sJxpAufolh_5tokio4sync7oneshot5InnerINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEE9drop_slowB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %.thread unwind label %bb.ab, !dbg !18052

bb.j:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEEEB1W_.exit, %bb.q
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %.noexc16, %bb.g
  %i.u = and i64 %i.i, 4, !dbg !18053
  %.not.i = icmp eq i64 %i.u, 0, !dbg !18053
  br i1 %.not.i, label %bb.m, label %bb.l, !dbg !17967

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.a, !17930, !DIExpression(), !17981)
    #dbg_value(ptr %i.a, !17936, !DIExpression(), !17984)
  %i.v = load ptr, ptr %i.a, align 8, !dbg !18054, !nonnull !2635, !noundef !2635 ; 3 uses
    #dbg_value(ptr %i.v, !17907, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17987)
    #dbg_value(ptr %i.v, !17899, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !17988)
    #dbg_value(ptr %i.v, !17947, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !17991)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56, !dbg !18055 ; 2 uses
    #dbg_value(ptr %i.w, !17992, !DIExpression(), !17997)
    #dbg_value(ptr %i.w, !17998, !DIExpression(), !18004)
    #dbg_value(ptr %i.w, !18005, !DIExpression(), !18011)
  %.sroa.02.0.copyload = load i64, ptr %i.w, align 8, !dbg !18056 ; 2 uses
    #dbg_value(i64 %.sroa.02.0.copyload, !17856, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18012)
end_hunk_0
begin_hunk_1_@_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt:bb.a
    #dbg_value(ptr %1, !22543, !DIExpression(), !22547)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22548
  %i.b = load i32, ptr %i.a, align 8, !dbg !22548, !noundef !2635 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !22548
  %.not = icmp eq i32 %i.c, 0, !dbg !22548
  br i1 %.not, label %bb.b, label %bb.c, !dbg !22549

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864, !dbg !22550
  %.not3 = icmp eq i32 %i.d, 0, !dbg !22550
  br i1 %.not3, label %bb.d, label %bb.e, !dbg !22551

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22552
  br label %bb.f, !dbg !22552

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22553
  br label %bb.f, !dbg !22553

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22554
  br label %bb.f, !dbg !22554

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !22555
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsa2e0UnRrdBM_12tokio_quiche11buf_factoryNtB4_10BufFactoryNtNtCs3f36owOmepS_6quiche7buffers10BufFactory14buf_from_slice(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 !dbg !22556 {
bb.a:
    #dbg_value(ptr %1, !22559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22561)
    #dbg_value(i64 %2, !22559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22561)
  tail call void @_RNvMNtCs5OU5zKChQMG_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !22562
  ret void, !dbg !22563
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsa2e0UnRrdBM_12tokio_quiche11buf_factoryNtB4_10BufFactoryNtNtCs3f36owOmepS_6quiche7buffers10BufFactory20dgram_buf_from_slice(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 !dbg !22564 {
bb.a:
    #dbg_value(ptr %1, !22567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22569)
    #dbg_value(i64 %2, !22567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22569)
  tail call void @_RNvMNtCs1mB61iS8Qhs_15datagram_socket6bufferNtB2_11DgramBuffer10from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !22570
  ret void, !dbg !22571
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connectionNtB4_19QuicConnectionStatsNtNtCs1mB61iS8Qhs_15datagram_socket12socket_stats13AsSocketStats15as_socket_stats(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) initializes((0, 41), (48, 194)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(528) %1) unnamed_addr #2 !dbg !2067 {
bb.a:
    #dbg_declare(ptr poison, !10324, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22575)
    #dbg_declare(ptr poison, !10408, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22579)
    #dbg_value(ptr %1, !10406, !DIExpression(), !22580)
    #dbg_declare(ptr poison, !10431, !DIExpression(), !22582)
    #dbg_declare(ptr poison, !10428, !DIExpression(), !22583)
    #dbg_declare(ptr poison, !10415, !DIExpression(), !22584)
    #dbg_declare(ptr poison, !10365, !DIExpression(), !22585)
    #dbg_declare(ptr poison, !10341, !DIExpression(), !22586)
    #dbg_declare(ptr poison, !10440, !DIExpression(), !22588)
    #dbg_declare(ptr poison, !10449, !DIExpression(), !22590)
    #dbg_declare(ptr poison, !10459, !DIExpression(), !22592)
    #dbg_declare(ptr poison, !10472, !DIExpression(), !22594)
    #dbg_value(ptr %1, !10483, !DIExpression(), !22596)
  %i.a = load i64, ptr %1, align 8, !dbg !22664, !range !8561, !noundef !2635 ; 3 uses
  %.not = icmp eq i64 %i.a, 2, !dbg !22664        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 280, !dbg !22665
  %i.c = load i64, ptr %i.b, align 8, !dbg !22665
  %i.d = trunc i64 %i.c to i16, !dbg !22665       ; 2 uses
    #dbg_value(ptr %1, !10483, !DIExpression(), !22598)
  br i1 %.not, label %bb.g, label %bb.b, !dbg !22666

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !10437, !DIExpression(), !22599)
    #dbg_value(ptr %1, !10438, !DIExpression(), !22600)
    #dbg_value(ptr %1, !10498, !DIExpression(), !22602)
    #dbg_value(ptr %1, !10504, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !22604)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !22667
  %i.f = load i64, ptr %i.e, align 8, !dbg !22667, !noundef !2635
  %i.g = mul i64 %i.f, 1000000, !dbg !22667
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !22668
  %i.i = load i32, ptr %i.h, align 8, !dbg !22668, !range !10320, !noundef !2635
  %i.j = udiv i32 %i.i, 1000, !dbg !22669
  %i.k = zext nneg i32 %i.j to i64, !dbg !22669
  %i.l = add i64 %i.g, %i.k, !dbg !22667
    #dbg_value(i64 %i.l, !10509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22606)
    #dbg_value(i64 1, !10509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22606)
    #dbg_value(ptr %1, !10483, !DIExpression(), !22608)
    #dbg_value(ptr %1, !10427, !DIExpression(), !22609)
    #dbg_value(ptr %1, !10429, !DIExpression(), !22610)
    #dbg_value(ptr %1, !10420, !DIExpression(), !22611)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !22670
  %i.n = load i32, ptr %i.m, align 8, !dbg !22670, !range !10317, !noundef !2635 ; 2 uses
    #dbg_value(i64 poison, !10408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22612)
    #dbg_value(i32 %i.n, !10408, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !22612)
  %.not83 = icmp eq i32 %i.n, -1, !dbg !22671
  br i1 %.not83, label %bb.d, label %bb.c, !dbg !22672

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !22670
  %i.p = load i64, ptr %i.o, align 8, !dbg !22670
    #dbg_value(i64 %i.p, !10408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22612)
    #dbg_value(i64 %i.p, !10416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22613)
    #dbg_value(i64 %i.p, !10518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22615)
    #dbg_value(i32 %i.n, !10416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !22613)
    #dbg_value(i32 %i.n, !10518, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !22615)
    #dbg_value(ptr poison, !10504, !DIExpression(), !22617)
  %i.q = mul i64 %i.p, 1000000, !dbg !22673
  %i.r = udiv i32 %i.n, 1000, !dbg !22674
  %i.s = zext nneg i32 %i.r to i64, !dbg !22674
  %i.t = add i64 %i.q, %i.s, !dbg !22673
    #dbg_value(i64 %i.t, !10509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22619)
    #dbg_value(i64 1, !10509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22619)
  br label %bb.d, !dbg !22675

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.07.0.ph = phi i64 [ 0, %bb.b ], [ %i.t, %bb.c ]
    #dbg_value(ptr %1, !10483, !DIExpression(), !22621)
    #dbg_value(ptr %1, !10364, !DIExpression(), !22622)
    #dbg_value(ptr %1, !10366, !DIExpression(), !22623)
    #dbg_value(ptr %1, !10347, !DIExpression(), !22624)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !22676
  %i.v = load i32, ptr %i.u, align 8, !dbg !22676, !range !10317, !noundef !2635 ; 2 uses
    #dbg_value(i64 poison, !10324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22625)
    #dbg_value(i32 %i.v, !10324, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !22625)
  %.not84 = icmp eq i32 %i.v, -1, !dbg !22677
  br i1 %.not84, label %bb.f, label %bb.e, !dbg !22678

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !22676
  %i.x = load i64, ptr %i.w, align 8, !dbg !22676
    #dbg_value(i64 %i.x, !10324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22625)
    #dbg_value(i64 %i.x, !10342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22626)
    #dbg_value(i64 %i.x, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22628)
    #dbg_value(i32 %i.v, !10342, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !22626)
    #dbg_value(i32 %i.v, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !22628)
    #dbg_value(ptr poison, !10504, !DIExpression(), !22630)
  %i.y = mul i64 %i.x, 1000000, !dbg !22679
  %i.z = udiv i32 %i.v, 1000, !dbg !22680
  %i.aa = zext nneg i32 %i.z to i64, !dbg !22680
  %i.ab = add i64 %i.y, %i.aa, !dbg !22679
    #dbg_value(i64 %i.ab, !10509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22632)
    #dbg_value(i64 1, !10509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22632)
  br label %bb.f, !dbg !22681

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.010.0.ph = phi i64 [ 0, %bb.d ], [ %i.ab, %bb.e ]
    #dbg_value(ptr %1, !10483, !DIExpression(), !22634)
    #dbg_value(ptr %1, !10446, !DIExpression(), !22635)
    #dbg_value(ptr %1, !10447, !DIExpression(), !22636)
    #dbg_value(ptr %1, !10528, !DIExpression(), !22638)
    #dbg_value(ptr %1, !10504, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !22640)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !22682
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !22682, !noundef !2635
  %i.ae = mul i64 %i.ad, 1000000, !dbg !22682
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !22683
  %i.ag = load i32, ptr %i.af, align 8, !dbg !22683, !range !10320, !noundef !2635
  %i.ah = udiv i32 %i.ag, 1000, !dbg !22684
  %i.ai = zext nneg i32 %i.ah to i64, !dbg !22684
  %i.aj = add i64 %i.ae, %i.ai, !dbg !22682
    #dbg_value(i64 %i.aj, !10509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22642)
    #dbg_value(i64 1, !10509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22642)
  br label %bb.g, !dbg !22685

bb.g:                                             ; preds = %bb.a, %bb.f
  %.sroa.010.0105 = phi i64 [ %.sroa.010.0.ph, %bb.f ], [ 0, %bb.a ]
  %.sroa.03.08792103 = phi i64 [ %i.l, %bb.f ], [ 0, %bb.a ]
  %.sroa.07.094101 = phi i64 [ %.sroa.07.0.ph, %bb.f ], [ 0, %bb.a ]
  %.sroa.014.0 = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.a ], !dbg !22642
    #dbg_value(ptr %1, !10483, !DIExpression(), !22644)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 240, !dbg !22686
  %i.al = load i64, ptr %i.ak, align 8, !dbg !22686 ; 2 uses
    #dbg_value(ptr %1, !10483, !DIExpression(), !22646)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 208, !dbg !22687
  %i.an = load i64, ptr %i.am, align 8, !dbg !22687 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 320, !dbg !22688
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !dbg !22688
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 336, !dbg !22689
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !dbg !22689
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 352, !dbg !22690
  %i.at = load <2 x i64>, ptr %i.as, align 8, !dbg !22690
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 368, !dbg !22691
  %i.av = load i64, ptr %i.au, align 8, !dbg !22691, !noundef !2635
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 384, !dbg !22692
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !dbg !22692
    #dbg_value(ptr %1, !10483, !DIExpression(), !22648)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !22693
  %i.az = load i64, ptr %i.ay, align 8, !dbg !22693 ; 2 uses
    #dbg_value(ptr %1, !10483, !DIExpression(), !22650)
  br i1 %.not, label %bb.j, label %bb.h, !dbg !22694

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %1, !10456, !DIExpression(), !22651)
    #dbg_value(ptr %1, !10457, !DIExpression(), !22652)
    #dbg_value(ptr %1, !10534, !DIExpression(), !22654)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22695
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !22695 ; 2 uses
    #dbg_value(ptr %1, !10483, !DIExpression(), !22656)
    #dbg_value(ptr %1, !10466, !DIExpression(), !22657)
    #dbg_value(ptr %1, !10467, !DIExpression(), !22658)
    #dbg_value(ptr %1, !10539, !DIExpression(), !22660)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22696 ; 2 uses
  %.sroa.036.0.copyload = load i64, ptr %i.bc, align 8, !dbg !22696
    #dbg_value(i64 %.sroa.036.0.copyload, !10479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22661)
    #dbg_value(i64 poison, !10479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22661)
    #dbg_value(i64 poison, !10479, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22661)
    #dbg_value(i8 poison, !10479, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !22661)
  %.not85 = icmp eq i64 %.sroa.036.0.copyload, 2, !dbg !22697
  br i1 %.not85, label %bb.j, label %bb.i, !dbg !22698

bb.i:                                             ; preds = %bb.h
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !22696
  %.sroa.8.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !22696
    #dbg_value(i64 %.sroa.8.0.copyload, !10479, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22661)
    #dbg_value(i64 poison, !10479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22661)
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !dbg !22696
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !22696
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !22696
    #dbg_value(i8 %.sroa.9.0.copyload, !10479, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !22661)
  br label %bb.j, !dbg !22699

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %.sroa.026.0 = phi i64 [ %i.az, %bb.h ], [ 0, %bb.g ], [ %i.az, %bb.i ], !dbg !22580
  %.sroa.022.0 = phi i64 [ %i.an, %bb.h ], [ 0, %bb.g ], [ %i.an, %bb.i ], !dbg !22580
  %.sroa.018.0 = phi i64 [ %i.al, %bb.h ], [ 0, %bb.g ], [ %i.al, %bb.i ], !dbg !22580
  %.sroa.0.0 = phi i16 [ %i.d, %bb.h ], [ 0, %bb.g ], [ %i.d, %bb.i ], !dbg !22580
  %.sroa.6.sroa.5.1 = phi i64 [ undef, %bb.h ], [ undef, %bb.g ], [ %.sroa.8.0.copyload, %bb.i ], !dbg !22580
  %.sroa.6.sroa.6.1 = phi i8 [ undef, %bb.h ], [ undef, %bb.g ], [ %.sroa.9.0.copyload, %bb.i ], !dbg !22580
  %.sroa.531.1 = phi i64 [ %i.bb, %bb.h ], [ undef, %bb.g ], [ %i.bb, %bb.i ], !dbg !22695
  %.sroa.030.1 = phi i64 [ %i.a, %bb.h ], [ 0, %bb.g ], [ %i.a, %bb.i ], !dbg !22695
  %i.be = phi <2 x i64> [ <i64 2, i64 undef>, %bb.h ], [ <i64 2, i64 undef>, %bb.g ], [ %i.bd, %bb.i ], !dbg !22661
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 304, !dbg !22700
    #dbg_value(ptr %1, !10504, !DIExpression(DW_OP_plus_uconst, 304, DW_OP_stack_value), !22663)
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !22701, !noundef !2635
  %i.bh = mul i64 %i.bg, 1000000, !dbg !22701
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !22702
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !22702, !range !10320, !noundef !2635
  %i.bk = udiv i32 %i.bj, 1000, !dbg !22703
  %i.bl = zext nneg i32 %i.bk to i64, !dbg !22703
  %i.bm = add i64 %i.bh, %i.bl, !dbg !22701
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !22704
  store i16 %.sroa.0.0, ptr %i.bn, align 8, !dbg !22704
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22704
  store i64 %.sroa.03.08792103, ptr %i.bo, align 8, !dbg !22704
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22704
  store i64 %.sroa.07.094101, ptr %i.bp, align 8, !dbg !22704
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !22704
  store i64 %.sroa.010.0105, ptr %i.bq, align 8, !dbg !22704
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !22704
  store i64 %.sroa.014.0, ptr %i.br, align 8, !dbg !22704
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !22704
  store i64 %.sroa.018.0, ptr %i.bs, align 8, !dbg !22704
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !22704
  store i64 %.sroa.022.0, ptr %i.bt, align 8, !dbg !22704
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !22704
  %i.bv = shufflevector <2 x i64> %i.ap, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !22704
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !dbg !22704
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !22704
  store <2 x i64> %i.ar, ptr %i.bw, align 8, !dbg !22704
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !22704
  store <2 x i64> %i.at, ptr %i.bx, align 8, !dbg !22704
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !22704
  store i64 %i.av, ptr %i.by, align 8, !dbg !22704
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !22704
  store <2 x i64> %i.ax, ptr %i.bz, align 8, !dbg !22704
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !22704
  store i64 0, ptr %i.ca, align 8, !dbg !22704
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !22704
  store i64 %.sroa.026.0, ptr %i.cb, align 8, !dbg !22704
  store i64 %.sroa.030.1, ptr %0, align 8, !dbg !22704
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22704
  store i64 %.sroa.531.1, ptr %i.cc, align 8, !dbg !22704
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22704
  store <2 x i64> %i.be, ptr %i.cd, align 8, !dbg !22704
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22704
  store i64 %.sroa.6.sroa.5.1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !22704
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22704
  store i8 %.sroa.6.sroa.6.1, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !dbg !22704
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !22704
  store i64 %i.bm, ptr %i.ce, align 8, !dbg !22704
  ret void, !dbg !22705
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22715 {
bb.a:
    #dbg_value(ptr poison, !22762, !DIExpression(), !22779)
    #dbg_value(i8 %2, !22744, !DIExpression(), !22780)
    #dbg_value(ptr %0, !22743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22780)
    #dbg_value(i64 %1, !22743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22780)
    #dbg_value(ptr %0, !22745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22781)
    #dbg_value(!DIArgList(ptr %0, i64 %1), !22745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22781)
    #dbg_value(ptr undef, !22762, !DIExpression(), !22779)
    #dbg_value(ptr %0, !22773, !DIExpression(), !22783)
    #dbg_value(!DIArgList(ptr %0, i64 %1), !22774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !22784)
    #dbg_value(ptr poison, !22786, !DIExpression(), !22792)
    #dbg_value(ptr poison, !22789, !DIExpression(), !22793)
  %i.a = icmp samesign eq i64 %1, 0, !dbg !22797
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader, !dbg !22791

.lr.ph.preheader:                                 ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 %2, i64 %1, i1 false), !dbg !22798
    #dbg_value(ptr poison, !22745, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22781)
    #dbg_value(ptr poison, !22747, !DIExpression(), !22795)
    #dbg_value(ptr undef, !22762, !DIExpression(), !22779)
    #dbg_value(ptr poison, !22773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !22783)
    #dbg_value(!DIArgList(ptr %0, i64 %1), !22774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !22784)
    #dbg_value(ptr poison, !22786, !DIExpression(), !22792)
    #dbg_value(ptr poison, !22789, !DIExpression(), !22793)
  br label %._crit_edge, !dbg !22799

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void, !dbg !22799
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCsjhJQnPJPZyr_6boring5errorNtB5_10ErrorStackNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !22800 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !22806, !DIExpression(), !22809)
    #dbg_value(ptr %1, !22807, !DIExpression(), !22809)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22810
  store ptr %0, ptr %i.a, align 8, !dbg !22810
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51), !dbg !22811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22812
  ret i1 %i.b, !dbg !22813
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCsa2e0UnRrdBM_12tokio_quiche5http36driverNtB5_17H3ConnectionErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !22815 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !22817, !DIExpression(), !22821)
    #dbg_value(ptr %1, !22818, !DIExpression(), !22821)
  %i.b = load i64, ptr %0, align 8, !dbg !22823, !range !11369, !noundef !2635 ; 3 uses
  %i.c = icmp ne i64 %i.b, 44, !dbg !22823
  tail call void @llvm.assume(i1 %i.c), !dbg !22823
  %i.d = add nsw i64 %i.b, -43, !dbg !22823
  %i.e = icmp samesign ugt i64 %i.b, 42, !dbg !22823
  %i.f = select i1 %i.e, i64 %i.d, i64 1, !dbg !22823
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ], !dbg !22823

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !22823

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 18), !dbg !22823
  br label %bb.g, !dbg !22823

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22824
    #dbg_value(ptr %0, !22819, !DIExpression(), !22822)
  store ptr %0, ptr %i.a, align 8, !dbg !22824
    #dbg_value(ptr %i.a, !22819, !DIExpression(DW_OP_deref), !22822)
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54), !dbg !22825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22826
  br label %bb.g, !dbg !22826

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 17), !dbg !22823
  br label %bb.g, !dbg !22823

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17), !dbg !22823
  br label %bb.g, !dbg !22823

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  ret i1 %.sroa.0.0.in, !dbg !22827
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connectionNtB5_27ConnectionShutdownBehaviourNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !22828 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !22832, !DIExpression(), !22835)
    #dbg_value(ptr %1, !22833, !DIExpression(), !22835)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22838
  store ptr %0, ptr %i.a, align 8, !dbg !22838
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 27, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 22, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58), !dbg !22839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22840
  ret i1 %i.d, !dbg !22841
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !22842 {
bb.a:
    #dbg_value(ptr %0, !22847, !DIExpression(), !22850)
    #dbg_value(ptr %1, !22848, !DIExpression(), !22850)
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22851
  ret i1 %i.a, !dbg !22852
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7boundedINtB5_11OwnedPermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22854 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
    #dbg_value(ptr %0, !22928, !DIExpression(), !22931)
    #dbg_declare(ptr %i.a, !22929, !DIExpression(), !22932)
    #dbg_value(ptr %0, !22933, !DIExpression(), !22939)
    #dbg_value(ptr %0, !22940, !DIExpression(), !22945)
  %i.b = load ptr, ptr %0, align 8, !dbg !22985, !noundef !2635 ; 3 uses
  store ptr null, ptr %0, align 8, !dbg !22986
  %.not = icmp eq ptr %i.b, null, !dbg !22987
  br i1 %.not, label %bb.e, label %bb.b, !dbg !22988

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22932
  store ptr %i.b, ptr %i.a, align 8, !dbg !22932
    #dbg_value(ptr %i.a, !22946, !DIExpression(), !22955)
    #dbg_value(ptr poison, !22957, !DIExpression(), !22861)
    #dbg_value(ptr poison, !22961, !DIExpression(), !22865)
    #dbg_value(ptr %i.a, !22964, !DIExpression(), !22868)
    #dbg_value(ptr %i.a, !22966, !DIExpression(), !22871)
    #dbg_value(ptr %i.a, !22968, !DIExpression(), !22874)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448, !dbg !22989 ; 3 uses
    #dbg_value(ptr %i.c, !22962, !DIExpression(), !22875)
  invoke void @_RNvXse_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.c)
          to label %.noexc unwind label %bb.f, !dbg !22990

.noexc:                                           ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 @_RNvXse_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore9is_closed(ptr noundef nonnull align 8 %i.c)
          to label %.noexc4 unwind label %bb.f, !dbg !22991

.noexc4:                                          ; preds = %.noexc
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded6PermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEB1z_.exit, !dbg !22992

bb.c:                                             ; preds = %.noexc4
  %i.e = invoke noundef zeroext i1 @_RNvXse_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.c)
          to label %.noexc5 unwind label %bb.f, !dbg !22993

.noexc5:                                          ; preds = %bb.c
  br i1 %i.e, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded6PermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEB1z_.exit, !dbg !22994

bb.d:                                             ; preds = %.noexc5
    #dbg_value(ptr %i.a, !22970, !DIExpression(), !22878)
    #dbg_value(ptr %i.a, !22966, !DIExpression(), !22880)
    #dbg_value(ptr %i.a, !22968, !DIExpression(), !22882)
  %i.f = load ptr, ptr %i.a, align 8, !dbg !22995, !nonnull !2635, !noundef !2635
    #dbg_value(ptr %i.f, !22974, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !22887)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256, !dbg !22996
  invoke void @_RNvMs0_NtNtNtCs2sJxpAufolh_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded6PermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEB1z_.exit unwind label %bb.f, !dbg !22997

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chan2TxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtBG_7bounded9SemaphoreEEB1s_.exit, %bb.a
  ret void, !dbg !22998

bb.f:                                             ; preds = %bb.d, %bb.c, %.noexc, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chan2TxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtBG_7bounded9SemaphoreEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #20
          to label %common.resume unwind label %bb.l, !dbg !22999

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded6PermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEB1z_.exit: ; preds = %.noexc5, %.noexc4, %bb.d
    #dbg_value(ptr %i.a, !4264, !DIExpression(), !22889)
  invoke void @_RNvXs9_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.g, !dbg !23000

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7bounded6PermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameEEB1z_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22977), !dbg !23000
    #dbg_value(ptr %i.a, !4269, !DIExpression(), !22893)
  call void @llvm.experimental.noalias.scope.decl(metadata !22978), !dbg !23001
    #dbg_value(ptr %i.a, !4276, !DIExpression(), !22897)
    #dbg_value(ptr %i.a, !4279, !DIExpression(), !22899)
    #dbg_value(i64 1, !4287, !DIExpression(), !22901)
    #dbg_value(i8 1, !4293, !DIExpression(), !22901)
    #dbg_value(i64 1, !4295, !DIExpression(), !22903)
end_hunk_1
