Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.09?download=true
inline.NumInlined: 1477
inline.NumDeleted: 556
begin_hunk_0_@_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replaceReECsaTqK2fWTXJW_11qlog_dancer:_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %.sroa.1253.0.copyload, !16164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15510)
    #dbg_value(i64 %.sroa.46.0, !16158, !DIExpression(), !15507)
    #dbg_value(i64 %.sroa.46.0, !16170, !DIExpression(), !15509)
    #dbg_value(i64 %.sroa.46.0, !16163, !DIExpression(), !15510)
  %i.bw = sub nuw i64 %.sroa.1354.0.copyload, %.fr235.i, !dbg !16381 ; 4 uses
    #dbg_value(i64 %i.bw, !16159, !DIExpression(), !15507)
    #dbg_value(i64 %i.bw, !16165, !DIExpression(), !15608)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.1253.0.copyload, i64 %.fr235.i, !dbg !16382 ; 2 uses
    #dbg_value(i8 %.sroa.119.sroa.0.0, !16247, !DIExpression(), !15616)
    #dbg_value(i8 %.sroa.119.sroa.0.0, !16254, !DIExpression(), !15617)
    #dbg_value(ptr %i.bx, !16251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15616)
    #dbg_value(ptr %i.bx, !16255, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15617)
    #dbg_value(i64 %i.bw, !16251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15616)
    #dbg_value(i64 %i.bw, !16255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15617)
  %i.by = icmp samesign ult i64 %i.bw, 16, !dbg !16383
  br i1 %i.by, label %.lr.ph.i.i, label %bb.t, !dbg !16383

bb.t:                                             ; preds = %bb.s
  %i.bz = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.sroa.119.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef range(i64 0, -9223372036854775808) %i.bw)
          to label %.noexc109 unwind label %.loopexit79, !dbg !16384 ; 2 uses

.noexc109:                                        ; preds = %bb.t
  %i.ca = extractvalue { i64, i64 } %i.bz, 0, !dbg !16384
  %i.cb = extractvalue { i64, i64 } %i.bz, 1, !dbg !16384
    #dbg_value(i64 %i.ca, !16256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15618)
    #dbg_value(i64 %i.cb, !16256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15618)
  %i.cc = trunc nuw i64 %i.ca to i1, !dbg !16385
  br i1 %i.cc, label %.loopexit63.i, label %.loopexit, !dbg !16385

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %.sroa.04.015.i.i = phi i64 [ %i.cg, %bb.u ], [ 0, %bb.s ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i, !16252, !DIExpression(), !15619)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.04.015.i.i, !dbg !16386
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !16386, !alias.scope !16259, !noalias !16260, !noundef !3374
  %i.cf = icmp eq i8 %i.ce, %.sroa.119.sroa.0.0, !dbg !16386
  br i1 %i.cf, label %.loopexit63.i, label %bb.u, !dbg !16386

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cg = add nuw nsw i64 %.sroa.04.015.i.i, 1, !dbg !16387 ; 2 uses
    #dbg_value(i64 %i.cg, !16252, !DIExpression(), !15619)
  %exitcond.not.i27.i = icmp eq i64 %i.cg, %i.bw, !dbg !16388
  br i1 %exitcond.not.i27.i, label %.loopexit, label %.lr.ph.i.i, !dbg !16388

.loopexit63.i:                                    ; preds = %.lr.ph.i.i, %.noexc109
  %.sroa.5.0.i.i = phi i64 [ %i.cb, %.noexc109 ], [ %.sroa.04.015.i.i, %.lr.ph.i.i ], !dbg !16389 ; 2 uses
    #dbg_value(i64 1, !16256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15618)
    #dbg_value(i64 %.sroa.5.0.i.i, !16256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15618)
    #dbg_value(i64 %.sroa.5.0.i.i, !16257, !DIExpression(), !15622)
  %i.ch = icmp ult i64 %.sroa.5.0.i.i, %i.bw, !dbg !16390
    #dbg_value(i1 true, !16261, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15625)
  call void @llvm.assume(i1 %i.ch), !dbg !16391
    #dbg_value(i64 1, !16256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15618)
    #dbg_value(i64 %.sroa.5.0.i.i, !16256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15618)
    #dbg_value(i64 %.sroa.5.0.i.i, !15900, !DIExpression(), !15626)
  %i.ci = add i64 %.sroa.5.0.i.i, %.fr235.i, !dbg !16392 ; 2 uses
    #dbg_value(i64 %i.ci, !15901, !DIExpression(), !15627)
  %i.cj = add i64 %i.ci, 1, !dbg !16393           ; 2 uses
    #dbg_value(i64 %i.cj, !15756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15993)
  br label %.loopexit62.split.us.i, !dbg !16394

bb.v:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !16263), !dbg !16395
  call void @llvm.experimental.noalias.scope.decl(metadata !16264), !dbg !16395
    #dbg_value(i1 false, !16010, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15555)
  br i1 %i.bv, label %.lr.ph.i28.i, label %.loopexit, !dbg !16396

.lr.ph.i28.i:                                     ; preds = %bb.v
  %.sroa.119.sroa.0.0.insert.ext = zext i8 %.sroa.119.sroa.0.0 to i64
  %.sroa.119.sroa.0.0.insert.insert = or disjoint i64 %.sroa.119.sroa.10.0.insert.insert, %.sroa.119.sroa.0.0.insert.ext ; 2 uses
  %i.ck = sub i64 %.sroa.15.0.copyload, %.sroa.119.sroa.0.0.insert.insert
  %invariant.op = sub i64 1, %.fr235.i, !dbg !16397
  br label %.lr.ph.split.i.i, !dbg !16397

.lr.ph.split.i.i:                                 ; preds = %bb.y, %.lr.ph.i28.i
  %i.cl = phi i64 [ %.sink94.i.i, %bb.y ], [ %.sroa.3014.0, %.lr.ph.i28.i ] ; 3 uses
  %i.cm = phi i64 [ %i.cw, %bb.y ], [ %i.bu, %.lr.ph.i28.i ]
  %i.cn = phi i64 [ %.sink95.i.i, %bb.y ], [ %.sroa.22.0, %.lr.ph.i28.i ] ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.1253.0.copyload, i64 %i.cm, !dbg !16398
  %i.cp = load i8, ptr %i.co, align 1, !dbg !16399, !alias.scope !16263, !noalias !16265, !noundef !3374
    #dbg_value(i8 %i.cp, !16207, !DIExpression(), !15553)
    #dbg_value(i8 %i.cp, !16013, !DIExpression(), !15633)
  %i.cq = and i8 %i.cp, 63, !dbg !16400
  %i.cr = zext nneg i8 %i.cq to i64, !dbg !16401
  %i.cs = shl nuw i64 1, %i.cr, !dbg !16402
  %i.ct = and i64 %i.cs, %.sroa.748.0.copyload, !dbg !16402
  %.not.i29.i = icmp eq i64 %i.ct, 0, !dbg !16402
  br i1 %.not.i29.i, label %bb.w, label %bb.x, !dbg !16397

bb.w:                                             ; preds = %.lr.ph.split.i.i
  %i.cu = add i64 %i.cn, %.sroa.15.0.copyload, !dbg !16403
  br label %bb.y, !dbg !16404

bb.x:                                             ; preds = %.lr.ph.split.i.i
    #dbg_value(i64 %.sroa.46.0, !16266, !DIExpression(), !15636)
    #dbg_value(i64 %i.cl, !16267, !DIExpression(), !15636)
    #dbg_value(ptr undef, !5961, !DIExpression(DW_OP_deref), !15638)
    #dbg_value(ptr undef, !5963, !DIExpression(DW_OP_deref), !15638)
  %..i.i30.i = call noundef i64 @llvm.umax.i64(i64 %i.cl, i64 %.fr235.i), !dbg !16405 ; 2 uses
    #dbg_value(i64 %..i.i30.i, !16015, !DIExpression(), !15639)
    #dbg_value(i64 %..i.i30.i, !16016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15640)
    #dbg_value(i64 %.sroa.15.0.copyload, !16016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15640)
    #dbg_value(ptr undef, !16199, !DIExpression(), !15548)
    #dbg_value(ptr undef, !16196, !DIExpression(), !15546)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15544)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15641)
  %i.cv = icmp ult i64 %..i.i30.i, %.sroa.15.0.copyload, !dbg !16406
  br i1 %i.cv, label %.lr.ph, label %.preheader60.i.i.preheader, !dbg !16407

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.w
  %.sink95.i.i = phi i64 [ %i.dt, %bb.ac ], [ %i.ds, %bb.ab ], [ %i.cu, %bb.w ] ; 2 uses
  %.sink94.i.i = phi i64 [ 0, %bb.ac ], [ %i.ck, %bb.ab ], [ 0, %bb.w ]
    #dbg_value(i64 %.sink95.i.i, !15756, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !15993)
    #dbg_value(i64 %.sink94.i.i, !15756, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !15993)
  %i.cw = add i64 %.sink95.i.i, %i.d, !dbg !16408 ; 2 uses
    #dbg_value(i64 %i.cw, !16217, !DIExpression(), !15565)
    #dbg_value(i64 %i.cw, !16212, !DIExpression(), !15560)
  %i.cx = icmp ult i64 %i.cw, %.sroa.1354.0.copyload, !dbg !16396
  br i1 %i.cx, label %.lr.ph.split.i.i, label %.loopexit, !dbg !16396

bb.z:                                             ; preds = %.lr.ph
  %i.cy = add nuw nsw i64 %.sroa.04.0.i.i26, 1, !dbg !16409 ; 2 uses
    #dbg_value(i64 %i.cy, !16016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15640)
    #dbg_value(i64 %i.cy, !16016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15640)
    #dbg_value(ptr undef, !16199, !DIExpression(), !15548)
    #dbg_value(ptr undef, !16196, !DIExpression(), !15546)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15544)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15641)
  %i.cz = icmp ult i64 %i.cy, %.sroa.15.0.copyload, !dbg !16406
  br i1 %i.cz, label %.lr.ph, label %.preheader60.i.i.preheader, !dbg !16407

.preheader60.i.i.preheader:                       ; preds = %bb.z, %bb.x
    #dbg_value(i64 %.fr235.i, !16019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15642)
    #dbg_value(ptr undef, !16193, !DIExpression(), !15533)
    #dbg_value(ptr undef, !16186, !DIExpression(), !15531)
    #dbg_value(ptr undef, !16183, !DIExpression(), !15529)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15527)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15643)
  %i.da = icmp ult i64 %i.cl, %.fr235.i, !dbg !16410
  br i1 %i.da, label %.lr.ph28, label %.split.us.i31.i, !dbg !16411

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.04.0.i.i26 = phi i64 [ %i.cy, %bb.z ], [ %..i.i30.i, %bb.x ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i26, !16016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15640)
    #dbg_value(i64 %.sroa.04.0.i.i26, !16235, !DIExpression(), !15593)
    #dbg_value(i64 %.sroa.04.0.i.i26, !16197, !DIExpression(), !15644)
    #dbg_value(i64 %.sroa.04.0.i.i26, !16232, !DIExpression(), !15588)
    #dbg_value(i64 %.sroa.04.0.i.i26, !16016, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15640)
    #dbg_value(i64 %.sroa.04.0.i.i26, !16017, !DIExpression(), !15645)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.i.i26, !dbg !16412
  %i.dc = load i8, ptr %i.db, align 1, !dbg !16412, !alias.scope !16264, !noalias !16270, !noundef !3374
  %i.dd = add i64 %.sroa.04.0.i.i26, %i.cn, !dbg !16413 ; 2 uses
    #dbg_value(i64 %i.dd, !16227, !DIExpression(), !15575)
    #dbg_value(i64 %i.dd, !16222, !DIExpression(), !15570)
  %i.de = icmp ult i64 %i.dd, %.sroa.1354.0.copyload, !dbg !16414
  call void @llvm.assume(i1 %i.de), !dbg !16415
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.1253.0.copyload, i64 %i.dd, !dbg !16416
  %i.dg = load i8, ptr %i.df, align 1, !dbg !16417, !alias.scope !16263, !noalias !16265, !noundef !3374
  %.not45.i.i = icmp eq i8 %i.dc, %i.dg, !dbg !16412
  br i1 %.not45.i.i, label %bb.z, label %bb.ac, !dbg !16412

.preheader60.i.i:                                 ; preds = %bb.aa
    #dbg_value(i64 %i.dj, !16019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15642)
    #dbg_value(ptr undef, !16193, !DIExpression(), !15533)
    #dbg_value(ptr undef, !16186, !DIExpression(), !15531)
    #dbg_value(ptr undef, !16183, !DIExpression(), !15529)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15527)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15643)
  %i.dh = icmp ult i64 %i.cl, %i.dj, !dbg !16410
  br i1 %i.dh, label %.lr.ph28, label %.split.us.i31.i, !dbg !16411

.split.us.i31.i:                                  ; preds = %.preheader60.i.i.preheader, %.preheader60.i.i
  %i.di = add i64 %i.cn, %.sroa.15.0.copyload, !dbg !16418 ; 2 uses
    #dbg_value(i64 %i.di, !15756, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !15993)
    #dbg_value(i64 0, !15756, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !15993)
  br label %.loopexit62.split.us.i, !dbg !16419

.lr.ph28:                                         ; preds = %.preheader60.i.i.preheader, %.preheader60.i.i
  %.sroa.2.0.i.i27 = phi i64 [ %i.dj, %.preheader60.i.i ], [ %.fr235.i, %.preheader60.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i27, !16019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15642)
    #dbg_value(i64 %.sroa.2.0.i.i27, !16241, !DIExpression(), !15603)
    #dbg_value(i64 %.sroa.2.0.i.i27, !16238, !DIExpression(), !15598)
  %i.dj = add i64 %.sroa.2.0.i.i27, -1, !dbg !16420 ; 6 uses
    #dbg_value(i64 %i.dj, !16019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15642)
    #dbg_value(i64 %i.dj, !16020, !DIExpression(), !15646)
  %i.dk = icmp ult i64 %i.dj, %.sroa.15.0.copyload, !dbg !16421
  br i1 %i.dk, label %bb.aa, label %.split56.us.i.i.invoke, !dbg !16421

bb.aa:                                            ; preds = %.lr.ph28
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.dj, !dbg !16421
  %i.dm = load i8, ptr %i.dl, align 1, !dbg !16421, !alias.scope !16264, !noalias !16270, !noundef !3374
  %i.dn = add i64 %i.dj, %i.cn, !dbg !16422       ; 2 uses
    #dbg_value(i64 %i.dn, !16227, !DIExpression(), !15583)
    #dbg_value(i64 %i.dn, !16222, !DIExpression(), !15579)
  %i.do = icmp ult i64 %i.dn, %.sroa.1354.0.copyload, !dbg !16423
  call void @llvm.assume(i1 %i.do), !dbg !16424
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.1253.0.copyload, i64 %i.dn, !dbg !16425
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !16426, !alias.scope !16263, !noalias !16265, !noundef !3374
  %.not44.i.i = icmp eq i8 %i.dm, %i.dq, !dbg !16421
  br i1 %.not44.i.i, label %.preheader60.i.i, label %bb.ab, !dbg !16421

.split56.us.i.i.invoke:                           ; preds = %.preheader.i39.us.i.preheader, %.lr.ph28
  %i.dr = phi i64 [ %i.dj, %.lr.ph28 ], [ %i.du, %.preheader.i39.us.i.preheader ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dr, i64 noundef range(i64 0, -9223372036854775808) %.sroa.15.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %.split56.us.i.i.cont unwind label %.loopexit.split-lp, !dbg !16427

.split56.us.i.i.cont:                             ; preds = %.split56.us.i.i.invoke
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.ds = add i64 %i.cn, %.sroa.119.sroa.0.0.insert.insert, !dbg !16428
  br label %bb.y, !dbg !16429

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.cn, %invariant.op
  %i.dt = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i26, !dbg !16430
  br label %bb.y, !dbg !16431

bb.ad:                                            ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !16272), !dbg !16432
  call void @llvm.experimental.noalias.scope.decl(metadata !16273), !dbg !16432
    #dbg_value(i1 true, !16010, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15554)
  br i1 %i.bv, label %.lr.ph.i35.i, label %.loopexit, !dbg !16433

.lr.ph.i35.i:                                     ; preds = %bb.ad
  %.sroa.119.sroa.0.0.insert.ext20 = zext i8 %.sroa.119.sroa.0.0 to i64, !dbg !16325
  %.sroa.119.sroa.0.0.insert.insert22 = or disjoint i64 %.sroa.119.sroa.10.0.insert.insert, %.sroa.119.sroa.0.0.insert.ext20, !dbg !16325
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.fr235.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload), !dbg !16325
  %i.du = add i64 %.fr235.i, -1, !dbg !16325      ; 2 uses
  %.first_iter.i36.i = icmp ult i64 %i.du, %.sroa.15.0.copyload
  %exitcond.not.i37.i30.not = icmp ult i64 %.fr235.i, %.sroa.15.0.copyload
  %invariant.op96 = sub i64 1, %.fr235.i, !dbg !16325
  %.not58.i.us.i33 = icmp eq i64 %.fr235.i, 0
  br label %.lr.ph.split.us.i.i, !dbg !16325

.lr.ph.split.us.i.i:                              ; preds = %bb.ag, %.lr.ph.i35.i
  %i.dv = phi i64 [ %i.eu, %bb.ag ], [ %i.bu, %.lr.ph.i35.i ]
  %i.dw = phi i64 [ %.sink.i38.i, %bb.ag ], [ %.sroa.22.0, %.lr.ph.i35.i ] ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.1253.0.copyload, i64 %i.dv, !dbg !16434
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !16435, !alias.scope !16272, !noalias !16274, !noundef !3374
    #dbg_value(i8 %i.dy, !16207, !DIExpression(), !15551)
    #dbg_value(i8 %i.dy, !16013, !DIExpression(), !15652)
  %i.dz = and i8 %i.dy, 63, !dbg !16436
  %i.ea = zext nneg i8 %i.dz to i64, !dbg !16437
  %i.eb = shl nuw i64 1, %i.ea, !dbg !16438
  %i.ec = and i64 %i.eb, %.sroa.748.0.copyload, !dbg !16438
  %.not.us.i.i = icmp eq i64 %i.ec, 0, !dbg !16438
  br i1 %.not.us.i.i, label %bb.af, label %.preheader59.i.i.preheader, !dbg !16325

.preheader59.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
    #dbg_value(i64 %.fr235.i, !16016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15653)
    #dbg_value(ptr undef, !16199, !DIExpression(), !15547)
    #dbg_value(ptr undef, !16196, !DIExpression(), !15545)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15540)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15654)
  br i1 %exitcond.not.i37.i30.not, label %.lr.ph32, label %.preheader.i39.preheader.i, !dbg !16439

.preheader59.i.i:                                 ; preds = %.lr.ph32
  %i.ed = add i64 %.sroa.04.0.us.i.i31, 1, !dbg !16440 ; 2 uses
    #dbg_value(i64 %i.ed, !16016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15653)
    #dbg_value(i64 %i.ed, !16016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15653)
    #dbg_value(ptr undef, !16199, !DIExpression(), !15547)
    #dbg_value(ptr undef, !16196, !DIExpression(), !15545)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15540)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15654)
  %exitcond.not.i37.i = icmp eq i64 %i.ed, %umax.i.i, !dbg !16441
  br i1 %exitcond.not.i37.i, label %.preheader.i39.preheader.i, label %.lr.ph32, !dbg !16439

.preheader.i39.preheader.i:                       ; preds = %.preheader59.i.i, %.preheader59.i.i.preheader
    #dbg_value(ptr undef, !16193, !DIExpression(), !15532)
    #dbg_value(ptr undef, !16193, !DIExpression(), !15532)
    #dbg_value(ptr undef, !16186, !DIExpression(), !15530)
    #dbg_value(ptr undef, !16186, !DIExpression(), !15530)
    #dbg_value(ptr undef, !16183, !DIExpression(), !15528)
    #dbg_value(ptr undef, !16183, !DIExpression(), !15528)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15521)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15521)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15655)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15655)
  br i1 %.not58.i.us.i33, label %.split.us.i41.i, label %.preheader.i39.us.i.preheader

.preheader.i39.us.i.preheader:                    ; preds = %.preheader.i39.preheader.i
    #dbg_value(i64 %.fr235.i, !16019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15656)
  br i1 %.first_iter.i36.i, label %.lr.ph35, label %.split56.us.i.i.invoke, !dbg !16442

.preheader.i39.us.i:                              ; preds = %.lr.ph35
    #dbg_value(i64 %i.ee, !16019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15656)
    #dbg_value(ptr undef, !16193, !DIExpression(), !15532)
    #dbg_value(ptr undef, !16186, !DIExpression(), !15530)
    #dbg_value(ptr undef, !16183, !DIExpression(), !15528)
    #dbg_value(ptr undef, !16173, !DIExpression(), !15521)
    #dbg_value(ptr undef, !16177, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15655)
  %.not58.i.us.i = icmp eq i64 %i.ee, 0, !dbg !16443
  br i1 %.not58.i.us.i, label %.split.us.i41.i, label %.lr.ph35, !dbg !16442

.lr.ph35:                                         ; preds = %.preheader.i39.us.i.preheader, %.preheader.i39.us.i
  %.sroa.2.0.us.i.us.i34 = phi i64 [ %i.ee, %.preheader.i39.us.i ], [ %.fr235.i, %.preheader.i39.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i34, !16019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15656)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i34, !16241, !DIExpression(), !15601)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i34, !16238, !DIExpression(), !15596)
  %i.ee = add i64 %.sroa.2.0.us.i.us.i34, -1, !dbg !16444 ; 4 uses
    #dbg_value(i64 %i.ee, !16019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15656)
    #dbg_value(i64 %i.ee, !16020, !DIExpression(), !15657)
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.ee, !dbg !16445
  %i.eg = load i8, ptr %i.ef, align 1, !dbg !16445, !alias.scope !16273, !noalias !16275, !noundef !3374
  %i.eh = add i64 %i.ee, %i.dw, !dbg !16446       ; 2 uses
    #dbg_value(i64 %i.eh, !16227, !DIExpression(), !15581)
    #dbg_value(i64 %i.eh, !16222, !DIExpression(), !15577)
  %i.ei = icmp ult i64 %i.eh, %.sroa.1354.0.copyload, !dbg !16447
  call void @llvm.assume(i1 %i.ei), !dbg !16448
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.1253.0.copyload, i64 %i.eh, !dbg !16449
  %i.ek = load i8, ptr %i.ej, align 1, !dbg !16450, !alias.scope !16272, !noalias !16274, !noundef !3374
  %.not44.us.i.us.i = icmp eq i8 %i.eg, %i.ek, !dbg !16445
  br i1 %.not44.us.i.us.i, label %.preheader.i39.us.i, label %.split.us.i, !dbg !16445

.split.us.i:                                      ; preds = %.lr.ph35
  %i.el = add i64 %.sroa.119.sroa.0.0.insert.insert22, %i.dw, !dbg !16451
  br label %bb.ag, !dbg !16452

.lr.ph32:                                         ; preds = %.preheader59.i.i.preheader, %.preheader59.i.i
  %.sroa.04.0.us.i.i31 = phi i64 [ %i.ed, %.preheader59.i.i ], [ %.fr235.i, %.preheader59.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i31, !16016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15653)
    #dbg_value(i64 %.sroa.04.0.us.i.i31, !16235, !DIExpression(), !15591)
    #dbg_value(i64 %.sroa.04.0.us.i.i31, !16197, !DIExpression(), !15658)
    #dbg_value(i64 %.sroa.04.0.us.i.i31, !16232, !DIExpression(), !15586)
    #dbg_value(i64 %.sroa.04.0.us.i.i31, !16016, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15653)
    #dbg_value(i64 %.sroa.04.0.us.i.i31, !16017, !DIExpression(), !15659)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.i31, !dbg !16453
  %i.en = load i8, ptr %i.em, align 1, !dbg !16453, !alias.scope !16273, !noalias !16275, !noundef !3374
  %i.eo = add i64 %.sroa.04.0.us.i.i31, %i.dw, !dbg !16454 ; 2 uses
    #dbg_value(i64 %i.eo, !16227, !DIExpression(), !15573)
    #dbg_value(i64 %i.eo, !16222, !DIExpression(), !15568)
  %i.ep = icmp ult i64 %i.eo, %.sroa.1354.0.copyload, !dbg !16455
  call void @llvm.assume(i1 %i.ep), !dbg !16456
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1253.0.copyload, i64 %i.eo, !dbg !16457
  %i.er = load i8, ptr %i.eq, align 1, !dbg !16458, !alias.scope !16272, !noalias !16274, !noundef !3374
  %.not45.us.i.i = icmp eq i8 %i.en, %i.er, !dbg !16453
  br i1 %.not45.us.i.i, label %.preheader59.i.i, label %bb.ae, !dbg !16453

bb.ae:                                            ; preds = %.lr.ph32
  %.reass302.i.reass.reass = add i64 %i.dw, %invariant.op96
  %i.es = add i64 %.reass302.i.reass.reass, %.sroa.04.0.us.i.i31, !dbg !16459
  br label %bb.ag, !dbg !16460

bb.af:                                            ; preds = %.lr.ph.split.us.i.i
  %i.et = add i64 %i.dw, %.sroa.15.0.copyload, !dbg !16461
  br label %bb.ag, !dbg !16462

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.split.us.i
  %.sink.i38.i = phi i64 [ %i.et, %bb.af ], [ %i.es, %bb.ae ], [ %i.el, %.split.us.i ] ; 2 uses
    #dbg_value(i64 %.sink.i38.i, !15756, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !15993)
  %i.eu = add i64 %.sink.i38.i, %i.d, !dbg !16463 ; 2 uses
    #dbg_value(i64 %i.eu, !16217, !DIExpression(), !15563)
    #dbg_value(i64 %i.eu, !16212, !DIExpression(), !15558)
  %i.ev = icmp ult i64 %i.eu, %.sroa.1354.0.copyload, !dbg !16433
  br i1 %i.ev, label %.lr.ph.split.us.i.i, label %.loopexit, !dbg !16433

.split.us.i41.i:                                  ; preds = %.preheader.i39.preheader.i, %.preheader.i39.us.i
  %i.ew = add i64 %i.dw, %.sroa.15.0.copyload, !dbg !16464 ; 2 uses
    #dbg_value(i64 %i.ew, !15756, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !15993)
  br label %.loopexit62.split.us.i, !dbg !16465

.loopexit79:                                      ; preds = %bb.t, %.loopexit62.split.us.i, %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.a

.loopexit.split-lp:                               ; preds = %.split56.us.i.i.invoke, %.split.us181.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.a

.loopexit:                                        ; preds = %bb.ad, %.preheader.i, %.split186.us.i, %bb.v, %.noexc109, %bb.q, %bb.y, %bb.ag, %bb.u
    #dbg_value(i64 poison, !15756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15993)
    #dbg_value(i64 poison, !15756, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !15993)
    #dbg_value(i64 poison, !15756, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !15993)
    #dbg_value(i8 poison, !15756, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !15993)
    #dbg_value(i8 poison, !15756, !DIExpression(DW_OP_LLVM_fragment, 208, 8), !15993)
    #dbg_value(ptr %i.b, !15819, !DIExpression(), !16277)
    #dbg_value(i64 %2, !15940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15949)
    #dbg_value(i64 %2, !15953, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15967)
    #dbg_value(ptr %1, !15943, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16278)
    #dbg_value(i64 %2, !15943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16278)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.04.0), !15944, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !16279)
    #dbg_value(ptr %1, !15979, !DIExpression(), !15983)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0, !dbg !16466
    #dbg_value(ptr %i.ex, !15820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16280)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.04.0), !15820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16280)
    #dbg_value(ptr %i.b, !15825, !DIExpression(), !16281)
    #dbg_value(ptr %i.b, !15822, !DIExpression(), !16282)
    #dbg_value(ptr %i.ex, !15823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16282)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.04.0), !15823, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16282)
    #dbg_value(ptr %i.ex, !15826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16281)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !15826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16281)
    #dbg_value(ptr undef, !15810, !DIExpression(), !15831)
    #dbg_value(ptr undef, !15802, !DIExpression(), !15281)
    #dbg_value(i64 1, !16283, !DIExpression(), !15667)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !15807, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15668)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !16297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15669)
    #dbg_value(ptr %i.ex, !16298, !DIExpression(), !15669)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !16291, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15670)
    #dbg_value(ptr %i.ex, !16287, !DIExpression(), !15671)
    #dbg_value(ptr %i.ex, !16292, !DIExpression(), !15670)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !16286, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15671)
  %gepdiff75 = sub nuw nsw i64 %2, %.sroa.04.0, !dbg !16467 ; 3 uses
    #dbg_value(ptr %i.ex, !15829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16300)
    #dbg_value(i64 %gepdiff75, !15829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16300)
    #dbg_value(ptr %i.b, !5969, !DIExpression(), !15675)
    #dbg_value(ptr %i.b, !5983, !DIExpression(), !15676)
    #dbg_value(ptr %i.b, !5977, !DIExpression(), !15677)
    #dbg_value(ptr %i.b, !5986, !DIExpression(), !15679)
    #dbg_value(ptr %i.ex, !5984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15676)
    #dbg_value(ptr %i.ex, !5978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15677)
    #dbg_value(i64 %gepdiff75, !5984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15676)
    #dbg_value(i64 %gepdiff75, !5978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15677)
    #dbg_value(i64 %gepdiff75, !5991, !DIExpression(), !15681)
    #dbg_value(i64 %gepdiff75, !5979, !DIExpression(), !15682)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %gepdiff75)
          to label %.noexc113 unwind label %bb.b, !dbg !16468

.noexc113:                                        ; preds = %.loopexit
  %i.ey = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !16469, !alias.scope !16301, !noundef !3374 ; 3 uses
    #dbg_value(i64 %i.ey, !5995, !DIExpression(), !15686)
    #dbg_value(i64 %i.ey, !5980, !DIExpression(), !15687)
  %i.ez = icmp sgt i64 %i.ey, -1, !dbg !16470
  call void @llvm.assume(i1 %i.ez), !dbg !16471
  %.not.i112 = icmp eq i64 %2, %.sroa.04.0, !dbg !16472
  br i1 %.not.i112, label %bb.ai, label %bb.ah, !dbg !16472

bb.ah:                                            ; preds = %.noexc113
    #dbg_value(ptr %i.ex, !5992, !DIExpression(), !15681)
  %i.fa = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !16473, !alias.scope !16301, !nonnull !3374, !noundef !3374
    #dbg_value(ptr %i.fa, !5998, !DIExpression(), !15686)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey, !dbg !16474
    #dbg_value(ptr %i.fb, !5993, !DIExpression(), !15681)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr nonnull readonly align 1 %i.ex, i64 %gepdiff75, i1 false), !dbg !16475
  %.pre.i = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !16476, !alias.scope !16301
  br label %bb.ai, !dbg !16477

bb.ai:                                            ; preds = %bb.ah, %.noexc113
  %i.fc = phi i64 [ %.pre.i, %bb.ah ], [ %i.ey, %.noexc113 ], !dbg !16476
  %i.fd = add i64 %i.fc, %gepdiff75, !dbg !16476
  store i64 %i.fd, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !16476, !alias.scope !16301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !16478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16319
  ret void, !dbg !16479

.loopexit62.split.us.i:                           ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit30.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit28.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit26.i.i.us.i, %bb.p, %bb.o, %bb.i, %.split186.us.i, %.loopexit63.i, %.split.us.i31.i, %.split.us.i41.i
  %.sroa.556.0 = phi i64 [ %i.dw, %.split.us.i41.i ], [ %.sroa.1354.0.copyload, %.split186.us.i ], [ %i.cn, %.split.us.i31.i ], [ %i.ci, %.loopexit63.i ], [ %.sroa.1354.0.copyload, %bb.o ], [ %.fr235.i, %bb.i ], [ %i.bb, %bb.p ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit26.i.i.us.i ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit28.i.i.us.i ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit30.i.i.us.i ], !dbg !16480 ; 2 uses
  %.sroa.1057.0 = phi i64 [ %i.ew, %.split.us.i41.i ], [ %.sroa.1354.0.copyload, %.split186.us.i ], [ %i.di, %.split.us.i31.i ], [ %i.cj, %.loopexit63.i ], [ %.sroa.1354.0.copyload, %bb.o ], [ %.fr235.i, %bb.i ], [ %i.bb, %bb.p ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit26.i.i.us.i ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit28.i.i.us.i ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit30.i.i.us.i ], !dbg !16480
  %.sroa.119.sroa.0.2 = phi i8 [ %.sroa.119.sroa.0.0, %.split.us.i41.i ], [ 0, %.split186.us.i ], [ %.sroa.119.sroa.0.0, %.split.us.i31.i ], [ %.sroa.119.sroa.0.0, %.loopexit63.i ], [ 0, %bb.o ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit26.i.i.us.i ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit28.i.i.us.i ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit30.i.i.us.i ], !dbg !16322
  %.sroa.3014.2 = phi i64 [ -1, %.split.us.i41.i ], [ %.sroa.3014.0, %.split186.us.i ], [ 0, %.split.us.i31.i ], [ %.sroa.3014.0, %.loopexit63.i ], [ %.sroa.3014.0, %bb.o ], [ %.sroa.3014.0, %bb.i ], [ %.sroa.3014.0, %bb.p ], [ %.sroa.3014.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit26.i.i.us.i ], [ %.sroa.3014.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit28.i.i.us.i ], [ %.sroa.3014.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit30.i.i.us.i ], !dbg !16322
  %.sroa.22.1 = phi i64 [ %i.ew, %.split.us.i41.i ], [ %.sroa.22.0, %.split186.us.i ], [ %i.di, %.split.us.i31.i ], [ %.sroa.22.0, %.loopexit63.i ], [ %.sroa.22.0, %bb.o ], [ %.sroa.22.0, %bb.i ], [ %.sroa.22.0, %bb.p ], [ %.sroa.22.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit26.i.i.us.i ], [ %.sroa.22.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit28.i.i.us.i ], [ %.sroa.22.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit30.i.i.us.i ], !dbg !16322
  %.sroa.46.2 = phi i64 [ %.fr235.i, %.split.us.i41.i ], [ %.sroa.1354.0.copyload, %.split186.us.i ], [ %.fr235.i, %.split.us.i31.i ], [ %i.cj, %.loopexit63.i ], [ %.sroa.1354.0.copyload, %bb.o ], [ %.fr235.i, %bb.i ], [ %i.bb, %bb.p ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit26.i.i.us.i ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit28.i.i.us.i ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer.exit30.i.i.us.i ], !dbg !16322
    #dbg_value(i64 %.sroa.46.2, !15756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15993)
    #dbg_value(i64 %.sroa.22.1, !15756, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !15993)
    #dbg_value(i64 %.sroa.3014.2, !15756, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !15993)
    #dbg_value(i8 %.sroa.119.sroa.0.2, !15756, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !15993)
    #dbg_value(i64 %.sroa.647.0.copyload, !15756, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 208, 8), !15993)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1253.0.copyload) ]
    #dbg_value(i64 %.sroa.556.0, !15940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15966)
    #dbg_value(i64 %.sroa.556.0, !15757, !DIExpression(), !16302)
    #dbg_value(i64 %.sroa.556.0, !15953, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15964)
    #dbg_value(ptr poison, !15758, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16302)
    #dbg_value(!DIArgList(i64 %.sroa.1057.0, i64 %.sroa.556.0), !15758, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16302)
    #dbg_value(ptr %i.b, !15819, !DIExpression(), !16303)
    #dbg_value(ptr %1, !15941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16304)
    #dbg_value(i64 %2, !15941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16304)
    #dbg_value(!DIArgList(i64 %.sroa.556.0, i64 %.sroa.04.0), !15942, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !16305)
    #dbg_value(ptr %1, !15979, !DIExpression(), !15986)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0, !dbg !16481
    #dbg_value(ptr %i.fe, !15820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16306)
    #dbg_value(!DIArgList(i64 %.sroa.556.0, i64 %.sroa.04.0), !15820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16306)
    #dbg_value(ptr %i.b, !15825, !DIExpression(), !16307)
    #dbg_value(ptr %i.b, !15822, !DIExpression(), !16308)
    #dbg_value(ptr %i.fe, !15823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16308)
    #dbg_value(!DIArgList(i64 %.sroa.556.0, i64 %.sroa.04.0), !15823, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16308)
    #dbg_value(ptr %i.fe, !15826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16307)
    #dbg_value(!DIArgList(ptr %1, i64 %.sroa.556.0), !15826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16307)
    #dbg_value(ptr undef, !15810, !DIExpression(), !15844)
    #dbg_value(ptr undef, !15802, !DIExpression(), !15285)
    #dbg_value(i64 1, !16283, !DIExpression(), !15694)
    #dbg_value(!DIArgList(ptr %1, i64 %.sroa.556.0), !15807, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15695)
    #dbg_value(!DIArgList(ptr %1, i64 %.sroa.556.0), !16297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15696)
    #dbg_value(ptr %i.fe, !16298, !DIExpression(), !15696)
    #dbg_value(!DIArgList(ptr %1, i64 %.sroa.556.0), !16291, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15697)
    #dbg_value(ptr %i.fe, !16287, !DIExpression(), !15698)
    #dbg_value(ptr %i.fe, !16292, !DIExpression(), !15697)
    #dbg_value(!DIArgList(ptr %1, i64 %.sroa.556.0), !16286, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15698)
  %gepdiff = sub nuw nsw i64 %.sroa.556.0, %.sroa.04.0, !dbg !16482 ; 3 uses
    #dbg_value(ptr %i.fe, !15827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16309)
    #dbg_value(i64 %gepdiff, !15827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16309)
    #dbg_value(ptr %i.b, !5969, !DIExpression(), !15702)
    #dbg_value(ptr %i.b, !5983, !DIExpression(), !15703)
    #dbg_value(ptr %i.b, !5977, !DIExpression(), !15704)
    #dbg_value(ptr %i.b, !5986, !DIExpression(), !15706)
    #dbg_value(ptr %i.fe, !5984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15703)
    #dbg_value(ptr %i.fe, !5978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15704)
    #dbg_value(i64 %gepdiff, !5984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15703)
    #dbg_value(i64 %gepdiff, !5978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15704)
    #dbg_value(i64 %gepdiff, !5991, !DIExpression(), !15708)
    #dbg_value(i64 %gepdiff, !5979, !DIExpression(), !15709)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %gepdiff)
          to label %.noexc116 unwind label %.loopexit79, !dbg !16483

.noexc116:                                        ; preds = %.loopexit62.split.us.i
  %i.ff = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !16484, !alias.scope !16310, !noundef !3374 ; 3 uses
    #dbg_value(i64 %i.ff, !5995, !DIExpression(), !15713)
    #dbg_value(i64 %i.ff, !5980, !DIExpression(), !15714)
  %i.fg = icmp sgt i64 %i.ff, -1, !dbg !16485
  call void @llvm.assume(i1 %i.fg), !dbg !16486
  %.not.i114 = icmp eq i64 %.sroa.556.0, %.sroa.04.0, !dbg !16487
  br i1 %.not.i114, label %bb.ak, label %bb.aj, !dbg !16487

bb.aj:                                            ; preds = %.noexc116
    #dbg_value(ptr %i.fe, !5992, !DIExpression(), !15708)
  %i.fh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !16488, !alias.scope !16310, !nonnull !3374, !noundef !3374
    #dbg_value(ptr %i.fh, !5998, !DIExpression(), !15713)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ff, !dbg !16489
    #dbg_value(ptr %i.fi, !5993, !DIExpression(), !15708)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull readonly align 1 %i.fe, i64 %gepdiff, i1 false), !dbg !16490
  %.pre.i115 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !16491, !alias.scope !16310
  br label %bb.ak, !dbg !16492

bb.ak:                                            ; preds = %.noexc116, %bb.aj
  %i.fj = phi i64 [ %.pre.i115, %bb.aj ], [ %i.ff, %.noexc116 ], !dbg !16491
  %i.fk = add i64 %i.fj, %gepdiff, !dbg !16491
  store i64 %i.fk, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !16491, !alias.scope !16310
    #dbg_value(ptr %i.b, !15819, !DIExpression(), !16311)
    #dbg_value(ptr %i.b, !15825, !DIExpression(), !16312)
    #dbg_value(ptr %i.b, !15822, !DIExpression(), !16313)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !15823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16313)
    #dbg_value(i64 0, !15823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16313)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !15826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16312)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !15826, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16312)
    #dbg_value(ptr undef, !15810, !DIExpression(), !15839)
    #dbg_value(ptr undef, !15802, !DIExpression(), !15283)
    #dbg_value(i64 1, !16283, !DIExpression(), !15721)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !15807, !DIExpression(), !15722)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !16297, !DIExpression(), !15723)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !16298, !DIExpression(), !15723)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !16291, !DIExpression(), !15724)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !16287, !DIExpression(), !15725)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !16292, !DIExpression(), !15724)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !16286, !DIExpression(), !15725)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !15828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16314)
    #dbg_value(i64 0, !15828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16314)
    #dbg_value(ptr %i.b, !5969, !DIExpression(), !15729)
    #dbg_value(ptr %i.b, !5983, !DIExpression(), !15730)
    #dbg_value(ptr %i.b, !5977, !DIExpression(), !15731)
    #dbg_value(ptr %i.b, !5986, !DIExpression(), !15733)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15730)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15731)
    #dbg_value(i64 0, !5984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15730)
    #dbg_value(i64 0, !5978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15731)
    #dbg_value(i64 0, !5991, !DIExpression(), !15735)
    #dbg_value(i64 0, !5979, !DIExpression(), !15736)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
end_hunk_0
